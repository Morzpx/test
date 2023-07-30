local ZGV = ZygorGuidesViewer
if not ZGV then return end

local GuideMenu = ZGV.GuideMenu

GuideMenu.HomeVersion = 1
GuideMenu.Home={
	{"banner", image=ZGV.DIR.."\\Skins\\banner"},

{"section", text=[[AddOn]]},	
	{"list", text=[[Updated Guide Viewer to Version 8.0]]},

{"section", text=[[LEVELING]]},
	{"list", text=[[Added Draenei and Blood Elf starter guides]]},
	{"list", text=[[Revised 1-60 guides]]},
	{"list", text=[[Added **Hellfire Peninsula (58-61)**]], guide="LEVELING\\The Burning Crusade (58-70)\\Hellfire Peninsula (58-61)"},
	{"list", text=[[Added **Zangarmarsh (61-63)**]], guide="LEVELING\\The Burning Crusade (58-70)\\Zangarmarsh (61-63)"},
	{"list", text=[[Added **Terokkar Forest (63-65)**]], guide="LEVELING\\The Burning Crusade (58-70)\\Terokkar Forest (63-65)"},
	{"list", text=[[Added **Nagrand (65-67)**]], guide="LEVELING\\The Burning Crusade (58-70)\\Nagrand (65-67)"},
	{"list", text=[[Added **Blade's Edge Mountains (67-68)**]], guide="LEVELING\\The Burning Crusade (58-70)\\Blade's Edge Mountains (67-68)"},
	{"list", text=[[Added **Netherstorm (68-70)**]], guide="LEVELING\\The Burning Crusade (58-70)\\Netherstorm (68-70)"},
	{"list", text=[[Added **Shadowmoon Valley (70-70)**]], guide="LEVELING\\The Burning Crusade (58-70)\\Shadowmoon Valley (70-70)"},

}


-- faction="Alliance" {"separator"},