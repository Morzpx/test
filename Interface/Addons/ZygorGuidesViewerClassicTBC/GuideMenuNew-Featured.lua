local name,ZGV = ...

-- #GLOBALS ZygorGuidesViewer

local GuideMenu = ZGV.GuideMenu

GuideMenu.Featured={}

table.insert(GuideMenu.Featured,{
	title="The Burning Crusade", group="tbc",

	{"section", text=[[LEVELING]]},
	{"banner", image=ZGV.DIR.."\\Guides\\Images\\TBCLeveling",showcaseonly=true},

	{"content", text=[[OPTIONAL: Complete Your Races Starter Guide]]},
	{"text", text=[[If you are creating a new character in TBC, use the appropriate starter guide for your race.]]},
	{"columns",
	{"item", text="**Elwynn Forest (1-13) [Human Starter]**", guide="LEVELING\\Starter Guides (1-12)\\Elwynn Forest (1-13) [Human Starter]",faction="A"},
	{"item", text="**Dun Morogh (1-12) [Dwarf & Gnome Starter]**", guide="LEVELING\\Starter Guides (1-12)\\Dun Morogh (1-12) [Dwarf & Gnome Starter]",faction="A"},
	{"item", text="**Teldrassil (1-12) [Night Elf Starter]**", guide="LEVELING\\Starter Guides (1-12)\\Teldrassil (1-12) [Night Elf Starter]",faction="A"},
	{"item", text="**Azuremyst Isle (1-12) [Draenei Starter]**", guide="LEVELING\\Starter Guides (1-12)\\Azuremyst Isle (1-12) [Draenei Starter]",faction="A"},
	{"item", text=[[**Bloodmyst Isle**]], guide="LEVELING\\Extra Zones\\Bloodmyst Isle", faction="A"},
	{"item", text="**Durotar (1-12) [Orc & Troll Starter]**", guide="LEVELING\\Starter Guides (1-12)\\Durotar (1-12) [Orc & Troll Starter]", faction="H"},
	{"item", text="**Mulgore (1-12) [Tauren Starter]**", guide="LEVELING\\Starter Guides (1-12)\\Mulgore (1-12) [Tauren Starter]", faction="H"},
	{"item", text="**Tirisfal Glades (1-12) [Undead Starter]**", guide="LEVELING\\Starter Guides (1-12)\\Tirisfal Glades (1-12) [Undead Starter]", faction="H"},
	{"item", text="**Eversong Woods (1-13) [Blood Elf Starter]**", guide="LEVELING\\Starter Guides (1-12)\\Eversong Woods (1-13) [Blood Elf Starter]", faction="H"},
	{"item", text=[[**Ghostlands**]], guide="LEVELING\\Extra Zones\\Ghostlands", faction="H"},
	}, --columnsend

	{"content", text=[[Reach Level 58 or Higher]]},
	{"text", text=[[Use the main leveling guides to reach level 58 or higher in order to go to Outland.]]},
	{"guideslist", filters={guidepath="LEVELING\\Classic (12-58)"},columns=4},

	{"content", text=[[Reach Level 70]]},
	{"text", text=[[Journey to Outland using the guides below and reach the max level of 70.]]},
	{"columns",
	{"item", text=[[**Hellfire Peninsula (58-61)**]], guide="LEVELING\\The Burning Crusade (58-70)\\Hellfire Peninsula (58-61)"},
	{"item", text=[[**Zangarmarsh (61-63)**]], guide="LEVELING\\The Burning Crusade (58-70)\\Zangarmarsh (61-63)"},
	{"item", text=[[**Terokkar Forest (63-65)**]], guide="LEVELING\\The Burning Crusade (58-70)\\Terokkar Forest (63-65)"},
	{"item", text=[[**Nagrand (65-67)**]], guide="LEVELING\\The Burning Crusade (58-70)\\Nagrand (65-67)"},
	{"item", text=[[**Blade's Edge Mountains (67-68)**]], guide="LEVELING\\The Burning Crusade (58-70)\\Blade's Edge Mountains (67-68)"},
	{"item", text=[[**Netherstorm (68-70)**]], guide="LEVELING\\The Burning Crusade (58-70)\\Netherstorm (68-70)"},
	{"item", text=[[**Shadowmoon Valley (70-70)**]], guide="LEVELING\\The Burning Crusade (58-70)\\Shadowmoon Valley (70-70)"},
	}, --columnsend

	{"section", text=[[DUNGEONS]]},
	{"banner", image=ZGV.DIR.."\\Guides\\Images\\TBCDungeons",showcaseonly=true},

	{"content", text=[[Dungeon Boss Strategy Guides]]},
	{"text", text=[[These guides will walk you through defeating the bosses in the Outland dungeons.]]},
	{"columns",
	{"item", text=[[**Hellfire Ramparts (60-70)**]], guide="DUNGEONS\\The Burning Crusade\\Hellfire Ramparts (60-70)"},
	{"item", text=[[**The Blood Furnace (61-70)**]], guide="DUNGEONS\\The Burning Crusade\\The Blood Furnace (61-70)"},
	{"item", text=[[**The Slave Pens (62-70)**]], guide="DUNGEONS\\The Burning Crusade\\The Slave Pens (62-70)"},
	{"item", text=[[**The Underbog (63-70)**]], guide="DUNGEONS\\The Burning Crusade\\The Underbog (63-70)"},
	{"item", text=[[**Mana-Tombs (64-70)**]], guide="DUNGEONS\\The Burning Crusade\\Mana-Tombs (64-70)"},
	{"item", text=[[**Auchenai Crypts (65-70)**]], guide="DUNGEONS\\The Burning Crusade\\Auchenai Crypts (65-70)"},
	{"item", text=[[**Sethekk Halls (67-70)**]], guide="DUNGEONS\\The Burning Crusade\\Sethekk Halls (67-70)"},
	{"item", text=[[**Old Hillsbrad Foothills (66-70)**]], guide="DUNGEONS\\The Burning Crusade\\Old Hillsbrad Foothills (66-70)"},
	{"item", text=[[**The Black Morass (68-70)**]], guide="DUNGEONS\\The Burning Crusade\\The Black Morass (68-70)"},
	{"item", text=[[**The Mechanar (70)**]], guide="DUNGEONS\\The Burning Crusade\\The Mechanar (70)"},
	{"item", text=[[**The Shattered Halls (70)**]], guide="DUNGEONS\\The Burning Crusade\\The Shattered Halls (70)"},
	{"item", text=[[**The Steamvault (70)**]], guide="DUNGEONS\\The Burning Crusade\\The Steamvault (70)"},
	}, --columnsend

	{"content", text=[[Dungeon Quest Guides (BETA)]]},
	{"text", text=[[These guides will walk you through completing the Outland dungeon quests. Note that these guides are still works in progress.]]},
	{"columns",
	{"item", text=[[**Hellfire Ramparts Quests**]], guide="DUNGEONS\\The Burning Crusade\\Hellfire Ramparts Quests"},
	{"item", text=[[**The Slave Pens Quests**]], guide="DUNGEONS\\The Burning Crusade\\The Slave Pens Quests"},
	{"item", text=[[**The Underbog Quests**]], guide="DUNGEONS\\The Burning Crusade\\The Underbog Quests"},
	{"item", text=[[**Mana-Tombs Quests**]], guide="DUNGEONS\\The Burning Crusade\\Mana-Tombs Quests"},
	{"item", text=[[**Auchenai Crypts Quests**]], guide="DUNGEONS\\The Burning Crusade\\Auchenai Crypts Quests"},
	{"item", text=[[**Sethekk Halls Quests**]], guide="DUNGEONS\\The Burning Crusade\\Sethekk Halls Quests"},
	{"item", text=[[**Old Hillsbrad Foothills Quests**]], guide="DUNGEONS\\The Burning Crusade\\Old Hillsbrad Foothills Quests"},
	{"item", text=[[**The Black Morass Quests**]], guide="DUNGEONS\\The Burning Crusade\\The Black Morass Quests"},
	{"item", text=[[**The Mechanar Quests**]], guide="DUNGEONS\\The Burning Crusade\\The Mechanar Quests"},
	{"item", text=[[**The Steamvault Quests**]], guide="DUNGEONS\\The Burning Crusade\\The Steamvault Quests"},
	{"item", text=[[**Shadow Labyrinth Quests**]], guide="DUNGEONS\\The Burning Crusade\\Shadow Labyrinth Quests"},
	{"item", text=[[**The Arcatraz Quests**]], guide="DUNGEONS\\The Burning Crusade\\The Arcatraz Quests"},
	{"item", text=[[**The Botanica Quests**]], guide="DUNGEONS\\The Burning Crusade\\The Botanica Quests"},
	{"item", text=[[**The Cipher of Damnation**]], guide="DUNGEONS\\The Burning Crusade\\The Cipher of Damnation"},
	}, --columnsend

	{"section", text=[[PROFESSIONS]]},
	{"banner", image=ZGV.DIR.."\\Guides\\Images\\TBCProfessions",showcaseonly=true},

	{"content", text=[[Profession Leveling Guides]]},
	{"text", text=[[These guides will walk you through leveling up your professions to the new max skill level of 375.]]},
	{"columns",
	{"item", text=[[**Alchemy (1-375)**]], guide="PROFESSIONS\\Alchemy\\Alchemy (1-375)"},
	{"item", text=[[**Blacksmithing (1-375)**]], guide="PROFESSIONS\\Blacksmithing\\Blacksmithing (1-375)"},
	{"item", text=[[**Cooking (300-375)**]], guide="PROFESSIONS\\Cooking\\Cooking (300-375)"},
	{"item", text=[[**Enchanting (1-375)**]], guide="PROFESSIONS\\Enchanting\\Enchanting (1-375)"},
	{"item", text=[[**Engineering (1-375)**]], guide="PROFESSIONS\\Engineering\\Engineering (1-375)"},
	{"item", text=[[**First Aid (300-375)**]], guide="PROFESSIONS\\First Aid\\First Aid (300-375)"},
	{"item", text=[[**Herbalism (300-375)**]], guide="PROFESSIONS\\Herbalism\\Herbalism (300-375)"},
	{"item", text=[[**Jewelcrafting (1-375)**]], guide="PROFESSIONS\\Jewelcrafting\\Jewelcrafting (1-375)"},
	{"item", text=[[**Leatherworking (1-375)**]], guide="PROFESSIONS\\Leatherworking\\Leatherworking (1-375)"},
	{"item", text=[[**Mining (300-375)**]], guide="PROFESSIONS\\Mining\\Mining (300-375)"},
	{"item", text=[[**Skinning (300-375)**]], guide="PROFESSIONS\\Skinning\\Skinning (300-375)"},
	{"item", text=[[**Tailoring (1-375)**]], guide="PROFESSIONS\\Tailoring\\Tailoring (1-375)"},
	}, --columnsend

	{"section", text=[[REPUTATIONS]]},
	{"banner", image=ZGV.DIR.."\\Guides\\Images\\TBCReputations",showcaseonly=true},

	{"content", text=[[Reputation Guides]]},
	{"text", text=[[These guides will walk you through reaching Exalted with various Outland factions.]]},
	{"columns",
	{"item", text=[[**Honor Hold**]], guide="REPUTATIONS\\The Burning Crusade\\Honor Hold",faction="A"},
	{"item", text=[[**Cenarion Expedition**]], guide="REPUTATIONS\\The Burning Crusade\\Cenarion Expedition"},
	{"item", text=[[**Lower City**]], guide="REPUTATIONS\\The Burning Crusade\\Lower City"},
	{"item", text=[[**The Scryers**]], guide="REPUTATIONS\\The Burning Crusade\\The Scryers"},
	{"item", text=[[**The Aldor**]], guide="REPUTATIONS\\The Burning Crusade\\The Aldor"},
	}, --columnsend

})


