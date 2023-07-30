--[[
    Appreciate what others people do. (c) Usoltsev

    Copyright (c) <2016-2020>, Usoltsev.

    Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
    Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
    Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
    Neither the name of the <EasyFrames> nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
    THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT,
    INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
    OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
    OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
--]]

local EasyFrames = LibStub("AceAddon-3.0"):GetAddon("EasyFrames")
local L = LibStub("AceLocale-3.0"):GetLocale("EasyFrames")
local Media = LibStub("LibSharedMedia-3.0")

local MODULE_NAME = "Core"
local Core = EasyFrames:NewModule(MODULE_NAME, "AceConsole-3.0", "AceEvent-3.0", "AceHook-3.0")

local db
local PartyIterator = EasyFrames.Helpers.Iterator(EasyFrames.Utils.GetPartyFrames())
local BossIterator = EasyFrames.Helpers.Iterator(EasyFrames.Utils.GetBossFrames())

local playerFrameContentMain = EasyFrames.Utils.GetPlayerFrameContentMain()
local targetFrameContentMain = EasyFrames.Utils.GetTargetFrameContentMain()
local focusFrameContentMain = EasyFrames.Utils.GetFocusFrameContentMain()

local OnSetPointHookScript = function(point, relativeTo, relativePoint, xOffset, yOffset)
    return function(frame, _, _, _, _, _, flag)
        if flag ~= "EasyFramesHookSetPoint" then
--            if InCombatLockdown() then
--                return
--            end

            frame:ClearAllPoints()
            frame:SetPoint(point, relativeTo, relativePoint, xOffset, yOffset, "EasyFramesHookSetPoint")
        end
    end
end

function Core:OnInitialize()
    self.db = EasyFrames.db
    db = self.db.profile
end

function Core:OnEnable()
    --self:RegisterEvent("UNIT_AURA", "UnitAura")
    --self:RegisterEvent("UNIT_CLASSIFICATION_CHANGED", "UnitClassificationChanged")
    --self:RegisterEvent("UPDATE_SHAPESHIFT_COOLDOWN", "UpdateShapeshiftForm") -- This is used for shapeshifts/stances

    --self:RegisterEvent("PLAYER_TARGET_CHANGED", "PlayerTargetChanged")
    --self:RegisterEvent("PLAYER_FOCUS_CHANGED", "PlayerFocusChanged")
    self:RegisterEvent("PLAYER_ENTERING_WORLD", "PlayerEnteringWorld")

    if db.general.useEFTextures then
        self:RegisterEvent("PLAYER_FLAGS_CHANGED", "PlayerFlagsChanged");
        self:RegisterEvent("GROUP_ROSTER_UPDATE", "GroupRosterUpdate");
        self:RegisterEvent("PLAYER_SPECIALIZATION_CHANGED", "GroupRosterUpdate")

        local _, class = UnitClass("player")
        if class == "DRUID" then
            self:RegisterEvent("UNIT_DISPLAYPOWER", "UnitDisplaypower")
        end

        hooksecurefunc(TargetFrame, "CheckClassification", function()
            self:CheckClassification(TargetFrame)
        end)

        hooksecurefunc(FocusFrame, "CheckClassification", function()
            self:CheckClassification(FocusFrame)
        end)

        self:MoveFramesNames()
        self:MoveToTFrames()
        self:MovePlayerFrameBars()
        self:MovePlayerPowerBar()
        self:MoveTargetFrameBars()
        self:MoveFocusFrameBars()
        self:MovePetFrameBars()
        --self:MovePartyFrameBars()
        --self:MoveBossFrameBars()

        self:MovePlayerFramesBarsTextString()
        self:MoveTargetFramesBarsTextString()
        self:MoveFocusFramesBarsTextString()

        self:MoveLevelText()
    else
        -- Blizzard's textures.

        hooksecurefunc(TargetFrame, "CheckClassification", function()
            self:CheckClassificationForNonEFMode(TargetFrame)
        end)

        hooksecurefunc(FocusFrame, "CheckClassification", function()
            self:CheckClassificationForNonEFMode(FocusFrame)
        end)
    end

    if (db.general.showWelcomeMessage) then
        print("|cff0cbd0cEasy Frames|cffffffff " .. L["loaded. Options:"] .. " |cff0cbd0c/ef")
    end
end

