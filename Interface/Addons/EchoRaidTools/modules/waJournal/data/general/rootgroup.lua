local _AddonName, _EchoRaidTools = ...;

local journal = _EchoRaidTools:GetModule("waJournal");

-- Root Group export data

journal:AddImportData({["!Echo - Aberrus"] = {["controlledChildren"] = {"Aura Type Anchors","1. Kazzara, the Hellforged","2. The Amalgamation Chamber","3. The Forgotten Experiments","4. Assault of the Zaqali","5. Rashok, the Elder","6. The Vigilant Steward, Zskarn","7. Magmorax","8. Echo of Neltharion","9. Scalecommander Sarkareth",},["borderBackdrop"] = "Blizzard Tooltip",["xOffset"] = 0,["preferToUpdate"] = false,["yOffset"] = 0,["anchorPoint"] = "CENTER",["echoVersion"] = 7,["borderColor"] = {0,0,0,1,},["url"] = "https://echoesports.gg",["actions"] = {["start"] = {},["init"] = {},["finish"] = {},},["triggers"] = {{["trigger"] = {["debuffType"] = "HELPFUL",["type"] = "aura2",["spellIds"] = {},["subeventSuffix"] = "_CAST_START",["subeventPrefix"] = "SPELL",["unit"] = "player",["event"] = "Health",["names"] = {},},["untrigger"] = {},},},["internalVersion"] = 65,["selfPoint"] = "CENTER",["subRegions"] = {},["load"] = {["size"] = {["multi"] = {},},["spec"] = {["multi"] = {},},["class"] = {["multi"] = {},},["talent"] = {["multi"] = {},},},["backdropColor"] = {1,1,1,0.5,},["source"] = "import",["scale"] = 1,["border"] = false,["borderEdge"] = "Square Full White",["regionType"] = "group",["borderSize"] = 2,["borderOffset"] = 4,["tocversion"] = 100100,["id"] = "!Echo - Aberrus",["frameStrata"] = 1,["anchorFrameType"] = "SCREEN",["groupIcon"] = 134154,["uid"] = "UATiCPJqXFc",["animation"] = {["start"] = {["type"] = "none",["easeStrength"] = 3,["duration_type"] = "seconds",["easeType"] = "none",},["main"] = {["type"] = "none",["easeStrength"] = 3,["duration_type"] = "seconds",["easeType"] = "none",},["finish"] = {["type"] = "none",["easeStrength"] = 3,["duration_type"] = "seconds",["easeType"] = "none",},},["authorOptions"] = {},["config"] = {},["conditions"] = {},["information"] = {["forceEvents"] = true,},["borderInset"] = 1,},});


-- Root Group manifest data

journal:AddManifestData({
	{
		["id"] = "!Echo - Aberrus",
		["uid"] = "UATiCPJqXFc",
		["children"] = {
			"1. Kazzara, the Hellforged",
			"2. The Amalgamation Chamber",
			"3. The Forgotten Experiments",
			"4. Assault of the Zaqali",
			"5. Rashok, the Elder",
			"6. The Vigilant Steward, Zskarn",
			"7. Magmorax",
			"8. Echo of Neltharion",
			"9. Scalecommander Sarkareth",
			"Aura Type Anchors",
		},
		["echoVersion"] = 7,
	},
},1208,0);