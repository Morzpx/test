local ZGV = ZygorGuidesViewer

local ItemScore = {}
ZGV.ItemScore = ItemScore

-- Stat keywords:
-- Only stats defined in this table are valid. Use entry in blizz when filling rule sets

local locale=GetLocale()
if locale=="enGB" then locale="enUS" end  -- just in case.


ItemScore.Keywords = {
	[1] = {blizz="AGILITY", zgvdisplay="Agility",pattern="ITEM_MOD_AGILITY"},
	[2] = {blizz="INTELLECT", zgvdisplay="Intellect",pattern="ITEM_MOD_INTELLECT"},
	[3] = {blizz="SPIRIT", zgvdisplay="Spirit",pattern="ITEM_MOD_SPIRIT"},
	[4] = {blizz="STAMINA", zgvdisplay="Stamina",pattern="ITEM_MOD_STAMINA"},
	[5] = {blizz="STRENGTH", zgvdisplay="Strength",pattern="ITEM_MOD_STRENGTH"},
	[6] = {blizz="ARMOR", zgvdisplay="Armor",pattern="ARMOR_TEMPLATE"}, -- base armor on gear
	[7] = {blizz="ARMOR_PENETRATION", zgvdisplay="Armor Penetration",pattern="ITEM_MOD_ARMOR_PENETRATION_RATING"},
	[8] = {blizz="ATTACK_POWER", zgvdisplay="Attack Power",pattern="ITEM_MOD_ATTACK_POWER"},
	[9] = {blizz="BLOCK", zgvdisplay="Block",pattern="ITEM_MOD_BLOCK_RATING"},
	[10] = {blizz="BLOCK_VALUE", zgvdisplay="Block Value",pattern="ITEM_MOD_BLOCK_VALUE"},
	[11] = {blizz="CRIT", zgvdisplay="Critical Strike %",pattern="ITEM_MOD_CRIT_RATING"},
	[12] = {blizz="CRIT_MELEE", zgvdisplay="Critical Strike Melee %",pattern="ITEM_MOD_CRIT_MELEE_RATING"},
	[13] = {blizz="CRIT_RANGED", zgvdisplay="Critical Strike Ranged %",pattern="ITEM_MOD_CRIT_RANGED_RATING"},
	[14] = {blizz="CRIT_SPELL", zgvdisplay="Critical Strike Spell% ",pattern="ITEM_MOD_CRIT_SPELL_RATING"},
	[15] = {blizz="DAMAGE_PER_SECOND", zgvdisplay="Damage Per Second",pattern="DPS_TEMPLATE"},
	[16] = {blizz="DEFENSE_SKILL", zgvdisplay="Defense",pattern="ITEM_MOD_DEFENSE_SKILL_RATING"},
	[17] = {blizz="DODGE", zgvdisplay="Dodge",pattern="ITEM_MOD_DODGE_RATING"},
	[18] = {blizz="EXTRA_ARMOR", zgvdisplay="Extra Armor",pattern="ITEM_MOD_EXTRA_ARMOR"},
	[19] = {blizz="EXPERTISE", zgvdisplay="Expertise",pattern="ITEM_MOD_EXPERTISE_RATING"},
	[20] = {blizz="FERAL_ATTACK_POWER", zgvdisplay="Feral Attack Power",pattern="ITEM_MOD_FERAL_ATTACK_POWER"},
	[21] = {blizz="HASTE", zgvdisplay="Haste",pattern="ITEM_MOD_HASTE_RATING"},
	[22] = {blizz="HEALTH_REGENERATION", zgvdisplay="Health Regeneration",pattern="ITEM_MOD_HEALTH_REGEN"},
	[23] = {blizz="HEALTH", zgvdisplay="Health",pattern="ITEM_MOD_HEALTH"},
	[24] = {blizz="HIT", zgvdisplay="Hit",pattern="ITEM_MOD_HIT_RATING"},
	[25] = {blizz="HIT_MELEE", zgvdisplay="Hit Melee %",pattern="ITEM_MOD_HIT_MELEE_RATING"},
	[26] = {blizz="HIT_RANGED", zgvdisplay="Hit Ranged %",pattern="ITEM_MOD_HIT_RANGED_RATING"},
	[27] = {blizz="HIT_SPELL", zgvdisplay="Hit Spell %",pattern="ITEM_MOD_HIT_SPELL_RATING"},
	[28] = {blizz="MANA", zgvdisplay="Mana",pattern="ITEM_MOD_MANA"},
	[29] = {blizz="MANA_REGENERATION", zgvdisplay="Mana Regeneration",pattern="ITEM_MOD_MANA_REGENERATION"},
	[30] = {blizz="PARRY", zgvdisplay="Parry",pattern="ITEM_MOD_PARRY_RATING"},
	[31] = {blizz="RANGED_ATTACK_POWER", zgvdisplay="Ranged Attack Power",pattern="ITEM_MOD_RANGED_ATTACK_POWER"},
	[32] = {blizz="SPELL_DAMAGE_DONE", zgvdisplay="Spell Bonus Damage",pattern="ITEM_MOD_SPELL_DAMAGE_DONE"},
	[33] = {blizz="SPELL_HEALING_DONE", zgvdisplay="Spell Bonus Healing",pattern="ITEM_MOD_SPELL_HEALING_DONE"},
	[34] = {blizz="SPELL_PENETRATION", zgvdisplay="Spell Penetration",pattern="ITEM_MOD_SPELL_PENETRATION"},
	[35] = {blizz="SPELL_POWER", zgvdisplay="Spell Power",pattern="ITEM_MOD_SPELL_POWER"},
	--[36] = {blizz="WEAPONSPEED", zgvdisplay="Weapon Speed",regex=""},
	-- Also valid:
	-- HOLY / FIRE / NATURE / FROST / SHADOW / ARCANE - name_RESISTANCE, SPELL_DAMAGE_DONE_name

}
ItemScore.KeywordsSpellSchools = {}
local SchoolPatterns = {
	enUS	= "([+-]+)([0-9]+) %s Spell Damage",
	deDE	= "([+-]+)([0-9]+) %szauberschaden",
	esES	= "([+-]+)([0-9]+) de daño de Hechizos .*%s",
	esMX	= "([+-]+)([0-9]+) daño con hechizos .*%s",
	frFR	= "([+-]+)([0-9]+) aux dégâts des sorts .*%s",
	ptBR	= "([+-]+)([0-9]+) Dano Mágico .*%s",
	ruRU = {
		"([+-]+)([0-9]+) к урону от заклинаний светлой магии",
		"([+-]+)([0-9]+) к урону от заклинаний огня",
		"([+-]+)([0-9]+) к урону от сил природы",
		"([+-]+)([0-9]+) к урону от заклинаний магии льда",
		"([+-]+)([0-9]+) к урону от заклинаний темной магии",
		"([+-]+)([0-9]+) к урону от заклинаний тайной магии"
	},
	koKR	= "%s 주문 공격력 ([+-]+)([0-9]+)", -- untested
	zhCN	= "([+-]+)([0-9]+) %s法术伤害", -- untested
	zhTW	= "([+-]+)([0-9]+) %s法术伤害", -- untested
}
local SchoolNamesEng = {"Holy","Fire","Nature","Frost","Shadow","Arcane"}
local pattern = SchoolPatterns[locale]
if pattern then
	for i=1,6 do
		local school = _G["SPELL_SCHOOL"..i.."_CAP"]
		local blizz = "SPELL_DAMAGE_DONE_"..SchoolNamesEng[i]:upper()
		local zgvdisplay = SchoolNamesEng[i].." Spell Damage"
		local regex = (type(pattern)=="string" and pattern:format(school)) or (type(pattern)=="table" and SchoolPatterns[locale][i]) or ""
		table.insert(ItemScore.KeywordsSpellSchools,{blizz=blizz,zgvdisplay=zgvdisplay,regex=regex})
	end