function Core:OnProfileChanged(newDB)
    -- db.general.useEFTextures == nil it's the same as true.

    if (db.general) and ((db.general.useEFTextures == nil
        and newDB.profile.general.useEFTextures == false
    ) or (db.general.useEFTextures == false
        and newDB.profile.general.useEFTextures == true
    )) or not db.general then
        EasyFrames.Helpers.ConfirmPopup(
            L["You are going to toggle the \"Use the Easy Frames style\" setting, you need to reload the UI for it to work correctly.\n\n Do you want to reload the UI?"],
            function()
                ReloadUI();
            end
        )
    end

    self.db = newDB
    db = self.db.profile
end


function Core:PlayerFlagsChanged(event, arg1)
    if (event == "PLAYER_FLAGS_CHANGED") then
        if (arg1 == "target") then
            self:CheckClassification(TargetFrame)
        end
    end
end

function Core:GroupRosterUpdate()
    if FocusFrame:IsShown() then
        self:CheckClassification(FocusFrame)
    end

    local playerFrameAlternatePowerBar = PlayerFrame_GetAlternatePowerBar()
    if playerFrameAlternatePowerBar and playerFrameAlternatePowerBar:IsShown() then
        self:MovePlayerFrameAlternateManaBar()
    end
end

function Core:UnitAura()

end

function Core:UnitDisplaypower()
    self:MovePlayerPowerBar()
end

function Core:UnitClassificationChanged()

end

function Core:PlayerTargetChanged()
    --self:CheckClassification(TargetFrame)
end

function Core:PlayerFocusChanged()
    self:CheckClassification(FocusFrame)
end

function Core:PlayerEnteringWorld()
    if TargetFrame:IsShown() then
        TargetFrame:UpdateAuras()
    end
end

function Core:CheckClassification(frame, forceNormalTexture)
    local classification = UnitClassification(frame.unit);
    local borderTexture = frame.TargetFrameContainer.FrameTexture;
    local healthBar = frame.TargetFrameContent.TargetFrameContentMain.HealthBar;
    local manaBar = frame.TargetFrameContent.TargetFrameContentMain.ManaBar;
    local frameFlash = frame.TargetFrameContainer.Flash;

    healthBar:SetWidth(EasyFrames.Const.HEALTHBAR_WIDTH)
    healthBar:SetHeight(EasyFrames.Const.HEALTHBAR_HEIGHT)

    healthBar:SetStatusBarTexture(Media:Fetch("statusbar", db.general.barTexture))
    healthBar:GetStatusBarTexture():SetDrawLayer("BACKGROUND", 0)

    -- This is old color and texture.
    --manaBar:SetStatusBarTexture(Media:Fetch("statusbar", db.general.barTexture))
    --manaBar:SetStatusBarColor(0, 0, 1)

    manaBar:GetStatusBarTexture():SetDrawLayer("BACKGROUND", 0)

    frameFlash:SetTexture(Media:Fetch("misc", "player-status-flash"))

    if (forceNormalTexture) then
        borderTexture:SetTexture(Media:Fetch("frames", "default"));
    elseif (classification == "minus") then
        borderTexture:SetTexture(Media:Fetch("frames", "minus"));
        --forceNormalTexture = true;
    else
        borderTexture:SetTexture(Media:Fetch("frames", "default"));
        --forceNormalTexture = true;
    end
end

function Core:CheckClassificationForNonEFMode(frame)
    local healthBar = frame.TargetFrameContent.TargetFrameContentMain.HealthBar;

    healthBar:SetStatusBarTexture(Media:Fetch("statusbar", db.general.barTexture))
    --healthBar:GetStatusBarTexture():SetDrawLayer("BACKGROUND", 0)
end

function Core:MoveRegion(frame, point, relativeTo, relativePoint, xOffset, yOffset)
    frame:ClearAllPoints()
    frame:SetPoint(point, relativeTo, relativePoint, xOffset, yOffset, "EasyFramesHookSetPoint")

    if (not frame.EasyFramesHookSetPoint) then
        hooksecurefunc(frame, "SetPoint", OnSetPointHookScript(point, relativeTo, relativePoint, xOffset, yOffset))
        frame.EasyFramesHookSetPoint = true
    end
end

function Core:MovePlayerFrameName(point, xOffset, yOffset)
    self:MoveRegion(PlayerName, point or "TOPLEFT", xOffset or 89, yOffset or -13)

    PlayerName:SetJustifyH("CENTER")
    PlayerName:SetWidth(110)
