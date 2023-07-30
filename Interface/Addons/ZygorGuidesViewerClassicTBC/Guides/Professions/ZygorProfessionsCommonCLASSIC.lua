local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end

ZygorGuidesViewer.GuideMenuTier = "CLA"

ZGV.BETASTART()
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---     TBC HERBALISM     ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Felweed",{
	author="support@zygorguides.com",
	description="\nFelweed can be gathered from Terokkar Forest.",
	condition_end=function() return skill('Herbalism') >= 300 end,
	},[[
	step
		map Terokkar Forest/0
		path follow smart; loop on; ants curved
		path	31.60,45.71	32.29,42.68	32.86,38.44	32.61,35.72	34.85,34.70
		path	36.60,32.54	36.98,30.09	38.61,28.59	39.20,26.76	40.64,25.10
		path	41.40,22.16	43.06,19.91	43.81,17.68	43.32,15.01	43.95,12.48
		path	45.94,12.75	48.58,14.35	50.45,17.02	49.36,20.09	49.79,22.32
		path	50.98,24.83	53.08,25.59	55.63,25.32	58.26,25.33	59.93,23.87
		path	61.12,26.59	62.13,28.15	63.46,29.60	65.02,31.32	67.13,31.63
		path	69.82,31.74	69.61,35.63	68.73,39.39	69.79,42.02	70.46,45.89
		path	70.51,48.71	68.94,53.17	68.11,54.89	65.38,54.27	63.87,51.31
		path	61.59,50.51	59.04,49.28	56.48,46.30	53.96,42.43	54.33,38.20
		path	53.25,35.66	50.24,35.67	48.92,34.53	46.58,34.04	43.68,34.49
		path	40.40,35.76	38.35,36.51	36.62,38.18	36.01,39.93	36.50,42.94
		path	35.72,43.53	33.66,44.98
		click Felweed##181270+
		|tip Gather Felweed along the path.
		collect Felweed##22785 |n
		'|confirm
]])



ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Ancient Lichen",{
	author="support@zygorguides.com",
	description="\nAncient Lichen can be gathered from the Mana-Tombs.",
	condition_end=function() return skill('Herbalism') >= 300 end,
	},[[
	step
		--map Mana-Tombs/1
		--path	follow smart; loop off; ants curved; dist 20
		--path	41.10,34.80	46.60,33.41	61.00,18.81
		--path	57.60,36.61	63.50,35.50	60.60,57.50
		--path	52.50,63.60	58.50,69.71	62.60,85.11
		--path	55.50,81.61	54.70,89.70	50.10,83.70
		--path	39.00,85.10	30.50,56.91
		map Zangarmarsh/0 
		path	follow smart; ants curved; dist 20
		path	82.27,44.23	79.64,39.75	79.46,36.87	81.08,33.72	83.18,34.79
		path	84.92,37.43	85.23,40.76
		Kill Withered enemies around this area
		|tip These can also be farmed from Slave Pens, Underbog and Steamvaults with stealth or a group.
		--|tip Gather Ancient Lichen along the path on your dungeon map.
		--|tip Exit the dungeon and reset the instance once you reach the end.
		--|tip To do this, right-click your character portrait and choose "Reset all instances."
		collect Ancient Lichen##22790 |n
		'|confirm
]])



ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Dreaming Glory",{
	author="support@zygorguides.com",
	description="\nDreaming Glory can be gathered from Terokkar Forest.",
	condition_end=function() return skill('Herbalism') >= 300 end,
	},[[
	step
		map Terokkar Forest/0
		path follow smart; loop on; ants curved
		path	31.60,45.71	32.29,42.68	32.86,38.44	32.61,35.72	34.85,34.70
		path	36.60,32.54	36.98,30.09	38.61,28.59	39.20,26.76	40.64,25.10
		path	41.40,22.16	43.06,19.91	43.81,17.68	43.32,15.01	43.95,12.48
		path	45.94,12.75	48.58,14.35	50.45,17.02	49.36,20.09	49.79,22.32
		path	50.98,24.83	53.08,25.59	55.63,25.32	58.26,25.33	59.93,23.87
		path	61.12,26.59	62.13,28.15	63.46,29.60	65.02,31.32	67.13,31.63
		path	69.82,31.74	69.61,35.63	68.73,39.39	69.79,42.02	70.46,45.89
		path	70.51,48.71	68.94,53.17	68.11,54.89	65.38,54.27	63.87,51.31
		path	61.59,50.51	59.04,49.28	56.48,46.30	53.96,42.43	54.33,38.20
		path	53.25,35.66	50.24,35.67	48.92,34.53	46.58,34.04	43.68,34.49
		path	40.40,35.76	38.35,36.51	36.62,38.18	36.01,39.93	36.50,42.94
		path	35.72,43.53	33.66,44.98
		click Dreaming Glory##181271+
		|tip Gather Dreaming Glory along the path.
		collect Dreaming Glory##22786 |n
		'|confirm
]])



ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Fel Lotus",{
	author="support@zygorguides.com",
	description="\nFel Lotus can be gathered from Shadowmoon Valley.",
	condition_end=function() return skill('Herbalism') >= 300 end,
	},[[
	step
		map Shadowmoon Valley/0
		path	follow smart; loop on; ants curved; dist 20
		path	42.51,59.05	43.42,65.13	43.35,72.41	47.71,69.62	47.32,51.73
		path	51.52,59.03	51.41,66.46	56.94,73.92	61.24,68.15	57.83,57.26
		path	62.03,56.22	65.24,61.52	70.61,60.71	68.51,58.02	67.94,47.22
		path	72.11,47.51	71.52,40.81	66.32,39.32	58.53,45.31	49.95,33.91
		path	53.12,33.55	59.63,37.35	67.13,28.91	66.02,21.82	58.01,23.62
		path	55.63,16.84	52.52,15.62	52.51,21.61	45.53,15.13	42.32,38.24
		path	38.31,32.18	31.21,34.61	24.92,29.64	22.04,34.71	22.04,40.81
		path	29.72,47.82	27.23,52.63	31.63,53.82
		click Nightmare Vine##181280+
		|tip Gather Nightmare Vine along the path.
		|tip Fel Lotus is gathered from any herb farmed in the Outland.
		collect Fel Lotus##22794 |n
		'|confirm
]])



ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Mana Thistle",{
	author="support@zygorguides.com",
	description="\nMana Thistle can be gathered from Terokkar Forest and Shadowmoon Valley.",
	condition_end=function() return skill('Herbalism') >= 300 end,
	},[[
	step
	label "Start_Path"
		map Terokkar Forest/0
		path	follow smart; loop on; ants curved; dist 20
		path	27.11,10.51	22.10,6.50	20.21,14.21	23.90,10.50
		click Mana Thistle##181281+
		|tip Gather Mana Thistle along the path.
		|tip Mana Thistle is a rare herb, so pick nearby herbs to make it possibly spawn.
		collect Mana Thistle##22793 |n
		Farm Along the Path |goto 23.90,10.50 < 30 |noway |c
	step
		map Terokkar Forest/0
		path	follow smart; loop on; ants curved; dist 20
		path	62.42,73.60	65.70,79.21	68.72,85.72	72.21,88.52	74.91,87.50
		path	72.31,82.01	69.31,74.60	62.41,73.60
		click Mana Thistle##181281+
		|tip Gather Mana Thistle along the path.
		|tip Mana Thistle is a rare herb, so pick nearby herbs to make it possibly spawn.
		collect Mana Thistle##22793 |n
		Farm Along the Path |goto 62.41,73.60 < 30 |noway |c
	step
		map Shadowmoon Valley/0
		path	follow smart; loop on; ants curved; dist 20
		path	65.81,80.63	70.21,79.12	74.31,80.80	79.20,87.53	77.51,88.40
		path	74.32,88.92	71.12,88.31	68.33,87.51	70.21,83.92	72.02,85.91
		path	74.60,86.41
		click Mana Thistle##181281+
		|tip Gather Mana Thistle along the path.
		|tip Mana Thistle is a rare herb, so pick nearby herbs to make it possibly spawn.
		collect Mana Thistle##22793 |n
		Farm Along the Path |goto 74.60,86.41 < 30 |noway |c |next "Start_Path"
]])



ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Netherbloom",{
	author="support@zygorguides.com",
	description="\nNetherbloom can be gathered from Netherstorm.",
	condition_end=function() return skill('Herbalism') >= 300 end,
	},[[
	step
		map Netherstorm/0
		path follow smart; loop on; ants curved
		path	40.24,77.20	35.96,77.64	33.57,77.45	32.69,76.46	29.37,79.43
		path	26.96,78.02	25.18,76.67	22.65,76.95	21.15,76.56	20.31,74.78
		path	19.80,71.91	19.08,69.17	20.47,66.62	22.14,66.23	24.65,65.10
		path	27.12,60.26	25.78,57.60	24.23,55.80	25.51,54.63	28.56,54.51
		path	31.15,52.38	29.62,43.63	27.59,44.60	25.41,44.20	22.98,42.42
		path	23.01,39.51	24.33,37.29	25.59,34.57	28.07,36.77	29.58,40.32
		path	31.85,40.98	36.24,37.50	34.06,33.89	33.35,29.83	33.90,25.46
		path	35.11,23.24	35.65,19.13	37.78,16.74	39.58,16.09	42.42,14.81
		path	44.23,11.72	45.11,9.32	45.88,7.67	46.97,9.19	48.22,13.84
		path	50.05,15.38	50.32,17.83	53.22,17.87	55.50,17.51	55.81,20.17
		path	56.92,23.83	54.87,25.87	52.51,26.14	50.65,26.43	48.19,27.46
		path	47.13,31.47	47.76,34.54	49.01,37.61	54.64,32.59	56.67,31.80
		path	58.36,31.54	60.65,30.28	62.49,30.31	65.43,30.84	67.85,32.79
		path	68.63,35.87	70.41,36.32	72.66,35.05	73.97,35.64	73.61,37.25
		path	73.81,39.22	73.42,40.88	72.18,43.37	70.07,44.56	68.89,46.88
		path	66.51,48.70	64.20,50.40	61.71,50.31	59.22,50.15	57.37,48.48
		path	56.39,46.25	54.77,43.82	53.12,41.66	49.55,46.57	49.57,50.00
		path	50.42,52.90	51.84,54.87	53.70,56.61	56.10,56.66	57.95,57.14
		path	59.94,58.21	62.03,58.25	64.36,58.34	66.65,58.84	67.89,61.91
		path	66.70,65.88	64.15,67.93	62.18,68.23	61.37,64.52	60.24,63.12
		path	57.94,63.05	57.36,65.05	56.29,67.80	52.89,68.59	51.27,70.71
		path	51.54,75.15	54.25,76.46	57.15,77.98	59.64,78.82	62.25,79.25
		path	60.11,81.86	60.14,84.60	59.80,87.70	58.69,89.60	56.55,89.08
		path	54.83,88.42	52.69,86.63	50.15,86.35	48.74,85.68	46.78,84.05
		path	45.54,79.03	43.73,76.27
		click Netherbloom##181279+
		|tip Gather Netherbloom along the path.
		collect Netherbloom##22791 |n
		'|confirm
]])



ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Nightmare Vine",{
	author="support@zygorguides.com",
	description="\nNightmare Vine can be gathered from Shadowmoon Valley.",
	condition_end=function() return skill('Herbalism') >= 300 end,
	},[[
	step
		map Shadowmoon Valley/0
		path	follow smart; loop on; ants curved; dist 20
		path	42.51,59.05	43.42,65.13	43.35,72.41	47.71,69.62	47.32,51.73
		path	51.52,59.03	51.41,66.46	56.94,73.92	61.24,68.15	57.83,57.26
		path	62.03,56.22	65.24,61.52	70.61,60.71	68.51,58.02	67.94,47.22
		path	72.11,47.51	71.52,40.81	66.32,39.32	58.53,45.31	49.95,33.91
		path	53.12,33.55	59.63,37.35	67.13,28.91	66.02,21.82	58.01,23.62
		path	55.63,16.84	52.52,15.62	52.51,21.61	45.53,15.13	42.32,38.24
		path	38.31,32.18	31.21,34.61	24.92,29.64	22.04,34.71	22.04,40.81
		path	29.72,47.82	27.23,52.63	31.63,53.82
		click Nightmare Vine##181280+
		|tip Gather Nightmare Vine along the path.
		collect Nightmare Vine##22792 |n
		'|confirm
]])



ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Ragveil",{
	author="support@zygorguides.com",
	description="\nRagveil can be gathered from Zangarmarsh.",
	condition_end=function() return skill('Herbalism') >= 300 end,
	},[[
	step
		map Zangarmarsh/0
		path follow smart; loop on; ants curved
		path	83.47,41.87	84.20,37.59	81.81,33.16	77.86,33.21	75.68,34.01
		path	73.86,38.51	70.74,40.47	68.52,41.50	65.65,39.18	62.93,38.46
		path	60.95,37.98	58.10,35.36	55.37,35.42	53.23,34.98	50.96,33.65
		path	48.21,33.08	44.78,31.79	42.54,31.68	40.63,33.89	38.56,33.56
		path	36.66,32.68	34.77,29.60	33.26,26.30	29.50,24.65	26.55,23.37
		path	24.63,23.97	21.65,27.24	18.44,29.85	17.29,33.67	17.04,36.75
		path	14.23,41.57	16.46,46.13	17.31,50.06	16.84,53.47	17.92,56.63
		path	15.63,58.80	12.99,59.63	13.11,63.17	16.33,63.54	19.08,61.78
		path	22.78,58.64	25.41,57.72	27.03,57.93	28.53,61.81	30.87,61.91
		path	33.55,65.37	35.31,64.62	38.20,64.75	41.54,64.06	42.44,62.80
		path	45.31,63.25	47.33,62.29	49.64,63.31	52.00,66.07	53.50,67.63
		path	55.24,67.25	57.43,68.85	59.99,68.42	62.10,69.89	64.46,71.61
		path	66.43,73.47	66.45,77.16	67.51,80.44	68.34,84.46	71.72,85.54
		path	73.36,85.21	76.07,84.45	78.24,85.58	80.78,86.39	82.03,87.58
		path	85.17,86.99	86.08,83.78	84.64,81.04	82.88,78.84	82.18,76.32
		path	82.33,72.85	80.95,70.67	78.39,67.26	77.98,62.18	78.15,60.45
		path	78.17,59.21	78.92,56.99	81.39,54.58	82.91,52.12	82.36,49.38
		path	82.90,46.26
		click Ragveil##181275+
		|tip Gather Ragveil along the path.
		collect Ragveil##22787 |n
		'|confirm
]])



