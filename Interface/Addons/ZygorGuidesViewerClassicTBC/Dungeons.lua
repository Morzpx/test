local name,ZGV = ...

local L = ZGV.L

local Dungeons = {}

ZGV.Dungeons = Dungeons

local DungeonProto = {}
function DungeonProto:GetName(difficulty)
	difficulty = difficulty or self.difficulty
	
	return L['dungeon_'..difficulty]:format(self.name)
end


local DungeonNamesToMapNames = {
	['Deadmines'] = "The Deadmines",
}
setmetatable(DungeonNamesToMapNames,{__index=function(t,map) return map end})  -- return the same name if no alias is found
Dungeons.DungeonNamesToMapNames  = DungeonNamesToMapNames

Dungeons.ExpansionsLimits = {
	[0] = 60, -- vanilla
	[1] = 70, -- tbc
}


-- Timewalks and legion mythics do not have any lfg entry, so we need to hardcode basic data for them
local hardcoded_dungeons = {
	[719] =  {instanceID=48,   expansionLevel=0, minLevel=15, difficulty=1, mapid=9001, name="Blackfathom Deeps"},
	[1584] = {instanceID=230,  expansionLevel=0, minLevel=42, difficulty=1, mapid=9002, name="Blackrock Depths"},
	[2557] = {instanceID=429,  expansionLevel=0, minLevel=31, difficulty=1, mapid=9005, name="Dire Maul East", instancename="Dire Maul"},
	[2558] = {instanceID=429,  expansionLevel=0, minLevel=31, difficulty=1, mapid=9005, name="Dire Maul North", instancename="Dire Maul"},
	[2559] = {instanceID=429,  expansionLevel=0, minLevel=31, difficulty=1, mapid=9005, name="Dire Maul West", instancename="Dire Maul"},
	[721] =  {instanceID=90,   expansionLevel=0, minLevel=19, difficulty=1, mapid=9006, name="Gnomeregan"},
	[1583] = {instanceID=229,  expansionLevel=0, minLevel=48, difficulty=1, mapid=9003, name="Lower Blackrock Spire"},
	[2102] = {instanceID=349,  expansionLevel=0, minLevel=25, difficulty=1, mapid=9007, name="Maraudon Inner", instancename="Maraudon"},
	[2101] = {instanceID=349,  expansionLevel=0, minLevel=25, difficulty=1, mapid=9007, name="Maraudon Orange", instancename="Maraudon"},
	[2100] = {instanceID=349,  expansionLevel=0, minLevel=25, difficulty=1, mapid=9007, name="Maraudon Purple", instancename="Maraudon"},
	[2437] = {instanceID=389,  expansionLevel=0, minLevel=10, difficulty=1, mapid=9010, name="Ragefire Chasm"},
	[722] =  {instanceID=129,  expansionLevel=0, minLevel=35, difficulty=1, mapid=9011, name="Razorfen Downs"},
	[491] =  {instanceID=47,   expansionLevel=0, minLevel=25, difficulty=1, mapid=9012, name="Razorfen Kraul"},
	[796] =  {instanceID=1004, expansionLevel=0, minLevel=20, difficulty=1, mapid=9015, name="Scarlet Monastery Armory", instancename="Scarlet Monastery"},
	[797] =  {instanceID=1004, expansionLevel=0, minLevel=20, difficulty=1, mapid=9015, name="Scarlet Monastery Cathedral", instancename="Scarlet Monastery"},
	[798] =  {instanceID=1004, expansionLevel=0, minLevel=20, difficulty=1, mapid=9015, name="Scarlet Monastery Graveyard", instancename="Scarlet Monastery"},
	[799] =  {instanceID=1004, expansionLevel=0, minLevel=20, difficulty=1, mapid=9015, name="Scarlet Monastery Library", instancename="Scarlet Monastery"},
	[2057] = {instanceID=1007, expansionLevel=0, minLevel=33, difficulty=1, mapid=9016, name="Scholomance"},
	[209] =  {instanceID=33,   expansionLevel=0, minLevel=11, difficulty=1, mapid=9017, name="Shadowfang Keep"},
	[2017] = {instanceID=329,  expansionLevel=0, minLevel=37, difficulty=1, mapid=9018, name="Stratholme Living", instancename="Stratholme"},
	[2018] = {instanceID=329,  expansionLevel=0, minLevel=37, difficulty=1, mapid=9018, name="Stratholme Undead", instancename="Stratholme"},
	[1581] = {instanceID=36,   expansionLevel=0, minLevel=10, difficulty=1, mapid=9020, name="The Deadmines"},
	[717] =  {instanceID=34,   expansionLevel=0, minLevel=15, difficulty=1, mapid=9021, name="The Stockade"},
	[1477] = {instanceID=109,  expansionLevel=0, minLevel=45, difficulty=1, mapid=9022, name="The Temple of Atal'Hakkar"},
	[1337] = {instanceID=70,   expansionLevel=0, minLevel=30, difficulty=1, mapid=9023, name="Uldaman"},
	[1582] = {instanceID=229,  expansionLevel=0, minLevel=48, difficulty=1, mapid=9003, name="Upper Blackrock Spire"},
	[718] =  {instanceID=43,   expansionLevel=0, minLevel=10, difficulty=1, mapid=9024, name="Wailing Caverns"},
	[1176] = {instanceID=209,  expansionLevel=0, minLevel=39, difficulty=1, mapid=9025, name="Zul'Farrak"},

	[2677] = {instanceID=469, expansionLevel=0, minLevel=60, difficulty=14, mapid=9004, name="Blackwing Lair"},
	[2717] = {instanceID=409, expansionLevel=0, minLevel=60, difficulty=14, mapid=9008, name="Molten Core"},
	[3456] = {instanceID=533, expansionLevel=0, minLevel=60, difficulty=14, mapid=9009, name="Naxxramas"}, -- verify instanceID, correct difficulty once unlocked
	[2159] = {instanceID=249, expansionLevel=0, minLevel=60, difficulty=14, mapid=9010, name="Onyxia"}, -- verify instanceID
	[3429] = {instanceID=509, expansionLevel=0, minLevel=60, difficulty=14, mapid=9013, name="The Ruins of Ahn'Qiraj"},
	[3428] = {instanceID=531, expansionLevel=0, minLevel=60, difficulty=14, mapid=9019, name="The Temple of Ahn'Qiraj"},
	[0] =    {instanceID=0,   expansionLevel=0, minLevel=60, difficulty=14, mapid=-1, name="World Bosses"},
	[1977] = {instanceID=309, expansionLevel=0, minLevel=60, difficulty=14, mapid=9026, name="Zul'Gurub"}, -- verify instanceID

	[9101] =    {expansionLevel=1, minLevel=62, difficulty=1, mapid=9101, name="Auchenai Crypts"},
	["9101H"] = {expansionLevel=1, minLevel=70, difficulty=2, mapid=9101, name="Auchenai Crypts"},
	[9102] =    {expansionLevel=1, minLevel=57, difficulty=1, mapid=9102, name="Hellfire Ramparts"},
	["9102H"] = {expansionLevel=1, minLevel=70, difficulty=2, mapid=9102, name="Hellfire Ramparts"},
	--phase 5 [9103] =    {expansionLevel=1, minLevel=65, difficulty=1, mapid=9103, name="Magisters' Terrace"},
	--phase 5 ["9103H"] = {expansionLevel=1, minLevel=70, difficulty=2, mapid=9103, name="Magisters' Terrace"},
	[9104] =    {expansionLevel=1, minLevel=61, difficulty=1, mapid=9104, name="Mana-Tombs"},
	["9104H"] = {expansionLevel=1, minLevel=70, difficulty=2, mapid=9104, name="Mana-Tombs"},
	[9105] =    {expansionLevel=1, minLevel=63, difficulty=1, mapid=9105, name="Old Hillsbrad Foothills"},
	["9105H"] = {expansionLevel=1, minLevel=70, difficulty=2, mapid=9105, name="Old Hillsbrad Foothills"},
	[9106] =    {expansionLevel=1, minLevel=63, difficulty=1, mapid=9106, name="Sethekk Halls"},
	["9106H"] = {expansionLevel=1, minLevel=70, difficulty=2, mapid=9106, name="Sethekk Halls"},
	[9107] =    {expansionLevel=1, minLevel=65, difficulty=1, mapid=9107, name="Shadow Labyrinth"},
	["9107H"] = {expansionLevel=1, minLevel=70, difficulty=2, mapid=9107, name="Shadow Labyrinth"},
	[9108] =    {expansionLevel=1, minLevel=65, difficulty=1, mapid=9108, name="The Arcatraz"},
	["9108H"] = {expansionLevel=1, minLevel=70, difficulty=2, mapid=9108, name="The Arcatraz"},
	[9109] =    {expansionLevel=1, minLevel=65, difficulty=1, mapid=9109, name="The Black Morass"},
	["9109H"] = {expansionLevel=1, minLevel=70, difficulty=2, mapid=9109, name="The Black Morass"},
	[9110] =    {expansionLevel=1, minLevel=58, difficulty=1, mapid=9110, name="The Blood Furnace"},
	["9110H"] = {expansionLevel=1, minLevel=70, difficulty=2, mapid=9110, name="The Blood Furnace"},
	[9111] =    {expansionLevel=1, minLevel=65, difficulty=2, mapid=9111, name="The Botanica"},
	["9111H"] = {expansionLevel=1, minLevel=70, difficulty=1, mapid=9111, name="The Botanica"},
	[9112] =    {expansionLevel=1, minLevel=65, difficulty=1, mapid=9112, name="The Mechanar"},
	["9112H"] = {expansionLevel=1, minLevel=70, difficulty=2, mapid=9112, name="The Mechanar"},
	[9113] =    {expansionLevel=1, minLevel=65, difficulty=2, mapid=9113, name="The Shattered Halls"},
	["9113H"] = {expansionLevel=1, minLevel=70, difficulty=1, mapid=9113, name="The Shattered Halls"},
	[9114] =    {expansionLevel=1, minLevel=59, difficulty=1, mapid=9114, name="The Slave Pens"},
	["9114H"] = {expansionLevel=1, minLevel=70, difficulty=2, mapid=9114, name="The Slave Pens"},
	[9115] =    {expansionLevel=1, minLevel=65, difficulty=2, mapid=9115, name="The Steamvault"},
	["9115H"] = {expansionLevel=1, minLevel=70, difficulty=1, mapid=9115, name="The Steamvault"},
	[9116] =    {expansionLevel=1, minLevel=60, difficulty=1, mapid=9116, name="The Underbog"},
	["9116H"] = {expansionLevel=1, minLevel=70, difficulty=2, mapid=9116, name="The Underbog"},

	--phase 3 [9117] = {expansionLevel=1, minLevel=70, difficulty=14, mapid=9117, name="Black Temple"},
	[9118] = {expansionLevel=1, minLevel=70, difficulty=14, mapid=9118, name="Gruul's Lair"},
	--phase 3 [9119] = {expansionLevel=1, minLevel=70, difficulty=14, mapid=9119, name="Hyjal Summit"},
	[9120] = {expansionLevel=1, minLevel=70, difficulty=14, mapid=9120, name="Karazhan"},
	[9121] = {expansionLevel=1, minLevel=70, difficulty=14, mapid=9121, name="Magtheridon's Lair"},
	--phase 2 [9122] = {expansionLevel=1, minLevel=70, difficulty=14, mapid=9122, name="Serpentshrine Cavern"},
	--phase 5 [9123] = {expansionLevel=1, minLevel=70, difficulty=14, mapid=9123, name="Sunwell Plateau"},
	--phase 2 [9124] = {expansionLevel=1, minLevel=70, difficulty=14, mapid=9124, name="Tempest Keep"},
	--phase 4 [9125] = {expansionLevel=1, minLevel=70, difficulty=14, mapid=9125, name="Zul'Aman"},
}

