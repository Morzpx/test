local name,addon = ...
local data={}
addon.LibTaxiData = data
data.taxipoints = {



--------------------
---   KALIMDOR   ---
--------------------
[1414]={
	
	["Ashenvale"] = {
		{name="Splintertree Post",faction="H",npc="Vhulgra",npcid=12616,x=73.18,y=61.59},
		{name="Zoram'gar Outpost",faction="H",npc="Andruk",npcid=11901,x=12.24,y=33.80},
		{name="Astranaar",faction="A",npc="Daelyshia",npcid=4267,x=34.41,y=47.99},
		{name="Forest Song",faction="A",npc="Suralais Farwind",npcid=22935,x=85.09,y=43.45},
	},
	
	["Azshara"] = {
		{name="Talrendis Point",faction="A",npc="Jarrodenus",npcid=12577,x=11.90,y=77.59},
		{name="Valormok",faction="H",npc="Kroum",npcid=8610,x=21.96,y=49.62},
	},
	
	["Bloodmyst Isle"] = {
		{name="Blood Watch",faction="A",npc="Laando",npcid=17554,x=57.68,y=53.87},
	},
	
	["Darkshore"] = {
		{name="Auberdine",faction="A",npc="Caylais Moonfeather",npcid=3841,x=36.34,y=45.58},
	},
	
	["Desolace"] = {
		{name="Shadowprey Village",faction="H",npc="Thalon",npcid=6726,x=21.60,y=74.13},
		{name="Nijel's Point",faction="A",npc="Baritanas Skyriver",npcid=6706,x=64.66,y=10.54},
	},
	
	["Dustwallow Marsh"] = {
		{name="Brackenwall Village",faction="H",npc="Shardi",npcid=11899,x=35.56,y=31.88},
		{name="Theramore",faction="A",npc="Baldruc",npcid=4321,x=67.48,y=51.30},
		{name="Mudsprocket",faction="B",npc="Dyslix Silvergrub",npcid=23612,x=42.82,y=72.43},
	},
	
	["Felwood"] = {
		{name="Bloodvenom Post",faction="H",npc="Brakkar",npcid=11900,x=34.44,y=53.96},
		{name="Talonbranch Glade",faction="A",npc="Mishellena",npcid=12578,x=62.49,y=24.24},
		{name="Emerald Sanctuary",faction="B",npc="Gorrim",npcid=22931,x=51.53,y=82.22},
	},
	
	["Feralas"] = {
		{name="Camp Mojache",faction="H",npc="Shyn",npcid=8020,x=75.45,y=44.36},
		{name="Thalanaar",faction="A",npc="Thyssiana",npcid=4319,x=89.50,y=45.85},
		{name="Feathermoon",faction="A",npc="Fyldren Moonfeather",npcid=8019,x=30.24,y=43.25},
	},
	
	["Moonglade"] = {
		{name="Moonglade",faction="H",npc="Faustron",npcid=12740,x=32.09,y=66.61},
		{name="Moonglade",faction="A",npc="Sindrayl",npcid=10897,x=48.10,y=67.34},
		--{name="Nighthaven",faction="A",class="DRUID",npc="Silva Fil'naveth",npcid=11800,x=44.15,y=45.22,forceknown=true},
		--{name="Nighthaven",faction="H",class="DRUID",npc="Bunthen Plainswind",npcid=11798,x=44.29,y=45.87,forceknown=true},
	},
	
	["Orgrimmar"] = {
		{name="Orgrimmar",faction="H",npc="Doras",npcid=3310,x=45.12,y=63.89},
	},
	
	["Silithus"] = {
		{name="Cenarion Hold",faction="H",npc="Runk Windtamer",npcid=15178,x=48.68,y=36.67},
		{name="Cenarion Hold",faction="A",npc="Cloud Skydancer",npcid=15177,x=50.58,y=34.45},
	},
	
	["Stonetalon Mountains"] = {
		{name="Stonetalon Peak",faction="A",npc="Teloren",npcid=4407,x=36.44,y=7.18},
		{name="Sun Rock Retreat",faction="H",npc="Tharm",npcid=4312,x=45.12,y=59.84},
	},
	
	["Tanaris"] = {
		{name="Gadgetzan",faction="H",npc="Bulkrek Ragefist",npcid=7824,x=51.60,y=25.44},
		{name="Gadgetzan",faction="A",npc="Bera Stonehammer",npcid=7823,x=51.01,y=29.35},
	},
	
	["Teldrassil"] = {
		{name="Rut'theran Village",faction="A",npc="Vesprystus",npcid=3838,x=58.40,y=94.02},
	},
	
	["The Barrens"] = {
		{name="Crossroads",faction="H",npc="Devrak",npcid=3615,x=51.51,y=30.36},
		{name="Camp Taurajo",faction="H",npc="Omusa Thunderhorn",npcid=10378,x=44.45,y=59.15},
		{name="Ratchet",faction="B",npc="Bragok",npcid=16227,x=63.08,y=37.16},
	},
	
	["The Exodar"] = {
		{name="The Exodar",faction="A",npc="Stephanos",npcid=17555,x=68.34,y=63.50},
	},
	
	["Thousand Needles"] = {
		{name="Freewind Post",faction="H",npc="Nyse",npcid=4317,x=45.14,y=49.11},
	},
	
	["Thunder Bluff"] = {
		{name="Thunder Bluff",faction="H",npc="Tal",npcid=2995,x=46.99,y=49.83},
	},
	
	["Un'Goro Crater"] = {
		{name="Marshal's Refuge",faction="B",npc="Gryfe",npcid=10583,x=45.23,y=5.83},
	},
	
	["Winterspring"] = {
		{name="Everlook",faction="A",npc="Maethrya",npcid=11138,x=62.33,y=36.61},
		{name="Everlook",faction="H",npc="Yugrek",npcid=11139,x=60.47,y=36.30},
	},
},



----------------------------
---   EASTERN KINGDOMS   ---
----------------------------
[1415]={
	
	["Arathi Highlands"] = {
		{name="Refuge Pointe",faction="A",npc="Cedrik Prose",npcid=2835,x=45.76,y=46.11},
		{name="Hammerfall",faction="H",npc="Urda",npcid=2851,x=73.06,y=32.68},
	},
	
	["Badlands"] = {
		{name="Kargath",faction="H",npc="Gorrik",npcid=2861,x=3.99,y=44.78},
	},
	
	["Blasted Lands"] = {
		{name="Nethergarde Keep",faction="A",npc="Alexandra Constantine",npcid=8609,x=65.54,y=24.34},
	},
	
	["Burning Steppes"] = {
		{name="Flame Crest",faction="H",npc="Vahgruk",npcid=13177,x=65.69,y=24.22},
		{name="Morgan's Vigil",faction="A",npc="Borgus Stoutarm",npcid=2299,x=84.33,y=68.33},
	},
	
	["Duskwood"] = {
		{name="Darkshire",faction="A",npc="Felicia Maline",npcid=2409,x=77.49,y=44.29},
	},
	
	["Eastern Plaguelands"] = {
		{name="Light's Hope Chapel",faction="A",npc="Khaelyn Steelwing",npcid=12617,x=81.64,y=59.28},
		{name="Light's Hope Chapel",faction="H",npc="Georgia",npcid=12636,x=80.22,y=57.01},
	},

	["Eversong Woods"] = {
		{name="Silvermoon City",faction="H",npc="Skymistress Gloaming",npcid=16192,x=54.36,y=50.72},
	},

	["Ghostlands"] = {
		{name="Tranquillien",faction="H",npc="Skymaster Sunwing",npcid=16189,x=45.42,y=30.52},
	},
	
	["Hillsbrad Foothills"] = {
		{name="Southshore",faction="A",npc="Darla Harris",npcid=2432,x=49.34,y=52.27},
		{name="Tarren Mill",faction="H",npc="Zarise",npcid=2389,x=60.14,y=18.62},
	},
	
	["Ironforge"] = {
		{name="Ironforge",faction="A",npc="Gryth Thurden",npcid=1573,x=55.50,y=47.74},
	},
	
	["Loch Modan"] = {
		{name="Thelsamar",faction="A",npc="Thorgrum Borrelson",npcid=1572,x=33.94,y=50.95},
	},
	
	["Redridge Mountains"] = {
		{name="Lakeshire",faction="A",npc="Ariena Stormfeather",npcid=931,x=30.59,y=59.41},
	},
	
	["Searing Gorge"] = {
		{name="Thorium Point",faction="H",npc="Grisha",npcid=3305,x=34.84,y=30.87},
		{name="Thorium Point",faction="A",npc="Lanie Reed",npcid=2941,x=37.94,y=30.86},
	},
	
	["Silverpine Forest"] = {
		{name="The Sepulcher",faction="H",npc="Karos Razok",npcid=2226,x=45.62,y=42.60},
	},
	
	["Stranglethorn Vale"] = {
		{name="Grom'gol",faction="H",npc="Thysta",npcid=1387,x=32.54,y=29.35},
		{name="Booty Bay",faction="H",npc="Gringer",npcid=2858,x=26.87,y=77.10},
		{name="Booty Bay",faction="A",npc="Gyll",npcid=2859,x=27.53,y=77.79},
		{name="Rebel Camp",faction="A",npc="Nizzle",npcid=24366,x=38.23,y=4.04},	
	},
	
	["Swamp of Sorrows"] = {
		{name="Stonard",faction="H",npc="Breyk",npcid=6026,x=46.07,y=54.83},
	},
	
	["Stormwind City"] = {
		{name="Stormwind",faction="A",npc="Dungar Longdrink",npcid=352,x=66.27,y=62.13},
	},
	
	["The Hinterlands"] = {
		{name="Revantusk Village",faction="H",npc="Gorkas",npcid=4314,x=81.70,y=81.76},
		{name="Aerie Peak",faction="A",npc="Guthrum Thunderfist",npcid=8018,x=11.07,y=46.15},
	},
	
	["Undercity"] = {
		{name="Undercity",faction="H",npc="Michael Garrett",npcid=4551,x=63.25,y=48.56},
	},
	
	["Western Plaguelands"] = {
		{name="Chillwind Camp",faction="A",npc="Bibilfaz Featherwhistle",npcid=12596,x=42.92,y=85.06},
	},
	
	["Westfall"] = {
		{name="Sentinel Hill",faction="A",npc="Thor",npcid=523,x=56.55,y=52.64},
	},
	
	["Wetlands"] = {
		{name="Menethil Harbor",faction="A",npc="Shellei Brondir",npcid=1571,x=9.49,y=59.69},
	},
},



-------------------
---   OUTLAND   ---
-------------------
[1945]={
	['Blade\'s Edge Mountains']={
		{name="Sylvanaar",faction="A",npc="Amerun Leafshade",npcid=18937,x=37.82,y=61.39},
		{name="Toshley's Station",faction="A",npc="Rip Pedalslam",npcid=21107,x=61.15,y=70.44},
		{name="Thunderlord Stronghold",faction="H",npc="Unoke Tenderhoof",npcid=18953,x=52.05,y=54.13},
		{name="Mok'Nathal Village",faction="H",npc="Sky-Master Maxxor",npcid=22455,x=76.37,y=65.93},
		{name="Evergrove",faction="B",npc="Fhyn Leafshadow",npcid=22216,x=61.68,y=39.61},
		{name="Skyguard Outpost",faction="B",factionid=1031,factionstanding=6,npc="Skyguard Handler Irena",npcid=23413,x=28.28,y=52.10,taxioperator="skyguard"},
	},

	['Hellfire Peninsula']={
		{name="Honor Hold",faction="A",npc="Flightmaster Krill Bitterhue",npcid=16822,x=54.68,y=62.35},
		{name="Shatter Point",faction="A",npc="Runetog Wildhammer",npcid=20234,x=78.42,y=34.90},
		{name="Temple of Telhamat",faction="A",npc="Kuma",npcid=18785,x=25.19,y=37.23},
		{name="Hellfire Peninsula",faction="A",npc="Amish Wildhammer",npcid=18931,x=87.36,y=52.42},
		{name="Falcon Watch",faction="H",npc="Innalia",npcid=18942,x=27.79,y=59.98},
		{name="Spinebreaker Ridge",faction="H",npc="Amilya Airheart",npcid=19558,x=61.65,y=81.19},
		{name="Hellfire Peninsula",faction="H",npc="Vlagga Freyfeather",npcid=18930,x=87.35,y=48.14},
		{name="Thrallmar",faction="H",npc="Barley",npcid=16587,x=56.29,y=36.25},
	},

	['Nagrand']={
		{name="Telaar",faction="A",npc="Furgu",npcid=18789,x=54.17,y=75.06},
		{name="Garadar",faction="H",npc="Gursha",npcid=18808,x=57.19,y=35.25},
	},

	['Netherstorm']={
		{name="Area 52",faction="B",npc="Krexcil",npcid=18938,x=33.74,y=63.99},
		{name="Cosmowrench",faction="B",npc="Harpax",npcid=20515,x=65.20,y=66.81},
		{name="The Stormspire",faction="B",npc="Grennik",npcid=19583,x=45.31,y=34.87},
	},

	['Shadowmoon Valley']={
		{name="Wildhammer Stronghold",faction="A",npc="Brubeck Stormfoot",npcid=18939,x=37.61,y=55.45},
		{name="Shadowmoon Village",faction="H",npc="Drek'Gol",npcid=19317,x=30.34,y=29.19},
		{name="Altar of Sha'tar",faction="B",factionid=932,factionstanding=3,npc="Maddix",npcid=19581,x=63.33,y=30.40},
		{name="Sanctum of the Stars",faction="B",factionid=934,factionstanding=3,npc="Alieshor",npcid=21766,x=56.32,y=57.80},
	},

	['Shattrath City']={
		{name="Shattrath",faction="B",npc="Nutral",npcid=18940,x=64.07,y=41.12},
	},

	['Terokkar Forest']={
		{name="Allerian Stronghold",faction="A",npc="Furnan Skysoar",npcid=18809,x=59.45,y=55.43},
		{name="Stonebreaker Hold",faction="H",npc="Kerna",npcid=18807,x=49.19,y=43.42},
		{name="Blackwing Landing",faction="B",factionid=1031,factionstanding=6,npc="Skyguard Handler Deesak",npcid=23415,x=63.50,y=65.81,taxioperator="skyguard"},
	},

	['Zangarmarsh']={
		{name="Orebor Harborage",faction="A",npc="Halu",npcid=22485,x=41.28,y=29.00},
		{name="Telredor",faction="A",npc="Munci",npcid=18788,x=67.83,y=51.46},
		{name="Swamprat Post",faction="H",npc="Gur'zil",npcid=20762,x=84.76,y=55.11},
		{name="Zabra'jin",faction="H",npc="Du'ga",npcid=18791,x=33.07,y=51.07},
	},
},
}