ZygorGuidesViewer:RegisterGuide("Profession Guides\\Herbalism\\Farming Guides\\Terocone",{
	author="support@zygorguides.com",
	description="\nTerocone can be gathered from Terokkar Forest.",
	condition_end=function() return skill('Herbalism') >= 300 end,
	},[[
	step
		map Terokkar Forest/0
		path follow smart; loop on; ants curved
		path	31.60,45.71	32.29,42.68	32.86,38.44	32.61,35.72	34.85,34.70
		path	36.60,32.54	36.98,30.09	38.61,28.59	39.20,26.76	40.64,25.10
		path	41.40,22.16	43.06,19.91	43.81,17.68	43.32,15.01	43.95,12.48
		path	45.94,12.75	48.58,14.35	50.45,17.02	49.36,20.09	49.79,22.32
		path	50.98,24.83	53.08,25.59	55.63,25.32	58.26,25.33	59.93,23.87
		path	61.12,26.59	62.13,28.15	63.46,29.60	65.02,31.32	67.13,31.63
		path	69.82,31.74	69.61,35.63	68.73,39.39	69.79,42.02	70.46,45.89
		path	70.51,48.71	68.94,53.17	68.11,54.89	65.38,54.27	63.87,51.31
		path	61.59,50.51	59.04,49.28	56.48,46.30	53.96,42.43	54.33,38.20
		path	53.25,35.66	50.24,35.67	48.92,34.53	46.58,34.04	43.68,34.49
		path	40.40,35.76	38.35,36.51	36.62,38.18	36.01,39.93	36.50,42.94
		path	35.72,43.53	33.66,44.98
		click Terocone##181277+
		|tip Gather Terocone along the path.
		collect Terocone##22789 |n
		'|confirm
]])

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---     TBC ENCHANTING     --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Arcane Dust",{
	author="support@zygorguides.com",
	description="\nDisenchant items to gather Enchanting materials.",
	condition_end=function() return skill('Enchanting') >= 300 end,
	},[[
	step
		Disenchant item level 60 or higher green armor and weapons
		|tip You can disenchant old gear or buy some off the Auction House.
		|tip You may sometimes get Greater or Lesser Planar Essence instead of Arcane Dust.
		collect Arcane Dust##22445 |n
		'|confirm
]])



ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Lesser Planar Essence",{
	author="support@zygorguides.com",
	description="\nDisenchant items to gather Enchanting materials.",
	condition_end=function() return skill('Enchanting') >= 300 end,
	},[[
	step
		Disenchant item level 60 or higher green armor and weapons
		|tip You can disenchant old gear or buy some off the Auction House.
		|tip These specifically come from The Burning Crusade greens.
		|tip This means that greens from Classic will not drop them when disenchanted.
		|tip You may sometimes get Greater or Lesser Planar Essence instead of Arcane Dust.
		collect Lesser Planar Essence##22447 |n
		'|confirm
]])



ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Greater Planar Essence",{
	author="support@zygorguides.com",
	description="\nDisenchant items to gather Enchanting materials.",
	condition_end=function() return skill('Enchanting') >= 300 end,
	},[[
	step
		Disenchant item level 60 or higher green armor and weapons
		|tip You can disenchant old gear or buy some off the Auction House.
		|tip These specifically come from The Burning Crusade greens.
		|tip This means that greens from Classic will not drop them when disenchanted.
		|tip You may sometimes get Greater or Lesser Planar Essence instead of Arcane Dust.
		collect Greater Planar Essence##22446 |n
		'|confirm
]])



ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Large Prismatic Shard",{
	author="support@zygorguides.com",
	description="\nDisenchant items to gather Enchanting materials.",
	condition_end=function() return skill('Enchanting') >= 300 end,
	},[[
	step
		Disenchant item level 67 or higher blue armor and weapons
		|tip You can disenchant old gear or buy some off the Auction House.
		|tip You may sometimes get Greater or Lesser Planar Essence instead of Arcane Dust.
		collect Large Prismatic Shard##22449 |n
		'|confirm
]])



ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Small Prismatic Shard",{
	author="support@zygorguides.com",
	description="\nDisenchant items to gather Enchanting materials.",
	condition_end=function() return skill('Enchanting') >= 300 end,
	},[[
	step
		Disenchant item level 58 or higher blue armor and weapons
		|tip You can disenchant old gear or buy some off the Auction House.
		|tip These specifically come from The Burning Crusade blues.
		|tip This means that blues from Classic will not drop them when disenchanted.
		|tip You may sometimes get Greater or Lesser Planar Essence instead of Arcane Dust.
		collect Small Prismatic Shard##22448 |n
		'|confirm
]])