end
-- SPELL_DAMAGE_DONE_

for i=1,6 do
	local engname = SchoolNamesEng[i]
	local zgvdisplay = engname.." Resistance"
	local blizz = zgvdisplay:upper():gsub(" ","_")
	local regex = (ITEM_RESIST_SINGLE:gsub("%%d","([0-9]+)"):gsub("%%c","([+-]+)"):gsub("%%s",_G["SPELL_SCHOOL"..i.."_CAP"])):gsub("1%$",""):gsub("2%$",""):gsub("3%$",""):gsub("4%$","")
	table.insert(ItemScore.KeywordsSpellSchools,{blizz=blizz,zgvdisplay=zgvdisplay,regex=regex})
end

for i,v in pairs(ItemScore.Keywords) do -- convert blizzard templates to lua regex match
	local short = _G[v.pattern.."_SHORT"]
	if short then 
		if locale=="koKR" or locale=="zhCN" or locale=="zhTW" then
			v.regex2 = "^"..short.." ([+-]+)([0-9]+)".."$"
		else
			v.regex2 = "^".."([+-]+)([0-9]+) "..short.."$"
		end
	end

	v.regex = _G[v.pattern]
	v.regex = (v.regex):gsub("1%$",""):gsub("2%$",""):gsub("3%$",""):gsub("4%$","")
	v.regex = (v.regex):gsub("%(","%%("):gsub("%)","%%)"):gsub("%%d","([0-9]+)"):gsub("%%c","([+-]+)"):gsub("%%s","([0-9.]+)"):gsub("%%([0-9]+)%$","%%")
	if v.regex==v.regex2 then v.regex2=nil end
end


ItemScore.KnownKeyWords = {}
for i,v in pairs(ItemScore.Keywords) do -- create lookup table for use in popups, since GetItemStats/Delta fails on suffix items, and we need to use our cached data instead
	ItemScore.KnownKeyWords[v.blizz] = v.zgvdisplay
end

