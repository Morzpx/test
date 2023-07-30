local _AddonName, _EchoRaidTools = ...;

EchoRaidToolsConfig_NewColorPickerMixin = {}
function EchoRaidToolsConfig_NewColorPickerMixin:OnLoad()
    self.Enabled = true
end
function EchoRaidToolsConfig_NewColorPickerMixin:OnClick()
    self:ShowColorPicker()
end
function EchoRaidToolsConfig_NewColorPickerMixin:SetRGBA(r,g,b,a)
    self.r = r
    self.g = g
    self.b = b
    self.a = a or 1
    self.NormalTexture:SetVertexColor(r,g,b,a)
end
-- opacity and cancel functions are optional
function EchoRaidToolsConfig_NewColorPickerMixin:SetupInteraction(func, r,g,b,a, opacityFunc, cancelFunc, useOpacity)
    self.func = func
    self.opacityFunc = opacityFunc or func
    self.cancelFunc = cancelFunc or func
    self.useOpacity = useOpacity == nil and true or useOpacity
    self.r = r
    self.g = g
    self.b = b
    self.a = self.useOpacity and a or nil
    self:SetRGBA(r,g,b,self.useOpacity and a or nil)
end
function EchoRaidToolsConfig_NewColorPickerMixin:ClearAll()
    self.func = nil
    self.opacityFunc = nil
    self.cancelFunc = nil
    self.r = nil
    self.g = nil
    self.b = nil
    self.a = nil
    self:SetRGBA(1,1,1,1)
end
function EchoRaidToolsConfig_NewColorPickerMixin:ShowColorPicker()
    if self.Enabled then
        local function OnColorChanged(restore)
            if restore then
                local r,g,b,a = unpack(restore)
                self.func(r,g,b,a)
                self:SetRGBA(r,g,b,a)
            else
                local r,g,b = ColorPickerFrame:GetColorRGB()
                local a = self.useOpacity and OpacitySliderFrame:GetValue() and 1 - OpacitySliderFrame:GetValue() or 1
                --a = a and 1 - OpacitySliderFrame:GetValue() or 1
                self.func(r,g,b,a)
                self:SetRGBA(r,g,b,a)
            end
        end
        ColorPickerFrame.func = OnColorChanged
        ColorPickerFrame.opacityFunc = OnColorChanged
        ColorPickerFrame.cancelFunc = OnColorChanged 
        ColorPickerFrame.previousValues = {self.r,self.g,self.b, self.a}
        ColorPickerFrame.hasOpacity = self.useOpacity --true
        ColorPickerFrame.opacity = self.a and 1 - self.a or 1
        ColorPickerFrame:SetColorRGB(self.r,self.g,self.b)
        ColorPickerFrame:Show()
    end
end
function EchoRaidToolsConfig_NewColorPickerMixin:Enable()
    self.Enabled = true
    self.Background:Show()
    self.DisabledBG:Hide()
    self.HighlightTexture:SetAlpha(0.2)
    self:SetAlpha(1)
end
function EchoRaidToolsConfig_NewColorPickerMixin:Disable()
    self.Enabled = false
    self.Background:Hide()
    self.DisabledBG:Show()
    self.HighlightTexture:SetAlpha(0)
    self:SetAlpha(0.5)
end
function EchoRaidToolsConfig_NewColorPickerMixin:IsEnabled()
    return self.Enabled
end
function EchoRaidToolsConfig_NewColorPickerMixin:OnEnter()
    if self.Enabled and self.tooltip then
        GameTooltip:SetOwner(self, "ANCHOR_TOPLEFT")
        GameTooltip:SetFrameLevel(self:GetFrameLevel() + 2)
        GameTooltip:SetText(self.tooltip)
    end
end
function EchoRaidToolsConfig_NewColorPickerMixin:OnLeave()
    if self.tooltip then
        GameTooltip:Hide()
    end
end