ZygorGuidesViewer:RegisterGuide("Profession Guides\\Enchanting\\Farming Guides\\Netherweave Cloth",{
	author="support@zygorguides.com",
	description="\nGather Netherweave Cloth in Shadowmoon Valley.",
	condition_end=function() return skill('Enchanting') >= 300 end,
	},[[
	step
	label "Legion_Hold"
		map Shadowmoon Valley/0
		path follow smart; loop on; ants curved; dist 20
		path	51.1,58.8	53.0,59.3	53.2,60.5	52.8,63.2	52.8,65.4
		path	52.9,69.0	52.5,71.8	47.3,71.1	45.8,71.3	45.2,69.2
		path	45.6,66.1	48.0,67.2
		Kill enemies around this area
		collect Netherweave Cloth##21877 |n
		Click Here to Continue |confirm
	step
	
		map Shadowmoon Valley/0
		path follow smart; loop on; ants curved; dist 20
		path	23.9,41.3	22.6,40.1	22.3,38.4	22.1,37.1	20.7,38.0
		path	20.8,36.2	21.8,34.2	22.7,31.2	23.7,31.1	24.9,32.3
		path	26.0,33.3	25.1,34.6	26.2,36.1	25.1,38.1	24.9,39.8
		Kill enemies around this area
		collect 928 Netherweave Cloth##21877
		Click Here to Continue |confirm |next "Legion_Hold"
]])

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---     TBC COOKING     -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Ravager Flesh",{
	author="support@zygorguides.com",
	description="\nRavager Flesh can be gathered from the western Hellfire Peninsula.",
	},[[
	step
		Kill Thornfang enemies around this area
		|tip They spawn on both sides of the road.
		collect Ravager Flesh##27674 |n |goto Hellfire Peninsula/0 10.26,51.72
		'|confirm
]])



ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Talbuk Venison",{
	author="support@zygorguides.com",
	description="\nTalbuk Venison can be gathered from central Nagrand.",
	},[[
	step
		map Nagrand/0
		path loop on; follow strict; dist 40
		path	53.83,31.31	52.92,29.15	51.38,26.84	48.38,27.04	47.30,30.27
		path	48.26,33.27	49.13,37.97	50.13,39.28	51.37,38.48	50.58,36.74
		path	52.29,33.21
		kill Talbuk Thorngrazer##17131+
		collect Talbuk Venison##27682 |n
		'|confirm
]])