ItemScore.rules = {
	["DRUID"] = {
		[1] = { 
			name="Balance",
			itemtypes = { CLOTH=1, LEATHER=1, TH_STAFF=1, MACE=1, TH_MACE=1, DAGGER=1, FIST=1 },
			stats = {AGILITY=0.05, INTELLECT=0.38, MANA=0.032, SPIRIT=0.34, MANA_REGENERATION=0.58, SPELL_DAMAGE_DONE=1, SPELL_DAMAGE_DONE_ARCANE=0.64, SPELL_DAMAGE_DONE_NATURE=0.43, HIT_SPELL=1.21, CRIT_SPELL=0.62, HASTE=0.8, SPELL_PENETRATION=0.21,STAMINA=0.5, HEALTH=0.05, HEALTH_REGENERATION=1, ARMOR=0.005, DEFENSE_SKILL=0.05, DODGE=0.05, PARRY=0.05, FIRE_RESISTANCE=0.04, FROST_RESISTANCE=0.04, ARCANE_RESISTANCE=0.04, SHADOW_RESISTANCE=0.04, NATURE_RESISTANCE=0.04},
			caps = { HIT_SPELL=4, },
		},
		[2] = { 
			name="Feral DPS", 
			itemtypes = { CLOTH=1, LEATHER=1, TH_STAFF=1, MACE=1, TH_MACE=1, DAGGER=1, FIST=1 },
			stats = {STRENGTH=1.48, AGILITY=1, ATTACK_POWER=0.59, FERAL_ATTACK_POWER=0.59, HIT=0.61, EXPERTISE=0.61, CRIT=0.59, HASTE=0.43, ARMOR_PENETRATION=0.4,INTELLECT=0.1, MANA=0.009, SPIRIT=0.05, MANA_REGENERATION=0.3, SPELL_HEALING_DONE=0.025, STAMINA=0.5, HEALTH=0.05, HEALTH_REGENERATION=1, ARMOR=0.02, DEFENSE_SKILL=0.05, DODGE=0.05, PARRY=0.05, FIRE_RESISTANCE=0.04, FROST_RESISTANCE=0.04, ARCANE_RESISTANCE=0.04, SHADOW_RESISTANCE=0.04, NATURE_RESISTANCE=0.04},
			caps = { HIT=5, },
		},
		[3] = {
			name="Feral TANK", 
			itemtypes = { CLOTH=1, LEATHER=1, TH_STAFF=1, MACE=1, TH_MACE=1, DAGGER=1, FIST=1 },
			stats = {  STRENGTH=0.2, AGILITY=0.48, ATTACK_POWER=0.34, FERAL_ATTACK_POWER=0.34, HIT=0.16, EXPERTISE=0.18, CRIT=0.15, HASTE=0.31, ARMOR_PENETRATION=0.2,INTELLECT=0.1, MANA=0.009, SPIRIT=0.05, MANA_REGENERATION=0.3, SPELL_HEALING_DONE=0.025, SPELL_DAMAGE_DONE_NATURE=0.025, STAMINA=1, HEALTH=0.08, HEALTH_REGENERATION=2, ARMOR=0.1, DEFENSE_SKILL=0.26, DODGE=0.38, FIRE_RESISTANCE=0.2, FROST_RESISTANCE=0.2, ARCANE_RESISTANCE=0.2, SHADOW_RESISTANCE=0.2, NATURE_RESISTANCE=0.2},
			caps = { HIT=5, },
		},
		[4] = {
			name="Restoration", 
			itemtypes = { CLOTH=1, LEATHER=1, TH_STAFF=1, MACE=1, TH_MACE=1, DAGGER=1, FIST=1 },
			stats = {AGILITY=0.05, INTELLECT=1, MANA=0.09, SPIRIT=0.87, MANA_REGENERATION=1.7, SPELL_HEALING_DONE=1.21, CRIT_SPELL=0.35, HASTE=0.49, STAMINA=0.5, HEALTH=0.05, HEALTH_REGENERATION=1, ARMOR=0.005, DEFENSE_SKILL=0.05, DODGE=0.05, PARRY=0.05, FIRE_RESISTANCE=0.04, FROST_RESISTANCE=0.04, ARCANE_RESISTANCE=0.04, SHADOW_RESISTANCE=0.04, NATURE_RESISTANCE=0.04},
			caps = { HIT_SPELL=4, },
		}
	},
	["HUNTER"] = { -- cloth/leather only till 40, mail from 40
		[1] = { 
			name="Beast Mastery", 
			itemtypes = { CLOTH=-40, LEATHER=-40, MAIL=40, BOW=1, CROSSBOW=1, GUN=1, TH_SWORD=1, TH_AXE=1, SWORD=1, AXE=1, FIST=1, TH_POLE=1, DAGGER=1, TH_STAFF=1, THROWN=1 },
			stats = {STRENGTH=0.05, AGILITY=1, DAMAGE_PER_SECOND=2.4, ATTACK_POWER=0.43, RANGED_ATTACK_POWER=0.43, HIT=1, EXPERTISE=0.05, CRIT=0.8, HASTE=0.5, ARMOR_PENETRATION=0.17, INTELLECT=0.8, MANA=0.075, SPIRIT=0.05, MANA_REGENERATION=2.4, STAMINA=0.5, HEALTH=0.05, HEALTH_REGENERATION=1, ARMOR=0.005, DEFENSE_SKILL=0.05, DODGE=0.05, PARRY=0.05, FIRE_RESISTANCE=0.04, FROST_RESISTANCE=0.04, ARCANE_RESISTANCE=0.04, SHADOW_RESISTANCE=0.04, NATURE_RESISTANCE=0.04},
			caps = { HIT=5, },
		},
		[2] = { 
			name="Marksmanship", 
			itemtypes = { CLOTH=-40, LEATHER=-40, MAIL=40, BOW=1, CROSSBOW=1, GUN=1, TH_SWORD=1, TH_AXE=1, SWORD=1, AXE=1, FIST=1, TH_POLE=1, DAGGER=1, TH_STAFF=1, THROWN=1 },
			stats = {STRENGTH=0.05, AGILITY=1, DAMAGE_PER_SECOND=2.6, ATTACK_POWER=0.55, RANGED_ATTACK_POWER=0.55, HIT=1, EXPERTISE=0.05, CRIT=0.6, HASTE=0.4, ARMOR_PENETRATION=0.37,INTELLECT=0.9, MANA=0.085, SPIRIT=0.05, MANA_REGENERATION=2.4, STAMINA=0.5, HEALTH=0.05, HEALTH_REGENERATION=1, ARMOR=0.005, DEFENSE_SKILL=0.05, DODGE=0.05, PARRY=0.05, FIRE_RESISTANCE=0.04, FROST_RESISTANCE=0.04, ARCANE_RESISTANCE=0.04, SHADOW_RESISTANCE=0.04, NATURE_RESISTANCE=0.04},
			caps = { HIT=5, },
		},
		[3] = { 
			name="Survival", 
			itemtypes = { CLOTH=-40, LEATHER=-40, MAIL=40, BOW=1, CROSSBOW=1, GUN=1, TH_SWORD=1, TH_AXE=1, SWORD=1, AXE=1, FIST=1, TH_POLE=1, DAGGER=1, TH_STAFF=1, THROWN=1 },
			stats = {STRENGTH=0.05, AGILITY=1, DAMAGE_PER_SECOND=2.4, ATTACK_POWER=0.55, RaNGED_ATTACK_POWER=0.55, HIT=1, EXPERTISE=0.05, CRIT=0.65, HASTE=0.4, ARMOR_PENETRATION=0.28,INTELLECT=0.8, MANA=0.075, SPIRIT=0.05, MANA_REGENERATION=2.4, STAMINA=0.5, HEALTH=0.05, HEALTH_REGENERATION=1, ARMOR=0.005, DEFENSE_SKILL=0.05, DODGE=0.05, PARRY=0.05, FIRE_RESISTANCE=0.04, FROST_RESISTANCE=0.04, ARCANE_RESISTANCE=0.04, SHADOW_RESISTANCE=0.04, NATURE_RESISTANCE=0.04},
			caps = { HIT=5, },
		},
	},
	["MAGE"] = {
		[1] = { 
			name="Arcane", 
			itemtypes = {CLOTH=1, TH_STAFF=1, DAGGER=1, SWORD=1, WAND=1,  },
			stats = {AGILITY=0.05, INTELLECT=0.46, MANA=0.038, SPIRIT=0.59, MANA_REGENERATION=1.13, SPELL_DAMAGE_DONE=1, SPELL_DAMAGE_DONE_FIRE=0.064, SPELL_DAMAGE_DONE_FROST=0.52, SPELL_DAMAGE_DONE_ARCANE=0.88, HIT_SPELL=0.87, CRIT_SPELL=0.6, HASTE=0.59, SPELL_PENETRATION=0.09,STAMINA=0.5, HEALTH=0.05, HEALTH_REGENERATION=1, ARMOR=0.005, DEFENSE_SKILL=0.05, DODGE=0.05, PARRY=0.05, FIRE_RESISTANCE=0.04, FROST_RESISTANCE=0.04, ARCANE_RESISTANCE=0.04, SHADOW_RESISTANCE=0.04, NATURE_RESISTANCE=0.04},
			caps = { HIT_SPELL=4, },
		},
		[2] = { 
			name="Fire", 
			itemtypes = {CLOTH=1, TH_STAFF=1, DAGGER=1, SWORD=1, WAND=1,  },
			stats = {SPELL_PENETRATION = 0.340, MANA_REGENERATION = 0.333, SPELL_DAMAGE_DONE = 0.158, SPELL_DAMAGE_DONE_FIRE = 0.158, HIT_SPELL = 1.07, HIT = 1.07, INTELLECT = 0.099, CRIT_SPELL = 0.74, SPIRIT = 0.055, SPELL_DAMAGE_DONE_FROST = 0.041, SPELL_DAMAGE_DONE_ARCANE = 0.041, DAMAGE_PER_SECOND = 0.012},
			caps = { HIT_SPELL=4, },
		},
		[3] = { 
			name="Frost", 
			itemtypes = {CLOTH=1, TH_STAFF=1, DAGGER=1, SWORD=1, WAND=1,  },
			stats = {AGILITY=0.05, INTELLECT=0.37, MANA=0.032, SPIRIT=0.06, MANA_REGENERATION=0.8, SPELL_DAMAGE_DONE=1, SPELL_DAMAGE_DONE_FIRE=0.05, SPELL_DAMAGE_DONE_FROST=0.95, SPELL_DAMAGE_DONE_ARCANE=0.13, HIT_SPELL=1.22, CRIT_SPELL=0.58, HASTE=0.63, SPELL_PENETRATION=0.07,STAMINA=0.5, HEALTH=0.05, HEALTH_REGENERATION=1, ARMOR=0.005, DEFENSE_SKILL=0.05, DODGE=0.05, PARRY=0.05, FIRE_RESISTANCE=0.04, FROST_RESISTANCE=0.04, ARCANE_RESISTANCE=0.04, SHADOW_RESISTANCE=0.04, NATURE_RESISTANCE=0.04},
			caps = { HIT_SPELL=4, },
		}
	},
	["PALADIN"] = { -- cloth/leather/mail only till 40, plate from 40
		[1] = {
			name="Holy", 
			itemtypes = {CLOTH=1, LEATHER=1, MAIL=1, PLATE=40, SHIELD=1, AXE=1, TH_AXE=1, MACE=1, TH_MACE=1, TH_POLE=1, SWORD=1, TH_SWORD=1},
			stats = {AGILITY=0.05, INTELLECT=1, MANA=0.009, SPIRIT=0.28, MANA_REGENERATION=1.24, SPELL_HEALING_DONE=0.54, CRIT_SPELL=0.46, HASTE=0.39, STAMINA=0.5, HEALTH=0.05, HEALTH_REGENERATION=1, ARMOR=0.005, DEFENSE_SKILL=0.05, DODGE=0.05, PARRY=0.05, BLOCK=0.01, FIRE_RESISTANCE=0.04, FROST_RESISTANCE=0.04, ARCANE_RESISTANCE=0.04, SHADOW_RESISTANCE=0.04, NATURE_RESISTANCE=0.04},
			caps = { HIT_SPELL=4, },
		},
		[2] = {
			name="Protection", 
			itemtypes = {CLOTH=-40, LEATHER=-40, MAIL=-40, PLATE=40, SHIELD=1, AXE=1, TH_AXE=1, MACE=1, TH_MACE=1, TH_POLE=1, SWORD=1, TH_SWORD=1},
			stats = {STRENGTH=0.2, AGILITY=0.6, DAMAGE_PER_SECOND=1.77, ATTACK_POWER=0.06, HIT=0.16, EXPERTISE=0.27, CRIT=0.15, HASTE=0.5, ARMOR_PENETRATION=0.09,INTELLECT=0.5, MANA=0.045, SPIRIT=0.05, MANA_REGENERATION=1, SPELL_DAMAGE_DONE=0.44, HolySpellDamage=0.44, HIT_SPELL=0.78, CRIT_SPELL=0.6, HASTE=0.12, SPELL_PENETRATION=0.03,STAMINA=1, HEALTH=0.09, HEALTH_REGENERATION=2, ARMOR=0.02, DEFENSE_SKILL=0.7, DODGE=0.7, PARRY=0.6, BLOCK=0.6, BLOCK_VALUE=0.15, FIRE_RESISTANCE=0.2, FROST_RESISTANCE=0.2, ARCANE_RESISTANCE=0.2, SHADOW_RESISTANCE=0.2, NATURE_RESISTANCE=0.2},
			caps = { HIT=5, },
		},
		[3] = { 
			name="Retribution", 
			itemtypes = {CLOTH=-40, LEATHER=-40, MAIL=-40, PLATE=40, SHIELD=1, AXE=1, TH_AXE=1, MACE=1, TH_MACE=1, TH_POLE=1, SWORD=1, TH_SWORD=1},
			stats = {STRENGTH=1, AGILITY=0.64, DAMAGE_PER_SECOND=5.4, ATTACK_POWER=0.41, HIT=0.84, EXPERTISE=0.87, CRIT=0.66, HASTE=0.25, ARMOR_PENETRATION=0.09,INTELLECT=0.34, MANA=0.032, SPIRIT=0.05, MANA_REGENERATION=1, SPELL_DAMAGE_DONE=0.33, HolySpellDamage=0.33, HIT_SPELL=0.21, CRIT_SPELL=0.12, HASTE=0.04, SPELL_PENETRATION=0.015,STAMINA=0.5, HEALTH=0.05, HEALTH_REGENERATION=1, ARMOR=0.005, DEFENSE_SKILL=0.05, DODGE=0.05, PARRY=0.05, FIRE_RESISTANCE=0.04, FROST_RESISTANCE=0.04, ARCANE_RESISTANCE=0.04, SHADOW_RESISTANCE=0.04, NATURE_RESISTANCE=0.04},
			caps = { HIT=5, },
		}
	},
	["PRIEST"] = {
		[1] = {
			name="Discipline", 
			itemtypes = { CLOTH=1, MACE=1, DAGGER=1, TH_STAFF=1, WAND=1, },
			stats = {AGILITY=0.05, INTELLECT=1, MANA=0.09, SPIRIT=0.48, MANA_REGENERATION=1.19, SPELL_HEALING_DONE=0.72, CRIT_SPELL=0.32, HASTE=0.57, STAMINA=0.5, HEALTH=0.05, HEALTH_REGENERATION=1, ARMOR=0.005, DEFENSE_SKILL=0.05, DODGE=0.05, PARRY=0.05, FIRE_RESISTANCE=0.04, FROST_RESISTANCE=0.04, ARCANE_RESISTANCE=0.04, SHADOW_RESISTANCE=0.04, NATURE_RESISTANCE=0.04},
			caps = { HIT_SPELL=4, },
		},
		[2] = {
			name="Holy", 
			itemtypes = { CLOTH=1, MACE=1, DAGGER=1, TH_STAFF=1, WAND=1, },
			stats = {AGILITY=0.05, INTELLECT=1, MANA=0.09, SPIRIT=0.73, MANA_REGENERATION=1.35, SPELL_HEALING_DONE=0.81, CRIT_SPELL=0.24, HASTE=0.60, STAMINA=0.5, HEALTH=0.05, HEALTH_REGENERATION=1, ARMOR=0.005, DEFENSE_SKILL=0.05, DODGE=0.05, PARRY=0.05, FIRE_RESISTANCE=0.04, FROST_RESISTANCE=0.04, ARCANE_RESISTANCE=0.04, SHADOW_RESISTANCE=0.04, NATURE_RESISTANCE=0.04},
			caps = { HIT_SPELL=4, },
		},
		[3] = {
			name="Shadow", 
			itemtypes = { CLOTH=1, MACE=1, DAGGER=1, TH_STAFF=1, WAND=1, },
			stats = {AGILITY=0.05, INTELLECT=0.19, MANA=0.017, SPIRIT=0.21, MANA_REGENERATION=1, SPELL_DAMAGE_DONE=1, SPELL_DAMAGE_DONE_SHADOW=1, HIT_SPELL=1.12, CRIT_SPELL=0.76, HASTE=0.65, SPELL_PENETRATION=0.08,STAMINA=0.5, HEALTH=0.05, HEALTH_REGENERATION=1, ARMOR=0.005, DEFENSE_SKILL=0.05, DODGE=0.05, PARRY=0.05, FIRE_RESISTANCE=0.04, FROST_RESISTANCE=0.04, ARCANE_RESISTANCE=0.04, SHADOW_RESISTANCE=0.04, NATURE_RESISTANCE=0.04},
			caps = { HIT_SPELL=4, },
		}
	},
	["ROGUE"] = {
		[1] = { 
			name="Assassination", 
			itemtypes = { CLOTH=1, LEATHER=1, BOW=1, CROSSBOW=1, DAGGER=1, FIST=1, GUN=1, MACE=1, SWORD=1, THROWN=1, },
			stats = {STRENGTH=0.5, AGILITY=1, DAMAGE_PER_SECOND=3, ATTACK_POWER=0.45, HIT=1, EXPERTISE=1.1, CRIT=0.81, HASTE=0.9, ARMOR_PENETRATION=0.24, SPIRIT=0.05, MANA_REGENERATION=0, STAMINA=0.5, HEALTH=0.05, HEALTH_REGENERATION=1, ARMOR=0.005, DEFENSE_SKILL=0.05, DODGE=0.05, PARRY=0.12, FIRE_RESISTANCE=0.04, FROST_RESISTANCE=0.04, ARCANE_RESISTANCE=0.04, SHADOW_RESISTANCE=0.04, NATURE_RESISTANCE=0.04},
			caps = { HIT=24, },
		},
		[2] = { 
			name="Combat", 
			itemtypes = { CLOTH=1, LEATHER=1, BOW=1, CROSSBOW=1, DAGGER=1, FIST=1, GUN=1, MACE=1, SWORD=1, THROWN=1, },
			stats = {STRENGTH=0.5, AGILITY=1, DAMAGE_PER_SECOND=3, ATTACK_POWER=0.45, HIT=1, EXPERTISE=1.1, CRIT=0.81, HASTE=0.9, ARMOR_PENETRATION=0.24, SPIRIT=0.05, MANA_REGENERATION=0, STAMINA=0.5, HEALTH=0.05, HEALTH_REGENERATION=1, ARMOR=0.005, DEFENSE_SKILL=0.05, DODGE=0.05, PARRY=0.12, FIRE_RESISTANCE=0.04, FROST_RESISTANCE=0.04, ARCANE_RESISTANCE=0.04, SHADOW_RESISTANCE=0.04, NATURE_RESISTANCE=0.04},
			caps = { HIT=24, },
		},
		[3] = { 
			name="Subtlety", 
			itemtypes = { CLOTH=1, LEATHER=1, BOW=1, CROSSBOW=1, DAGGER=1, FIST=1, GUN=1, MACE=1, SWORD=1, THROWN=1, },
			stats = {STRENGTH=0.5, AGILITY=1, DAMAGE_PER_SECOND=3, ATTACK_POWER=0.45, HIT=1, EXPERTISE=1.1, CRIT=0.81, HASTE=0.9, ARMOR_PENETRATION=0.24, SPIRIT=0.05, MANA_REGENERATION=0, STAMINA=0.5, HEALTH=0.05, HEALTH_REGENERATION=1, ARMOR=0.005, DEFENSE_SKILL=0.05, DODGE=0.05, PARRY=0.12, FIRE_RESISTANCE=0.04, FROST_RESISTANCE=0.04, ARCANE_RESISTANCE=0.04, SHADOW_RESISTANCE=0.04, NATURE_RESISTANCE=0.04},
			caps = { HIT=24, },
		}
	},
	["SHAMAN"] = { -- cloth/leather only till 40, mail from 40
		[1] = {  
			name="Elemental", 
			itemtypes = { CLOTH=-40, LEATHER=-40, MAIL=40, SHIELD=1, AXE=1, TH_AXE=1, DAGGER=1, FIST=1, MACE=1, TH_MACE=1, TH_STAFF=1, },
			stats = {AGILITY=0.05, INTELLECT=0.31, MANA=0.024, SPIRIT=0.09, MANA_REGENERATION=1.14, SPELL_DAMAGE_DONE=1, SPELL_DAMAGE_DONE_NATURE=1, HIT_SPELL=0.9, CRIT_SPELL=1.05, HASTE=0.9, SPELL_PENETRATION=0.38,STAMINA=0.5, HEALTH=0.05, HEALTH_REGENERATION=1, ARMOR=0.005, DEFENSE_SKILL=0.05, DODGE=0.05, PARRY=0.12, BLOCK=0.01, FIRE_RESISTANCE=0.04, FROST_RESISTANCE=0.04, ARCANE_RESISTANCE=0.04, SHADOW_RESISTANCE=0.04, NATURE_RESISTANCE=0.04},
			caps = { HIT_SPELL=4, },
		},
		[2] = { 
			name="Enhancement",
			itemtypes = { CLOTH=-40, LEATHER=-40, MAIL=40, SHIELD=1, AXE=1, TH_AXE=1, DAGGER=1, FIST=1, MACE=1, TH_MACE=1, TH_STAFF=1, },
			stats = {STRENGTH=1, AGILITY=0.87, DAMAGE_PER_SECOND=3, ATTACK_POWER=0.5, HIT=0.67, EXPERTISE=1.5, CRIT=0.98, HASTE=0.64, ARMOR_PENETRATION=0.12,INTELLECT=0.34, MANA=0.032, SPIRIT=0.05, MANA_REGENERATION=1, SPELL_DAMAGE_DONE=0.3, SPELL_DAMAGE_DONE_NATURE=0.3, HIT_SPELL=0.223, CRIT_SPELL=0.326, HASTE=0.08, SPELL_PENETRATION=0.11,STAMINA=0.5, HEALTH=0.05, HEALTH_REGENERATION=1, ARMOR=0.005, DEFENSE_SKILL=0.05, DODGE=0.05, PARRY=0.05, FIRE_RESISTANCE=0.04, FROST_RESISTANCE=0.04, ARCANE_RESISTANCE=0.04, SHADOW_RESISTANCE=0.04, NATURE_RESISTANCE=0.04},
			caps = { HIT=24, },
		},
		[3] = {
			name="Restoration", 
			itemtypes = { CLOTH=1, LEATHER=1, MAIL=40, SHIELD=1, AXE=1, TH_AXE=1, DAGGER=1, FIST=1, MACE=1, TH_MACE=1, TH_STAFF=1, },
			stats = {AGILITY=0.05, INTELLECT=1, MANA=0.009, SPIRIT=0.61, MANA_REGENERATION=1.33, SPELL_HEALING_DONE=0.9, CRIT_SPELL=0.48, HASTE=0.74, STAMINA=0.5, HEALTH=0.05, HEALTH_REGENERATION=1, ARMOR=0.005, DEFENSE_SKILL=0.05, DODGE=0.05, PARRY=0.05, BLOCK=0.01, FIRE_RESISTANCE=0.04, FROST_RESISTANCE=0.04, ARCANE_RESISTANCE=0.04, SHADOW_RESISTANCE=0.04, NATURE_RESISTANCE=0.04},
			caps = { HIT_SPELL=4, },
		}
	},
	["WARLOCK"] = {
		[1] = {
			name="Affliction", 
			itemtypes = { CLOTH=1, DAGGER=1, WAND=1, TH_STAFF=1, SWORD=1, },
			stats = {AGILITY=0.05, INTELLECT=0.4, MANA=0.03, SPIRIT=0.1, MANA_REGENERATION=1, SPELL_DAMAGE_DONE=1, SPELL_DAMAGE_DONE_FIRE=0.35, SPELL_DAMAGE_DONE_SHADOW=0.91, HIT_SPELL=1.2, CRIT_SPELL=0.39, HASTE=0.78, SPELL_PENETRATION=0.08,STAMINA=0.5, HEALTH=0.05, HEALTH_REGENERATION=1, ARMOR=0.005, DEFENSE_SKILL=0.05, DODGE=0.05, PARRY=0.05, FIRE_RESISTANCE=0.04, FROST_RESISTANCE=0.04, ARCANE_RESISTANCE=0.04, SHADOW_RESISTANCE=0.04, NATURE_RESISTANCE=0.04},
			caps = { HIT_SPELL=4, },
		},
		[2] = {
			name="Demonology", 
			itemtypes = { CLOTH=1, DAGGER=1, WAND=1, TH_STAFF=1, SWORD=1, },
			stats = {AGILITY=0.05, INTELLECT=0.4, MANA=0.03, SPIRIT=0.5, MANA_REGENERATION=1, SPELL_DAMAGE_DONE=1, SPELL_DAMAGE_DONE_FIRE=0.80, SPELL_DAMAGE_DONE_SHADOW=0.8, HIT_SPELL=1.2, CRIT_SPELL=0.66, HASTE=0.7, SPELL_PENETRATION=0.08,STAMINA=0.5, HEALTH=0.05, HEALTH_REGENERATION=1, ARMOR=0.005, DEFENSE_SKILL=0.05, DODGE=0.05, PARRY=0.05, FIRE_RESISTANCE=0.04, FROST_RESISTANCE=0.04, ARCANE_RESISTANCE=0.04, SHADOW_RESISTANCE=0.04, NATURE_RESISTANCE=0.04},
			caps = { HIT_SPELL=4, },
		},
		[3] = {
			name="Destruction", 
			itemtypes = { CLOTH=1, DAGGER=1, WAND=1, TH_STAFF=1, SWORD=1, },
			stats = {AGILITY=0.05, INTELLECT=0.34, MANA=0.028, SPIRIT=0.25, MANA_REGENERATION=0.65, SPELL_DAMAGE_DONE=1, SPELL_DAMAGE_DONE_FIRE=0.23, SPELL_DAMAGE_DONE_SHADOW=0.95, HIT_SPELL=1.6, CRIT_SPELL=0.87, HASTE=1.15, SPELL_PENETRATION=0.08,STAMINA=0.5, HEALTH=0.05, HEALTH_REGENERATION=1, ARMOR=0.005, DEFENSE_SKILL=0.05, DODGE=0.05, PARRY=0.05, FIRE_RESISTANCE=0.04, FROST_RESISTANCE=0.04, ARCANE_RESISTANCE=0.04, SHADOW_RESISTANCE=0.04, NATURE_RESISTANCE=0.04},
			caps = { HIT_SPELL=4, },
		}
	},
	["WARRIOR"] = { -- cloth/leather,mail only till 40, plate from 40
		[1] = { 
			name="Arms", 
			itemtypes = {CLOTH=-40, LEATHER=-40, MAIL=-40, PLATE=40, SHIELD=1, AXE=1, TH_AXE=1, BOW=1, CROSSBOW=1, DAGGER=1, FIST=1, GUN=1, MACE=1, TH_MACE=1, TH_POLE=1, TH_STAFF=1, SWORD=1, TH_SWORD=1, OFFHAND=1, MISCARM=1, THROWN=1,  },
			stats = {STRENGTH=1, AGILITY=0.69, DAMAGE_PER_SECOND=5.31, ATTACK_POWER=0.45, HIT=1, EXPERTISE=1, CRIT=0.85, HASTE=0.57, ARMOR_PENETRATION=1.1, SPIRIT=0.05, MANA_REGENERATION=0, STAMINA=0.5, HEALTH=0.05, HEALTH_REGENERATION=1, ARMOR=0.005, DEFENSE_SKILL=0.05, DODGE=0.05, PARRY=0.05, FIRE_RESISTANCE=0.04, FROST_RESISTANCE=0.04, ARCANE_RESISTANCE=0.04, SHADOW_RESISTANCE=0.04, NATURE_RESISTANCE=0.04},
			caps = { HIT=5, },
		},
		[2] = { 
			name="Fury", 
			itemtypes = {CLOTH=-40, LEATHER=-40, MAIL=-40, PLATE=40, SHIELD=1, AXE=1, TH_AXE=1, BOW=1, CROSSBOW=1, DAGGER=1, FIST=1, GUN=1, MACE=1, TH_MACE=1, TH_POLE=1, TH_STAFF=1, SWORD=1, TH_SWORD=1, OFFHAND=1, MISCARM=1, THROWN=1,  },
			stats = {STRENGTH=1, AGILITY=0.57, DAMAGE_PER_SECOND=5.22, ATTACK_POWER=0.54, HIT=0.57, EXPERTISE=0.57, CRIT=0.7, HASTE=0.41, ARMOR_PENETRATION=0.47, SPIRIT=0.05, MANA_REGENERATION=0, STAMINA=0.5, HEALTH=0.05, HEALTH_REGENERATION=1, ARMOR=0.005, DEFENSE_SKILL=0.05, DODGE=0.05, PARRY=0.12, FIRE_RESISTANCE=0.04, FROST_RESISTANCE=0.04, ARCANE_RESISTANCE=0.04, SHADOW_RESISTANCE=0.04, NATURE_RESISTANCE=0.04},
			caps = { HIT=5, },
		},
		[3] = {
			name="Prot", 
			itemtypes = {CLOTH=-40, LEATHER=-40, MAIL=-40, PLATE=40, SHIELD=1, AXE=1, TH_AXE=1, BOW=1, CROSSBOW=1, DAGGER=1, FIST=1, GUN=1, MACE=1, TH_MACE=1, TH_POLE=1, TH_STAFF=1, SWORD=1, TH_SWORD=1, OFFHAND=1, MISCARM=1, THROWN=1,  },
			stats = {STRENGTH=0.33, AGILITY=0.59, DAMAGE_PER_SECOND=3.13, ATTACK_POWER=0.06, HIT=0.67, EXPERTISE=0.67, CRIT=0.28, HASTE=0.21, ARMOR_PENETRATION=0.19, SPIRIT=0.05, MANA_REGENERATION=0, STAMINA=1, HEALTH=0.09, HEALTH_REGENERATION=2, ARMOR=0.02, DEFENSE_SKILL=0.81, DODGE=0.7, PARRY=0.58, BLOCK=0.59, BLOCK_VALUE=0.35, FIRE_RESISTANCE=0.2, FROST_RESISTANCE=0.2, ARCANE_RESISTANCE=0.2, SHADOW_RESISTANCE=0.2, NATURE_RESISTANCE=0.2},
			caps = { HIT=5, },
		}
	},
}
ItemScore.Builds={}
for class,classData in pairs(ItemScore.rules) do
	ItemScore.Builds[ZGV.ClassToNumber[class]] = {}
	for buildid,builddata in pairs(classData) do
		ItemScore.Builds[ZGV.ClassToNumber[class]][buildid] = builddata.name
	end