local max_levels = {
}

local add_flags = {
}

local override_min_levels = {
}

setmetatable(Dungeons,{
	__index=function(t,id)
		-- cache from game, to get all data in one place
		if not id then return end

		if type(id)=="string" and not hardcoded_dungeons[id] then return end   -- error("No function Dungeons."..id)   -- don't error, this breaks Spoo.

		local name, typeID, subtypeID, minLevel, maxLevel, recLevel, minRecLevel, maxRecLevel, expansionLevel, groupID, textureFilename, difficulty, maxPlayers, description, isHoliday, min_ilevel, attunement_achieve, attunement_quest, attunement_queston, bonusRepAmount,isTimeWalker,minPlayers,name2
		if hardcoded_dungeons[id] then
			local d=hardcoded_dungeons[id]
			name,expansionLevel,minLevel,min_ilevel,difficulty = d.name,d.expansionLevel,d.minLevel,d.min_ilevel,d.difficulty
		else
			--name, typeID, subtypeID, minLevel, maxLevel, recLevel, minRecLevel, maxRecLevel, expansionLevel, groupID, textureFilename, difficulty, maxPlayers, description, isHoliday, bonusRepAmount, minPlayers, isTimeWalker, name2, min_ilevel  = GetLFGDungeonInfo(id)
		end

		if name and typeID~=4 then
			local dungeon = {}

			dungeon.id = id
			dungeon.name = name
			dungeon.difficulty = difficulty
			dungeon.isHoliday = isHoliday
			if override_min_levels[id] then
				dungeon.minLevel = override_min_levels[id][Dungeons.Faction]
			else
				dungeon.minLevel = minLevel
			end
			dungeon.expansionLevel = expansionLevel
			dungeon.maxScaleLevel = math.max(Dungeons.ExpansionsLimits[expansionLevel],dungeon.minLevel) -- maxscale cannot be lower than minlevel (uldir hero/mythic reports being from exp6, so maxscale would be 110)
			dungeon.min_ilevel = min_ilevel

			if add_flags[id] then
				for flag,value in pairs(add_flags[id]) do
					dungeon[flag]=value
				end
			end

			dungeon.mythicplus = (Dungeons.CurrentExpansion == expansionLevel)

			dungeon.max_level = max_levels[id] -- used to disable lfr instances when outleveling them

			local map = ZGV.LibRover.data.MapIDsByName[DungeonNamesToMapNames[name]]
			dungeon.map=map

			rawset(t,id or 0,dungeon)
			setmetatable(dungeon,{__index=DungeonProto})
			return dungeon
		end
	end,
})

function Dungeons:Get(id)
	return self[id]
end

tinsert(ZGV.startups,{"Dungeons startup",function(self)
	Dungeons.CurrentExpansion = GetClassicExpansionLevel()

	--if not LFDDungeonList then return end
	Dungeons.Faction = UnitFactionGroup("player")
	Dungeons.MaxLevelForLatestExpansion = GetClassicExpansionLevel()==1 and 70 or 60

	for id=1,3000 do
		local cache_wasted = self[id]
	end
end})

ZGV.UTILS.Dungeons = {
	GetDungeonsByName = function()
		local bynames = {}
		for k,v in pairs(Dungeons) do if type(v)=="table" and v.name then
			bynames[v.name]=v
		end end
		return bynames
	end
}