ZygorGuidesViewer:RegisterGuide("Profession Guides\\Cooking\\Farming Guides\\Raptor Ribs",{
	author="support@zygorguides.com",
	description="\nRaptor Ribs can be gathered from the eastern Blade's Edge Mountains.",
	},[[
	step
		map Blade's Edge Mountains/0
		path loop on; follow strict; dist 40
		path	62.00,55.54	65.96,57.01	66.51,59.83	66.37,63.86	67.39,66.46
		path	67.69,71.59	69.27,71.36	68.95,65.95	68.53,63.09	68.54,60.21
		path	68.26,57.12	67.14,53.92	68.20,49.52
		kill Daggermaw Lashtail##20751+
		collect Raptor Ribs##31670 |n
		'|confirm
]])

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---     TBC PRIMALS     -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

ZygorGuidesViewer:RegisterGuide("Profession Guides\\General Farming Guides\\Primal Air",{
	author="support@zygorguides.com",
	description="\nPrimal Air can be gathered from Shadowmoon Valley, Outland.",
	},[[
	step
	label "Start"
		map Shadowmoon Valley/0
		path follow smart; loop off; ants curved; dist 30
		path	55.53,72.49	59.06,69.81	61.40,66.56	62.46,62.66	61.26,59.46
		path	57.67,56.49	59.53,53.73	63.10,55.41	65.02,57.56	65.87,62.28
		path	63.43,60.68
		kill Enraged Air Spirit##21060+
		|tip Follow the path, killing any that you see.
		collect Mote of Air##22572 |n
		|tip Combine 10 Motes of Air into 1 Primal Air.
		'|goto 63.43,60.68 < 30 |c |noway
	step
		map Shadowmoon Valley/0
		path follow smart; loop off; ants curved; dist 30
		path	62.59,62.13	61.28,67.03	59.70,69.75	55.35,71.72
		kill Enraged Air Spirit##21060+
		|tip Follow the path, killing any that you see.
		collect Mote of Air##22572 |n
		|tip Combine 10 Motes of Air into 1 Primal Air.
		'|goto 55.35,71.72 < 30 |c |noway |next "Start"
]])