end

function Core:MoveTargetFrameName(point, xOffset, yOffset)
    self:MoveRegion(TargetFrame.name, point or "TOPLEFT", xOffset or 35, yOffset or -13)

    TargetFrame.name:SetJustifyH("CENTER")
    TargetFrame.name:SetWidth(110)
end

function Core:MoveFocusFrameName(point, xOffset, yOffset)
    self:MoveRegion(FocusFrame.name, point or "TOPLEFT", xOffset or 35, yOffset or -13)

    FocusFrame.name:SetJustifyH("CENTER")
    FocusFrame.name:SetWidth(110)
end

function Core:MovePetFrameName()
    self:MoveRegion(PetName, "BOTTOMLEFT", PetFrame, "BOTTOMLEFT", 46, 38)

    PetName:SetJustifyH("CENTER")
end

function Core:MovePlayerPowerBar()
    local frame
    local _, class = UnitClass("player")
    local adXOffset = 10
    local adYOffset = 6
    local xGlobalOffset
    local yGlobalOffset

    if PlayerFrame.classPowerBar then
        frame = PlayerFrame.classPowerBar
    elseif class == "SHAMAN" then
        frame = TotemFrame
    elseif class == "DEATHKNIGHT" then
        frame = RuneFrame
        adXOffset = 4
        adYOffset = 2
    elseif class == "PRIEST" then
        frame = PriestBarFrame
    elseif class == "EVOKER" then
        frame = EssencePlayerFrame
        adXOffset = 4
    end

    if class == "DRUID" then
        xGlobalOffset = -4
        yGlobalOffset = 4
    elseif class == "MAGE" then
        adXOffset = 4
    end

    if (frame) then
        local point, relativeTo, relativePoint, xOffset, yOffset = frame:GetPoint()

        if point then
            Core:MoveRegion(frame, point, relativeTo, relativePoint, xGlobalOffset or (xOffset - adXOffset), yGlobalOffset or (yOffset + adYOffset))
        end
    end
end


function Core:MoveFramesNames()
    -- Names
    -- Player's frame will set in Player module (with option "Show player name inside the frame")
    self:MoveTargetFrameName()
    self:MoveFocusFrameName()

    self:MovePetFrameName()

    --PartyIterator(function(frame)
    --    local point, relativeTo, relativePoint, xOffset, yOffset = frame.name:GetPoint()
    --
    --    Core:MoveRegion(frame.name, point, relativeTo, relativePoint, xOffset, yOffset - 3)
    --end)
    --
    --BossIterator(function(frame)
    --    local point, relativeTo, relativePoint, xOffset, yOffset = frame.name:GetPoint()
    --
    --    Core:MoveRegion(frame.name, point, relativeTo, relativePoint, xOffset, yOffset + 20)
    --end)
end

function Core:MoveToTFrames()
    -- @TODO move targettarget to its own settings module.
    TargetFrameToT:ClearAllPoints()
    TargetFrameToT:SetPoint("CENTER", TargetFrame, "CENTER", 80, -53)

    -- ToT name
    TargetFrameToT.name:ClearAllPoints();
    TargetFrameToT.name:SetPoint("CENTER", TargetFrameToT, "CENTER", 18, 18)

    -- ToT HealthBar
    --TargetFrameToT.HealthBar:SetParent(TargetFrame)
    --TargetFrameToT.FrameTexture:SetParent(TargetFrameToT)
    self:MoveRegion(TargetFrameToT.HealthBar, "CENTER", TargetFrameToT, "CENTER", 19, 4)
    TargetFrameToT.HealthBar:SetHeight(EasyFrames.Const.MANABAR_HEIGHT)
    TargetFrameToT.HealthBar:SetFrameLevel(0)
    TargetFrameToT.HealthBar.HealthBarMask:Hide()

    self:MoveRegion(TargetFrameToT.ManaBar, "CENTER", TargetFrameToT, "CENTER", 18, -8)
    TargetFrameToT.ManaBar:SetWidth(EasyFrames.Const.TOT_MANABAR_WIDTH)
    TargetFrameToT.ManaBar:SetHeight(EasyFrames.Const.TOT_MANABAR_HEIGHT)
    TargetFrameToT.ManaBar:SetFrameLevel(0)
    TargetFrameToT.ManaBar.ManaBarMask:Hide()


    -- @TODO move focustarget to its own settings module.
    FocusFrameToT:ClearAllPoints()
    FocusFrameToT:SetPoint("CENTER", FocusFrame, "CENTER", 80, -53)
    -- ToT name
    FocusFrameToT.name:ClearAllPoints();
    FocusFrameToT.name:SetPoint("CENTER", FocusFrameToT, "CENTER", 18, 18)

    -- ToT HealthBar
    self:MoveRegion(FocusFrameToT.HealthBar, "CENTER", FocusFrameToT, "CENTER", 19, 4)
    FocusFrameToT.HealthBar:SetHeight(EasyFrames.Const.MANABAR_HEIGHT)
    FocusFrameToT.HealthBar:SetFrameLevel(0)
    FocusFrameToT.HealthBar.HealthBarMask:Hide()

    -- ToT ManaBar
    self:MoveRegion(FocusFrameToT.ManaBar, "CENTER", FocusFrameToT, "CENTER", 18, -8)
    FocusFrameToT.ManaBar:SetWidth(EasyFrames.Const.TOT_MANABAR_WIDTH)
    FocusFrameToT.ManaBar:SetHeight(EasyFrames.Const.TOT_MANABAR_HEIGHT)
    FocusFrameToT.ManaBar:SetFrameLevel(0)
    FocusFrameToT.ManaBar.ManaBarMask:Hide()
