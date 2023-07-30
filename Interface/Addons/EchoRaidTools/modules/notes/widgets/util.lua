local _AddonName, _EchoRaidTools = ...
local _Notes = _EchoRaidTools:GetModule("notes")

local DF = DetailsFramework


-- @ToDo Move this to a more common place or use templates or whatever! Don't want to re-implement that for every single module
_Notes.Util = {}

function _Notes.Util.SourceEditor(parent, width, height, name)
    local sourceEditor = DF:NewSpecialLuaEditorEntry (parent, width, height, {}, name, true, true)
	sourceEditor.scroll:SetBackdrop(nil);
    sourceEditor.editbox:SetBackdrop(nil);
    sourceEditor:SetBackdrop(nil);

    DF:ReskinSlider(sourceEditor.scroll);

    if not sourceEditor.__background then
        sourceEditor.__background = sourceEditor:CreateTexture (nil, "background");
    end

    sourceEditor:SetBackdrop ({edgeFile = [[Interface\Buttons\WHITE8X8]], edgeSize = 1});
    sourceEditor:SetBackdropBorderColor (0, 0, 0, 1);

    sourceEditor.__background:SetColorTexture (0.2317647, 0.2317647, 0.2317647);
    sourceEditor.__background:SetVertexColor (0.27, 0.27, 0.27);
    sourceEditor.__background:SetAlpha (0.8);
    sourceEditor.__background:SetVertTile (true);
    sourceEditor.__background:SetHorizTile (true);
    sourceEditor.__background:SetAllPoints();

    return sourceEditor
end

function _Notes.Util.EditBox(parent, width, height, name)
    local editbox = DF:CreateTextEntry (parent, function() end, width, height, {}, name)
    editbox:SetBackdrop(nil);

    if not editbox.__background then
        editbox.__background = editbox:CreateTexture (nil, "background");
    end

    editbox:SetBackdrop ({edgeFile = [[Interface\Buttons\WHITE8X8]], edgeSize = 1});
    editbox:SetBackdropBorderColor (0, 0, 0, 1);

    editbox.__background:SetColorTexture (0.2317647, 0.2317647, 0.2317647);
    editbox.__background:SetVertexColor (0.27, 0.27, 0.27);
    editbox.__background:SetAlpha (0.8);
    editbox.__background:SetVertTile (true);
    editbox.__background:SetHorizTile (true);
    editbox.__background:SetAllPoints();

    return editbox
end