ZygorGuidesViewer:RegisterGuide("Profession Guides\\General Farming Guides\\Primal Earth",{
	author="support@zygorguides.com",
	description="\nPrimal Earth can be gathered from Nagrand.",
	},[[
	step
	label "Start"
		map Nagrand/0
		path follow smart; loop off; ants curved; dist 30
		path	46.19,77.20	41.98,78.72	40.31,82.83	32.13,80.25	29.34,79.24
		path	28.40,73.85	28.94,66.76	28.17,63.58
		kill Shattered Rumbler##17157+
		|tip Follow the path, killing any that you see.
		collect Mote of Earth##22573 |n
		|tip Combine 10 Motes of Earth into 1 Primal Earth.
		'|goto Nagrand/0 28.17,63.58 < 30 |c |noway
	step
		map Nagrand/0
		path follow smart; loop off; ants curved; dist 30
		path	28.17,63.58	28.94,66.76	28.40,73.85	29.34,79.24	32.13,80.25
		path	40.31,82.83	41.98,78.72	46.19,77.20
		kill Shattered Rumbler##17157+
		|tip Follow the path, killing any that you see.
		collect Mote of Earth##22573 |n
		|tip Combine 10 Motes of Earth into 1 Primal Earth.
		'|goto Nagrand/0 46.19,77.20 < 30 |c |noway |next "Start"
]])