-- NOTE: If two taxis have the same name but different factions then a factions field must be added in here. See Serpent's Spine.
-- If not then one of the taxis will be marked with the wrong faction so will not properly get neighbors that it should.
-- This data is regenerated when performing a Taxi Connections Dump. Any weird data edits may be lost. 





data.flightcost = {

--------------------
---   KALIMDOR   ---
--------------------
[1414] = {

	{
		tag = "001:001",
		nodeID = -1,
		name = "Lor'danel",
		taxioperator = "blackcat",
		comment = "black cat ride",
		neighbors = {
			[-3] = 50, -- Ruins of Mathystra
		},
	},

	{
		tag = "002:002",
		nodeID = -2,
		name = "Lor'danel",
		taxioperator = "blackcat",
		neighbors = {
			[-5] = 53, -- Bashal'Aran
		},
	},

	{
		tag = "003:003",
		nodeID = -3,
		name = "Ruins of Mathystra",
		taxioperator = "blackcat",
		neighbors = {
			[-4] = 75, -- Shatterspear Vale
			[-1] = 50, -- Lor'danel
		},
	},

	{
		tag = "004:004",
		nodeID = -4,
		name = "Shatterspear Vale",
		taxioperator = "blackcat",
		neighbors = {
			[-1] = 115, -- Lor'danel
		},
	},

	{
		tag = "005:005",
		nodeID = -5,
		name = "Bashal'Aran",
		taxioperator = "blackcat",
		neighbors = {
			[-2] = 53, -- Lor'danel
		},
	},
	
	{
		name = "Astranaar",
		nodeID = 28,
		neighbors = {
			[26] = 0, -- Auberdine
			[32] = 0, -- Theramore
			[33] = 0, -- Stonetalon Peak
			[64] = 0, -- Talrendis Point
			[80] = 0, -- Ratchet
			[166] = 0, -- Emerald Sanctuary
			[167] = 0, -- Forest Song
		},
		faction="A",
	},

	{
		name = "Auberdine",
		nodeID = 26,
		neighbors = {
			[27] = 0, -- Rut'theran Village
			[28] = 0, -- Astranaar
			[32] = 0, -- Theramore
			[33] = 0, -- Stonetalon Peak
			[37] = 0, -- Nijel's Point
			[41] = 0, -- Feathermoon
			[49] = 0, -- Moonglade
			[64] = 0, -- Talrendis Point
			[65] = 0, -- Talonbranch Glade
		},
		faction="A",
	},

	{
		name = "Blood Watch",
		nodeID = 93,
		neighbors = {
			[94] = 0, -- The Exodar
		},
		faction="A",
	},

	{
		name = "Bloodvenom Post",
		nodeID = 48,
		neighbors = {
			[23] = 0, -- Orgrimmar
			[25] = 0, -- Crossroads
			[44] = 0, -- Valormok
			[53] = 0, -- Everlook
			[58] = 0, -- Zoram'gar Outpost
			[69] = 0, -- Moonglade
			[166] = 0, -- Emerald Sanctuary
		},
		faction="H",
	},

	{
		name = "Brackenwall Village",
		nodeID = 55,
		neighbors = {
			[22] = 0, -- Thunder Bluff
			[23] = 0, -- Orgrimmar
			[25] = 0, -- Crossroads
			[30] = 0, -- Freewind Post
			[40] = 0, -- Gadgetzan
			[77] = 0, -- Camp Taurajo
			[80] = 0, -- Ratchet
			[179] = 0, -- Mudsprocket
		},
		faction="H",
	},

	{
		name = "Camp Mojache",
		nodeID = 42,
		neighbors = {
			[22] = 0, -- Thunder Bluff
			[25] = 0, -- Crossroads
			[30] = 0, -- Freewind Post
			[38] = 0, -- Shadowprey Village
			[40] = 0, -- Gadgetzan
			[72] = 0, -- Cenarion Hold
		},
		faction="H",
	},

	{
		name = "Camp Taurajo",
		nodeID = 77,
		neighbors = {
			[22] = 0, -- Thunder Bluff
			[25] = 0, -- Crossroads
			[30] = 0, -- Freewind Post
			[55] = 0, -- Brackenwall Village
		},
		faction="H",
	},

	{
		name = "Cenarion Hold",
		nodeID = 72,
		neighbors = {
			[40] = 0, -- Gadgetzan
			[42] = 0, -- Camp Mojache
			[79] = 0, -- Marshal's Refuge
		},
		faction="H",
	},

	{
		name = "Cenarion Hold",
		nodeID = 73,
		neighbors = {
			[39] = 0, -- Gadgetzan
			[41] = 0, -- Feathermoon
			[79] = 0, -- Marshal's Refuge
		},
		faction="A",
	},

	{
		name = "Crossroads",
		nodeID = 25,
		neighbors = {
			[22] = 0, -- Thunder Bluff
			[23] = 0, -- Orgrimmar
			[29] = 0, -- Sun Rock Retreat
			[30] = 0, -- Freewind Post
			[40] = 0, -- Gadgetzan
			[42] = 0, -- Camp Mojache
			[44] = 0, -- Valormok
			[48] = 0, -- Bloodvenom Post
			[55] = 0, -- Brackenwall Village
			[58] = 0, -- Zoram'gar Outpost
			[61] = 0, -- Splintertree Post
			[77] = 0, -- Camp Taurajo
			[80] = 0, -- Ratchet
		},
		faction="H",
	},

	{
		name = "Emerald Sanctuary",
		nodeID = 166,
		neighbors = {
			[28] = 0, -- Astranaar
			[48] = 0, -- Bloodvenom Post
			[58] = 0, -- Zoram'gar Outpost
			[61] = 0, -- Splintertree Post
			[65] = 0, -- Talonbranch Glade
			[167] = 0, -- Forest Song
		},
	},

	{
		name = "Everlook",
		nodeID = 52,
		neighbors = {
			[49] = 0, -- Moonglade
			[64] = 0, -- Talrendis Point
			[65] = 0, -- Talonbranch Glade
		},
		faction="A",
	},

	{
		name = "Everlook",
		nodeID = 53,
		neighbors = {
			[23] = 0, -- Orgrimmar
			[44] = 0, -- Valormok
			[48] = 0, -- Bloodvenom Post
			[69] = 0, -- Moonglade
		},
		faction="H",
	},

	{
		name = "Feathermoon",
		nodeID = 41,
		neighbors = {
			[26] = 0, -- Auberdine
			[31] = 0, -- Thalanaar
			[37] = 0, -- Nijel's Point
			[73] = 0, -- Cenarion Hold
		},
		faction="A",
	},

	{
		name = "Forest Song",
		nodeID = 167,
		neighbors = {
			[28] = 0, -- Astranaar
			[64] = 0, -- Talrendis Point
			[166] = 0, -- Emerald Sanctuary
		},
		faction="A",
	},

	{
		name = "Freewind Post",
		nodeID = 30,
		neighbors = {
			[22] = 0, -- Thunder Bluff
			[25] = 0, -- Crossroads
			[40] = 0, -- Gadgetzan
			[42] = 0, -- Camp Mojache
			[55] = 0, -- Brackenwall Village
			[77] = 0, -- Camp Taurajo
			[179] = 0, -- Mudsprocket
		},
		faction="H",
	},

	{
		name = "Gadgetzan",
		nodeID = 39,
		neighbors = {
			[31] = 0, -- Thalanaar
			[32] = 0, -- Theramore
			[73] = 0, -- Cenarion Hold
			[79] = 0, -- Marshal's Refuge
			[80] = 0, -- Ratchet
		},
		faction="A",
	},

	{
		name = "Gadgetzan",
		nodeID = 40,
		neighbors = {
			[22] = 0, -- Thunder Bluff
			[23] = 0, -- Orgrimmar
			[25] = 0, -- Crossroads
			[30] = 0, -- Freewind Post
			[42] = 0, -- Camp Mojache
			[55] = 0, -- Brackenwall Village
			[72] = 0, -- Cenarion Hold
			[79] = 0, -- Marshal's Refuge
			[80] = 0, -- Ratchet
		},
		faction="H",
	},

	{
		name = "Marshal's Refuge",
		nodeID = 79,
		neighbors = {
			[39] = 0, -- Gadgetzan
			[40] = 0, -- Gadgetzan
			[72] = 0, -- Cenarion Hold
			[73] = 0, -- Cenarion Hold
		},
	},

	{
		name = "Moonglade",
		nodeID = 49,
		neighbors = {
			[26] = 0, -- Auberdine
			[52] = 0, -- Everlook
			[65] = 0, -- Talonbranch Glade
		},
		faction="A",
	},

	{
		name = "Moonglade",
		nodeID = 69,
		neighbors = {
			[48] = 0, -- Bloodvenom Post
			[53] = 0, -- Everlook
		},
		faction="H",
	},

	{
		name = "Mudsprocket",
		nodeID = 179,
		neighbors = {
			[30] = 0, -- Freewind Post
			[31] = 0, -- Thalanaar
			[32] = 0, -- Theramore
			[55] = 0, -- Brackenwall Village
		},
	},

	{
		name = "Nighthaven",
		nodeID = 62,
		neighbors = {
			[27] = 0, -- Rut'theran Village
		},
		faction="A",
	},

	{
		name = "Nighthaven",
		nodeID = 63,
		neighbors = {
			[22] = 0, -- Thunder Bluff
		},
		faction="H",
	},

	{
		name = "Nijel's Point",
		nodeID = 37,
		neighbors = {
			[26] = 0, -- Auberdine
			[32] = 0, -- Theramore
			[33] = 0, -- Stonetalon Peak
			[41] = 0, -- Feathermoon
		},
		faction="A",
	},

	{
		name = "Orgrimmar",
		nodeID = 23,
		neighbors = {
			[22] = 0, -- Thunder Bluff
			[25] = 0, -- Crossroads
			[40] = 0, -- Gadgetzan
			[44] = 0, -- Valormok
			[48] = 0, -- Bloodvenom Post
			[53] = 0, -- Everlook
			[55] = 0, -- Brackenwall Village
			[61] = 0, -- Splintertree Post
			[80] = 0, -- Ratchet
			[198] = 0, -- Test SP1
		},
		faction="H",
	},

	{
		name = "Ratchet",
		nodeID = 80,
		neighbors = {
			[23] = 0, -- Orgrimmar
			[25] = 0, -- Crossroads
			[28] = 0, -- Astranaar
			[32] = 0, -- Theramore
			[39] = 0, -- Gadgetzan
			[40] = 0, -- Gadgetzan
			[55] = 0, -- Brackenwall Village
			[64] = 0, -- Talrendis Point
		},
	},

	{
		name = "Rut'theran Village",
		nodeID = 27,
		neighbors = {
			[26] = 0, -- Auberdine
		},
		faction="A",
	},

	{
		name = "Shadowprey Village",
		nodeID = 38,
		neighbors = {
			[22] = 0, -- Thunder Bluff
			[29] = 0, -- Sun Rock Retreat
			[42] = 0, -- Camp Mojache
		},
		faction="H",
	},

	{
		name = "Splintertree Post",
		nodeID = 61,
		neighbors = {
			[23] = 0, -- Orgrimmar
			[25] = 0, -- Crossroads
			[44] = 0, -- Valormok
			[58] = 0, -- Zoram'gar Outpost
			[166] = 0, -- Emerald Sanctuary
		},
		faction="H",
	},

	{
		name = "Stonetalon Peak",
		nodeID = 33,
		neighbors = {
			[26] = 0, -- Auberdine
			[28] = 0, -- Astranaar
			[37] = 0, -- Nijel's Point
		},
		faction="A",
	},

	{
		name = "Sun Rock Retreat",
		nodeID = 29,
		neighbors = {
			[22] = 0, -- Thunder Bluff
			[25] = 0, -- Crossroads
			[38] = 0, -- Shadowprey Village
			[58] = 0, -- Zoram'gar Outpost
		},
		faction="H",
	},

	{
		name = "Talonbranch Glade",
		nodeID = 65,
		neighbors = {
			[26] = 0, -- Auberdine
			[49] = 0, -- Moonglade
			[52] = 0, -- Everlook
			[64] = 0, -- Talrendis Point
			[166] = 0, -- Emerald Sanctuary
		},
		faction="A",
	},

	{
		name = "Talrendis Point",
		nodeID = 64,
		neighbors = {
			[26] = 0, -- Auberdine
			[28] = 0, -- Astranaar
			[32] = 0, -- Theramore
			[52] = 0, -- Everlook
			[65] = 0, -- Talonbranch Glade
			[80] = 0, -- Ratchet
			[167] = 0, -- Forest Song
		},
		faction="A",
	},

	{
		name = "Thalanaar",
		nodeID = 31,
		neighbors = {
			[32] = 0, -- Theramore
			[39] = 0, -- Gadgetzan
			[41] = 0, -- Feathermoon
			[179] = 0, -- Mudsprocket
		},
		faction="A",
	},

	{
		name = "The Exodar",
		nodeID = 94,
		neighbors = {
			[93] = 0, -- Blood Watch
		},
		faction="A",
	},

	{
		name = "Theramore",
		nodeID = 32,
		neighbors = {
			[26] = 0, -- Auberdine
			[28] = 0, -- Astranaar
			[31] = 0, -- Thalanaar
			[37] = 0, -- Nijel's Point
			[39] = 0, -- Gadgetzan
			[64] = 0, -- Talrendis Point
			[80] = 0, -- Ratchet
			[179] = 0, -- Mudsprocket
		},
		faction="A",
	},

	{
		name = "Thunder Bluff",
		nodeID = 22,
		neighbors = {
			[23] = 0, -- Orgrimmar
			[25] = 0, -- Crossroads
			[29] = 0, -- Sun Rock Retreat
			[30] = 0, -- Freewind Post
			[38] = 0, -- Shadowprey Village
			[40] = 0, -- Gadgetzan
			[42] = 0, -- Camp Mojache
			[44] = 0, -- Valormok
			[55] = 0, -- Brackenwall Village
			[58] = 0, -- Zoram'gar Outpost
			[77] = 0, -- Camp Taurajo
		},
		faction="H",
	},

	{
		name = "Valormok",
		nodeID = 44,
		neighbors = {
			[22] = 0, -- Thunder Bluff
			[23] = 0, -- Orgrimmar
			[25] = 0, -- Crossroads
			[48] = 0, -- Bloodvenom Post
			[53] = 0, -- Everlook
			[61] = 0, -- Splintertree Post
		},
		faction="H",
	},

	{
		name = "Zoram'gar Outpost",
		nodeID = 58,
		neighbors = {
			[22] = 0, -- Thunder Bluff
			[25] = 0, -- Crossroads
			[29] = 0, -- Sun Rock Retreat
			[48] = 0, -- Bloodvenom Post
			[61] = 0, -- Splintertree Post
			[166] = 0, -- Emerald Sanctuary
		},
		faction="H",
	},

},



----------------------------
---   EASTERN KINGDOMS   ---
----------------------------
[1415] = {
	{
		name = "Aerie Peak",
		nodeID = 43,
		neighbors = {
			[6] = 0, -- Ironforge
			[14] = 0, -- Southshore
			[16] = 0, -- Refuge Pointe
			[66] = 0, -- Chillwind Camp
			[67] = 0, -- Light's Hope Chapel
		},
		faction="A",
	},

	{
		name = "Booty Bay",
		nodeID = 18,
		neighbors = {
			[20] = 0, -- Grom'gol
			[21] = 0, -- Kargath
			[56] = 0, -- Stonard
		},
		faction="H",
	},

	{
		name = "Booty Bay",
		nodeID = 19,
		neighbors = {
			[2] = 0, -- Stormwind
			[4] = 0, -- Sentinel Hill
			[12] = 0, -- Darkshire
			[195] = 0, -- Rebel Camp
		},
		faction="A",
	},

	{
		name = "Chillwind Camp",
		nodeID = 66,
		neighbors = {
			[6] = 0, -- Ironforge
			[14] = 0, -- Southshore
			[43] = 0, -- Aerie Peak
			[67] = 0, -- Light's Hope Chapel
		},
		faction="A",
	},

	{
		name = "Darkshire",
		nodeID = 12,
		neighbors = {
			[2] = 0, -- Stormwind
			[4] = 0, -- Sentinel Hill
			[5] = 0, -- Lakeshire
			[19] = 0, -- Booty Bay
			[45] = 0, -- Nethergarde Keep
			[195] = 0, -- Rebel Camp
		},
		faction="A",
	},

	{
		name = "Flame Crest",
		nodeID = 70,
		neighbors = {
			[20] = 0, -- Grom'gol
			[21] = 0, -- Kargath
			[56] = 0, -- Stonard
			[75] = 0, -- Thorium Point
		},
		faction="H",
	},

	{
		name = "Grom'gol",
		nodeID = 20,
		neighbors = {
			[18] = 0, -- Booty Bay
			[21] = 0, -- Kargath
			[56] = 0, -- Stonard
			[70] = 0, -- Flame Crest
		},
		faction="H",
	},

	{
		name = "Hammerfall",
		nodeID = 17,
		neighbors = {
			[11] = 0, -- Undercity
			[13] = 0, -- Tarren Mill
			[21] = 0, -- Kargath
			[76] = 0, -- Revantusk Village
		},
		faction="H",
	},

	{
		name = "Ironforge",
		nodeID = 6,
		neighbors = {
			[2] = 0, -- Stormwind
			[7] = 0, -- Menethil Harbor
			[8] = 0, -- Thelsamar
			[14] = 0, -- Southshore
			[16] = 0, -- Refuge Pointe
			[43] = 0, -- Aerie Peak
			[59] = 0, -- Dun Baldar
			[66] = 0, -- Chillwind Camp
			[67] = 0, -- Light's Hope Chapel
			[74] = 0, -- Thorium Point
			[213] = 0, -- Shattered Sun Staging Area
		},
		faction="A",
	},

	{
		name = "Kargath",
		nodeID = 21,
		neighbors = {
			[11] = 0, -- Undercity
			[17] = 0, -- Hammerfall
			[18] = 0, -- Booty Bay
			[20] = 0, -- Grom'gol
			[56] = 0, -- Stonard
			[70] = 0, -- Flame Crest
			[75] = 0, -- Thorium Point
		},
		faction="H",
	},

	{
		name = "Lakeshire",
		nodeID = 5,
		neighbors = {
			[2] = 0, -- Stormwind
			[4] = 0, -- Sentinel Hill
			[12] = 0, -- Darkshire
			[71] = 0, -- Morgan's Vigil
		},
		faction="A",
	},

	{
		name = "Light's Hope Chapel",
		nodeID = 67,
		neighbors = {
			[6] = 0, -- Ironforge
			[43] = 0, -- Aerie Peak
			[66] = 0, -- Chillwind Camp
			[205] = 0, -- Zul'Aman
			[213] = 0, -- Shattered Sun Staging Area
		},
		faction="A",
	},

	{
		name = "Light's Hope Chapel",
		nodeID = 68,
		neighbors = {
			[11] = 0, -- Undercity
			[76] = 0, -- Revantusk Village
			[83] = 0, -- Tranquillien
			[205] = 0, -- Zul'Aman
		},
		faction="H",
	},

	{
		name = "Menethil Harbor",
		nodeID = 7,
		neighbors = {
			[6] = 0, -- Ironforge
			[8] = 0, -- Thelsamar
			[14] = 0, -- Southshore
			[16] = 0, -- Refuge Pointe
		},
		faction="A",
	},

	{
		name = "Morgan's Vigil",
		nodeID = 71,
		neighbors = {
			[2] = 0, -- Stormwind
			[5] = 0, -- Lakeshire
			[45] = 0, -- Nethergarde Keep
			[74] = 0, -- Thorium Point
		},
		faction="A",
	},

	{
		name = "Nethergarde Keep",
		nodeID = 45,
		neighbors = {
			[2] = 0, -- Stormwind
			[12] = 0, -- Darkshire
			[71] = 0, -- Morgan's Vigil
		},
		faction="A",
	},

	{
		name = "Plaguewood Tower",
		nodeID = 84,
		neighbors = {
			[85] = 0, -- Northpass Tower
			[86] = 0, -- Eastwall Tower
			[87] = 0, -- Crown Guard Tower
		},
	},

	{
		name = "Rebel Camp",
		nodeID = 195,
		neighbors = {
			[2] = 0, -- Stormwind
			[4] = 0, -- Sentinel Hill
			[12] = 0, -- Darkshire
			[19] = 0, -- Booty Bay
		},
		faction="A",
	},

	{
		name = "Refuge Pointe",
		nodeID = 16,
		neighbors = {
			[6] = 0, -- Ironforge
			[7] = 0, -- Menethil Harbor
			[8] = 0, -- Thelsamar
			[14] = 0, -- Southshore
			[43] = 0, -- Aerie Peak
		},
		faction="A",
	},

	{
		name = "Revantusk Village",
		nodeID = 76,
		neighbors = {
			[11] = 0, -- Undercity
			[13] = 0, -- Tarren Mill
			[17] = 0, -- Hammerfall
			[68] = 0, -- Light's Hope Chapel
		},
		faction="H",
	},

	{
		name = "Sentinel Hill",
		nodeID = 4,
		neighbors = {
			[2] = 0, -- Stormwind
			[5] = 0, -- Lakeshire
			[12] = 0, -- Darkshire
			[19] = 0, -- Booty Bay
			[195] = 0, -- Rebel Camp
		},
		faction="A",
	},

	{
		name = "Shattered Sun Staging Area",
		nodeID = 213,
		neighbors = {
			[67] = 0, -- Light's Hope Chapel
			[82] = 0, -- Silvermoon City
			[205] = 0, -- Zul'Aman
		},
	},

	{
		name = "Silvermoon City",
		nodeID = 82,
		neighbors = {
			[83] = 0, -- Tranquillien
			[213] = 0, -- Shattered Sun Staging Area
		},
		faction="H",
	},

	{
		name = "Southshore",
		nodeID = 14,
		neighbors = {
			[6] = 0, -- Ironforge
			[7] = 0, -- Menethil Harbor
			[16] = 0, -- Refuge Pointe
			[43] = 0, -- Aerie Peak
			[66] = 0, -- Chillwind Camp
		},
		faction="A",
	},

	{
		name = "Stonard",
		nodeID = 56,
		neighbors = {
			[18] = 0, -- Booty Bay
			[20] = 0, -- Grom'gol
			[21] = 0, -- Kargath
			[70] = 0, -- Flame Crest
		},
		faction="H",
	},

	{
		name = "Stormwind",
		nodeID = 2,
		neighbors = {
			[4] = 0, -- Sentinel Hill
			[5] = 0, -- Lakeshire
			[6] = 0, -- Ironforge
			[12] = 0, -- Darkshire
			[19] = 0, -- Booty Bay
			[45] = 0, -- Nethergarde Keep
			[71] = 0, -- Morgan's Vigil
			[74] = 0, -- Thorium Point
			[195] = 0, -- Rebel Camp
		},
		faction="A",
	},

	{
		name = "Tarren Mill",
		nodeID = 13,
		neighbors = {
			[10] = 0, -- The Sepulcher
			[11] = 0, -- Undercity
			[17] = 0, -- Hammerfall
			[76] = 0, -- Revantusk Village
		},
		faction="H",
	},

	{
		name = "The Sepulcher",
		nodeID = 10,
		neighbors = {
			[11] = 0, -- Undercity
			[13] = 0, -- Tarren Mill
		},
		faction="H",
	},

	{
		name = "Thelsamar",
		nodeID = 8,
		neighbors = {
			[6] = 0, -- Ironforge
			[7] = 0, -- Menethil Harbor
			[16] = 0, -- Refuge Pointe
			[74] = 0, -- Thorium Point
		},
		faction="A",
	},

	{
		name = "Thorium Point",
		nodeID = 74,
		neighbors = {
			[2] = 0, -- Stormwind
			[6] = 0, -- Ironforge
			[8] = 0, -- Thelsamar
			[71] = 0, -- Morgan's Vigil
		},
		faction="A",
	},

	{
		name = "Thorium Point",
		nodeID = 75,
		neighbors = {
			[21] = 0, -- Kargath
			[70] = 0, -- Flame Crest
		},
		faction="H",
	},

	{
		name = "Tranquillien",
		nodeID = 83,
		neighbors = {
			[68] = 0, -- Light's Hope Chapel
			[82] = 0, -- Silvermoon City
			[205] = 0, -- Zul'Aman
		},
		faction="H",
	},

	{
		name = "Undercity",
		nodeID = 11,
		neighbors = {
			[10] = 0, -- The Sepulcher
			[13] = 0, -- Tarren Mill
			[17] = 0, -- Hammerfall
			[21] = 0, -- Kargath
			[60] = 0, -- Frostwolf Keep
			[68] = 0, -- Light's Hope Chapel
			[76] = 0, -- Revantusk Village
		},
		faction="H",
	},

},



-------------------
---   OUTLAND   ---
-------------------
[1945] = {

		{
			tag = "001:001",
			nodeID = -6,
			name = "Skyguard Outpost, Blade's Edge Mountains",
			taxioperator = "skyguard",
			neighbors = {
				[-7] = 245, -- Blackwing Landing, Terokkar Forest
			},
		},

		{
			tag = "002:002",
			nodeID = -7,
			name = "Blackwing Landing, Terokkar Forest",
			taxioperator = "skyguard",
			neighbors = {
				[-6] = 245, -- Skyguard Outpost, Blade's Edge Mountains
			},
		},
		
	{
		name = "Allerian Stronghold",
		nodeID = 121,
		neighbors = {
			[100] = 0, -- Honor Hold
			[119] = 0, -- Telaar
			[124] = 0, -- Wildhammer Stronghold
			[128] = 0, -- Shattrath
		},
		faction="A",
	},

	{
		name = "Area 52",
		nodeID = 122,
		neighbors = {
			[125] = 0, -- Sylvanaar
			[126] = 0, -- Thunderlord Stronghold
			[139] = 0, -- The Stormspire
			[150] = 0, -- Cosmowrench
			[156] = 0, -- Toshley's Station
			[160] = 0, -- Evergrove
			[163] = 0, -- Mok'Nathal Village
		},
	},

	{
		name = "Cosmowrench",
		nodeID = 150,
		neighbors = {
			[122] = 0, -- Area 52
			[139] = 0, -- The Stormspire
		},
	},

	{
		name = "Evergrove",
		nodeID = 160,
		neighbors = {
			[122] = 0, -- Area 52
			[125] = 0, -- Sylvanaar
			[126] = 0, -- Thunderlord Stronghold
			[156] = 0, -- Toshley's Station
		},
	},

	{
		name = "Falcon Watch",
		nodeID = 102,
		neighbors = {
			[99] = 0, -- Thrallmar
			[118] = 0, -- Zabra'jin
			[120] = 0, -- Garadar
			[128] = 0, -- Shattrath
			[151] = 0, -- Swamprat Post
		},
		faction="H",
	},

	{
		name = "Garadar",
		nodeID = 120,
		neighbors = {
			[102] = 0, -- Falcon Watch
			[118] = 0, -- Zabra'jin
			[128] = 0, -- Shattrath
		},
		faction="H",
	},

	{
		name = "Hellfire Peninsula",
		nodeID = 129,
		neighbors = {
			[100] = 0, -- Honor Hold
			[101] = 0, -- Temple of Telhamat
			[149] = 0, -- Shatter Point
		},
		faction="A",
	},

	{
		name = "Hellfire Peninsula",
		nodeID = 130,
		neighbors = {
			[99] = 0, -- Thrallmar
			[102] = 0, -- Falcon Watch
		},
		faction="H",
	},

	{
		name = "Honor Hold",
		nodeID = 100,
		neighbors = {
			[101] = 0, -- Temple of Telhamat
			[121] = 0, -- Allerian Stronghold
			[128] = 0, -- Shattrath
			[129] = 0, -- Hellfire Peninsula
			[149] = 0, -- Shatter Point
		},
		faction="A",
	},

	{
		name = "Mok'Nathal Village",
		nodeID = 163,
		neighbors = {
			[122] = 0, -- Area 52
			[126] = 0, -- Thunderlord Stronghold
			[151] = 0, -- Swamprat Post
		},
		faction="H",
	},

	{
		name = "Orebor Harborage",
		nodeID = 164,
		neighbors = {
			[117] = 0, -- Telredor
			[125] = 0, -- Sylvanaar
		},
		faction="A",
	},

	{
		name = "Shadowmoon Village",
		nodeID = 123,
		neighbors = {
			[127] = 0, -- Stonebreaker Hold
			[140] = 0, -- Altar of Sha'tar
			[159] = 0, -- Sanctum of the Stars
		},
		faction="H",
	},

	{
		name = "Shatter Point",
		nodeID = 148,
		neighbors = {
			[147] = 0, -- Hellfire Peninsula - Force Camp Beach Head
		},
		faction="A",
	},

	{
		name = "Shatter Point",
		nodeID = 149,
		neighbors = {
			[100] = 0, -- Honor Hold
			[129] = 0, -- Hellfire Peninsula
		},
		faction="A",
	},

	{
		name = "Shattrath",
		nodeID = 128,
		neighbors = {
			[100] = 0, -- Honor Hold
			[102] = 0, -- Falcon Watch
			[117] = 0, -- Telredor
			[118] = 0, -- Zabra'jin
			[119] = 0, -- Telaar
			[120] = 0, -- Garadar
			[121] = 0, -- Allerian Stronghold
			[127] = 0, -- Stonebreaker Hold
			[151] = 0, -- Swamprat Post
		},
	},

	{
		name = "Skettis",
		nodeID = 171,
		neighbors = {
			[172] = 0, -- Ogri'La
		},
	},

	{
		name = "Spinebreaker Ridge",
		nodeID = 141,
		neighbors = {
			[99] = 0, -- Thrallmar
		},
		faction="H",
	},

	{
		name = "Stonebreaker Hold",
		nodeID = 127,
		neighbors = {
			[99] = 0, -- Thrallmar
			[123] = 0, -- Shadowmoon Village
			[128] = 0, -- Shattrath
		},
		faction="H",
	},

	{
		name = "Swamprat Post",
		nodeID = 151,
		neighbors = {
			[102] = 0, -- Falcon Watch
			[118] = 0, -- Zabra'jin
			[126] = 0, -- Thunderlord Stronghold
			[128] = 0, -- Shattrath
			[163] = 0, -- Mok'Nathal Village
		},
		faction="H",
	},

	{
		name = "Sylvanaar",
		nodeID = 125,
		neighbors = {
			[117] = 0, -- Telredor
			[122] = 0, -- Area 52
			[139] = 0, -- The Stormspire
			[156] = 0, -- Toshley's Station
			[160] = 0, -- Evergrove
			[164] = 0, -- Orebor Harborage
		},
		faction="A",
	},

	{
		name = "Telaar",
		nodeID = 119,
		neighbors = {
			[117] = 0, -- Telredor
			[121] = 0, -- Allerian Stronghold
			[128] = 0, -- Shattrath
		},
		faction="A",
	},

	{
		name = "Telredor",
		nodeID = 117,
		neighbors = {
			[101] = 0, -- Temple of Telhamat
			[119] = 0, -- Telaar
			[125] = 0, -- Sylvanaar
			[128] = 0, -- Shattrath
			[156] = 0, -- Toshley's Station
			[164] = 0, -- Orebor Harborage
		},
		faction="A",
	},

	{
		name = "Temple of Telhamat",
		nodeID = 101,
		neighbors = {
			[100] = 0, -- Honor Hold
			[117] = 0, -- Telredor
		},
		faction="A",
	},

	{
		name = "The Stormspire",
		nodeID = 139,
		neighbors = {
			[122] = 0, -- Area 52
			[125] = 0, -- Sylvanaar
			[126] = 0, -- Thunderlord Stronghold
			[150] = 0, -- Cosmowrench
		},
	},

	{
		name = "Thrallmar",
		nodeID = 99,
		neighbors = {
			[102] = 0, -- Falcon Watch
			[127] = 0, -- Stonebreaker Hold
			[130] = 0, -- Hellfire Peninsula
			[141] = 0, -- Spinebreaker Ridge
		},
		faction="H",
	},

	{
		name = "Thunderlord Stronghold",
		nodeID = 126,
		neighbors = {
			[118] = 0, -- Zabra'jin
			[122] = 0, -- Area 52
			[139] = 0, -- The Stormspire
			[151] = 0, -- Swamprat Post
			[160] = 0, -- Evergrove
			[163] = 0, -- Mok'Nathal Village
		},
		faction="H",
	},

	{
		name = "Toshley's Station",
		nodeID = 156,
		neighbors = {
			[117] = 0, -- Telredor
			[122] = 0, -- Area 52
			[125] = 0, -- Sylvanaar
			[160] = 0, -- Evergrove
		},
		faction="A",
	},

	{
		name = "Wildhammer Stronghold",
		nodeID = 124,
		neighbors = {
			[121] = 0, -- Allerian Stronghold
			[140] = 0, -- Altar of Sha'tar
			[159] = 0, -- Sanctum of the Stars
		},
		faction="A",
	},

	{
		name = "Zabra'jin",
		nodeID = 118,
		neighbors = {
			[102] = 0, -- Falcon Watch
			[120] = 0, -- Garadar
			[126] = 0, -- Thunderlord Stronghold
			[128] = 0, -- Shattrath
			[151] = 0, -- Swamprat Post
		},
		faction="H",
	},

	{
		name = "Zul'Aman",
		nodeID = 205,
		neighbors = {
			[67] = 0, -- Light's Hope Chapel
			[68] = 0, -- Light's Hope Chapel
			[83] = 0, -- Tranquillien
			[213] = 0, -- Shattered Sun Staging Area
		},
	},

},

}