end

function Core:MovePlayerFrameBars(isVehicle)
    -- HealthBar
    local healthBar = PlayerFrame_GetHealthBar()
    local manaBar = PlayerFrame_GetManaBar()
    local playerFrameAlternatePowerBar = PlayerFrame_GetAlternatePowerBar()

    if not isVehicle then
        healthBar:SetWidth(EasyFrames.Const.HEALTHBAR_WIDTH)
        healthBar:SetHeight(EasyFrames.Const.HEALTHBAR_HEIGHT)

        if playerFrameAlternatePowerBar then
            playerFrameAlternatePowerBar:SetWidth(EasyFrames.Const.HEALTHBAR_WIDTH)
        end

        healthBar.TotalAbsorbBar:SetHeight(EasyFrames.Const.HEALTHBAR_HEIGHT)

        -- Line order is important
        playerFrameContentMain.HealthBarArea.PlayerFrameHealthBarAnimatedLoss:SetParent(PlayerFrame) -- fix for blinking red texture
        healthBar:SetParent(PlayerFrame)
        healthBar.TotalAbsorbBarOverlay:SetParent(PlayerFrame)
        healthBar.TotalAbsorbBar:SetParent(PlayerFrame)
        healthBar.MyHealPredictionBar:SetParent(PlayerFrame)
        healthBar.OtherHealPredictionBar:SetParent(PlayerFrame)

        healthBar.HealthBarMask:Hide()

        self:MoveRegion(healthBar, "CENTER", PlayerFrame, "CENTER", 27, 9)

        -- ManaBar
        manaBar:SetWidth(EasyFrames.Const.MANABAR_WIDTH)
        manaBar:SetHeight(EasyFrames.Const.MANABAR_HEIGHT)

        manaBar:SetParent(PlayerFrame)
        manaBar.ManaCostPredictionBar:SetParent(PlayerFrame)
        manaBar.ManaBarText:SetParent(PlayerFrame.PlayerFrameContainer)
        manaBar.LeftText:SetParent(PlayerFrame.PlayerFrameContainer)
        manaBar.RightText:SetParent(PlayerFrame.PlayerFrameContainer)

        manaBar.ManaBarMask:Hide()

        self:MoveRegion(manaBar, "CENTER", PlayerFrame, "CENTER", 27, -11)
        self:MovePlayerFrameAlternateManaBar()

        PlayerFrame.PlayerFrameContent.PlayerFrameContentContextual.GroupIndicator:ClearAllPoints()
        PlayerFrame.PlayerFrameContent.PlayerFrameContentContextual.GroupIndicator:SetPoint("TOPLEFT", 13, 0)

        PlayerFrameGroupIndicatorLeft:SetAlpha(0)
        PlayerFrameGroupIndicatorRight:SetAlpha(0)
        PlayerFrameGroupIndicatorMiddle:SetAlpha(0)

        -- RoleIcon
        --self:MoveRegion(PlayerFrame.PlayerFrameContent.PlayerFrameContentContextual.RoleIcon, "CENTER", PlayerFrame, "CENTER", -90, 30)
        self:MoveRegion(PlayerFrame.PlayerFrameContent.PlayerFrameContentContextual.RoleIcon, "CENTER", PlayerFrame, "CENTER", -83, -18)

        -- PVP icon
        self:MoveRegion(PlayerFrame.PlayerFrameContent.PlayerFrameContentContextual.PrestigePortrait, "CENTER", PlayerFrame, "CENTER", -97, 7)
        self:MoveRegion(PlayerFrame.PlayerFrameContent.PlayerFrameContentContextual.PrestigeBadge, "CENTER", PlayerFrame, "CENTER", -97, 7)
    else
        healthBar:SetParent(playerFrameContentMain.HealthBarArea)
        healthBar.HealthBarMask:Show()

        self:MoveRegion(healthBar, "TOPLEFT", playerFrameContentMain.HealthBarArea, "TOPLEFT", 91, -40)

        manaBar:SetParent(playerFrameContentMain)
        manaBar.ManaBarMask:Show()

        self:MoveRegion(manaBar, "TOPLEFT", playerFrameContentMain.ManaBarArea, "TOPLEFT", 91, -61)
    end