ZygorGuidesViewer:RegisterGuide("Profession Guides\\General Farming Guides\\Primal Fire",{
	author="support@zygorguides.com",
	description="\nPrimal Fire can be gathered from Hellfire Peninsula.",
	},[[
	step
	label "1"
		map Shadowmoon Valley/0
		path	loop off; ants curved; dist 25 
		path	44.47,46.46	46.81,48.88	48.83,51.69	51.70,52.00
		kill Enraged Fire Spirit##21061
		collect Mote of Fire##22574 |n
		|tip Combine 10 Motes of Fire into 1 Primal Fire.
		'|goto 51.70,52.00 |noway |c
	step
		kill Enraged Fire Spirit##21061
		map Shadowmoon Valley/0
		path	loop off; ants curved; dist 25 
		path	48.34,46.75	47.93,42.37	49.03,37.97	51.34,36.12	49.04,34.47
		kill Enraged Fire Spirit##21061
		collect Mote of Fire##22574 |n
		|tip Combine 10 Motes of Fire into 1 Primal Fire.
		'|goto 49.04,34.47 |noway |c |next "1"
	//step
	//	kill Incandescent Fel Spark##22323+
	//	collect Mote of Fire##22574 |n |goto Hellfire Peninsula/0 62.21,19.21
	//	|tip Combine 10 Motes of Fire into 1 Primal Fire.
	//	'|confirm
]])



ZygorGuidesViewer:RegisterGuide("Profession Guides\\General Farming Guides\\Primal Life",{
	author="support@zygorguides.com",
	description="\nPrimal Life can be gathered from The Underbog in Outland.",
	},[[
	//step
	//	Kill enemies around this area
	//	|tip Enter the Underbog instance.
	//	|tip Kill all enemies up to Hungarfen.
	//	|tip Do not kill Hungarfen.
	//	|tip Run out and reset the instance before repeating.
	//	|tip Reset the instance by right-clicking your character portrait and clicking "Reset all instances."
		map Zangarmarsh/0 
		path	follow smart; ants curved; dist 20
		path	82.27,44.23	79.64,39.75	79.46,36.87	81.08,33.72	83.18,34.79
		path	84.92,37.43	85.23,40.76
		Kill Withered enemies around this area
		|tip Use Herbalism on their corpses.
		collect Mote of Life##22575 |n
		|tip Combine 10 Motes of Life into one Primal Life.
		'|confirm
]])



ZygorGuidesViewer:RegisterGuide("Profession Guides\\General Farming Guides\\Primal Mana",{
	author="support@zygorguides.com",
	description="\nPrimal Mana can be gathered from the Netherstorm in Outland.",
	},[[
	step
		Kill enemies around this area
		map Netherstorm/0
		path follow smart; loop on; ants curved
		path	55.84,86.20	55.35,87.01	54.65,87.87	54.99,88.71	54.71,89.47
		path	55.95,89.43	57.09,87.92	57.19,86.41
		collect Mote of Mana##22576 |n
		|tip Combine 10 Motes of Mana into one Primal Mana.
		'|confirm
]])



ZygorGuidesViewer:RegisterGuide("Profession Guides\\General Farming Guides\\Primal Shadow",{
	author="support@zygorguides.com",
	description="\nPrimal Shadow can be gathered from Hellfire Peninsula.",
	},[[
	step
	label "Start"
		map Hellfire Peninsula/0
		path follow smart; loop off; ants curved; dist 30
		path	76.12,63.56	77.61,68.71	79.80,79.02
		Kill enemies around this area
		|tip Follow the path, killing any Collapsing Voidwalkers and Vacillating Voidcallers that you see.
		collect Mote of Shadow##22577 |n
		|tip Combine 10 Motes of Shadow into 1 Primal Shadow.
		'|goto 79.80,79.02 < 30 |c |noway
	step
		map Hellfire Peninsula/0
		path follow smart; loop off; ants curved; dist 30
		path	79.80,79.02	77.61,68.71	76.12,63.56
		Kill enemies around this area
		|tip Follow the path, killing any Collapsing Voidwalkers and Vacillating Voidcallers that you see.
		collect Mote of Shadow##22577 |n
		|tip Combine 10 Motes of Shadow into 1 Primal Shadow.
		'|goto 76.12,63.56 < 30 |c |noway |next "Start"
]])



ZygorGuidesViewer:RegisterGuide("Profession Guides\\General Farming Guides\\Primal Water",{
	author="support@zygorguides.com",
	description="\nPrimal Water can be gathered from Black Temple or Skettis, Terrokar Forest.",
	},[[
	--Elemental Plateau
	step
		map Nagrand/0
		path	loop off; dist 25
		path	64.09,18.97	62.65,16.17	60.84,15.07	59.37,14.55
		kill Crashing Wave-Spirit##22309+
		collect Mote of Water##22578 |n
		|tip Combine 10 Motes of Water into 1 Primal Water.
		|tip If you have fishing, you can also gather them from the "Pure Water" pools that spawn around here.
		'|confirm
	//step
	//label "Collect_Mote_Of_Water_Black_Temple"
	//	Kill Aqueous enemies around this area
	//	|tip Kill them up to High Warlord Naj'entus.
	//	|tip DO NOT kill him or the mobs won't respawn on reset.
	//	|tip When finished clearing, zone out and reset the instance.
	//	|tip You can do this by right-clicking your portrait and selecting "Reset all instances."
	//	|tip You can reset up to 10 times per hour.
	//	collect Mote of Water##22578 |n |goto Black Temple/2 0.00,0.00
	//	|tip Combine 10 Motes of Water into 1 Primal Water.
	//	Click Here to Farm in Skettis, Terrokar Forest |confirm
	//step
	//	kill Skettis Surger##21728+
	//	|tip They swim in the water all around this island.
	//	collect Mote of Water##22578 |n |goto Terokkar Forest/0 66.14,77.88
	//	|tip Combine 10 Motes of Water into 1 Primal Water.
		--Click Here to Farm in Black Temple (Best) |confirm |next "Collect_Mote_Of_Water_Black_Temple"
]])