end



ItemScore.Unique_Equipped_Families = { }-- those items are unique equipped, but do not return GetItemUniqueness values


ItemScore.Item_Weapon_Types = {
	[0] = "AXE",
	[1] = "TH_AXE",
	[2] = "BOW",
	[3] = "GUN",
	[4] = "MACE",
	[5] = "TH_MACE",
	[6] = "TH_POLE",
	[7] = "SWORD",
	[8] = "TH_SWORD",
	[9] = "WARGLAIVE",
	[10] = "TH_STAFF",
	[11] = "DRUID_BEAR",
	[12] = "DRUID_CAT",
	[13] = "FIST",
	[14] = "MISCWEAP",
	[15] = "DAGGER",
	[16] = "THROWN",
	[17] = "SPEAR",
	[18] = "CROSSBOW",
	[19] = "WAND",
	[20] = "FISHPOLE",
	}

ItemScore.Item_Armor_Types = {
	[0] = "JEWELERY", -- necklace, rings and trinkets, also some cosmetic armor
	[1] = "CLOTH",
	[2] = "LEATHER",
	[3] = "MAIL",
	[4] = "PLATE",
	[5] = "COSMETIC",
	[6] = "SHIELD",
	}

ItemScore.TypeToSlot = {
	INVTYPE_WEAPON = INVSLOT_MAINHAND, -- dual wield handled in GetValidSlots
	INVTYPE_WEAPONMAINHAND = INVSLOT_MAINHAND,
	INVTYPE_2HWEAPON = INVSLOT_MAINHAND, -- titan fury hanndled in GetValidSlots
	INVTYPE_WEAPONOFFHAND = INVSLOT_OFFHAND,
	INVTYPE_SHIELD = INVSLOT_OFFHAND,
	INVTYPE_THROWN = INVSLOT_RANGED,
	INVTYPE_RANGED = INVSLOT_RANGED,
	INVTYPE_RANGEDRIGHT = INVSLOT_RANGED,
	INVTYPE_HOLDABLE = INVSLOT_OFFHAND,
	INVTYPE_HEAD = INVSLOT_HEAD,
	INVTYPE_NECK = INVSLOT_NECK,
	INVTYPE_SHOULDER = INVSLOT_SHOULDER,
	INVTYPE_CLOAK = INVSLOT_BACK,
	INVTYPE_CHEST = INVSLOT_CHEST,
	INVTYPE_ROBE = INVSLOT_CHEST,
	INVTYPE_WRIST = INVSLOT_WRIST,
	INVTYPE_HAND = INVSLOT_HAND,
	INVTYPE_WAIST = INVSLOT_WAIST,
	INVTYPE_LEGS = INVSLOT_LEGS,
	INVTYPE_FEET = INVSLOT_FEET,
	INVTYPE_FINGER = INVSLOT_FINGER1, -- second slot handled in GetValidSlots
	INVTYPE_TRINKET = INVSLOT_TRINKET1, -- second slot handled in GetValidSlots
}