end

function Core:MovePlayerFrameAlternateManaBar()
    local playerFrameAlternatePowerBar = PlayerFrame_GetAlternatePowerBar()
    if playerFrameAlternatePowerBar then
        local point, relativeTo, relativePoint = playerFrameAlternatePowerBar:GetPoint()

        if point then
            self:MoveRegion(playerFrameAlternatePowerBar, point, relativeTo, relativePoint, 87, -70)
        end
    end
end

function Core:MoveTargetFrameBars()
    -- HealthBar
   	local healthBar = targetFrameContentMain.HealthBar;
    local manaBar = targetFrameContentMain.ManaBar;
    local numericalThreat = TargetFrame.TargetFrameContent.TargetFrameContentContextual.NumericalThreat;

    -- See CheckClassification()
    --healthBar:SetWidth(EasyFrames.Const.HEALTHBAR_WIDTH)
    --healthBar:SetHeight(EasyFrames.Const.HEALTHBAR_HEIGHT)

    -- Line order is important
    healthBar:SetParent(TargetFrame)
    healthBar.TotalAbsorbBarOverlay:SetParent(TargetFrame)
    healthBar.TotalAbsorbBar:SetParent(TargetFrame)
    healthBar.MyHealPredictionBar:SetParent(TargetFrame)
    healthBar.OtherHealPredictionBar:SetParent(TargetFrame)

    healthBar.HealthBarMask:Hide()

    self:MoveRegion(healthBar, "CENTER", TargetFrame, "CENTER", -27, 9)
    self:MoveRegion(healthBar.DeadText, "CENTER", healthBar, "CENTER", 0, 0)

    numericalThreat:SetScale(0.9)
    self:MoveRegion(numericalThreat, "CENTER", TargetFrame, "CENTER", 44, 48)

    targetFrameContentMain.ReputationColor:Hide()

    -- ManaBar
    manaBar:SetWidth(EasyFrames.Const.MANABAR_WIDTH)
    manaBar:SetHeight(EasyFrames.Const.MANABAR_HEIGHT)

    manaBar:SetParent(TargetFrame)
    manaBar.ManaBarMask:Hide()

    self:MoveRegion(manaBar, "CENTER", TargetFrame, "CENTER", -28, -10)

    -- PetBattleIcon
    local point, relativeTo, relativePoint, xOffset, yOffset = TargetFrame.TargetFrameContent.TargetFrameContentContextual.PetBattleIcon:GetPoint()
    --self:MoveRegion(TargetFrame.TargetFrameContent.TargetFrameContentContextual.PetBattleIcon, point, relativeTo, relativePoint, xOffset - 6, yOffset - 1);
    self:MoveRegion(TargetFrame.TargetFrameContent.TargetFrameContentContextual.PetBattleIcon, point, relativeTo, relativePoint, xOffset + 5, yOffset + 20);

    -- PVP icon
    for _, frame in pairs({
        TargetFrame.TargetFrameContent.TargetFrameContentContextual.PrestigePortrait,
        TargetFrame.TargetFrameContent.TargetFrameContentContextual.PrestigeBadge,
        TargetFrame.TargetFrameContent.TargetFrameContentContextual.PvpIcon,
    }) do
        if (frame) then
            self:MoveRegion(frame, "CENTER", TargetFrame, "CENTER", 96, 7)
        end
    end