-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---     TBC BLACKSMITHING     -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Blacksmithing\\Farming Guides\\Adamantite Ore",{
	author="support@zygorguides.com",
	condition_suggested=function() return skill('Blacksmithing') > 300 end,
	description="Adamantite Ore can be gathered in Nagrand.",
	},[[
	step
		map Nagrand/0
		path follow smart; loop on; ants curved; dist 30
		path	49.90,71.01	48.62,71.28	48.51,75.60	46.76,77.91	42.77,74.39
		path	42.08,76.76	41.94,80.24	41.11,84.55	38.45,83.23	36.21,82.30
		path	33.57,82.12	31.13,80.54	28.19,78.49	27.67,72.30	28.58,69.31
		path	28.20,63.62	27.06,62.92	26.75,57.07	23.44,56.18	20.07,55.07
		path	19.35,47.46	20.31,41.40	21.27,38.46	23.05,33.49	26.76,32.99
		path	31.77,28.76	31.71,24.26	30.40,20.66	35.78,15.50	36.87,18.62
		path	39.06,20.24	41.69,21.71	42.81,19.43	50.53,20.11	54.00,21.00
		path	56.63,24.36	60.66,33.11	64.21,35.14	66.06,36.31	66.14,32.27
		path	67.70,35.36	70.24,37.57	74.08,37.81	72.33,43.08	73.43,46.30
		path	73.01,50.47	72.77,56.93	74.94,58.55	71.99,61.95	72.67,64.73
		path	72.21,67.00	71.71,71.30	72.96,76.49	70.91,75.13	68.49,75.92
		path	66.66,79.00	63.17,76.97	61.93,79.13	58.74,80.27	56.19,79.78
		path	54.59,81.99	51.75,79.79	49.42,82.67	47.62,81.24	48.39,79.11
		Mine along the path
		|tip Enter caves along the path.
		|tip Make sure you enable "Find Minerals" in the tracking menu on the minimap.
		click Adamantite Vein
		collect Adamantite Ore##23425 |n
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Blacksmithing\\Farming Guides\\Fel Iron Ore",{
	author="support@zygorguides.com",
	condition_suggested=function() return skill('Blacksmithing') > 300 end,
	description="Fel Iron Ore can be gathered in Hellfire Penninsula.",
	},[[
	step
		map Hellfire Peninsula/0
		path	65.97,48.02	69.02,46.87	70.80,50.94	70.25,54.41	70.27,59.32
		path	72.23,60.13	74.08,63.37	76.97,62.92	78.97,66.32	78.85,70.21
		path	79.70,74.48	80.75,77.99	77.91,75.80	77.13,73.33	76.82,69.54
		path	75.53,67.17	71.66,67.33	69.41,67.29	68.38,60.74	65.36,60.83
		path	65.69,64.45	63.25,69.06	62.72,72.99	62.49,79.96	58.89,76.64
		path	57.05,73.97	57.06,81.30	56.40,82.14	55.54,83.79	52.24,83.83
		path	49.82,83.52	46.85,84.82	42.98,79.36	42.26,76.62	44.54,73.42
		path	47.44,71.34	50.85,69.85	47.41,66.63	44.75,68.48	45.62,61.55
		path	47.89,59.49	49.89,56.45	49.95,61.42	51.38,61.68	52.93,58.38
		path	55.41,56.25	56.22,53.50	58.62,52.98	62.69,50.44
		Mine along the path
		|tip Enter caves along the path.
		|tip Make sure you enable "Find Minerals" in the tracking menu on the minimap.
		click Fel Iron Vein
		collect Fel Iron Ore##23424 |n
]])

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---     TBC ENGINEERING     -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Engineering\\Farming Guides\\Adamantite Ore",{
	author="support@zygorguides.com",
	condition_suggested=function() return skill('Blacksmithing') > 300 end,
	description="Adamantite Ore can be gathered in Nagrand.",
	},[[
	step
		map Nagrand/0
		path follow smart; loop on; ants curved; dist 30
		path	49.90,71.01	48.62,71.28	48.51,75.60	46.76,77.91	42.77,74.39
		path	42.08,76.76	41.94,80.24	41.11,84.55	38.45,83.23	36.21,82.30
		path	33.57,82.12	31.13,80.54	28.19,78.49	27.67,72.30	28.58,69.31
		path	28.20,63.62	27.06,62.92	26.75,57.07	23.44,56.18	20.07,55.07
		path	19.35,47.46	20.31,41.40	21.27,38.46	23.05,33.49	26.76,32.99
		path	31.77,28.76	31.71,24.26	30.40,20.66	35.78,15.50	36.87,18.62
		path	39.06,20.24	41.69,21.71	42.81,19.43	50.53,20.11	54.00,21.00
		path	56.63,24.36	60.66,33.11	64.21,35.14	66.06,36.31	66.14,32.27
		path	67.70,35.36	70.24,37.57	74.08,37.81	72.33,43.08	73.43,46.30
		path	73.01,50.47	72.77,56.93	74.94,58.55	71.99,61.95	72.67,64.73
		path	72.21,67.00	71.71,71.30	72.96,76.49	70.91,75.13	68.49,75.92
		path	66.66,79.00	63.17,76.97	61.93,79.13	58.74,80.27	56.19,79.78
		path	54.59,81.99	51.75,79.79	49.42,82.67	47.62,81.24	48.39,79.11
		Mine along the path
		|tip Enter caves along the path.
		|tip Make sure you enable "Find Minerals" in the tracking menu on the minimap.
		click Adamantite Vein
		collect Adamantite Ore##23425 |n
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Engineering\\Farming Guides\\Fel Iron Ore",{
	author="support@zygorguides.com",
	condition_suggested=function() return skill('Blacksmithing') > 300 end,
	description="Fel Iron Ore can be gathered in Hellfire Penninsula.",
	},[[
	step
		map Hellfire Peninsula/0
		path	65.97,48.02	69.02,46.87	70.80,50.94	70.25,54.41	70.27,59.32
		path	72.23,60.13	74.08,63.37	76.97,62.92	78.97,66.32	78.85,70.21
		path	79.70,74.48	80.75,77.99	77.91,75.80	77.13,73.33	76.82,69.54
		path	75.53,67.17	71.66,67.33	69.41,67.29	68.38,60.74	65.36,60.83
		path	65.69,64.45	63.25,69.06	62.72,72.99	62.49,79.96	58.89,76.64
		path	57.05,73.97	57.06,81.30	56.40,82.14	55.54,83.79	52.24,83.83
		path	49.82,83.52	46.85,84.82	42.98,79.36	42.26,76.62	44.54,73.42
		path	47.44,71.34	50.85,69.85	47.41,66.63	44.75,68.48	45.62,61.55
		path	47.89,59.49	49.89,56.45	49.95,61.42	51.38,61.68	52.93,58.38
		path	55.41,56.25	56.22,53.50	58.62,52.98	62.69,50.44
		Mine along the path
		|tip Enter caves along the path.
		|tip Make sure you enable "Find Minerals" in the tracking menu on the minimap.
		click Fel Iron Vein
		collect Fel Iron Ore##23424 |n
]])

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---     TBC JEWELCRAFTING     -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Jewelcrafting\\Farming Guides\\Shadow Pearl",{
	author="support@zygorguides.com",
	condition_suggested=function() return skill('Jewelcrafting') > 300 end,
	description="Shadow Pearls can be gathered in Shadowmoon Valley.",
	},[[
	step
		Kill Bloodscale enemies around this area
		use the Jaggal Clam##24476+
		collect Shadow Pearl##24479 |n |goto Zangarmarsh/0 27.67,41.93
		|tip These have a very low drop rate.
		You can find more around: |notinsticky
		[26.26,46.37]
		[25.96,42.41]
		[25.01,38.06]
]])

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---     TBC LEATHERWORKING     ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Leatherworking\\Farming Guides\\Knothide Leather",{
	author="support@zygorguides.com",
	condition_suggested=function() return skill('Skinning') > 300 end,
	description="Knothide Leather can be gathered in Netherstorm.",
	},[[
	step
		map Netherstorm/0
		path follow smart; loop on; ants curved; dist 30
		path	43.61,57.06	45.22,57.65	47.41,56.58	48.25,54.31	48.18,51.86
		path	46.52,51.17	45.58,49.75	43.63,50.57	43.29,52.27	43.66,54.99
		path	44.85,56.21
		Kill enemies around this area
		|tip Only Beast enemies will be skinnable.
		|tip Skin their corpses.
		collect Knothide Leather##21887 |n
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Leatherworking\\Farming Guides\\Thick Clefthoof Leather",{
	author="support@zygorguides.com",
	condition_suggested=function() return skill('Skinning') > 300 end,
	description="Thick Clefthoof Leather can be gathered in Nagrand.",
	},[[
	step
		map Nagrand/0
		path follow smart; loop on; ants curved; dist 30
		path	44.28,26.55	43.25,29.59	45.88,33.29	47.54,38.47	50.14,51.61
		path	52.51,54.52	54.09,50.75	54.25,48.06	55.98,45.01	51.01,39.01
		path	50.63,31.76	46.12,27.60
		kill Clefthoof Bull##17132+
		|tip Skin their corpses.
		collect Thick Clefthoof Leather##25708 |n
]])

ZygorGuidesViewer:RegisterGuide("Profession Guides\\Leatherworking\\Farming Guides\\Fel Hide",{
	author="support@zygorguides.com",
	condition_suggested=function() return skill('Skinning') > 300 end,
	description="Fel Hide can be gathered in Netherstorm.",
	},[[
		map Netherstorm/0
		path follow smart; loop on; ants curved; dist 30
		path	55.33,60.50	58.09,60.46	58.98,58.47	61.66,59.15	63.22,59.54
		path	65.48,61.63	66.93,63.05	63.63,64.45	61.98,62.72
		kill Warp Chaser##18884+
		|tip Skin their corpses.
		collect Fel Hide##25707 |n
		|tip These have a low drop rate.
]])
ZGV.BETAEND()