ItemScore.SkillNames = { -- gets trimmed in a moment										-- needs checking
	-- Thanks go to simonstone for zhTW translation
	--{id=95,		enUS="Defense",			deDE="Verteidigung",		esES="Defensa",			esMX="Defensa",			frFR="Défense",			itIT="Defense",			ptBR="Defesa",			ruRU="Защита",				koKR="방어",		zhCN="防御",	zhTW="防禦",	},	  
	DUALWIELD = {id=118,	enUS="Dual Wield",		deDE="Beidhändigkeit",		esES="Empuñadura dual",		esMX="Doble empuñadura",	frFR="Ambidextrie",		itIT="Dual Wield",		ptBR="Empunhar Duas Armas",	ruRU="Бой двумя руками",		koKR="쌍수 무기",		zhCN="双武器",	zhTW="雙持",	},		      
	SWORD = {id=43,		enUS="Swords",			deDE="Schwerter",		esES="Espadas",			esMX="Espadas",			frFR="Epées",			itIT="Swords",			ptBR="Espadas",			ruRU="Мечи",				koKR="도검류",		zhCN="单手剑",	zhTW="單手劍",	},	      
	WAND = {id=228,		enUS="Wands",			deDE="Zauberstäbe",		esES="Varitas",			esMX="Varitas",			frFR="Baguettes",		itIT="Wands",			ptBR="Varinhas",		ruRU="Жезлы",				koKR="마법봉류",		zhCN="魔杖",	zhTW="魔杖",	},	      
	TH_SWORD = {id=55,	enUS="Two-Handed Swords",	deDE="Zweihandschwerter",	esES="Espadas de dos manos",	esMX="Espadas de dos manos",	frFR="Epées à deux mains",	itIT="Two-Handed Swords",	ptBR="Espadas de Duas Mãos",	ruRU="Двуручные мечи",			koKR="양손 도검류",	zhCN="双手剑",	zhTW="雙手劍",	},		      
	THROWN = {id=176,	enUS="Thrown",			deDE="Wurfwaffen",		esES="Armas arrojadizas",	esMX="Armas arrojadizas",	frFR="Armes de jet",		itIT="Thrown",			ptBR="Arremesso",		ruRU="Метательное оружие",		koKR="투척 무기류",	zhCN="投掷武器",	zhTW="投擲武器",	},	      
	FIST = {id=473,		enUS="Fist Weapons",		deDE="Faustwaffen",		esES="Armas de puño",		esMX="Armas de puño",		frFR="Armes de pugilat",	itIT="Fist Weapons",		ptBR="Armas de punho",		ruRU="Кистевое оружие",			koKR="장착 무기류",	zhCN="拳套",	zhTW="拳套",	},	      
	TH_MACE = {id=160,	enUS="Two-Handed Maces",	deDE="Zweihandstreitkolben",	esES="Mazas de dos manos",	esMX="Mazas de dos manos",	frFR="Masses à deux mains",	itIT="Two-Handed Maces",	ptBR="Maças de Duas Mãos",	ruRU="Двуручное дробящее оружие",	koKR="양손 둔기류",	zhCN="双手锤",	zhTW="雙手錘",	},		      
	TH_AXE = {id=172,	enUS="Two-Handed Axes",		deDE="Zweihandäxte",		esES="Hachas de dos manos",	esMX="Hachas de dos manos",	frFR="Haches à deux mains",	itIT="Two-Handed Axes",		ptBR="Machados de Duas Mãos",	ruRU="Двуручные топоры",		koKR="양손 도끼류",	zhCN="双手斧",	zhTW="雙手斧",	},		      
	AXE = {id=44,		enUS="Axes",			deDE="Äxte",			esES="Hachas",			esMX="Hachas",			frFR="Haches",			itIT="Axes",			ptBR="Machados",		ruRU="Топоры",				koKR="도끼류",		zhCN="单手斧",	zhTW="單手斧",	},		      
	GUN = {id=46,		enUS="Guns",			deDE="Schusswaffen",		esES="Armas de fuego",		esMX="Armas de fuego",		frFR="Armes à feu",		itIT="Guns",			ptBR="Armas de Fogo",		ruRU="Огнестрельное оружие",		koKR="총기류",		zhCN="枪械",	zhTW="槍械",	},		      
	TH_POLE = {id=229,	enUS="Polearms",		deDE="Stangenwaffen",		esES="Armas de asta",		esMX="Armas de asta",		frFR="Armes d'hast",		itIT="Polearms",		ptBR="Armas de Haste",		ruRU="Древковое оружие",		koKR="장창류",		zhCN="长柄武器",	zhTW="長柄武器",	},	      
	BOW = {id=45,		enUS="Bows",			deDE="Bogen",			esES="Arcos",			esMX="Arcos",			frFR="Arcs",			itIT="Bows",			ptBR="Arcos",			ruRU="Луки",				koKR="활류",		zhCN="弓",	zhTW="弓",	},		      
	CROSSBOW = {id=226,	enUS="Crossbows",		deDE="Armbrüste",		esES="Ballestas",		esMX="Ballestas",		frFR="Arbalètes",		itIT="Crossbows",		ptBR="Bestas",			ruRU="Арбалеты",			koKR="석궁류",		zhCN="弩",	zhTW="弩",	},		      
	TH_STAFF = {id=136,	enUS="Staves",			deDE="Stäbe",			esES="Bastones",		esMX="Bastones",		frFR="Bâtons",			itIT="Staves",			ptBR="Báculos",			ruRU="Посохи",				koKR="지팡이류",		zhCN="法杖",	zhTW="法杖",	},		      
	-- {id=162,		enUS="Unarmed",			deDE="Unbewaffnet",		esES="Sin armas",		esMX="Sin armas",		frFR="Mains nues",		itIT="Unarmed",			ptBR="Combate desarmado",	ruRU="Рукопашный бой",			koKR="맨손 전투",		zhCN="徒手战斗",	zhTW="未裝備",	},		      
	MACE = {id=54,		enUS="Maces",			deDE="Streitkolben",		esES="Mazas",			esMX="Mazas",			frFR="Masse",			itIT="Maces",			ptBR="Maças",			ruRU="Дробящее оружие",			koKR="둔기류",		zhCN="单手锤",	zhTW="單手錘",	},	      
	DAGGER = {id=173,	enUS="Daggers",			deDE="Dolche",			esES="Dagas",			esMX="Dagas",			frFR="Dagues",			itIT="Daggers",			ptBR="Adagas",			ruRU="Кинжалы",				koKR="단검류",		zhCN="匕首",	zhTW="匕首",	},		      
	PLATE = {id=293,	enUS="Plate Mail",		deDE="Plattenpanzer",		esES="Armadura de placas",	esMX="Armadura de placas",	frFR="Armure en plaques",	itIT="Plate Mail",		ptBR="Armadura de Placa",	ruRU="Латы",				koKR="판금 갑옷",		zhCN="板甲",	zhTW="鎧甲",	},		      
	MAIL = {id=413,		enUS="Mail",			deDE="Schwere Rüstung",		esES="Malla",			esMX="Mallas",			frFR="Mailles",			itIT="Mail",			ptBR="Malha",			ruRU="Кольчужные доспехи",		koKR="사슬",		zhCN="锁甲",	zhTW="鎖甲",	},	      
	CLOTH = {id=415,	enUS="Cloth",			deDE="Stoff",			esES="Tela",			esMX="Tela",			frFR="Tissu",			itIT="Cloth",			ptBR="Tecido",			ruRU="Тканевые доспехи",		koKR="천",		zhCN="布甲",	zhTW="布甲",	},		      
	SHIELD = {id=433,	enUS="Shield",			deDE="Schild",			esES="Escudo",			esMX="Escudo",			frFR="Bouclier",		itIT="Shield",			ptBR="Escudo",			ruRU="Щит",				koKR="방패",		zhCN="盾牌",	zhTW="盾牌",	},		      
	LEATHER = {id=414,	enUS="Leather",			deDE="Leder",			esES="Cuero",			esMX="Cuero",			frFR="Cuir",			itIT="Leather",			ptBR="Couro",			ruRU="Кожаные доспехи",			koKR="가죽",		zhCN="皮甲",	zhTW="皮甲",	},		      
}
ItemScore.SkillNamesRev={}

for i,skillset in pairs(ItemScore.SkillNames) do -- drop other languages
	local name = skillset[locale] or skillset.enUS
	ItemScore.SkillNames[i] = name
	ItemScore.SkillNamesRev[name] = i
end

-- Build simpler defaults table for use in options
ItemScore.Defaults = {}
for class,specs in pairs(ItemScore.rules) do
 ZGV.ItemScore.Defaults[class] = {}
 for spec,data in pairs(specs) do
	ZGV.ItemScore.Defaults[class][spec] = {}

	for name,v in pairs(data.stats) do
		table.insert(ZGV.ItemScore.Defaults[class][spec],{name=name,weight=v})
	end
	sort(ZGV.ItemScore.Defaults[class][spec],function(a,b) return a.name<b.name end)
 end
end 