end

function Core:MoveFocusFrameBars()
    -- HealthBar
    local healthBar = focusFrameContentMain.HealthBar;
    local manaBar = focusFrameContentMain.ManaBar;
    local numericalThreat = FocusFrame.TargetFrameContent.TargetFrameContentContextual.NumericalThreat;

    healthBar:SetParent(FocusFrame)
    healthBar.TotalAbsorbBarOverlay:SetParent(FocusFrame)
    healthBar.TotalAbsorbBar:SetParent(FocusFrame)
    healthBar.MyHealPredictionBar:SetParent(FocusFrame)
    healthBar.OtherHealPredictionBar:SetParent(FocusFrame)

    healthBar.HealthBarMask:Hide()

    self:MoveRegion(healthBar, "CENTER", FocusFrame, "CENTER", -27, 9)
    self:MoveRegion(healthBar.DeadText, "CENTER", healthBar, "CENTER", 0, 0)

    numericalThreat:SetScale(0.9)
    self:MoveRegion(numericalThreat, "CENTER", FocusFrame, "CENTER", 44, 48)

    focusFrameContentMain.ReputationColor:Hide()

    -- ManaBar
    manaBar:SetWidth(EasyFrames.Const.MANABAR_WIDTH)
    manaBar:SetHeight(EasyFrames.Const.MANABAR_HEIGHT)

    manaBar:SetParent(FocusFrame)
    manaBar.ManaBarMask:Hide()

    self:MoveRegion(manaBar, "CENTER", FocusFrame, "CENTER", -28, -10)

    -- PetBattleIcon
    local point, relativeTo, relativePoint, xOffset, yOffset = FocusFrame.TargetFrameContent.TargetFrameContentContextual.PetBattleIcon:GetPoint()
    --self:MoveRegion(TargetFrame.TargetFrameContent.TargetFrameContentContextual.PetBattleIcon, point, relativeTo, relativePoint, xOffset - 6, yOffset - 1);
    self:MoveRegion(FocusFrame.TargetFrameContent.TargetFrameContentContextual.PetBattleIcon, point, relativeTo, relativePoint, xOffset + 5, yOffset + 20);

    -- PVP icon
    for _, frame in pairs({
        FocusFrame.TargetFrameContent.TargetFrameContentContextual.PrestigePortrait,
        FocusFrame.TargetFrameContent.TargetFrameContentContextual.PrestigeBadge,
        FocusFrame.TargetFrameContent.TargetFrameContentContextual.PvpIcon,
    }) do
        if (frame) then
            self:MoveRegion(frame, "CENTER", FocusFrame, "CENTER", 96, 7)
        end
    end
end

function Core:MovePetFrameBars()
    -- HealthBar
    local healthBar = PetFrameHealthBar;
    local manaBar = PetFrameManaBar;

    healthBar:SetHeight(EasyFrames.Const.MANABAR_HEIGHT)
    self:MoveRegion(healthBar, "CENTER", PetFrame, "CENTER", 19, 5)
    healthBar:SetFrameLevel(0)
    PetFrameHealthBarMask:Hide()

    -- ManaBar
    manaBar:SetHeight(EasyFrames.Const.TOT_MANABAR_HEIGHT)
    self:MoveRegion(manaBar, "CENTER", PetFrame, "CENTER", 19, -8)
    manaBar:SetFrameLevel(0)
    PetFrameManaBarText:SetParent(PetFrame)
    PetFrameManaBarTextRight:SetParent(PetFrame)
    PetFrameManaBarTextLeft:SetParent(PetFrame)
    PetFrameManaBarMask:Hide()

    self:MoveRegion(PetFrameHealthBar.RightText, "RIGHT", PetFrameHealthBar, "RIGHT", 0, 0)
    self:MoveRegion(PetFrameHealthBar.LeftText, "LEFT", PetFrameHealthBar, "LEFT", 0, 0)
    self:MoveRegion(PetFrameHealthBar.TextString, "CENTER", PetFrameHealthBar, "CENTER", 0, 0)

    self:MoveRegion(PetFrameManaBar.TextString, "CENTER", PetFrameManaBar, "CENTER", 0, 0)
