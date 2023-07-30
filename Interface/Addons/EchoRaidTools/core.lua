local _AddonName, _EchoRaidTools = ...

-----------------------------------------------------------------
-- TODO Remove me!
--__EchoRaidTools = _EchoRaidTools
-----------------------------------------------------------------

EchoRaidToolsDB = EchoRaidToolsDB or {}

EchoAddon:Initialize(_EchoRaidTools, _AddonName)

local LSM = LibStub("LibSharedMedia-3.0");
LSM:Register("font", "Expressway MonoNum", "Interface\\AddOns\\EchoRaidTools\\assets\\ExpresswayMonoNum.ttf", LSM.LOCALE_BIT_ruRU + LSM.LOCALE_BIT_western)

function _EchoRaidTools:ADDON_LOADED(name)
    if name == _AddonName then
        -- Load Modules

        for _, module in ipairs(_EchoRaidTools.modules or {}) do
            if module["ADDON_LOADED"] and type(module["ADDON_LOADED"]) == "function" then
                module["ADDON_LOADED"](module, name)
            end
        end

        local AceConsole = LibStub:GetLibrary("AceConsole-3.0")

        if AceConsole then
            AceConsole:RegisterChatCommand("echort", function(msg)
                if msg == "reset" then
                    if _EchoRaidTools.panels.main then
                        _EchoRaidTools.panels.main:SetPoint("CENTER", UIParent, "CENTER")
                    end
                end
                _EchoRaidTools:OpenNewPanel()
            end)
        end
    end
end

function _EchoRaidTools:PLAYER_ENTERING_WORLD(isInitialLogin, isReloadingUi)
    if(isInitialLogin or isReloadingUi)then
        _EchoRaidTools:InitializeEncounterData();
    end
end

function _EchoRaidTools:GetEchoColor()
    return {0.898, 0.063, 0.224, 1}
end