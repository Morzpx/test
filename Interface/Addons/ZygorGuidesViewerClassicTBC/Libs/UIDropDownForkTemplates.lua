-- Custom dropdown buttons are instantiated by some external system.
-- When calling UIDropDownFork_AddButton that system sets info.customFrame to the instance of the frame it wants to place on the menu.
-- The dropdown menu creates its button for the entry as it normally would, but hides all elements.  The custom frame is then anchored
-- to that button and assumes responsibility for all relevant dropdown menu operations.
-- The hidden button will request a size that it should become from the custom frame.


DropDownExpandArrowForkMixin = {};

function DropDownExpandArrowForkMixin:OnEnter()
	local level =  self:GetParent():GetParent():GetID() + 1;

	CloseDropDownForks(level);

	if self:IsEnabled() then
		local listFrame = _G["DropDownForkList"..level];
		if ( not listFrame or not listFrame:IsShown() or select(2, listFrame:GetPoint()) ~= self ) then
			ToggleDropDownFork(level, self:GetParent().value, nil, nil, nil, nil, self:GetParent().menuList, self);
		end
	end
end

function DropDownExpandArrowForkMixin:OnMouseDown(button)
	if self:IsEnabled() then
		ToggleDropDownFork(self:GetParent():GetParent():GetID() + 1, self:GetParent().value, nil, nil, nil, nil, self:GetParent().menuList, self);
	end
end