end

function Core:MovePlayerFramesBarsTextString()
    self:MoveRegion(PlayerFrame_GetHealthBar().TextString, "CENTER", PlayerFrame_GetHealthBar(), "CENTER", 0, 0)

    self:MoveRegion(PlayerFrame_GetManaBar().TextString, "CENTER", PlayerFrame_GetManaBar(), "CENTER", 0, 0)
end

function Core:MoveTargetFramesBarsTextString()
   	local healthBar = targetFrameContentMain.HealthBar;
    local manaBar = targetFrameContentMain.ManaBar;

    self:MoveRegion(healthBar.TextString, "CENTER", healthBar, "CENTER", 0, 0)

    self:MoveRegion(manaBar.TextString, "CENTER", manaBar, "CENTER", 0, 0)
    self:MoveRegion(manaBar.RightText, "RIGHT", manaBar, "RIGHT", -5, 0)
    self:MoveRegion(manaBar.LeftText, "LEFT", manaBar, "LEFT", 3, 0)
end

function Core:MoveFocusFramesBarsTextString()
    local healthBar = focusFrameContentMain.HealthBar;
    local manaBar = focusFrameContentMain.ManaBar;

    self:MoveRegion(healthBar.TextString, "CENTER", healthBar, "CENTER", 0, 0)

    self:MoveRegion(manaBar.TextString, "CENTER", manaBar, "CENTER", 0, 0)
    self:MoveRegion(manaBar.RightText, "RIGHT", manaBar, "RIGHT", -5, 0)
    self:MoveRegion(manaBar.LeftText, "LEFT", manaBar, "LEFT", 3, 0)
end

function Core:MovePartyFrameBars()
    PartyIterator(function(frame)
        _G[frame:GetName() .. "Background"]:SetVertexColor(0, 0, 0, 0)

        local healthBar = _G[frame:GetName() .. "HealthBar"]
        local manaBar = _G[frame:GetName() .. "ManaBar"]

        healthBar:SetHeight(13)

        Core:MoveRegion(healthBar, "CENTER", frame, "CENTER", 16, 4)
        Core:MoveRegion(healthBar.TextString, "CENTER", healthBar, "CENTER", 0, 0)
        Core:MoveRegion(healthBar.RightText, "RIGHT", frame, "RIGHT", -12, 4)
        Core:MoveRegion(healthBar.LeftText, "LEFT", frame, "LEFT", 46, 4)

        Core:MoveRegion(manaBar, "CENTER", frame, "CENTER", 16, -8)
        Core:MoveRegion(manaBar.TextString, "CENTER", manaBar, "CENTER", 0, 0)
        Core:MoveRegion(manaBar.RightText, "RIGHT", frame, "RIGHT", -12, -8)
        Core:MoveRegion(manaBar.LeftText, "LEFT", frame, "LEFT", 46, -8)
    end)
end

function Core:MoveBossFrameBars()
    BossIterator(function(frame)
      	local frameContentMain = _G[frame:GetName()].TargetFrameContent.TargetFrameContentMain;
   	    local healthBar = frameContentMain.HealthBar;

        healthBar:SetHeight(27)

        Core:MoveRegion(healthBar, "TOPRIGHT", frame, "TOPRIGHT", -106, -25)
        Core:MoveRegion(healthBar.TextString, "CENTER", frame, "CENTER", -50, 12)
        Core:MoveRegion(healthBar.RightText, "RIGHT", frame, "RIGHT", -110, 12)
        Core:MoveRegion(healthBar.LeftText, "LEFT", frame, "LEFT", 8, 12)
    end)
end

function Core:MoveLevelText()
    Core:MoveRegion(PlayerLevelText, "CENTER", -83, -19)
    Core:MoveRegion(TargetFrame.TargetFrameContent.TargetFrameContentMain.LevelText, "CENTER", 82, -19)
    Core:MoveRegion(TargetFrame.TargetFrameContent.TargetFrameContentContextual.HighLevelTexture, "CENTER", 82, -19)
    Core:MoveRegion(FocusFrame.TargetFrameContent.TargetFrameContentMain.LevelText, "CENTER", 82, -19)
    Core:MoveRegion(FocusFrame.TargetFrameContent.TargetFrameContentContextual.HighLevelTexture, "CENTER", 82, -19)
end
