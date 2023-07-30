local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("LevelingACLASSIC") then return end
ZygorGuidesViewer.GuideMenuTier = "CLA"
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides (1-12)\\Elwynn Forest (1-13) [Human Starter]",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Elwynn Forest",
condition_suggested=function() return raceclass('Human') and level <= 13 end,
condition_suggested_race=function() return raceclass('Human') end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Classic (12-58)\\Darkshore (12-17)",
},[[
defaultfor Human
step
talk Deputy Willem##823
accept A Threat Within##783 |goto Elwynn Forest 48.17,42.95
step
Enter the building |goto 48.31,41.99 < 7 |walk
talk Marshal McBride##197
|tip Inside the building.
turnin A Threat Within##783 |goto 48.92,41.61
accept Kobold Camp Cleanup##7 |goto 48.92,41.61
step
Leave the building |goto 48.30,42.01 < 7 |walk
talk Deputy Willem##823
accept Eagan Peltskinner##5261 |goto 48.17,42.95
step
talk Eagan Peltskinner##196
|tip Outside the building.
turnin Eagan Peltskinner##5261 |goto 48.94,40.16
accept Wolves Across the Border##33 |goto 48.94,40.16
step
Kill Wolf enemies around this area
collect 8 Tough Wolf Meat##750 |q 33/1 |goto 46.38,38.58
You can find more around: |notinsticky
[45.82,44.02]
[50.16,45.83]
[52.06,40.29]
step
Kill enemies around this area
Reach Level 2 |ding 2 |goto 46.38,38.58
You can find more around: |notinsticky
[45.82,44.02]
[50.16,45.83]
[52.06,40.29]
step
kill 10 Kobold Vermin##6 |q 7/1 |goto 47.49,36.15
You can find more around [51.18,37.25]
step
talk Eagan Peltskinner##196
turnin Wolves Across the Border##33 |goto 48.94,40.16
step
Kill enemies around this area
Reach Level 3 |ding 3 |goto 47.49,36.15
You can find more around [51.18,37.25]
step
Enter the building |goto 48.31,41.99 < 7 |walk
talk Marshal McBride##197
|tip Inside the building.
turnin Kobold Camp Cleanup##7 |goto 48.92,41.61
accept Investigate Echo Ridge##15 |goto 48.92,41.61
accept Glyphic Letter##3104 |goto 48.92,41.61 |only Human Mage
accept Simple Letter##3100 |goto 48.92,41.61 |only Human Warrior
accept Tainted Letter##3105 |goto 48.92,41.61 |only Human Warlock
accept Encrypted Letter##3102 |goto 48.92,41.61 |only Human Rogue
accept Hallowed Letter##3103 |goto 48.92,41.61 |only Human Priest
accept Consecrated Letter##3101 |goto 48.92,41.61 |only Human Paladin
step
Follow the path |goto 49.25,40.74 < 7 |walk
Run up the stairs |goto 49.42,40.26 < 7 |walk
talk Khelden Bremen##198
|tip Upstairs inside the building.
turnin Glyphic Letter##3104 |goto 49.66,39.40
|only if Human Mage
step
Follow the path |goto 49.59,41.82 < 7 |walk
talk Llane Beshere##911
|tip Inside the building.
turnin Simple Letter##3100 |goto 50.24,42.28
|only if Human Warrior
step
Follow the path |goto 49.59,41.82 < 7 |walk
talk Brother Sammuel##925
|tip Inside the building.
turnin Consecrated Letter##3101 |goto 50.43,42.12
|only if Human Paladin
step
Follow the path |goto 49.26,40.75 < 7 |walk
Follow the path |goto 49.74,40.24 < 7 |walk
talk Priestess Anetta##375
|tip Inside the building.
turnin Hallowed Letter##3103 |goto 49.81,39.49
|only if Human Priest
step
Leave the building |goto 48.29,42.00 < 7 |walk
talk Deputy Willem##823
accept Brotherhood of Thieves##18 |goto 48.17,42.93
step
talk Drusilla La Salle##459
turnin Tainted Letter##3105 |goto 49.87,42.65
accept The Stolen Tome##1598 |goto 49.87,42.65
|only if Human Warlock
step
talk Jorik Kerridan##915
|tip Outside, behind the building, in the horse stable.
turnin Encrypted Letter##3102 |goto 50.32,39.92
|only if Human Rogue
step
kill 10 Kobold Worker##257 |q 15/1 |goto 47.49,36.15
You can find more around [51.18,37.25]
stickystart "Collect_Red_Burlap_Bandanas"
step
click Stolen Books
collect Powers of the Void##6785 |q 1598/1 |goto 56.71,43.95
|only if Human Warlock
step
talk Drusilla La Salle##459
turnin The Stolen Tome##1598 |goto 49.87,42.65
|only if Human Warlock
step
label "Collect_Red_Burlap_Bandanas"
kill Defias Thug##38+
collect 12 Red Burlap Bandana##752 |q 18/1 |goto 56.09,42.35
You can find more around [53.20,50.30]
step
Kill enemies around this area
Reach Level 4 |ding 4 |goto 56.09,42.35
You can find more around [53.20,50.30]
step
talk Deputy Willem##823
|tip Outside, in front of the building.
turnin Brotherhood of Thieves##18 |goto 48.17,42.94
accept Milly Osworth##3903 |goto 48.17,42.94
accept Bounty on Garrick Padfoot##6 |goto 48.17,42.94
step
Enter the building |goto 48.28,42.02 < 7 |walk
talk Marshal McBride##197
|tip Inside the building.
turnin Investigate Echo Ridge##15 |goto 48.93,41.61
accept Skirmish at Echo Ridge##21 |goto 48.93,41.61
step
Leave the building |goto 48.29,42.01 < 7 |walk
talk Milly Osworth##9296
|tip Outside, behind the building.
turnin Milly Osworth##3903 |goto 50.69,39.35
accept Milly's Harvest##3904 |goto 50.69,39.35
step
kill Garrick Padfoot##103
collect Garrick's Head##182 |q 6/1 |goto 57.51,48.25
step
click Milly's Harvest+
|tip They look like wooden buckets on the ground around this area.
collect 8 Milly's Harvest##11119 |q 3904/1 |goto 53.88,48.55
step
talk Milly Osworth##9296
turnin Milly's Harvest##3904 |goto 50.69,39.35
accept Grape Manifest##3905 |goto 50.69,39.35
step
Kill enemies around this area
Reach Level 5 |ding 5 |goto 56.09,42.35
You can find more around [53.20,50.30]
step
talk Deputy Willem##823
|tip Outside, in front of the building.
turnin Bounty on Garrick Padfoot##6 |goto 48.17,42.94
step
Enter the building |goto 48.29,42.01 < 7 |walk
Run up the stairs |goto 49.56,41.61 < 7 |walk
talk Brother Neals##952
|tip Upstairs inside the building.
turnin Grape Manifest##3905 |goto 49.47,41.58
step
Leave the building |goto 48.28,42.01 < 7 |walk
Enter the mine |goto 47.67,31.86 < 7 |walk
kill 12 Kobold Laborer##80 |q 21/1 |goto 48.41,29.33
|tip Inside the mine.
step
Leave the mine |goto 47.66,31.89 < 7 |walk
Enter the building |goto 48.27,42.01 < 7 |walk
talk Marshal McBride##197
|tip Inside the building.
turnin Skirmish at Echo Ridge##21 |goto 48.92,41.61
accept Report to Goldshire##54 |goto 48.92,41.61
step
Leave the building |goto 48.28,42.01 < 7 |walk
Follow the path |goto 47.05,47.64 < 15 |only if walking
talk Falkhaan Isenstrider##6774
accept Rest and Relaxation##2158 |goto 45.56,47.74
step
talk Marshal Dughan##240
turnin Report to Goldshire##54 |goto 42.11,65.93
accept The Fargodeep Mine##62 |goto 42.11,65.93
step
Enter the building |goto 42.95,65.65 < 7 |walk
talk William Pestle##253
|tip Inside the building.
accept Kobold Candles##60 |goto 43.32,65.70
step
talk Innkeeper Farley##295
|tip Inside the building.
turnin Rest and Relaxation##2158 |goto 43.77,65.81
step
talk Innkeeper Farley##295
|tip Inside the building.
home Goldshire |goto 43.77,65.81 |q 1097 |future
step
Leave the building |goto 42.96,65.66 < 7 |walk
talk Remy "Two Times"##241
accept Gold Dust Exchange##47 |goto 42.14,67.26
step
Enter the building |goto 43.00,89.40 < 7 |walk
talk Maybell Maclure##251
|tip Inside the building.
accept Young Lovers##106 |goto 43.15,89.62
step
Leave the building |goto 43.00,89.40 < 7 |walk
talk Tommy Joe Stonefield##252
turnin Young Lovers##106 |goto 29.84,85.99
accept Speak with Gramma##111 |goto 29.84,85.99
step
talk "Auntie" Bernice Stonefield##246
accept Lost Necklace##85 |goto 34.48,84.26
step
Enter the building |goto 34.82,84.11 < 7 |walk
talk Gramma Stonefield##248
|tip Inside the building.
turnin Speak with Gramma##111 |goto 34.94,83.86
accept Note to William##107 |goto 34.94,83.86
step
Leave the building |goto 34.82,84.11 < 7 |walk
talk Billy Maclure##247
turnin Lost Necklace##85 |goto 43.13,85.72
accept Pie for Billy##86 |goto 43.13,85.72
step
kill Stonetusk Boar##113+
collect 4 Chunk of Boar Meat##769 |q 86/1 |goto 41.86,87.12
step
Kill enemies around this area
Reach Level 6 |ding 6 |goto 41.86,87.12
step
talk "Auntie" Bernice Stonefield##246
turnin Pie for Billy##86 |goto 34.48,84.26
accept Back to Billy##84 |goto 34.48,84.26
step
talk Billy Maclure##247
turnin Back to Billy##84 |goto 43.13,85.72
accept Goldtooth##87 |goto 43.13,85.72
stickystart "Collect_Gold_Dust"
stickystart "Collect_Large_Candles"
step
Enter the mine |goto 38.97,82.33 < 7 |walk
Scout Through the Fargodeep Mine |q 62/1 |goto 39.61,80.21
|tip Inside the mine.
step
Follow the path |goto 39.76,79.21 < 7 |walk
kill Goldtooth##327
|tip He walks around this area inside the mine.
collect Bernice's Necklace##981 |q 87/1 |goto 41.71,78.04
step
label "Collect_Gold_Dust"
Kill Kobold enemies around this area
|tip Inside the mine.
|tip You can find more outside the mine.
collect 10 Gold Dust##773 |q 47/1 |goto 39.61,80.21
step
label "Collect_Large_Candles"
Kill Kobold enemies around this area
|tip Inside the mine.
|tip You can find more outside the mine.
collect 8 Large Candle##772 |q 60/1 |goto 39.61,80.21
step
Kill enemies around this area
|tip You can find more outside the mine.
Reach Level 7 |ding 7 |goto 39.61,80.21
step
talk William Pestle##253
|tip Inside the building.
turnin Kobold Candles##60 |goto 43.32,65.70
accept Shipment to Stormwind##61 |goto 43.32,65.70
turnin Note to William##107 |goto 43.32,65.70
accept Collecting Kelp##112 |goto 43.32,65.70
step
Leave the building |goto 42.96,65.66 < 7 |walk
talk Remy "Two Times"##241
turnin Gold Dust Exchange##47 |goto 42.14,67.26
accept A Fishy Peril##40 |goto 42.14,67.26
step
talk Marshal Dughan##240
turnin A Fishy Peril##40 |goto 42.11,65.93
accept Further Concerns##35 |goto 42.11,65.93
turnin The Fargodeep Mine##62 |goto 42.11,65.93
accept The Jasperlode Mine##76 |goto 42.11,65.93
step
Kill Murloc enemies around this area
collect 4 Crystal Kelp Frond##1256 |q 112/1 |goto 50.20,66.86
You can find more around [55.90,66.66]
step
Enter the mine |goto 61.71,53.87 < 7 |walk
Follow the path |goto 60.83,51.04 < 7 |walk
Scout Through the Jasperlode Mine |q 76/1 |goto 60.38,49.68
step
Follow the path |goto 61.22,51.37 < 7 |walk
Leave the mine |goto 61.74,53.88 < 7 |c |q 35
step
Kill enemies around this area
Reach Level 8 |ding 8 |goto 62.75,55.31
You can find more inside the mine at [61.69,53.76]
step
talk Guard Thomas##261
turnin Further Concerns##35 |goto 73.97,72.18
accept Find the Lost Guards##37 |goto 73.97,72.18
accept Protect the Frontier##52 |goto 73.97,72.18
step
talk Sara Timberlain##278
|tip In front of the building.
accept Red Linen Goods##83 |goto 79.46,68.78
step
talk Supervisor Raelen##10616
accept A Bundle of Trouble##5545 |goto 81.38,66.11
stickystart "Collect_Bundles_Of_Wood"
stickystart "Kill_Young_Forest_Bears"
stickystart "Kill_Prowlers"
step
click A Half-Eaten Body
turnin Find the Lost Guards##37 |goto 72.65,60.33
accept Discover Rolf's Fate##45 |goto 72.65,60.33
step
click Rolf's Corpse
turnin Discover Rolf's Fate##45 |goto 79.80,55.52
accept Report to Thomas##71 |goto 79.80,55.52
step
label "Collect_Bundles_Of_Wood"
click Bundle of Wood+
|tip They look like small stacks of brown logs at the base of trees around this area.
collect 8 Bundle of Wood##13872 |q 5545/1 |goto 77.69,61.78
You can find more around [83.76,60.88]
step
talk Supervisor Raelen##10616
turnin A Bundle of Trouble##5545 |goto 81.38,66.12
step
talk Guard Thomas##261
turnin Report to Thomas##71 |goto 73.97,72.18
accept Deliver Thomas' Report##39 |goto 73.97,72.18
step
Kill Defias enemies around this area
collect 6 Red Linen Bandana##1019 |q 83/1 |goto 69.61,79.38
You can find more around [89.19,79.51]
step
label "Kill_Young_Forest_Bears"
kill 5 Young Forest Bear##822 |q 52/2 |goto 79.75,83.26
You can find more around: |notinsticky
[78.02,79.06]
[81.17,77.09]
[77.22,76.65]
[72.88,80.83]
[70.61,74.83]
step
label "Kill_Prowlers"
kill 8 Prowler##118 |q 52/1 |goto 78.93,79.13
step
Kill enemies around this area
Reach Level 9 |ding 9 |goto 69.61,79.38
You can find more around [89.19,79.51]
step
talk William Pestle##253
|tip Inside the building.
turnin Collecting Kelp##112 |goto 43.32,65.71
step
Watch the dialogue
talk William Pestle##253
|tip Inside the building.
accept The Escape##114 |goto 43.32,65.71
step
Leave the building |goto 42.96,65.66 < 7 |walk
talk Marshal Dughan##240
turnin Deliver Thomas' Report##39 |goto 42.11,65.93
accept Cloth and Leather Armor##59 |goto 42.11,65.93
turnin The Jasperlode Mine##76 |goto 42.11,65.93
accept Westbrook Garrison Needs Help!##239 |goto 42.11,65.93
step
Follow the road |goto 45.59,72.48 < 30 |only if walking
talk Guard Thomas##261
turnin Protect the Frontier##52 |goto 73.97,72.18
accept Bounty on Murlocs##46 |goto 73.97,72.18
step
Kill Murloc enemies around this area
|tip You can find more long the edge of the water to the east and west.
|tip They aren't as closely packed together as the ones here.
collect 8 Torn Murloc Fin##780 |q 46/1 |goto 76.29,83.43
You can find more around: |notinsticky
[84.17,87.41]
[69.08,84.54]
step
talk Guard Thomas##261
turnin Bounty on Murlocs##46 |goto 73.97,72.18
step
talk Sara Timberlain##278
|tip In front of the building.
turnin Cloth and Leather Armor##59 |goto 79.46,68.79
turnin Red Linen Goods##83 |goto 79.46,68.79
step
Kill enemies around this area
Reach Level 10 |ding 10 |goto 47.95,73.45
step
Follow the road |goto 47.51,72.95 < 30 |only if walking
Enter the building |goto 41.83,65.67 < 7 |walk
talk Smith Argus##514
|tip Inside the building.
accept Elmore's Task##1097 |goto 41.71,65.55
step
Leave the building |goto 41.83,65.67 < 7 |walk
Enter the building |goto 43.00,89.40 < 7 |walk
talk Maybell Maclure##251
|tip Inside the building.
turnin The Escape##114 |goto 43.15,89.62
step
Leave the building |goto 43.00,89.40 < 7 |walk
talk "Auntie" Bernice Stonefield##246
turnin Goldtooth##87 |goto 34.49,84.25
step
talk Deputy Rainer##963
turnin Westbrook Garrison Needs Help!##239 |goto 24.23,74.45
accept Riverpaw Gnoll Bounty##11 |goto 24.23,74.45
step
Kill Riverpaw enemies around this area
collect 8 Painted Gnoll Armband##782 |q 11/1 |goto 26.75,86.83
You can find more around [24.75,94.05]
step
talk Deputy Rainer##963
turnin Riverpaw Gnoll Bounty##11 |goto 24.23,74.45
step
Follow the road |goto 27.19,77.82 < 30 |c |q 61
step
talk Lyria Du Lac##913
accept A Warrior's Training##1638 |goto 41.09,65.77
|only if Human Warrior
step
Enter the building |goto 42.95,65.66 < 10 |walk
talk Remen Marcot##6121
|tip Downstairs inside the building.
accept Gakin's Summons##1685 |goto 44.49,66.27
|only if Human Warlock
step
Leave the building |goto 42.95,65.65 < 10 |c |q 61
|only if Human Warlock
step
Enter the building |goto Elwynn Forest 42.95,65.64 < 7 |walk
talk Priestess Josetta##377
|tip Upstairs inside the building.
accept Desperate Prayer##5637 |goto Elwynn Forest 43.29,65.72
|only if Human Priest
step
Leave the building |goto 42.95,65.64 < 7 |c |q 5637
|only if Human Priest
step
Follow the road |goto 42.20,64.85 < 30 |only if walking
Enter Stormwind City |goto 32.09,49.38 < 30 |only if walking
Enter the building |goto Stormwind City 56.59,64.87 < 7 |walk
talk Morgan Pestle##279
|tip Inside the building.
turnin Shipment to Stormwind##61 |goto Stormwind City 56.21,64.59
step
Enter the building |goto Stormwind City 71.60,39.93 < 7 |walk
talk Harry Burlguard##6089
|tip Inside the building.
turnin A Warrior's Training##1638 |goto Stormwind City 74.25,37.26
accept Bartleby the Drunk##1639 |goto Stormwind City 74.25,37.26
|only if Human Warrior
step
talk Bartleby##6090
|tip He walks around this area inside the building.
turnin Bartleby the Drunk##1639 |goto 73.83,37.17
accept Beat Bartleby##1640 |goto 73.83,37.17
|tip He will attack you immediately after you accept this quest.
|only if Human Warrior
step
kill Bartleby##6090
|tip He walks around this area inside the building.
|tip He will eventually surrender.
Beat Bartleby |q 1640/1 |goto 73.83,37.17
|only if Human Warrior
step
talk Bartleby##6090
|tip He walks around this area inside the building.
turnin Beat Bartleby##1640 |goto 73.83,37.17
accept Bartleby's Mug##1665 |goto 73.83,37.17
|only if Human Warrior
step
talk Harry Burlguard##6089
|tip Inside the building.
turnin Bartleby's Mug##1665 |goto 74.25,37.26
|only if Human Warrior
step
Leave the building |goto 71.65,39.91 < 7 |c |q 1097
|only if Human Warrior
step
Enter the building |goto Stormwind City 29.15,74.18 < 10 |walk
talk Gakin the Darkbinder##6122
|tip Downstairs inside the building.
turnin Gakin's Summons##1685 |goto Stormwind City 25.26,78.56
accept Surena Caledon##1688 |goto Stormwind City 25.26,78.56
|only Human Warlock
step
Leave the building |goto 29.15,74.18 < 10 |walk
Leave Stormwind City |goto Stormwind City 71.02,89.03 < 30 |only if walking
Follow the road |goto Elwynn Forest 42.68,67.14 < 30 |only if walking
Follow the path |goto Elwynn Forest 64.57,74.00 < 30 |only if walking
Enter the building |goto Elwynn Forest 70.93,80.43 < 10 |walk
talk Surena Caledon##881
|tip Inside the building.
collect Surena's Choker##6810 |q 1688/1 |goto Elwynn Forest 71.02,80.78
|only if Human Warlock
step
Follow the road |goto 65.65,74.10 < 30 |only if walking
Continue following the road |goto 42.11,64.65 < 30 |only if walking
Enter Stormwind City |goto 32.09,49.38 < 30 |only if walking
Enter the building |goto Stormwind City 29.15,74.18 < 10 |walk
talk Gakin the Darkbinder##6122
|tip Downstairs inside the building.
turnin Surena Caledon##1688 |goto Stormwind City 25.26,78.56
accept The Binding##1689 |goto Stormwind City 25.26,78.56
|only Human Warlock
step
Follow the path down |goto 25.05,79.31 < 7 |walk
Run down the stairs |goto 24.28,78.62 < 7 |walk
Run down the stairs |goto 26.15,79.33 < 7 |walk
use the Bloodstone Choker##6928
|tip Use it while standing on the pink symbol on the ground.
|tip Downstairs inside the building, inside the crypt.
kill Summoned Voidwalker##5676 |q 1689 |goto 25.11,77.46
|only if Human Warlock
step
Follow the path up |goto 26.03,79.83 < 7 |walk
Run up the stairs |goto 23.31,79.68 < 7 |walk
talk Gakin the Darkbinder##6122
|tip Upstairs inside the building, in the basement above the crypt.
turnin The Binding##1689 |goto 25.25,78.53
|only if Human Warlock
step
Follow the path up |goto 26.84,77.14 < 7 |walk
Leave the building |goto 29.15,74.14 < 10 |c |q 1097
|only if Human Warlock
step
Enter the building |goto Stormwind City 43.04,34.51 < 7 |walk
talk High Priestess Laurena##376
|tip Inside the building.
turnin Desperate Prayer##5637 |goto Stormwind City 38.58,26.02
|only if Human Priest
step
Leave the building |goto Stormwind City 43.04,34.51 < 7 |c |q 1097
|only if Human Priest
step
Enter the building |goto Stormwind City 51.83,13.26 < 7 |walk
talk Grimand Elmore##1416
|tip Inside the building.
turnin Elmore's Task##1097 |goto Stormwind City 51.76,12.07
accept Stormpike's Delivery##353 |goto Stormwind City 51.76,12.07
step
Leave the building |goto 51.83,13.26 < 7 |walk
Follow the path |goto 60.27,12.57 < 15 |walk
Enter the Deeprun Tram |goto 63.92,8.20 > 2000 |c |q 433 |future
|tip Walk into the swirling portal.
step
_Inside Deeprun Tram:_
Ride the Tram
|tip Ride the Deeprun Tram from Stormwind City to Ironforge.
Click Here After Riding the Tram |confirm |q 433 |future
step
_Inside Deeprun Tram:_
talk Monty##12997
|tip On the middle platform, near the wall.
|tip In the Ironforge section of the Deeprun Tram.
accept Deeprun Rat Roundup##6661
step
_Inside Deeprun Tram:_
use Rat Catcher's Flute##17117
|tip Use it on Deeprun Rats around this area.
|tip They look like small grey rats on the ground around this area.
|tip In the Ironforge section of the Deeprun Tram.
Capture #5# Rats |q 6661/1
step
_Inside Deeprun Tram:_
talk Monty##12997
|tip On the middle platform, near the wall.
|tip In the Ironforge section of the Deeprun Tram.
turnin Deeprun Rat Roundup##6661
step
_Inside Deeprun Tram:_
Enter Ironforge |goto Ironforge 76.51,51.12 < 2000 |noway |c |q 433 |future
|tip Walk into the swirling portal.
step
talk Gryth Thurden##1573
fpath Ironforge |goto Ironforge 55.50,47.75
step
Follow the road |goto Dun Morogh 51.47,47.54 < 30 |only if walking
talk Senator Mehr Stonehallow##1977
accept The Public Servant##433 |goto Dun Morogh 68.67,55.97
step
talk Foreman Stonebrow##1254
accept Those Blasted Troggs!##432 |goto 69.08,56.33
stickystart "Kill_Rockjaw_Skullthumpers"
step
Enter the cave |goto 70.52,56.67 < 10 |walk
kill 10 Rockjaw Bonesnapper##1117 |q 433/1 |goto 70.98,54.77
|tip Inside the cave.
step
label "Kill_Rockjaw_Skullthumpers"
kill 6 Rockjaw Skullthumper##1115 |q 432/1 |goto 70.98,54.77
|tip You can find more outside the cave.
step
Kill enemies around this area
Reach Level 11 |ding 11 |goto 69.75,58.15
You can find more inside the cave at [70.64,56.55]
step
Leave the cave |goto 70.52,56.67 < 10 |walk
Follow the path up |goto 67.86,57.69 < 15 |only if walking
talk Senator Mehr Stonehallow##1977
turnin The Public Servant##433 |goto 68.67,55.97
step
talk Foreman Stonebrow##1254
turnin Those Blasted Troggs!##432 |goto 69.08,56.33
step
Follow the road |goto 67.26,52.92 < 30 |only if walking
Continue following the road |goto 78.18,49.39 < 30 |only if walking
Enter the tunnel |goto 81.21,42.70 < 10 |only if walking
Leave the tunnel |goto 82.98,40.34 < 10 |only if walking
talk Pilot Hammerfoot##1960
accept The Lost Pilot##419 |goto 83.89,39.19
step
Follow the path |goto 81.02,36.12 < 30 |only if walking
click A Dwarven Corpse
turnin The Lost Pilot##419 |goto 79.67,36.17
accept A Pilot's Revenge##417 |goto 79.67,36.17
step
kill Mangeclaw##1961
collect Mangy Claw##3183 |q 417/1 |goto 78.31,37.76
step
Follow the path |goto 81.10,36.13 < 30 |only if walking
talk Pilot Hammerfoot##1960
turnin A Pilot's Revenge##417 |goto 83.89,39.19
step
Enter the tunnel |goto 82.96,40.36 < 10 |only if walking
Leave the tunnel |goto 81.22,42.67 < 10 |only if walking
Follow the path |goto 78.64,50.34 < 30 |only if walking
Enter the tunnel |goto 82.30,53.40 < 10 |only if walking
Leave the tunnel |goto 84.20,51.34 < 10 |only if walking
Enter the tunnel |goto 86.25,51.32 < 10 |only if walking
Leave the tunnel |goto Loch Modan 19.54,62.67 < 15 |only if walking
talk Mountaineer Cobbleflint##1089
accept In Defense of the King's Lands##224 |goto Loch Modan 22.07,73.12
step
Enter the building |goto 23.71,75.47 < 7 |walk
talk Captain Rugelfuss##1092
|tip Upstairs inside the building.
accept The Trogg Threat##267 |goto 23.23,73.67
stickystart "Kill_Stonesplinter_Troggs"
stickystart "Kill_Stonesplinter_Scouts"
step
Leave the building |goto 23.72,75.48 < 7 |walk
Follow the road up |goto 23.20,70.46 < 20 |only if walking
Follow the path |goto 28.43,65.77 < 30 |only if walking
Kill Stonesplinter enemies around this area
collect 8 Trogg Stone Tooth##2536 |q 267/1 |goto 32.51,73.25
step
label "Kill_Stonesplinter_Troggs"
kill 10 Stonesplinter Trogg##1161 |q 224/1 |goto 32.51,73.25
step
label "Kill_Stonesplinter_Scouts"
kill 10 Stonesplinter Scout##1162 |q 224/2 |goto 32.51,73.25
step
Follow the path |goto 30.64,69.80 < 20 |only if walking
Follow the road down |goto 27.64,65.84 < 30 |only if walking
talk Mountaineer Cobbleflint##1089
turnin In Defense of the King's Lands##224 |goto 22.07,73.13
step
Enter the building |goto 23.71,75.45 < 7 |walk
talk Captain Rugelfuss##1092
|tip Upstairs inside the building.
turnin The Trogg Threat##267 |goto 23.23,73.67
step
Leave the building |goto 23.72,75.47 < 7 |walk
Follow the road up |goto 23.20,70.46 < 20 |c |q 416 |future
step
Follow the path |goto 28.43,65.77 < 30 |only if walking
Kill enemies around this area
Reach Level 12 |ding 12 |goto 32.51,73.25
step
Follow the road |goto 28.45,63.62 < 30 |only if walking
talk Thorgrum Borrelson##1572
fpath Thelsamar |goto 33.94,50.95
step
talk Mountaineer Kadrell##1340
|tip He walks around this area.
accept Rat Catching##416 |goto 34.50,47.32
step
Enter the building |goto 35.23,47.75 < 7 |walk
talk Innkeeper Hearthstove##6734
|tip Inside the building.
home Stoutlager Inn |goto 35.53,48.40 |q 416
step
talk Vidra Hearthstove##1963
|tip Inside the building.
accept Thelsamar Blood Sausages##418 |goto 34.83,49.28
stickystart "Collect_Spider_Ichors"
stickystart "Collect_Bear_Meat"
step
Leave the building |goto 35.21,47.76 < 7 |walk
kill Mountain Boar##1190+
collect 3 Boar Intestines##3172 |goto 36.99,34.36 |q 418
You can find more around [29.17,23.57]
step
label "Collect_Spider_Ichors"
kill Forest Lurker##1195+
collect 3 Spider Ichor##3174 |goto 35.69,31.78 |q 418
You can find more around: |notinsticky
[29.17,23.57]
[29.43,48.28]
stickystart "Collect_Tunnel_Rat_Ears"
step
label "Collect_Bear_Meat"
kill Elder Black Bear##1186+
collect 3 Bear Meat##3173 |goto 35.68,32.10 |q 418
You can find more around: |notinsticky
[30.73,25.86]
[28.66,11.57]
[24.03,25.79]
[27.45,28.54]
[28.09,40.94]
step
label "Collect_Tunnel_Rat_Ears"
Kill Tunnel Rat enemies around this area
collect 12 Tunnel Rat Ear##3110 |q 416/1 |goto 24.57,29.79
You can find more around [26.08,43.64]
step
Enter the building |goto 23.53,17.90 < 7 |walk
talk Mountaineer Stormpike##1343
|tip Upstairs inside the building.
turnin Stormpike's Delivery##353 |goto 24.76,18.40
accept Filthy Paws##307 |goto 24.76,18.40
step
Leave the building |goto 23.53,17.90 < 7 |walk
Enter the mine |goto 35.48,18.83 < 7 |walk
click Miners' League Crates+
|tip They look like piles of brown boxes on the ground around this area inside the mine.
collect 4 Miners' Gear##2640 |q 307/1 |goto 35.75,22.42
step
Leave the mine |goto 35.46,18.72 < 7 |walk
Enter the building |goto 23.50,17.89 < 7 |walk
talk Mountaineer Stormpike##1343
|tip Upstairs inside the building.
turnin Filthy Paws##307 |goto 24.76,18.40
step
talk Vidra Hearthstove##1963
|tip Inside the building.
turnin Thelsamar Blood Sausages##418 |goto 34.83,49.29
step
Leave the building |goto 35.22,47.75 < 7 |walk
talk Mountaineer Kadrell##1340
|tip He walks around this area.
turnin Rat Catching##416 |goto 34.61,47.09
step
Kill enemies around this area
Reach Level 13 |ding 13 |goto 35.86,33.64
step
Run up the ramp |goto Stormwind City 72.00,80.49 < 15 |only if walking
talk Brother Wilhelm##927
accept Tome of Divinity##2998 |goto Elwynn Forest 41.10,66.04
|only if Human Paladin
step
Enter Stormwind City |goto 32.08,49.23 < 30 |only if walking
Enter the building |goto Stormwind City 43.44,35.14 < 7 |walk
talk Duthorian Rall##6171
|tip Inside the building.
turnin Tome of Divinity##2998 |goto Stormwind City 39.81,29.80
accept The Tome of Divinity##1641 |goto Stormwind City 39.81,29.80
|only if Human Paladin
step
talk Duthorian Rall##6171
|tip Inside the building.
turnin The Tome of Divinity##1641 |goto 39.81,29.80
|only if Human Paladin
step
use the Tome of Divinity##6775
accept The Tome of Divinity##1642
|only if Human Paladin
step
talk Duthorian Rall##6171
|tip Inside the building.
turnin The Tome of Divinity##1642 |goto 39.81,29.80
accept The Tome of Divinity##1643 |goto 39.81,29.80
|only if Human Paladin
step
Leave the building |goto 43.06,34.49 < 7 |walk
talk Stephanie Turner##6174
turnin The Tome of Divinity##1643 |goto 57.08,61.74
accept The Tome of Divinity##1644 |goto 57.08,61.74
|only if Human Paladin
step
Enter the building |goto 53.99,58.98 < 7 |walk
talk Auctioneer Jaxon##15659
|tip Inside the building.
|tip Buy these items from the Auction House.
collect 10 Linen Cloth##2589 |q 1644/1 |goto 53.61,59.76
|only if Human Paladin
step
Leave the building |goto 53.86,58.92 < 7 |walk
talk Stephanie Turner##6174
turnin The Tome of Divinity##1644 |goto 57.08,61.74
accept The Tome of Divinity##1780 |goto 57.08,61.74
|only if Human Paladin
step
Enter the building |goto 43.44,35.14 < 7 |walk
talk Duthorian Rall##6171
|tip Inside the building.
turnin The Tome of Divinity##1780 |goto 39.81,29.80
accept The Tome of Divinity##1781 |goto 39.81,29.80
|only if Human Paladin
step
talk Gazin Tenorm##6173
|tip Inside the building.
turnin The Tome of Divinity##1781 |goto 38.55,26.45
accept The Tome of Divinity##1786 |goto 38.55,26.45
|only if Human Paladin
step
Leave the building |goto 43.06,34.49 < 7 |walk
Leave Stormwind City |goto 71.05,88.81 < 30 |only if walking
Follow the road |goto Elwynn Forest 42.70,67.19 < 30 |only if walking
Follow the path |goto Elwynn Forest 69.14,70.95 < 30 |only if walking
use the Symbol of Life##6866
|tip Use it on Henze Faulk's corpse.
Ressurect Henze Faulk |q 1786/1 |goto Elwynn Forest 72.60,51.41
|only if Human Paladin
step
talk Henze Faulk##6172
turnin The Tome of Divinity##1786 |goto 72.60,51.41
accept The Tome of Divinity##1787 |goto 72.60,51.41
|only if Human Paladin
step
kill Defias Rogue Wizard##474+
collect Defias Script##6846 |q 1787/1 |goto 74.07,51.57
|only if Human Paladin
step
Follow the road |goto 70.14,70.84 < 30 |only if walking
Continue following the road |goto 42.19,64.92 < 30 |only if walking
Enter Stormwind City |goto 32.07,49.32 < 30 |only if walking
Enter the building |goto Stormwind City 43.44,35.14 < 7 |walk
talk Gazin Tenorm##6173
|tip Inside the building.
turnin The Tome of Divinity##1787 |goto Stormwind City 38.56,26.47
accept The Tome of Divinity##1788 |goto Stormwind City 38.56,26.47
|only if Human Paladin
step
talk Duthorian Rall##6171
|tip Inside the building.
turnin The Tome of Divinity##1788 |goto 39.81,29.80
|only if Human Paladin
step
Leave the building |goto Stormwind City 43.44,35.14 < 7 |c |q 963 |future
|only if Human Paladin
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides (1-12)\\Teldrassil (1-12) [Night Elf Starter]",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Teldrassil",
condition_suggested=function() return raceclass('NightElf') and level <= 13 end,
condition_suggested_race=function() return raceclass('NightElf') end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Classic (12-58)\\Darkshore (12-17)",
startlevel=1,
endlevel=13
},[[
defaultfor Nightelf
step
talk Conservator Ilthalaine##2079
accept The Balance of Nature##456 |goto Teldrassil 58.69,44.27
stickystart "Kill_Young_Thistle_Boars"
step
kill 7 Young Nightsaber##2031 |q 456/1 |goto 61.93,42.02
step
label "Kill_Young_Thistle_Boars"
kill 4 Young Thistle Boar##1984 |q 456/2 |goto 61.93,42.02
step
Kill enemies around this area
Reach Level 2 |ding 2 |goto 61.93,42.02
step
talk Dirania Silvershine##8583
accept A Good Friend##4495 |goto 60.90,41.96
step
talk Melithar Staghelm##2077
accept The Woodland Protector##458 |goto 59.93,42.48
step
talk Conservator Ilthalaine##2079
turnin The Balance of Nature##456 |goto 58.70,44.27
accept The Balance of Nature##457 |goto 58.70,44.27
accept Simple Sigil##3116 |goto 58.70,44.27 |only NightElf Warrior
accept Encrypted Sigil##3118 |goto 58.70,44.27 |only NightElf Rogue
accept Hallowed Sigil##3119 |goto 58.70,44.27 |only NightElf Priest
accept Etched Sigil##3117 |goto 58.70,44.27 |only NightElf Hunter
accept Verdant Sigil##3120 |goto 58.70,44.27 |only NightElf Druid
step
Enter the building |goto 59.94,42.38 < 15 |walk
Run up the ramp |goto 59.19,40.00 < 7 |walk
talk Alyissia##3593
|tip Inside the building.
turnin Simple Sigil##3116 |goto 59.63,38.45
|only if NightElf Warrior
step
Leave the building |goto 60.02,42.37 < 20 |c |q 458
|only if NightElf Warrior
step
Enter the building |goto 59.94,42.38 < 15 |walk
Run up the ramp |goto 59.19,40.00 < 10 |walk
talk Frahun Shadewhisper##3594
|tip Inside the building.
turnin Encrypted Sigil##3118 |goto 59.64,38.66
|only if NightElf Rogue
step
Leave the building |goto 60.02,42.37 < 20 |c |q 458
|only if NightElf Rogue
step
Run up the ramp |goto 59.97,41.90 < 10 |walk
talk Shanda##3595
|tip Upstairs inside the building.
turnin Hallowed Sigil##3119 |goto 59.17,40.44
|only if NightElf Priest
step
Leave the building |goto 60.02,42.37 < 20 |c |q 458
|only if NightElf Priest
step
Run up the ramp |goto 57.53,41.63 < 15 |only if walking
Enter the building |goto 58.51,40.71 < 10 |walk
talk Ayanna Everstride##3596
|tip Up in the tall tree, inside the building.
turnin Etched Sigil##3117 |goto 58.65,40.45
|only if NightElf Hunter
step
Run up the ramp |goto 57.53,41.63 < 15 |only if walking
Enter the building |goto 58.51,40.71 < 10 |walk
talk Mardant Strongoak##3597
|tip Up in the tall tree, inside the building.
turnin Verdant Sigil##3120 |goto 58.63,40.29
|only if NightElf Druid
step
talk Tarindrella##1992
turnin The Woodland Protector##458 |goto 57.83,45.20
accept The Woodland Protector##459 |goto 57.83,45.20
step
kill Grell##1988+
collect 8 Fel Moss##3297 |q 459/1 |goto 56.08,45.83
You can find more around [54.75,44.01]
step
Kill enemies around this area
Reach Level 3 |ding 3 |goto 56.08,45.83
You can find more around [54.75,44.01]
step
talk Tarindrella##1992
turnin The Woodland Protector##459 |goto 57.83,45.20
step
talk Gilshalan Windwalker##2082
accept Webwood Venom##916 |goto 57.81,41.65
stickystart "Kill_Thistle_Boars"
step
kill 7 Mangy Nightsaber##2032 |q 457/1 |goto 60.12,35.06
You can find more around [62.60,37.94]
step
label "Kill_Thistle_Boars"
kill 7 Thistle Boar##1985 |q 457/2 |goto 60.12,35.06
step
Kill enemies around this area
Reach Level 4 |ding 4 |goto 60.12,35.06
You can find more around [62.60,37.94]
step
kill Webwood Spider##1986+
|tip Inside and outside the cave.
collect 10 Webwood Venom Sac##5166 |q 916/1 |goto 56.80,31.59
step
Follow the path |goto 55.45,32.85 < 10 |only if walking
talk Iverron##8584
turnin A Good Friend##4495 |goto 54.60,32.99
accept A Friend in Need##3519 |goto 54.60,32.99
step
talk Gilshalan Windwalker##2082
turnin Webwood Venom##916 |goto 57.81,41.65
accept Webwood Egg##917 |goto 57.81,41.65
step
talk Conservator Ilthalaine##2079
turnin The Balance of Nature##457 |goto 58.70,44.26
step
talk Dirania Silvershine##8583
turnin A Friend in Need##3519 |goto 60.90,41.96
accept Iverron's Antidote##3521 |goto 60.90,41.96
step
click Hyacinth Mushroom+
|tip They look like clusters of pink mushrooms on the ground around this area.
|tip They are usually at the base of trees.
collect Hyacinth Mushroom##10639 |q 3521/1 |goto 61.07,43.43 |count 1
step
click Hyacinth Mushroom+
|tip They look like clusters of pink mushrooms on the ground around this area.
|tip They are usually at the base of trees.
collect Hyacinth Mushroom##10639 |q 3521/1 |goto 60.35,44.21 |count 2
step
click Hyacinth Mushroom+
|tip They look like clusters of pink mushrooms on the ground around this area.
|tip They are usually at the base of trees.
collect Hyacinth Mushroom##10639 |q 3521/1 |goto 60.52,46.66 |count 3
step
click Hyacinth Mushroom+
|tip They look like clusters of pink mushrooms on the ground around this area.
|tip They are usually at the base of trees.
collect Hyacinth Mushroom##10639 |q 3521/1 |goto 59.78,46.02 |count 4
step
click Hyacinth Mushroom+
|tip They look like clusters of pink mushrooms on the ground around this area.
|tip They are usually at the base of trees.
collect Hyacinth Mushroom##10639 |q 3521/1 |goto 59.50,45.80 |count 5
step
click Hyacinth Mushroom+
|tip They look like clusters of pink mushrooms on the ground around this area.
|tip They are usually at the base of trees.
collect Hyacinth Mushroom##10639 |q 3521/1 |goto 58.97,47.11 |count 6
step
click Hyacinth Mushroom+
|tip They look like clusters of pink mushrooms on the ground around this area.
|tip They are usually at the base of trees.
collect Hyacinth Mushroom##10639 |q 3521/1 |goto 54.45,43.18 |count 7
step
click Moonpetal Lily+
|tip They look like tall flowers with orange petals on the ground around this area.
collect 4 Moonpetal Lily##10641 |q 3521/2 |goto 57.72,37.76
step
kill Webwood Spider##1986+
|tip Inside and outside the cave.
collect Webwood Ichor##10640 |q 3521/3 |goto 56.78,31.55
step
Kill enemies around this area
|tip Inside and outside the cave.
Reach Level 5 |ding 5 |goto 56.78,31.55
step
Enter the cave |goto 56.79,31.41 < 10 |walk
Follow the path down |goto 56.83,28.94 < 7 |walk
Follow the path up |goto 56.21,26.40 < 10 |walk
Continue up the path |goto 55.71,25.10 < 7 |walk
click Webwood Eggs
|tip Upstairs inside the cave.
collect Webwood Egg##5167 |q 917/1 |goto 56.80,26.43
step
talk Gilshalan Windwalker##2082
turnin Webwood Egg##917 |goto 57.81,41.65
accept Tenaron's Summons##920 |goto 57.81,41.65
step
Run up the ramp |goto 57.54,41.62 < 7 |only if walking
Enter the building |goto 59.29,39.09 < 7 |walk
talk Tenaron Stormgrip##3514
|tip At the very top of the tall tree, inside the building.
turnin Tenaron's Summons##920 |goto 59.07,39.45
accept Crown of the Earth##921 |goto 59.07,39.45
step
Leave the building |goto 59.29,39.09 < 7 |walk
talk Dirania Silvershine##8583
turnin Iverron's Antidote##3521 |goto 60.90,41.96
accept Iverron's Antidote##3522 |goto 60.90,41.96
step
use the Crystal Phial##5185
collect Filled Crystal Phial##5184 |q 921/1 |goto 59.94,33.04
step
Follow the path |goto 55.44,32.85 < 10 |only if walking
talk Iverron##8584
turnin Iverron's Antidote##3522 |goto 54.59,32.99
step
Kill enemies around this area
|tip Inside and outside the cave.
Reach Level 6 |ding 6 |goto 56.81,31.66
step
Run up the ramp |goto 57.54,41.62 < 7 |only if walking
Enter the building |goto 59.29,39.09 < 7 |walk
talk Tenaron Stormgrip##3514
|tip At the very top of the tall tree, inside the building.
turnin Crown of the Earth##921 |goto 59.07,39.45
accept Crown of the Earth##928 |goto 59.07,39.45
step
Leave the building |goto 59.29,39.09 < 7 |walk
talk Porthannius##6780
accept Dolanaar Delivery##2159 |goto 61.16,47.64
step
Follow the road |goto 61.76,50.98 < 30 |only if walking
talk Zenn Foulhoof##2150
accept Zenn's Bidding##488 |goto 60.45,56.15
stickystart "Collect_Nightsaber_Fangs"
step
kill Strigid Owl##1995
collect 3 Strigid Owl Feather##3411 |q 488/2 |goto 63.65,53.56
You can find more around: |notinsticky
[65.26,51.94]
[67.49,53.76]
stickystart "Collect_Webwood_Spider_Silk"
step
label "Collect_Nightsaber_Fangs"
kill Nightsaber##2042+
collect 3 Nightsaber Fang##3409 |q 488/1 |goto 62.05,60.06
You can find more around [59.77,62.02]
step
label "Collect_Webwood_Spider_Silk"
kill Webwood Lurker##1998+
collect 3 Webwood Spider Silk##3412 |q 488/3 |goto 60.36,58.07
You can find more around [61.11,54.53]
step
talk Zenn Foulhoof##2150
turnin Zenn's Bidding##488 |goto 60.45,56.15
step
talk Syral Bladeleaf##2083
accept Seek Redemption!##489 |goto 56.08,57.73
accept Denalan's Earth##997 |goto 56.08,57.73
step
talk Athridas Bearmantle##2078
accept A Troubling Breeze##475 |goto 55.95,57.28
step
Enter the building |goto 55.75,57.23 < 7 |walk
talk Tallonkai Swiftroot##3567
|tip At the top of the tower.
accept Twisted Hatred##932 |goto 55.57,56.95
accept The Emerald Dreamcatcher##2438 |goto 55.57,56.95
step
Leave the building |goto 55.32,56.81 < 7 |walk
Run up the ramp |goto 56.09,59.68 < 7 |walk
talk Innkeeper Keldamyr##6736
|tip Upstairs inside the building.
turnin Dolanaar Delivery##2159 |goto 55.62,59.79
step
talk Innkeeper Keldamyr##6736
|tip Upstairs inside the building.
home Dolanaar |goto 55.62,59.79
step
talk Corithras Moonrage##3515
turnin Crown of the Earth##928 |goto 56.14,61.71
accept Crown of the Earth##929 |goto 56.14,61.71
step
Follow the road |goto 57.64,57.35 < 30 |only if walking
use the Jade Phial##5619
collect Filled Jade Phial##5639 |q 929/1 |goto 63.38,58.08
step
Enter the building |goto 66.23,58.37 < 15 |walk
talk Gaerolas Talvethren##2107
|tip Upstairs inside the building.
turnin A Troubling Breeze##475 |goto 66.26,58.52
accept Gnarlpine Corruption##476 |goto 66.26,58.52
step
Enter the building |goto 67.82,59.46 < 7 |walk
click Tallonkai's Dresser
|tip Inside the building.
collect Emerald Dreamcatcher##8048 |q 2438/1 |goto 68.01,59.63
step
Leave the building |goto 67.82,59.46 < 7 |walk
click Fel Cone+
|tip They look like small brown balls green smoke rising out of them at the base of trees around this area.
collect Fel Cone##3418 |q 489/1 |goto 68.61,57.83 |count 1
step
click Fel Cone+
|tip They look like small brown balls green smoke rising out of them at the base of trees around this area.
collect Fel Cone##3418 |q 489/1 |goto 66.90,61.34 |count 2
step
click Fel Cone+
|tip They look like small brown balls green smoke rising out of them at the base of trees around this area.
collect Fel Cone##3418 |q 489/1 |goto 63.58,62.28 |count 3
step
Kill enemies around this area
Reach Level 7 |ding 7 |goto 64.94,62.82
step
talk Zenn Foulhoof##2150
turnin Seek Redemption!##489 |goto 60.45,56.15
step
talk Athridas Bearmantle##2078
turnin Gnarlpine Corruption##476 |goto 55.95,57.28
accept The Relics of Wakening##483 |goto 55.95,57.28
step
Enter the building |goto 55.75,57.23 < 7 |walk
talk Tallonkai Swiftroot##3567
|tip At the top of the tower.
turnin The Emerald Dreamcatcher##2438 |goto 55.57,56.95
accept Ferocitas the Dream Eater##2459 |goto 55.57,56.95
step
Leave the building |goto 55.32,56.81 < 7 |walk
talk Corithras Moonrage##3515
turnin Crown of the Earth##929 |goto 56.14,61.71
accept Crown of the Earth##933 |goto 56.14,61.71
step
Follow the path |goto 56.94,63.12 < 20 |only if walking
Continue following the path |goto 59.42,64.64 <  30 |only if walking
talk Denalan##2080
|tip He walks around this area.
turnin Denalan's Earth##997 |goto 60.90,68.49
step
Watch the dialogue
talk Denalan##2080
|tip He walks around this area.
accept Timberling Seeds##918 |goto 60.80,68.54
accept Timberling Sprouts##919 |goto 60.80,68.54
stickystart "Collect_Timberling_Seeds"
step
click Timberling Sprout+
|tip They look like green and brown vine balls on the ground around this area.
collect 12 Timberling Sprout##5169 |q 919/1 |goto 59.52,72.20
You can find more around [60.73,65.71]
step
label "Collect_Timberling_Seeds"
kill Timberling##2022+
collect 8 Timberling Seed##5168 |q 918/1 |goto 59.52,72.20
You can find more around [60.73,65.71]
step
talk Denalan##2080
|tip He walks around this area.
turnin Timberling Seeds##918 |goto 60.80,68.54
accept Rellian Greenspyre##922 |goto 60.80,68.54
turnin Timberling Sprouts##919 |goto 60.80,68.54
step
Kill enemies around this area
Reach Level 8 |ding 8 |goto 59.52,72.20
You can find more around [60.73,65.71]
stickystart "Kill_Gnarlpine_Mystics"
step
Follow the path up |goto 59.84,63.91 < 20 |only if walking
Follow the path |goto 63.43,54.14 < 30 |only if walking
kill Ferocitas the Dream Eater##7234
collect Gnarlpine Necklace##8049 |q 2459 |goto 69.37,53.40
step
use the Gnarlpine Necklace##8049
collect Tallonkai's Jewel##8050 |q 2459/2
step
label "Kill_Gnarlpine_Mystics"
kill 7 Gnarlpine Mystic##7235 |q 2459/1 |goto 68.96,52.95
step
Follow the road |goto 62.50,54.50 < 30 |only if walking
Enter the building |goto 55.75,57.23 < 10 |walk
talk Tallonkai Swiftroot##3567
|tip At the top of the tower.
turnin Ferocitas the Dream Eater##2459 |goto 55.57,56.95
step
Leave the building |goto 55.32,56.81 < 7 |walk
talk Moon Priestess Amara##2151
|tip She walks back and forth along this road from Dolanaar to Darnassus.
|tip You may need to search for her.
accept The Road to Darnassus##487 |goto 54.44,58.44
She walks between here and [49.51,53.18]
step
kill 6 Gnarlpine Ambusher##2152 |q 487/1 |goto 46.22,53.46
step
Enter the cave |goto 44.33,57.95 < 7 |walk
Follow the path down and cross the bridge |goto 43.61,60.19 < 7 |walk
click Chest of the Black Feather
|tip Inside the cave.
collect Black Feather Quill##3406 |q 483/2 |goto 43.70,61.22
step
Cross the bridge |goto 43.71,60.04 < 7 |walk
click Chest of Nesting
|tip Inside the cave.
collect Rune of Nesting##3408 |q 483/4 |goto 44.40,60.66
step
Follow the path down |goto 43.38,60.64 < 7 |walk
Continue down the path |goto 42.94,61.50 < 7 |walk
Cross the bridge |goto 44.11,61.61 < 7 |walk
talk Oben Rageclaw##7317
|tip Inside the cave.
accept The Sleeping Druid##2541 |goto 44.94,61.59
stickystart "Collect_Shaman_Voodoo_Charm"
step
Follow the path |goto 44.36,60.26 < 7 |walk
Continue following the path |goto 45.29,60.09 < 7 |walk
Run up the ramp |goto 45.40,58.87 < 7 |walk
Cross the bridge |goto 45.47,58.07 < 7 |walk
Follow the path |goto 46.21,58.22 < 7 |walk
click Chest of the Raven Claw
|tip Inside the cave.
collect Raven Claw Talisman##3405 |q 483/1 |goto 45.65,57.44
step
label "Collect_Shaman_Voodoo_Charm"
kill Gnarlpine Shaman##2009+
|tip Inside the cave.
collect Shaman Voodoo Charm##8363 |q 2541/1 |goto 45.56,58.96
step
Cross the bridge |goto 44.09,61.64 < 7 |walk
talk Oben Rageclaw##7317
|tip Inside the cave.
turnin The Sleeping Druid##2541 |goto 44.94,61.59
accept Druid of the Claw##2561 |goto 44.94,61.59
step
Follow the path |goto 44.36,60.26 < 7 |walk
Continue following the path |goto 45.29,60.09 < 7 |walk
kill Rageclaw##7318
|tip He looks like a night elf that walks around this area inside the cave.
use the Voodoo Charm##8149
|tip Use it on Rageclaw's corpse.
|tip His corpse will be where you killed him.
Release Oben Rageclaw's Spirit |q 2561/1 |goto 45.58,58.42
step
Follow the path |goto 45.59,59.16 < 7 |walk
Continue following the path |goto 44.34,60.30 < 7 |walk
Follow the path down |goto 44.33,61.67 < 7 |walk
click Chest of the Sky
|tip Inside the cave.
collect Sapphire of Sky##3407 |q 483/3 |goto 44.70,62.44
step
Follow the path up |goto 44.35,60.66 < 7 |c |q 2561
step
Cross the bridge |goto 44.06,61.63 < 7 |walk
talk Oben Rageclaw##7317
|tip Inside the cave.
turnin Druid of the Claw##2561 |goto 44.94,61.59
step
Kill enemies around this area
Reach Level 9 |ding 9 |goto 44.25,60.55
step
talk Athridas Bearmantle##2078
turnin The Relics of Wakening##483 |goto 55.95,57.27
accept Ursal the Mauler##486 |goto 55.95,57.27
step
Follow the path |goto 57.59,55.85 < 20 |only if walking
Enter the cave |goto 54.65,52.49 < 10 |walk
Follow the path |goto 53.79,50.64 < 7 |walk
Continue following the path |goto 53.17,49.16 < 7 |walk
kill Lord Melenas##2038
|tip Inside the cave.
collect Melenas' Head##5221 |q 932/1 |goto 52.81,50.20
step
Follow the path |goto 52.72,49.56 < 7 |walk
Continue following the path |goto 53.99,51.10 < 7 |walk
Leave the cave |goto 54.67,52.58 < 10 |walk
Follow the path |goto 57.46,55.62 < 20 |only if walking
Enter the building |goto 55.75,57.23 < 7 |walk
talk Tallonkai Swiftroot##3567
|tip At the top of the tower.
turnin Twisted Hatred##932 |goto 55.57,56.95
step
Leave the building |goto 55.32,56.81 < 7 |walk
talk Moon Priestess Amara##2151
|tip She walks back and forth along this road from Dolanaar to Darnassus.
|tip You may need to search for her.
turnin The Road to Darnassus##487 |goto 54.44,58.44
She walks between here and [49.51,53.18]
step
Follow the road |goto 46.94,49.51 < 30 |only if walking
Follow the path |goto 39.75,52.00 < 30 |only if walking
Continue following the path |goto 40.93,57.98 < 30 |only if walking
use the Tourmaline Phial##5621
collect Filled Tourmaline Phial##5645 |q 933/1 |goto 42.42,67.07
step
click Strange Fruited Plant
accept The Glowing Fruit##930 |goto 42.63,76.10
step
Kill enemies around this area
Reach Level 10 |ding 10 |goto 41.41,77.45
step
Follow the path down |goto 51.26,75.77 < 20 |only if walking
Follow the path |goto 53.24,70.88 < 30 |only if walking
talk Denalan##2080
|tip He walks around this area.
turnin The Glowing Fruit##930 |goto 60.90,68.49
step
Follow the path up |goto 57.49,63.92 < 20 |only if walking
talk Corithras Moonrage##3515
turnin Crown of the Earth##933 |goto 56.14,61.71
accept Crown of the Earth##7383 |goto 56.14,61.71
step
Follow the road |goto 54.30,58.41 < 30 |only if walking
Follow the path |goto 38.42,50.90 < 30 |only if walking
talk Sentinel Arynia Cloudsbreak##3519
accept The Enchanted Glade##937 |goto 38.31,34.36
step
use the Amethyst Phial##18152
collect Filled Amethyst Phial##18151 |q 7383/1 |goto 38.43,34.04
step
Kill Bloodfeather enemies around this area
collect 6 Bloodfeather Belt##5204 |q 937/1 |goto 36.25,38.54
You can find more around [34.55,34.99]
step
click Strange Fronded Plant
accept The Shimmering Frond##931 |goto 34.60,28.85
step
talk Sentinel Arynia Cloudsbreak##3519
turnin The Enchanted Glade##937 |goto 38.31,34.36
accept Teldrassil##940 |goto 38.31,34.36
step
Follow the path |goto 37.62,36.84 < 30 |only if walking
Follow the road |goto 39.20,53.00 < 30 |only if walking
Follow the path |goto 54.13,58.27 < 30 |only if walking
talk Corithras Moonrage##3515
turnin Crown of the Earth##7383 |goto 56.14,61.71
accept Crown of the Earth##935 |goto 56.14,61.71
step
Enter the building |goto Teldrassil 55.76,57.24 < 7 |walk
talk Laurna Morninglight##3600
|tip Inside the building.
accept Returning Home##5629 |goto Teldrassil 55.57,56.75
|only if NightElf Priest
step
Leave the building |goto 55.76,57.24 < 7 |c |q 486
|only if NightElf Priest
step
talk Dazalar##3601
accept Taming the Beast##6063 |goto 56.68,59.49
|only if NightElf Hunter
step
use the Taming Rod##15921
|tip Use it on a Webwood Lurker around this area.
Tame a Webwood Lurker |q 6063/1 |goto 59.81,59.06
|only if NightElf Hunter
step
talk Dazalar##3601
turnin Taming the Beast##6063 |goto 56.68,59.49
accept Taming the Beast##6101 |goto 56.68,59.49
|only if NightElf Hunter
step
use the Taming Rod##15922
|tip Use it on a Nightsaber Stalker around this area.
Tame a Nightsaber Stalker |q 6101/1 |goto 55.95,71.98
|only if NightElf Hunter
step
talk Dazalar##3601
turnin Taming the Beast##6101 |goto 56.68,59.49
accept Taming the Beast##6102 |goto 56.68,59.49
|only if NightElf Hunter
step
Follow the road |goto 54.81,58.48 < 30 |only if walking
use the Taming Rod##15923
|tip Use it on a Strigid Screecher around this area.
Tame a Strigid Screecher |q 6102/1 |goto 43.99,51.16
|only if NightElf Hunter
step
Follow the road |goto 45.10,49.62 < 30 |only if walking
talk Dazalar##3601
turnin Taming the Beast##6102 |goto 56.68,59.49
accept Training the Beast##6103 |goto 56.68,59.49
|only if NightElf Hunter
step
Follow the road |goto 54.81,58.48 < 30 |only if walking
Enter Darnassus |goto 36.06,54.39 < 20 |only if walking
Run up the ramp |goto Darnassus 45.70,17.69 < 15 |only if walking
talk Jocaste##4146
|tip Inside the building.
turnin Training the Beast##6103 |goto Darnassus 40.38,8.56
|only if NightElf Hunter
step
Leave Darnassus |goto 86.51,35.77 < 20 |only if walking
Follow the road |goto Teldrassil 38.18,54.48 < 30 |only if walking
Continue following the road |goto Teldrassil 46.98,49.50 < 30 |only if walking
Continue following the road |goto Teldrassil 50.63,56.17 < 30 |c |q 486
|only if NightElf Hunter
step
talk Kal##3602
accept Heeding the Call##5923 |goto Teldrassil 55.95,61.56
|only if NightElf Druid
step
Follow the road |goto 54.81,58.48 < 30 |only if walking
Enter Darnassus |goto 36.06,54.39 < 20 |only if walking
Enter the building |goto Darnassus 35.52,10.72 < 15 |walk
talk Mathrengyl Bearwalker##4217
|tip Upstairs inside the building.
turnin Heeding the Call##5923 |goto Darnassus 35.38,8.41
accept Moonglade##5921 |goto Darnassus 35.38,8.41
|only if NightElf Druid
step
talk Dendrite Starblaze##11802
|tip Upstairs inside the building.
turnin Moonglade##5921 |goto Moonglade 56.21,30.64
accept Great Bear Spirit##5929 |goto Moonglade 56.21,30.64
|only if NightElf Druid
step
Follow the path |goto 42.47,34.44 < 20 |only if walking
talk Great Bear Spirit##11956
Ask it _"What do you represent, spirit?"_
Seek Out the Great Bear Spirit and Learn what it Has to Share with You About the Nature of the Bear |q 5929/1 |goto 39.11,27.51
|only if NightElf Druid
step
Enter the building |goto 56.13,30.98 < 15 |walk
talk Dendrite Starblaze##11802
|tip Upstairs inside the building.
turnin Great Bear Spirit##5929 |goto 56.21,30.64
accept Back to Darnassus##5931 |goto 56.21,30.64
|only if NightElf Druid
step
talk Sindrayl##10897
fpath Moonglade |goto 48.10,67.34
|only if NightElf Druid
step
Enter the building |goto Darnassus 35.52,10.72 < 15 |walk
talk Mathrengyl Bearwalker##4217
|tip Upstairs inside the building.
turnin Back to Darnassus##5931 |goto Darnassus 35.38,8.41
accept Body and Heart##6001 |goto Darnassus 35.38,8.41
|only if NightElf Druid
step
Enter the cave |goto Darkshore 43.06,45.55 < 15 |walk
use the Cenarion Moondust##15208
|tip Inside the cave.
kill Lunaclaw##12138
Face Lunaclaw and Earn the Strength of Body and Heart it Possesses |q 6001/1 |goto Darkshore 43.48,45.96
|only if NightElf Druid
step
Leave the cave |goto 42.97,45.44 < 15 |walk
Enter the building |goto Darnassus 35.52,10.72 < 15 |walk
talk Mathrengyl Bearwalker##4217
|tip Upstairs inside the building.
turnin Body and Heart##6001 |goto Darnassus 35.38,8.41
|only if NightElf Druid
step
Leave the building |goto 34.60,6.55 < 7 |walk
Leave Darnassus |goto 86.51,35.77 < 20 |only if walking
Follow the road |goto Teldrassil 38.18,54.48 < 30 |only if walking
Continue following the road |goto Teldrassil 46.98,49.50 < 30 |only if walking
Continue following the road |goto Teldrassil 50.63,56.17 < 30 |c |q 486
|only if NightElf Druid
step
Follow the path |goto 54.12,60.55 < 30 |only if walking
Follow the path up |goto 50.79,66.44 < 30 |only if walking
Follow the path |goto 41.97,76.27 < 30 |only if walking
Continue following the path |goto 40.57,79.75 < 30 |only if walking
kill Ursal the Mauler##2039 |q 486/1 |goto 38.83,79.80
step
Kill enemies around this area
Reach Level 11 |ding 11 |goto 41.41,77.45
step
Follow the path |goto 57.12,63.24 < 20 |only if walking
talk Denalan##2080
|tip He walks around this area.
turnin The Shimmering Frond##931 |goto 60.90,68.48
step
Follow the path up |goto 57.55,63.93 < 20 |only if walking
talk Athridas Bearmantle##2078
turnin Ursal the Mauler##486 |goto 55.95,57.28
step
Follow the road |goto 54.81,58.48 < 30 |only if walking
Enter Darnassus |goto 36.06,54.39 < 20 |c |q 922
step
talk Mydrannul##4241
accept Nessa Shadowsong##6344 |goto Darnassus 70.68,45.38
|only if NightElf
step
talk Rellian Greenspyre##3517
turnin Rellian Greenspyre##922 |goto 38.19,21.63
accept Tumors##923 |goto 38.19,21.63
step
Enter the building |goto 35.46,10.59 < 7 |walk
talk Arch Druid Fandral Staghelm##3516
|tip He walks around inside the building, at the top.
turnin Crown of the Earth##935 |goto 34.80,9.24
turnin Teldrassil##940 |goto 34.80,9.24
accept Grove of the Ancients##952 |goto 34.80,9.24
step
Leave the building |goto 33.91,7.76 < 7 |walk
talk Sister Aquinne##7316
accept The Temple of the Moon##2519 |goto 28.94,45.82
step
Cross the bridge |goto 38.59,48.02 < 10 |only if walking
Enter the building |goto 39.02,76.78 < 10 |walk
talk Priestess A'moora##7313
|tip Upstairs inside the building.
turnin The Temple of the Moon##2519 |goto 36.64,85.93
accept Tears of the Moon##2518 |goto 36.64,85.93
step
talk Priestess Alathea##11401
|tip Upstairs inside the building.
turnin Returning Home##5629 |goto 39.53,81.18
|only if NightElf Priest
stickystart "Collect_Mossy_Tumors"
step
Leave the building |goto 39.02,76.78 < 10 |walk
Follow the road |goto 86.47,35.60 < 15 |only if walking
Follow the path |goto Teldrassil 38.36,50.17 < 30 |only if walking
Follow the path |goto Teldrassil 32.61,32.32 < 30 |only if walking
talk Mist##3568
|tip This is an escort quest.
|tip If he's not here, someone may be escorting him.
|tip Wait until he respawns.
accept Mist##938 |goto Teldrassil 31.54,31.62 |noautoaccept
step
Lead Mist Safely to Sentinel Arynia Cloudsbreak |q 938/1 |goto 38.32,34.36
|tip Mist will follow you as you walk.
step
talk Sentinel Arynia Cloudsbreak##3519
turnin Mist##938 |goto 38.32,34.36
step
kill Lady Sathrah##7319
|tip She looks like a a grey spider that walks around this area.
collect Silvery Spinnerets##8344 |q 2518/1 |goto Teldrassil 38.57,26.51
She can also be around: |notinsticky
[Teldrassil 40.82,25.18]
[Teldrassil 47.05,27.71]
[Teldrassil 48.08,25.10]
step
label "Collect_Mossy_Tumors"
Kill Timberling enemies around this area
|tip They look like swamp elementals.
collect 5 Mossy Tumor##5170 |q 923/1 |goto 43.42,28.26
You can find more around: |notinsticky
[42.70,33.19]
[42.78,40.96]
step
Follow the road |goto 38.84,53.51 < 30 |only if walking
Continue following the road |goto 36.05,54.36 < 15 |only if walking
talk Rellian Greenspyre##3517
turnin Tumors##923 |goto Darnassus 38.19,21.64
accept Return to Denalan##2498 |goto Darnassus 38.19,21.64
step
Cross the bridge |goto 38.59,48.02 < 10 |only if walking
Enter the building |goto 39.02,76.78 < 10 |walk
talk Priestess A'moora##7313
|tip Upstairs inside the building.
turnin Tears of the Moon##2518 |goto 36.64,85.93
accept Sathrah's Sacrifice##2520 |goto 36.64,85.93
step
use Sathrah's Sacrifice##8155
|tip Inside the building.
Offer the Sacrifice at the Fountain |q 2520/1 |goto 39.21,84.57
step
talk Priestess A'moora##7313
|tip Upstairs inside the building.
turnin Sathrah's Sacrifice##2520 |goto 36.64,85.93
step
Follow the path down |goto Teldrassil 57.07,63.22 < 30 |only if walking
talk Denalan##2080
turnin Return to Denalan##2498 |goto Teldrassil 60.90,68.49
accept Oakenscowl##2499 |goto Teldrassil 60.90,68.49
step
Enter the cave |goto 53.31,74.82 < 7 |walk
kill Oakenscowl##2166
|tip Inside the cave.
|tip He is Elite but you should be able to kill him at this level.
collect Gargantuan Tumor##8136 |q 2499/1 |goto 53.76,75.12
step
talk Denalan##2080
turnin Oakenscowl##2499 |goto 60.90,68.49
step
Follow the path |goto 56.95,63.20 < 30 |only if walking
Follow the road |goto 54.27,58.37 < 30 |only if walking
Enter Darnassus |goto 36.01,54.36 < 15 |only if walking
Follow the road |goto Darnassus 73.29,40.47 < 30 |only if walking
talk Nessa Shadowsong##10118
turnin Nessa Shadowsong##6344 |goto Teldrassil 56.25,92.43
accept The Bounty of Teldrassil##6341 |goto Teldrassil 56.25,92.43
|only if NightElf
step
Follow the path |goto 56.81,92.64 < 15 |only if walking
talk Vesprystus##3838
turnin The Bounty of Teldrassil##6341 |goto 58.40,94.01
accept Flight to Auberdine##6342 |goto 58.40,94.01
|only if NightElf
step
talk Laird##4200
|tip Inside the building.
turnin Flight to Auberdine##6342 |goto Darkshore 36.77,44.29
accept Return to Nessa##6343 |goto Darkshore 36.77,44.29
|only if NightElf
step
talk Nessa Shadowsong##10118
turnin Return to Nessa##6343 |goto Teldrassil 56.25,92.43
|only if NightElf
step
Kill enemies around this area
Reach Level 12 |ding 12 |goto Darkshore 36.46,49.27
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides (1-12)\\Dun Morogh (1-12) [Dwarf & Gnome Starter]",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Dun Morogh",
condition_suggested=function() return (raceclass('Dwarf') or raceclass('Gnome')) and level <= 13 end,
condition_suggested_race=function() return (raceclass('Dwarf') or raceclass('Gnome')) end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Classic (12-58)\\Darkshore (12-17)",
startlevel=1,
endlevel=13
},[[
defaultfor Dwarf,Gnome
step
talk Sten Stoutarm##658
accept Dwarven Outfitters##179 |goto Dun Morogh 29.93,71.20
step
Kill Wolf enemies around this area
collect 8 Tough Wolf Meat##750 |q 179/1 |goto 30.14,74.59
You can find more around [26.93,75.75]
step
Kill enemies around this area
Reach Level 2 |ding 2 |goto 30.14,74.59
You can find more around [26.93,75.75]
step
talk Sten Stoutarm##658
turnin Dwarven Outfitters##179 |goto 29.93,71.20
accept Simple Rune##3106 |goto 29.93,71.20 |only Dwarf Warrior
accept Encrypted Rune##3109 |goto 29.93,71.20 |only Dwarf Rogue
accept Hallowed Rune##3110 |goto 29.93,71.20 |only Dwarf Priest
accept Consecrated Rune##3107 |goto 29.93,71.20 |only Dwarf Paladin
accept Etched Rune##3108 |goto 29.93,71.20 |only Dwarf Hunter
accept Glyphic Memorandum##3114 |goto 29.93,71.20 |only Gnome Mage
accept Simple Memorandum##3112 |goto 29.93,71.20 |only Gnome Warrior
accept Tainted Memorandum##3115 |goto 29.93,71.20 |only Gnome Warlock
accept Encrypted Memorandum##3113 |goto 29.93,71.20 |only Gnome Rogue
accept Coldridge Valley Mail Delivery##233 |goto 29.93,71.20
step
talk Balir Frosthammer##713
accept A New Threat##170 |goto 29.71,71.25
stickystart "Kill_Burly_Rockjaw_Troggs"
step
kill 6 Rockjaw Trogg##707 |q 170/1 |goto 30.65,74.94
step
label "Kill_Burly_Rockjaw_Troggs"
kill 6 Burly Rockjaw Trogg##724 |q 170/2 |goto 30.65,74.94
step
Kill enemies around this area
Reach Level 3 |ding 3 |goto 30.65,74.94
step
talk Balir Frosthammer##713
turnin A New Threat##170 |goto 29.71,71.25
step
Enter the building |goto 28.79,69.05 < 7 |walk
talk Felix Whindlebolt##8416
|tip He walks around this area inside the building.
accept A Refugee's Quandary##3361 |goto 28.51,67.67
step
talk Thran Khorman##912
|tip Inside the building.
turnin Simple Rune##3106 |goto 28.83,67.24
|only if Dwarf Warrior
step
talk Solm Hargrin##916
|tip Inside the building.
turnin Encrypted Rune##3109 |goto 28.37,67.51
|only if Dwarf Rogue
step
talk Branstock Khalder##837
|tip Inside the building.
turnin Hallowed Rune##3110 |goto 28.60,66.39
|only if Dwarf Priest
step
talk Bromos Grummner##926
|tip Inside the building.
turnin Consecrated Rune##3107 |goto 28.83,68.33
|only if Dwarf Paladin
step
talk Thorgas Grimson##895
|tip Inside the building.
turnin Etched Rune##3108 |goto 29.18,67.46
|only if Dwarf Hunter
step
talk Thran Khorman##912
|tip Inside the building.
turnin Simple Memorandum##3112 |goto 28.83,67.24
|only if Gnome Warrior
step
talk Solm Hargrin##916
|tip Inside the building.
turnin Encrypted Memorandum##3113 |goto 28.37,67.51
|only if Gnome Rogue
step
talk Marryk Nurribit##944
|tip Inside the building.
turnin Glyphic Memorandum##3114 |goto 28.71,66.36
|only if Gnome Mage
step
talk Alamar Grimm##460
|tip Upstairs inside the building.
turnin Tainted Memorandum##3115 |goto 28.65,66.14
accept Beginnings##1599 |goto 28.65,66.14
|only if Gnome Warlock
step
Leave the building |goto 28.79,69.07 < 7 |walk
talk Talin Keeneye##714
turnin Coldridge Valley Mail Delivery##233 |goto 22.60,71.43
accept Coldridge Valley Mail Delivery##234 |goto 22.60,71.43
accept The Boar Hunter##183 |goto 22.60,71.43
step
kill 12 Small Crag Boar##708 |q 183/1 |goto 21.52,71.91
step
talk Talin Keeneye##714
turnin The Boar Hunter##183 |goto 22.60,71.43
step
Kill enemies around this area
Reach Level 4 |ding 4 |goto 21.52,71.91
step
talk Grelin Whitebeard##786
turnin Coldridge Valley Mail Delivery##234 |goto 25.08,75.71
step
Enter the cave |goto 26.80,79.86 < 15 |walk
Follow the path |goto 28.00,81.05 < 10 |walk
kill Frostmane Novice##946+
|tip Inside the cave.
|tip There's only a few of them.
collect 3 Feather Charm##6753 |q 1599/1 |goto 28.73,82.58
You can find more around: |notinsticky
[29.34,81.50]
[30.15,82.34]
[30.49,81.05]
|only if Gnome Warlock
step
Leave the cave |goto 26.80,79.86 < 15 |c |q 1599
|only if Gnome Warlock
step
talk Nori Pridedrift##12738
accept Scalding Mornbrew Delivery##3364 |goto 24.98,75.96
step
Enter the building |goto 28.79,69.05 < 7 |walk
talk Durnan Furcutter##836
|tip Inside the building.
turnin Scalding Mornbrew Delivery##3364 |goto 28.77,66.37
accept Bring Back the Mug##3365 |goto 28.77,66.37
step
talk Alamar Grimm##460
|tip Upstairs inside the building.
turnin Beginnings##1599 |goto 28.65,66.14
|only if Gnome Warlock
step
Leave the building |goto 28.79,69.07 < 7 |walk
talk Nori Pridedrift##12738
turnin Bring Back the Mug##3365 |goto 24.98,75.96
step
talk Grelin Whitebeard##786
accept The Troll Cave##182 |goto 25.08,75.71
stickystart "Kill_Frostmane_Troll_Whelps"
step
click Felix's Box
collect Felix's Box##10438 |q 3361/1 |goto 20.88,76.07
step
click Felix's Chest
collect Felix's Chest##16313 |q 3361/2 |goto 22.78,80.00
step
click Felix's Bucket of Bolts
collect Felix's Bucket of Bolts##16314 |q 3361/3 |goto 26.33,79.27
step
label "Kill_Frostmane_Troll_Whelps"
kill 14 Frostmane Troll Whelp##706 |q 182/1 |goto 26.76,79.73
|tip Inside and outside the cave.
You can find more outside the cave around: |notinsticky
[22.78,79.72]
[21.02,76.15]
step
Kill enemies around this area
|tip Inside and outside the cave.
Reach Level 5 |ding 5 |goto 26.76,79.73
You can find more outside the cave around: |notinsticky
[22.78,79.72]
[21.02,76.15]
step
talk Grelin Whitebeard##786
turnin The Troll Cave##182 |goto 25.08,75.71
accept The Stolen Journal##218 |goto 25.08,75.71
step
Enter the cave |goto 26.80,79.86 < 10 |walk
Follow the path |goto 27.73,80.71 < 7 |walk
Follow the path down |goto 28.13,80.11 < 7 |walk
Continue down the path |goto 29.06,78.87 < 7 |walk
kill Grik'nir the Cold##808
|tip Inside the cave.
collect Grelin Whitebeard's Journal##2004 |q 218/1 |goto 30.49,80.16
step
Follow the path up |goto 30.09,79.31 < 7 |walk
Continue up the path |goto 28.40,79.66 < 7 |walk
Follow the path |goto 27.62,80.85 < 7 |walk
Leave the cave |goto 26.75,79.69 < 10 |walk
talk Grelin Whitebeard##786
turnin The Stolen Journal##218 |goto 25.08,75.71
accept Senir's Observations##282 |goto 25.08,75.71
step
Enter the building |goto 28.79,69.05 < 7 |walk
talk Felix Whindlebolt##8416
|tip He walks around this area inside the building.
turnin A Refugee's Quandary##3361 |goto 28.55,67.65
step
Leave the building |goto 28.79,69.05 < 7 |walk
Follow the road up |goto 31.71,72.61 < 20 |only if walking
talk Mountaineer Thalos##1965
turnin Senir's Observations##282 |goto 33.48,71.84
accept Senir's Observations##420 |goto 33.48,71.84
step
talk Hands Springsprocket##6782
accept Supplies to Tannok##2160 |goto 33.85,72.24
step
Enter the tunnel |goto 34.12,71.51 < 10 |only if walking
Leave the tunnel |goto 35.67,65.93 < 10 |c |q 420
step
Kill enemies around this area
Reach Level 6 |ding 6 |goto 35.71,59.82
step
Follow the road |goto 36.64,62.05 < 30 |only if walking
talk Senir Whitebeard##1252
turnin Senir's Observations##420 |goto 46.73,53.83
step
talk Ragnar Thunderbrew##1267
accept Beer Basted Boar Ribs##384 |goto 46.83,52.36
step
Enter the building |goto 46.95,52.04 < 7 |walk
talk Tannok Frosthammer##6806
|tip Inside the building.
turnin Supplies to Tannok##2160 |goto 47.22,52.19
step
talk Innkeeper Belm##1247
|tip Inside the building.
home Thunderbrew Distillery |goto 47.38,52.52
step
Leave the building |goto 46.95,52.03 < 7 |walk
talk Tharek Blackstone##1872
accept Tools for Steelgrill##400 |goto 46.02,51.68
step
talk Pilot Bellowfiz##1378
accept Stocking Jetsteam##317 |goto 49.43,48.41
step
talk Pilot Stonegear##1377
accept The Grizzled Den##313 |goto 49.62,48.61
step
talk Beldin Steelgrill##1376
turnin Tools for Steelgrill##400 |goto 50.44,49.09
step
talk Loslor Rudge##1694
accept Ammo for Rumbleshot##5541 |goto 50.08,49.42
stickystart "Collect_Crag_Boar_Ribs"
stickystart "Collect_Thick_Bear_Fur"
step
Follow the road |goto 46.40,50.57 < 30 |only if walking
Kill Crag Boar enemies around this area
collect 4 Chunk of Boar Meat##769 |q 317/1 |goto 48.34,55.70
|tip Be careful not to accidentally sell these to a vendor.
You can find more around: |notinsticky
[48.37,60.48]
[44.55,65.31]
[42.18,65.32]
step
label "Collect_Crag_Boar_Ribs"
Kill Crag Boar enemies around this area
collect 6 Crag Boar Rib##2886 |q 384/1 |goto 48.34,55.70
|tip Be careful not to accidentally sell these to a vendor.
You can find more around: |notinsticky
[48.37,60.48]
[44.55,65.31]
[42.18,65.32]
step
label "Collect_Thick_Bear_Fur"
kill Young Black Bear+
collect 2 Thick Bear Fur##6952 |q 317/2 |goto 49.76,51.15
You can find more around: |notinsticky
[45.18,50.18]
[44.96,56.85]
[42.54,59.61]
[39.44,61.23]
step
click Ammo Crate
collect Rumbleshot's Ammo##13850 |q 5541/1 |goto 44.14,56.94
step
Kill Wendigo enemies around this area
|tip Inside and outside the cave.
|tip They respawn quickly, so you'll be better staying close to the cave entrance.
collect 8 Wendigo Mane##2671 |q 313/1 |goto 42.33,54.03
step
Kill enemies around this area
|tip Inside and outside the cave.
Reach Level 7 |ding 7 |goto 42.33,54.03
step
Follow the path up |goto 40.60,62.56 < 20 |only if walking
talk Hegnar Rumbleshot##1243
turnin Ammo for Rumbleshot##5541 |goto 40.68,65.13
step
Follow the road |goto 43.75,64.46 < 30 |only if walking
talk Senir Whitebeard##1252
accept Frostmane Hold##287 |goto 46.73,53.83
step
Enter the building |goto 46.95,52.04 < 7 |walk
talk Innkeeper Belm##1247
|tip Inside the building.
buy Rhapsody Malt##2894 |q 384/2 |goto 47.38,52.52
step
Leave the building |goto 46.95,52.04 < 7 |walk
talk Ragnar Thunderbrew##1267
turnin Beer Basted Boar Ribs##384 |goto 46.83,52.36
step
talk Pilot Bellowfiz##1378
turnin Stocking Jetsteam##317 |goto 49.43,48.41
accept Evershine##318 |goto 49.43,48.41
step
talk Pilot Stonegear##1377
turnin The Grizzled Den##313 |goto 49.62,48.61
step
Enter the building |goto 45.97,48.83 < 7 |walk
talk Razzle Sprysprocket##1269
|tip Inside the building.
accept Operation Recombobulation##412 |goto 45.85,49.37
step
Leave the building |goto 45.97,48.83 < 7 |walk
Follow the path |goto 41.85,47.18 < 30 |only if walking
Follow the path |goto 39.43,48.50 < 20 |only if walking
Follow the path up |goto 35.99,51.92 < 15 |only if walking
talk Tundra MacGrann##1266
|tip On top of the mountain.
|tip As you travel to him, be careful to avoid the elite yeti that walks around this area.
accept Tundra MacGrann's Stolen Stash##312 |goto 34.57,51.65
step
Enter the cave |goto 37.80,53.69 < 15 |walk
click MacGrann's Meat Locker
|tip Inside the cave.
|tip Wait for the elite yeti to leave the cave and walk away before you enter the cave.
collect MacGrann's Dried Meats##2667 |q 312/1 |goto 38.51,53.93
|tip He runs back quickly after he walks down the path a bit.
|tip Try to get into the cave as quick as you can when he leaves it, to give yourself time to run back out safely.
|tip If he attacks you as you leave the cave, just run away.
step
Follow the path up |goto 35.99,51.92 < 15 |only if walking
talk Tundra MacGrann##1266
|tip On top of the mountain.
|tip As you travel to him, be careful to avoid the elite yeti that walks around this area.
turnin Tundra MacGrann's Stolen Stash##312 |goto 34.57,51.65
step
Kill enemies around this area
Reach Level 8 |ding 8 |goto 32.19,49.19
You can find more around [27.99,48.31]
step
talk Rejold Barleybrew##1374
turnin Evershine##318 |goto 30.19,45.73
accept A Favor for Evershine##319 |goto 30.19,45.73
accept The Perfect Stout##315 |goto 30.19,45.73
step
talk Marleth Barleybrew##1375
accept Bitter Rivals##310 |goto 30.19,45.53
step
talk Innkeeper Belm##1247
|tip Inside the building.
buy Thunder Ale##2686 |goto 47.38,52.52 |q 310
step
talk Jarven Thunderbrew##1373
|tip Downstairs inside the building.
accept Distracting Jarven##308 |goto 47.64,52.66
step
click Unguarded Thunder Ale Barrel
|tip Downstairs inside the building.
|tip It may take a moment for it to become Unguarded.
turnin Bitter Rivals##310 |goto 47.70,52.69
accept Return to Marleth##311 |goto 47.70,52.69
step
Leave the building |goto 46.95,52.08 < 7 |walk
Follow the path |goto 42.70,47.20 < 30 |only if walking
Continue following the path |goto 37.36,44.05 < 30 |only if walking
Follow the path up |goto 38.44,42.11 < 15 |only if walking
kill Frostmane Seer##1397+
click Shimmerweed Basket+
|tip They look like tan wooden baskets on the ground around this area.
collect 6 Shimmerweed##2676 |q 315/1 |goto 40.09,42.44
You can find more around [41.81,35.62]
stickystart "Kill_Elder_Crag_Boars"
stickystart "Kill_Snow_Leopards"
step
kill 6 Ice Claw Bear##1196 |q 319/1 |goto 34.50,31.74
You can find more around: |notinsticky
[30.71,39.90]
[27.80,48.14]
[28.11,53.97]
step
label "Kill_Elder_Crag_Boars"
kill 8 Elder Crag Boar##1127 |q 319/2 |goto 34.50,31.74
You can find more around: |notinsticky
[30.71,39.90]
[27.80,48.14]
[28.11,53.97]
step
label "Kill_Snow_Leopards"
kill 8 Snow Leopard##1201 |q 319/3 |goto 34.50,31.74
You can find more around: |notinsticky
[30.71,39.90]
[27.80,48.14]
[28.11,53.97]
step
talk Marleth Barleybrew##1375
turnin Return to Marleth##311 |goto 30.19,45.53
step
talk Rejold Barleybrew##1374
turnin A Favor for Evershine##319 |goto 30.19,45.73
accept Return to Bellowfiz##320 |goto 30.19,45.73
turnin The Perfect Stout##315 |goto 30.19,45.73
accept Shimmer Stout##413 |goto 30.19,45.73
step
Kill enemies around this area
Reach Level 9 |ding 9 |goto 26.36,47.69
You can find more around: |notinsticky
[29.93,42.60]
stickystart "Kill_Frostmane_Headhunters"
step
Enter the cave |goto 24.84,50.89 < 15 |walk
Follow the path  down |goto 22.61,50.53 < 15 |walk
Fully Explore Frostmane Hold |q 287/2 |goto 22.79,52.10
|tip Inside the cave.
step
label "Kill_Frostmane_Headhunters"
Follow the path up |goto 21.78,50.47 < 15 |walk
kill 5 Frostmane Headhunter##1123 |q 287/1 |goto 24.87,50.90
|tip Inside and outside the cave.
stickystart "Collect_Gyromechanic_Gears"
step
Leave the cave |goto 25.07,50.99 < 15 |walk
kill Leper Gnome##1211+
collect 8 Restabilization Cog##3083 |q 412/1 |goto 25.64,43.33
step
label "Collect_Gyromechanic_Gears"
kill Leper Gnome##1211+
collect 8 Gyromechanic Gear##3084 |q 412/2 |goto 25.64,43.33
step
Follow the path up |goto 30.71,34.33 < 10 |only if walking
Continue up the path |goto 31.06,32.56 < 7 |only if walking
Continue up the path |goto 31.43,32.34 < 7 |only if walking
Continue up the path |goto 31.14,30.50 < 7 |only if walking
Follow the path down |goto 32.33,28.63 < 15 |only if walking
Follow the path |goto 32.74,27.11 < 20 |only if walking
Jump to Your Death |havebuff 132331 |goto Eastern Kingdoms 44.92,51.98 |q 963 |future |notravel
|tip While you are in the Wetlands, keep running north and jump off the cliff.
|tip This is a much easier and faster way to reach Menethil Harbor.
step
talk Spirit Healer##6491
Tell her _"Return me to life."_
Resurrect at the Spirit Healer Near Menethil Harbor |nobuff 132331 |goto Wetlands 11.72,43.30 |q 963 |future |zombiewalk
step
Cross the bridge |goto Wetlands 12.38,50.30 < 20 |only if walking
Follow the path |goto Wetlands 10.86,55.08 < 15 |only if walking
talk Shellei Brondir##1571
fpath Menethil Harbor |goto Wetlands 9.49,59.69
step
Leave the building |goto Dun Morogh 46.95,52.05 < 7 |walk
talk Senir Whitebeard##1252
turnin Frostmane Hold##287 |goto Dun Morogh 46.73,53.82
accept The Reports##291 |goto Dun Morogh 46.73,53.82
step
Enter the building |goto 45.97,48.84 < 7 |walk
talk Razzle Sprysprocket##1269
|tip Inside the building.
turnin Operation Recombobulation##412 |goto 45.85,49.37
step
Leave the building |goto 45.97,48.85 < 7 |walk
talk Pilot Bellowfiz##1378
turnin Return to Bellowfiz##320 |goto 49.43,48.41
step
Kill enemies around this area
|tip It will be very helpful to have your level 10 abilities before you continue questing.
|tip You won't have easy access to trainers after this, so it's best to get them now.
Reach Level 10 |ding 10 |goto 44.39,46.27
You can find more around [45.31,42.20]
step
talk Grif Wildheart##1231
accept Taming the Beast##6064 |goto Dun Morogh 45.81,53.03
|only if Dwarf Hunter
step
use the Taming Rod##15911
|tip Use it on a Large Crag Boar around this area.
Tame a Large Crag Boar |q 6064/1 |goto 48.26,56.81
|only if Dwarf Hunter
step
talk Grif Wildheart##1231
turnin Taming the Beast##6064 |goto 45.81,53.04
accept Taming the Beast##6084 |goto 45.81,53.04
|only if Dwarf Hunter
step
use the Taming Rod##15913
|tip Use it on a Snow Leopard around this area.
Tame a Snow Leopard |q 6084/1 |goto 48.68,58.93
|only if Dwarf Hunter
step
talk Grif Wildheart##1231
turnin Taming the Beast##6084 |goto 45.81,53.04
accept Taming the Beast##6085 |goto 45.81,53.04
|only if Dwarf Hunter
step
use the Taming Rod##15908
|tip Use it on an Ice Claw Bear around this area.
Tame an Ice Claw Bear |q 6085/1 |goto 49.06,62.12
You can usaully find another one around [50.11,53.57]
|only if Dwarf Hunter
step
talk Grif Wildheart##1231
turnin Taming the Beast##6085 |goto 45.81,53.04
accept Training the Beast##6086 |goto 45.81,53.04
|only if Dwarf Hunter
step
Follow the path up |goto 47.25,41.65 < 20 |only if walking
Enter Ironforge |goto 53.47,34.90 < 20 |walk
Enter the building |goto Ironforge 66.34,82.50 < 7 |walk
talk Belia Thundergranite##10090
|tip Inside the building.
turnin Training the Beast##6086 |goto Ironforge 70.87,85.80
|only if Dwarf Hunter
step
Leave the building |goto 66.30,82.35 < 15 |walk
Follow the path |goto 30.96,80.43 < 20 |only if walking
Leave Ironforge |goto 15.03,85.95 < 20 |c |q 419 |future
|only if Dwarf Hunter
step
Enter the building |goto 46.96,52.08 < 7 |walk
talk Granis Swiftaxe##1229
|tip Inside the building.
accept Muren Stormpike##1679 |goto Dun Morogh 47.36,52.65
|only if (Dwarf Warrior) or (Gnome Warrior)
step
Leave the building |goto 46.95,52.09 < 7 |walk
Follow the path up |goto 47.20,41.70 < 20 |only if walking
Enter the building |goto Ironforge 66.34,82.50 < 7 |walk
talk Muren Stormpike##6114
|tip Upstairs inside the building.
turnin Muren Stormpike##1679 |goto Ironforge 62.44,35.59
accept Vejrek##1678 |goto Ironforge 62.44,35.59
|only if (Dwarf Warrior) or (Gnome Warrior)
step
Leave the building |goto 66.30,82.35 < 7 |walk
Follow the path |goto Dun Morogh 41.92,47.16 < 30 |only if walking
Continue following the path |goto Dun Morogh 36.24,45.96 < 30 |only if walking
Follow the path up |goto Dun Morogh 27.97,56.18 < 20 |only if walking
kill Vejrek##6113
|tip Inside the hut.
collect Vejrek's Head##6799 |q 1678/1 |goto Dun Morogh 27.83,57.95
|only if (Dwarf Warrior) or (Gnome Warrior)
step
Follow the path |goto 31.50,50.67 < 30 |only if walking
Continue following the path |goto 36.76,46.02 < 30 |only if walking
Continue following the path |goto 42.18,47.16 < 30 |only if walking
Follow the path up |goto 47.20,41.70 < 20 |only if walking
Enter Ironforge |goto 53.47,34.90 < 20 |walk
Enter the building |goto Ironforge 66.34,82.50 < 7 |walk
talk Muren Stormpike##6114
|tip Upstairs inside the building.
turnin Vejrek##1678 |goto Ironforge 62.44,35.59
|only if (Dwarf Warrior) or (Gnome Warrior)
step
Leave the building |goto 66.30,82.35 < 7 |walk
|only if (Dwarf Warrior) or (Gnome Warrior)
step
Follow the path up |goto Dun Morogh 47.20,41.70 < 20 |only if walking
Enter Ironforge |goto Dun Morogh 53.47,34.90 < 20 |walk
talk Lago Blackwrench##6120
accept The Slaughtered Lamb##1715 |goto Ironforge 47.63,9.26
|only if Gnome Warlock
step
Follow the path |goto 72.81,50.26 < 15 |walk
Enter the Deeprun Tram |goto 77.02,51.26
Click Here After Entering Deeprun Tramp |confirm |q 1715
|only if Gnome Warlock
step
_Inside Deeprun Tram:_
Ride the Tram
|tip Ride the Deeprun Tram from Ironforge to Stormwind City.
Click Here After Riding the Tram |confirm |q 1715
|only if Gnome Warlock
step
_Inside Deeprun Tram:_
Enter Stormwind City |goto Stormwind City 62.94,9.36 < 2000 |noway |c |q 1715
|only if Gnome Warlock
step
Enter the building |goto Stormwind City 29.16,74.16 < 10 |walk
Follow the path down |goto Stormwind City 27.42,76.42 < 7 |walk
talk Gakin the Darkbinder##6122
|tip Downstairs inside the building.
turnin The Slaughtered Lamb##1715 |goto Stormwind City 25.26,78.56
accept Surena Caledon##1688 |goto Stormwind City 25.26,78.56
|only if Gnome Warlock
step
Leave the building |goto 29.15,74.18 < 10 |walk
Leave Stormwind City |goto Stormwind City 71.02,89.03 < 30 |only if walking
Follow the road |goto Elwynn Forest 42.68,67.14 < 30 |only if walking
Follow the path |goto Elwynn Forest 64.57,74.00 < 30 |only if walking
Enter the building |goto Elwynn Forest 70.93,80.43 < 10 |walk
talk Surena Caledon##881
|tip Inside the building.
collect Surena's Choker##6810 |q 1688/1 |goto Elwynn Forest 71.02,80.78
|only if Gnome Warlock
step
Follow the road |goto 65.65,74.10 < 30 |only if walking
Continue following the road |goto 42.11,64.65 < 30 |only if walking
Enter Stormwind City |goto 32.09,49.38 < 30 |only if walking
Enter the building |goto Stormwind City 29.15,74.18 < 10 |walk
talk Gakin the Darkbinder##6122
|tip Downstairs inside the building.
turnin Surena Caledon##1688 |goto Stormwind City 25.26,78.56
accept The Binding##1689 |goto Stormwind City 25.26,78.56
|only if Gnome Warlock
step
Follow the path down |goto 25.05,79.31 < 5 |walk
Run down the stairs |goto 24.28,78.62 < 7 |c |q 1689
|only if Gnome Warlock
step
Run down the stairs |goto 26.15,79.33 < 7 |walk
use the Bloodstone Choker##6928
|tip Use it while standing on the pink symbol on the ground.
|tip Downstairs inside the building, inside the crypt.
kill Summoned Voidwalker##5676 |q 1689/1 |goto 25.11,77.46
|only if Gnome Warlock
step
Follow the path up |goto 26.03,79.83 < 7 |walk
Run up the stairs |goto 23.31,79.68 < 7 |c |q 1689
|only if Gnome Warlock
step
talk Gakin the Darkbinder##6122
|tip Upstairs inside the building, in the basement above the crypt.
turnin The Binding##1689 |goto 25.25,78.53
|only if Gnome Warlock
step
Leave the building |goto 29.16,74.12 < 10 |walk
Follow the path |goto 60.32,12.56 < 15 |walk
Enter the Deeprun Tram |goto 77.02,51.26
Click Here After Entering Deeprun Tramp |confirm |q 433 |future
|only if Gnome Warlock
step
_Inside Deeprun Tram:_
Ride the Tram
|tip Ride the Deeprun Tram from Stormwind City to Ironforge.
Click Here After Riding the Tram |confirm |q 433 |future
|only if Gnome Warlock
step
_Inside Deeprun Tram:_
Enter Ironforge |goto Ironforge 76.51,51.12 < 2000 |noway |c |q 433 |future
|only if Gnome Warlock
step
Leave Ironforge |goto 15.03,85.95 < 20 |c |q 433 |future
|only if Gnome Warlock
step
Enter the building |goto Dun Morogh 46.95,52.05 < 7 |walk
talk Maxan Anvol##1226
|tip Inside the building.
accept Desperate Prayer##5635 |goto Dun Morogh 47.34,52.18
|only if Dwarf Priest
step
Leave the building |goto 46.95,52.05 < 7 |walk
|only if Dwarf Priest
step
Follow the road |goto Dun Morogh 51.06,47.29 < 30 |only if walking
talk Senator Mehr Stonehallow##1977
accept The Public Servant##433 |goto Dun Morogh 68.67,55.97
step
talk Foreman Stonebrow##1254
accept Those Blasted Troggs!##432 |goto 69.08,56.33
stickystart "Kill_Rockjaw_Skullthumpers"
step
Enter the cave |goto 70.52,56.67 < 15 |walk
kill 10 Rockjaw Bonesnapper##1117 |q 433/1 |goto 70.98,54.77
|tip Inside the cave.
step
label "Kill_Rockjaw_Skullthumpers"
kill 6 Rockjaw Skullthumper##1115 |q 432/1 |goto 70.98,54.77
|tip You can find more outside the cave.
step
Leave the cave |goto 70.52,56.67 < 15 |walk
Follow the path up |goto 67.86,57.69 < 15 |only if walking
talk Senator Mehr Stonehallow##1977
turnin The Public Servant##433 |goto 68.67,55.97
step
talk Foreman Stonebrow##1254
turnin Those Blasted Troggs!##432 |goto 69.08,56.33
step
Follow the path up |goto 68.02,55.59 < 15 |only if walking
Follow the road |goto Dun Morogh 67.26,52.92 < 30 |only if walking
Continue following the road |goto Dun Morogh 78.18,49.39 < 30 |only if walking
Enter the tunnel |goto Dun Morogh 81.21,42.70 < 10 |only if walking
Leave the tunnel |goto Dun Morogh 82.98,40.34 < 10 |only if walking
talk Pilot Hammerfoot##1960
accept The Lost Pilot##419 |goto Dun Morogh 83.89,39.19
step
Follow the path |goto 81.02,36.12 < 30 |only if walking
click A Dwarven Corpse
turnin The Lost Pilot##419 |goto 79.67,36.17
accept A Pilot's Revenge##417 |goto 79.67,36.17
step
kill Mangeclaw##1961
collect Mangy Claw##3183 |q 417/1 |goto 78.31,37.76
step
Follow the path |goto 81.10,36.13 < 30 |only if walking
talk Pilot Hammerfoot##1960
turnin A Pilot's Revenge##417 |goto 83.89,39.19
step
Enter the tunnel |goto 82.96,40.36 < 10 |only if walking
Leave the tunnel |goto 81.22,42.67 < 10 |only if walking
Follow the path |goto 78.64,50.34 < 30 |only if walking
Enter the tunnel |goto 82.30,53.40 < 10 |only if walking
Leave the tunnel |goto 84.20,51.34 < 10 |only if walking
talk Mountaineer Barleybrew##1959
turnin Shimmer Stout##413 |goto 86.28,48.81
accept Stout to Kadrell##414 |goto 86.28,48.81
step
Enter the tunnel |goto 86.25,51.32 < 10 |only if walking
Leave the tunnel |goto Loch Modan 19.54,62.67 < 10 |only if walking
talk Mountaineer Cobbleflint##1089
accept In Defense of the King's Lands##224 |goto Loch Modan 22.07,73.12
step
Enter the building |goto 23.71,75.47 < 7 |walk
talk Captain Rugelfuss##1092
|tip Upstairs inside the building.
accept The Trogg Threat##267 |goto 23.23,73.67
stickystart "Kill_Stonesplinter_Troggs"
stickystart "Kill_Stonesplinter_Scouts"
step
Follow the road up |goto 23.20,70.46 < 20 |only if walking
Follow the path |goto 28.43,65.77 < 30 |only if walking
Kill Stonesplinter enemies around this area
collect 8 Trogg Stone Tooth##2536 |q 267/1 |goto 32.51,73.25
step
label "Kill_Stonesplinter_Troggs"
kill 10 Stonesplinter Trogg##1161 |q 224/1 |goto 32.51,73.25
step
label "Kill_Stonesplinter_Scouts"
kill 10 Stonesplinter Scout##1162 |q 224/2 |goto 32.51,73.25
step
Kill enemies around this area
Reach Level 11 |ding 11 |goto 32.51,73.25
step
Follow the path |goto 30.64,69.80 < 15 |only if walking
Follow the road down |goto 27.64,65.84 < 30 |only if walking
talk Mountaineer Cobbleflint##1089
turnin In Defense of the King's Lands##224 |goto 22.07,73.13
step
Enter the building |goto 23.71,75.45 < 7 |walk
talk Captain Rugelfuss##1092
|tip Upstairs inside the building.
turnin The Trogg Threat##267 |goto 23.23,73.67
step
Follow the road up |goto 23.20,70.46 < 20 |only if walking
talk Thorgrum Borrelson##1572
fpath Thelsamar |goto 33.94,50.95
step
talk Mountaineer Kadrell##1340
|tip He walks around this area.
turnin Stout to Kadrell##414 |goto 34.50,47.32
accept Rat Catching##416 |goto 34.50,47.32
accept Mountaineer Stormpike's Task##1339 |goto 34.50,47.32
step
Enter the building |goto 35.23,47.75 < 7 |walk
talk Innkeeper Hearthstove##6734
|tip Inside the building.
home Stoutlager Inn |goto 35.53,48.40
step
talk Vidra Hearthstove##1963
|tip Inside the building.
accept Thelsamar Blood Sausages##418 |goto 34.83,49.28
step
Leave the building |goto 35.21,47.76 < 7 |c |q 418
step
Enter the building |goto 37.18,47.09 < 7 |walk
talk Brock Stoneseeker##1681
|tip Downstairs inside the building.
|tip He sometimes walks out near the entrance of the building.
accept Honor Students##6387 |goto 37.02,47.81
|only if Dwarf or Gnome
step
Leave the building |goto 37.18,47.09 < 7 |c |q 418
|only if Dwarf or Gnome
stickystart "Collect_Spider_Ichors"
stickystart "Collect_Bear_Meat"
step
kill Mountain Boar##1190+
collect 3 Boar Intestines##3172 |q 418/1 |goto 36.99,34.36
You can find more around [29.17,23.57]
step
label "Collect_Spider_Ichors"
kill Forest Lurker##1195+
collect 3 Spider Ichor##3174 |q 418/3 |goto 35.69,31.78
You can find more around: |notinsticky
[29.17,23.57]
[29.43,48.28]
stickystart "Collect_Tunnel_Rat_Ears"
step
label "Collect_Bear_Meat"
kill Elder Black Bear##1186+
collect 3 Bear Meat##3173 |q 418/2 |goto 35.68,32.10
You can find more around: |notinsticky
[30.73,25.86]
[28.66,11.57]
[24.03,25.79]
[27.45,28.54]
[28.09,40.94]
step
label "Collect_Tunnel_Rat_Ears"
Kill Tunnel Rat enemies around this area
collect 12 Tunnel Rat Ear##3110 |q 416/1 |goto 24.57,29.79
You can find more around [26.08,43.64]
step
Kill enemies around this area
Reach Level 12 |ding 12 |goto 24.57,29.79
You can find more around [26.08,43.64]
step
Enter the building |goto 23.53,17.90 < 7 |walk
talk Mountaineer Stormpike##1343
|tip Upstairs inside the building.
turnin Mountaineer Stormpike's Task##1339 |goto 24.76,18.40
accept Stormpike's Order##1338 |goto 24.76,18.40
accept Filthy Paws##307 |goto 24.76,18.40
step
Enter the mine |goto 35.48,18.83 < 7 |walk
click Miners' League Crates+
|tip They look like piles of brown boxes on the ground around this area inside the mine.
collect 4 Miners' Gear##2640 |q 307/1 |goto 35.75,22.42
step
Leave the mine |goto 35.46,18.72 < 7 |walk
Enter the building |goto 23.50,17.89 < 7 |walk
talk Mountaineer Stormpike##1343
|tip Upstairs inside the building.
turnin Filthy Paws##307 |goto 24.76,18.40
step
talk Vidra Hearthstove##1963
|tip Inside the building.
turnin Thelsamar Blood Sausages##418 |goto 34.83,49.29
step
Leave the building |goto 35.22,47.75 < 7 |walk
talk Mountaineer Kadrell##1340
|tip He walks around this area.
turnin Rat Catching##416 |goto 34.61,47.09
step
talk Thorgrum Borrelson##1572
turnin Honor Students##6387 |goto 33.94,50.95
accept Ride to Ironforge##6391 |goto 33.94,50.95
|only if Dwarf or Gnome
step
Follow the path |goto Ironforge 44.58,49.54 < 7 |walk
talk Senator Barin Redstone##1274
turnin The Reports##291 |goto Ironforge 39.55,57.49
step
Follow the path |goto 44.58,49.54 < 7 |c |q 983 |future
step
Run up the stairs |goto Ironforge 51.88,29.66 < 7 |only if walking
Enter the building |goto Ironforge 49.59,28.51 < 7 |walk
talk Golnir Bouldertoe##4256
|tip Downstairs inside the building.
turnin Ride to Ironforge##6391 |goto Ironforge 51.52,26.30
accept Gryth Thurden##6388 |goto Ironforge 51.52,26.30
|only if Dwarf or Gnome
step
Leave the building |goto 49.59,28.51 < 7 |walk
talk Gryth Thurden##1573
turnin Gryth Thurden##6388 |goto 55.51,47.74
accept Return to Brock##6392 |goto 55.51,47.74
|only if Dwarf or Gnome
step
Enter the building |goto Loch Modan 37.18,47.09 < 7 |walk
talk Brock Stoneseeker##1681
|tip Downstairs inside the building.
|tip He sometimes walks out near the entrance of the building.
turnin Return to Brock##6392 |goto Loch Modan 37.02,47.81
|only if Dwarf or Gnome
step
Leave the building |goto 37.18,47.09 < 7 |c |q 983 |future
|only if Dwarf or Gnome
step
Enter the building |goto Ironforge 27.28,12.31 < 10 |walk
talk Brandur Ironhammer##5149
|tip Inside the building.
accept Tome of Divinity##2997 |goto Ironforge 23.12,6.14
|only if Dwarf Paladin
step
talk Tiza Battleforge##6179
|tip Upstairs inside the building.
turnin Tome of Divinity##2997 |goto 27.64,12.19
accept The Tome of Divinity##1645 |goto 27.64,12.19
|only if Dwarf Paladin
step
talk Tiza Battleforge##6179
|tip Upstairs inside the building.
accept The Tome of Divinity##1646 |goto 27.64,12.19
|only if Dwarf Paladin
step
use the Tome of Divinity##6916
accept The Tome of Divinity##1646
|only if Dwarf Paladin
step
talk Tiza Battleforge##6179
|tip Upstairs inside the building.
turnin The Tome of Divinity##1646 |goto 27.64,12.19
accept The Tome of Divinity##1647 |goto 27.64,12.19
|only if Dwarf Paladin
step
talk John Turner##6175
|tip He walks around this area
turnin The Tome of Divinity##1647 |goto 21.55,50.80
accept The Tome of Divinity##1648 |goto 21.55,50.80
You can also find him around: |notinsticky
[22.93,61.36]
[32.40,78.58]
[43.09,84.17]
|only if Dwarf Paladin
step
Enter the building |goto 26.14,72.21 < 10 |walk
talk Auctioneer Redmuse##8720
|tip Inside the building.
collect 10 Linen Cloth##2589 |q 1648/1 |goto 24.25,74.57
|tip Buy them from the Auction House.
|only if Dwarf Paladin
step
talk John Turner##6175
|tip He walks around this area
turnin The Tome of Divinity##1648 |goto 21.55,50.80
accept The Tome of Divinity##1778 |goto 21.55,50.80
You can also find him around: |notinsticky
[22.93,61.36]
[32.40,78.58]
[43.09,84.17]
|only if Dwarf Paladin
step
Enter the building |goto Ironforge 27.28,12.31 < 10 |only if walking
talk Tiza Battleforge##6179
|tip Upstairs inside the building.
turnin The Tome of Divinity##1778 |goto 27.64,12.19
accept The Tome of Divinity##1779 |goto 27.64,12.19
|only if Dwarf Paladin
step
talk Muiredon Battleforge##6178
|tip Upstairs inside the building.
turnin The Tome of Divinity##1779 |goto 23.53,8.29
accept The Tome of Divinity##1783 |goto 23.53,8.29
|only if Dwarf Paladin
step
Follow the road |goto Dun Morogh 49.69,46.36 < 30 |only if walking
Follow the path |goto Dun Morogh 73.14,49.95 < 30 |only if walking
use the Symbol of Life##6866
|tip Use it on Narm Faulk's corpse.
Resseurect Narm Faulk |q 1783/1 |goto Dun Morogh 78.32,58.09
|only if Dwarf Paladin
step
talk Narm Faulk##6177
turnin The Tome of Divinity##1783 |goto 78.32,58.09
accept The Tome of Divinity##1784 |goto 78.32,58.09
|only if Dwarf Paladin
step
kill Dark Iron Spy##6123+
collect Dark Iron Script##6847 |q 1784/1 |goto 77.39,61.27
|only if Dwarf Paladin
step
Follow the road |goto 72.88,49.82 < 30 |only if walking
Follow the path up |goto 47.25,41.65 < 20 |only if walking
Enter Ironforge |goto 53.47,34.90 < 20 |walk
Enter the building |goto Ironforge 27.28,12.31 < 15 |only if walking
talk Muiredon Battleforge##6178
|tip Upstairs inside the building.
turnin The Tome of Divinity##1784 |goto Ironforge 23.53,8.29
accept The Tome of Divinity##1785 |goto Ironforge 23.53,8.29
|only if Dwarf Paladin
step
talk Tiza Battleforge##6179
|tip Upstairs inside the building.
turnin The Tome of Divinity##1785 |goto 27.64,12.19
|only if Dwarf Paladin
step
Follow the path |goto Ironforge 72.81,50.26 < 10 |walk
Enter the Deeprun Tram |goto Ironforge 77.02,51.26
|tip Walk through the swirling portal.
Click Here After Entering the Deeprun Tram |confirm |q 1338
|only if Dwarf Priest
step
_Inside Deeprun Tram:_
talk Monty##12997
|tip On the middle platform, near the wall.
|tip In the Ironforge section of the Deeprun Tram.
accept Deeprun Rat Roundup##6661
|only if Dwarf Priest
step
_Inside Deeprun Tram:_
use Rat Catcher's Flute##17117
|tip Use it on Deeprun Rats around this area.
|tip They look like small grey rats on the ground around this area.
|tip In the Ironforge section of the Deeprun Tram.
Capture #5# Rats |q 6661/1
|only if Dwarf Priest
step
_Inside Deeprun Tram:_
talk Monty##12997
|tip On the middle platform, near the wall.
|tip In the Ironforge section of the Deeprun Tram.
turnin Deeprun Rat Roundup##6661
|only if Dwarf Priest
step
Watch the dialogue
_Inside Deeprun Tram:_
talk Monty##12997
|tip On the middle platform, near the wall.
|tip In the Ironforge section of the Deeprun Tram.
accept Me Brother, Nipsy##6662
|only if Dwarf Priest
step
_Inside Deeprun Tram:_
Ride the Tram
|tip Ride the Deeprun Tram from Ironforge to Stormwind City.
Click Here After Riding the Tram |confirm |q 6662
|only if Dwarf Priest
step
_Inside Deeprun Tram:_
talk Nipsy##13018
|tip On the middle platform, near the wall.
|tip In the Stormwind City section of the Deeprun Tram.
turnin Me Brother, Nipsy##6662
|only if Dwarf Priest
step
_Inside Deeprun Tram:_
Enter Stormwind City |goto Stormwind City 62.94,9.36 < 2000 |noway |c |q 1338
|tip Walk through the swirling portal.
|only if Dwarf Priest
step
Enter the building |goto Stormwind City 43.04,34.51 < 7 |walk
talk High Priestess Laurena##376
|tip Inside the building.
turnin Desperate Prayer##5635 |goto Stormwind City 38.58,26.02
|only if Dwarf Priest
step
Leave the building |goto 43.04,34.51 < 7 |walk
Run up the ramp |goto 62.39,62.31 < 10 |only if walking
talk Dungar Longdrink##352
|tip Inside the building.
fpath Stormwind |goto 66.27,62.14
|only if Dwarf Priest
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides (1-12)\\Azuremyst Isle (1-12) [Draenei Starter]",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Azuremyst Isle",
condition_suggested=function() return raceclass('Draenei') and level <= 13 end,
condition_suggested_race=function() return raceclass('Draenei') end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Classic (12-58)\\Darkshore (12-17)",
startlevel=1,
endlevel=13
},[[
defaultfor Draenei
step
talk Megelon##16475
accept You Survived!##9279 |goto Azuremyst Isle/0 82.96,43.89
|only if Draenei
step
talk Proenitus##16477
turnin You Survived!##9279 |goto 80.42,45.89				|only if havequest(9279) or completedq(9279)
accept Replenishing the Healing Crystals##9280 |goto 80.42,45.89	|only if Draenei
accept Replenishing the Healing Crystals##9369 |goto 80.42,45.89	|only if not Draenei
step
kill Vale Moth##16520+
collect 8 Vial of Moth Blood##22889 |q 9280/1 |goto 79.28,42.33		|only if havequest(9280)
collect 8 Vial of Moth Blood##22899 |q 9369/1 |goto 79.28,42.33		|only if havequest(9369)
You can find more around [75.48,42.80]
step
Kill enemies around this area
Reach Level 2 |ding 2 |goto 79.28,42.33
You can find more around [75.48,42.80]
step
talk Proenitus##16477
turnin Replenishing the Healing Crystals##9280 |goto 80.42,45.89	|only if havequest(9280) or completedq(9280)
turnin Replenishing the Healing Crystals##9369 |goto 80.42,45.89	|only if havequest(9369) or completedq(9369)
accept Urgent Delivery!##9409 |goto 80.42,45.89
step
Enter the building |goto 80.36,46.53 < 7 |walk
talk Zalduun##16502
|tip He walks around this area.
|tip Inside the building.
turnin Urgent Delivery!##9409 |goto 79.96,48.66
accept Rescue the Survivors!##9283 |goto 79.96,48.66			|only if Draenei
step
talk Keilnei##16499
|tip Inside the building.
accept Hunter Training##9288 |goto 79.88,49.71 |instant
|only if Draenei Hunter
step
talk Aurelon##16501
|tip Inside the building.
accept Paladin Training##9287 |goto 79.69,48.24 |instant
|only if Draenei Paladin
step
talk Kore##16503
|tip Inside the building.
accept Warrior Training##8329 |goto 79.59,49.45 |instant
|only if Draenei Warrior
step
talk Firmanvaar##17089
|tip Inside the building.
accept Shaman Training##9421 |goto 79.28,49.12 |instant
|only if Draenei Shaman
step
talk Proenitus##16477
accept Botanist Taerix##9371 |goto 80.42,45.89
step
talk Botanist Taerix##16514
turnin Botanist Taerix##9371 |goto 79.14,46.54
accept Volatile Mutations##10302 |goto 79.14,46.54
stickystart "Kill_Volatile_Mutations"
step
Cast Gift of the Naaru |cast Gift of the Naaru##28880
|tip Cast it on a Draenei Survivor.
|tip They look like red glowing Draenei laying on the ground around this area.
Save a Draenei Survivor |q 9283/1 |goto 80.33,42.40
|only if havequest(9283)
step
label "Kill_Volatile_Mutations"
kill 8 Volatile Mutation##16516 |q 10302/1 |goto 77.95,43.26
You can find more around [75.32,41.88]
step
Kill enemies around this area
Reach Level 3 |ding 3 |goto 77.95,43.26
You can find more around [75.32,41.88]
step
talk Botanist Taerix##16514
turnin Volatile Mutations##10302 |goto 79.14,46.54
accept What Must Be Done...##9293 |goto 79.14,46.54
step
talk Apprentice Vishael##20233
accept Botanical Legwork##9799 |goto 79.07,46.63
stickystart "Collect_Corrupted_Flowers"
step
kill Mutated Root Lasher##16517+
collect 10 Lasher Sample##22934 |q 9293/1 |goto 73.24,50.00
step
label "Collect_Corrupted_Flowers"
click Corrupted Flower##182127+
|tip They look like red and yellow flowers on the ground around this area.
collect 3 Corrupted Flower##24416 |q 9799/1 |goto 73.24,50.00
step
Follow the path up |goto 77.02,45.89 < 20 |only if walking
talk Apprentice Vishael##20233
turnin Botanical Legwork##9799 |goto 79.07,46.63
step
talk Botanist Taerix##16514
turnin What Must Be Done...##9293 |goto 79.14,46.54
accept Healing the Lake##9294 |goto 79.14,46.54
step
Kill enemies around this area
Reach Level 4 |ding 4 |goto 79.28,42.33
You can find more around [75.48,42.80]
step
Enter the building |goto 80.38,46.49 < 7 |walk
talk Zalduun##16502
|tip He walks around this area inside the building.
turnin Rescue the Survivors!##9283 |goto 79.96,48.66
|only if Draenei Shaman
step
talk Firmanvaar##17089
|tip Inside the building.
accept Call of Earth##9449 |goto 79.28,49.12
|only if Draenei Shaman
step
Leave the building |goto 80.37,46.50 < 7 |walk
Follow the path up |goto 73.27,42.08 < 15 |only if walking
talk Spirit of the Vale##17087
turnin Call of Earth##9449 |goto 71.31,39.10
accept Call of Earth##9450 |goto 71.31,39.10
|only if Draenei Shaman
step
kill 4 Restless Spirit of Earth##17179 |q 9450/1 |goto 70.32,36.77
|only if Draenei Shaman
step
talk Spirit of the Vale##17087
turnin Call of Earth##9450 |goto 71.31,39.10
accept Call of Earth##9451 |goto 71.31,39.10
|only if Draenei Shaman
step
Follow the path |goto 73.48,42.20 < 20 |only if walking
Enter the building |goto 80.38,46.49 < 7 |walk
talk Firmanvaar##17089
|tip Inside the building.
turnin Call of Earth##9451 |goto 79.28,49.12
|only if Draenei Shaman
step
click Irradiated Power Crystal
Disperse the Neutralizing Agent |q 9294/1 |goto 77.26,58.76
step
Follow the path up |goto 78.99,52.83 < 20 |only if walking
Follow the path |goto 78.03,49.41 < 20 |only if walking
talk Botanist Taerix##16514
turnin Healing the Lake##9294 |goto 79.14,46.54
accept Vindicator Aldar##10304 |goto 79.14,46.54
step
Enter the building |goto 80.36,46.53 < 7 |c |q 9305 |future
step
talk Zalduun##16502
|tip He walks around this area.
|tip Inside the building.
turnin Rescue the Survivors!##9283 |goto 79.96,48.66
|only if havequest(9283) or completedq(9283)
step
talk Technician Zhanaa##17071
|tip Outside the building.
accept Spare Parts##9305 |goto 79.42,51.23
step
talk Vindicator Aldar##16535
turnin Vindicator Aldar##10304 |goto 79.49,51.62
accept Inoculation##9303 |goto 79.49,51.62
stickystart "Inoculate_Nestlewood_Owlkins"
step
Follow the path up |goto 81.10,59.01 < 7 |only if walking
Enter the tunnel |goto 82.98,61.67 < 10 |only if walking
click Emitter Spare Part##181283+
|tip They look like pink crystals with golden parts spinning around them on the ground around this area.
collect 4 Emitter Spare Part##22978 |q 9305/1 |goto 85.27,66.49
You can find more up the path around [87.17,63.93]
step
label "Inoculate_Nestlewood_Owlkins"
use the Inoculating Crystal##22962
|tip Use it on Nestlewood Owlkins.
|tip They look like yellow owlkins around this area.
Inoculate #6# Nestlewood Owlkins |q 9303/1 |goto 85.27,66.49
You can find more up the path around [87.17,63.93]
step
Enter the tunnel |goto 84.06,64.61 < 10 |only if walking
Follow the path up |goto 78.99,52.83 < 20 |c |q 9294
|only if not Draenei
step
talk Technician Zhanaa##17071
turnin Spare Parts##9305 |goto 79.42,51.23
step
talk Vindicator Aldar##16535
turnin Inoculation##9303 |goto 79.49,51.62
accept The Missing Scout##9309 |goto 79.49,51.62
step
Kill enemies around this area
Reach Level 5 |ding 5 |goto 73.41,52.43
step
talk Tolaan##16546
turnin The Missing Scout##9309 |goto 72.00,60.85
accept The Blood Elves##10303 |goto 72.00,60.85
step
Follow the path up |goto 69.52,62.60 < 10 |only if walking
kill 10 Blood Elf Scout##16521 |q 10303/1 |goto 68.82,63.91
step
talk Tolaan##16546
turnin The Blood Elves##10303 |goto 72.00,60.85
accept Blood Elf Spy##9311 |goto 72.00,60.85
step
Follow the path up |goto 69.52,62.60 < 10 |only if walking
Continue up the path |goto 68.71,64.38 < 7 |only if walking
kill Surveyor Candress##16522 |q 9311/1 |goto 69.27,65.78
collect Blood Elf Plans##24414 |goto 69.27,65.78 |q 9798 |future
step
use the Blood Elf Plans##24414
accept Blood Elf Plans##9798 |goto 69.27,65.78
step
Follow the path up |goto 77.03,50.89 < 20 |only if walking
talk Vindicator Aldar##16535
turnin Blood Elf Spy##9311 |goto 79.49,51.62
turnin Blood Elf Plans##9798 |goto 79.49,51.62
accept The Emitter##9312 |goto 79.49,51.62
step
talk Technician Zhanaa##17071
turnin The Emitter##9312 |goto 79.42,51.23
accept Travel to Azure Watch##9313 |goto 79.42,51.23
step
Kill enemies around this area
Reach Level 6 |ding 6 |goto 73.41,52.43
step
Follow the path |goto 67.73,53.77 < 30 |only if walking
talk Aeun##16554
accept Word from Azure Watch##9314 |goto 64.49,54.04
step
talk Diktynna##17101
accept Red Snapper - Very Tasty!##9452 |goto 61.05,54.25
step
use the Draenei Fishing Net##23654
|tip Use it next to Schools of Red Snapper
|tip They look like groups of small red fish in the water around this area.
kill Angry Murloc##17102+
|tip Sometimes an Angry Murloc will appear after you use the Draenei Fishing Net.
collect 10 Red Snapper##23614 |q 9452/1 |goto 61.52,57.29
You can find more around: |notinsticky
[62.03,52.09]
[61.25,45.30]
step
talk Diktynna##17101
turnin Red Snapper - Very Tasty!##9452 |goto 61.05,54.25
accept Find Acteon!##9453 |goto 61.05,54.25
step
talk Acteon##17110
turnin Find Acteon!##9453 |goto 49.78,51.94
accept The Great Moongraze Hunt##9454 |goto 49.78,51.94
step
talk Anchorite Fateema##17214
accept Medicinal Purpose##9463 |goto 48.39,51.77
|only if Draenei
step
talk Technician Dyvuun##16551
|tip He walks around this area.
turnin Travel to Azure Watch##9313 |goto 48.66,50.23
step
Enter the building |goto 48.77,49.91 < 7 |walk
talk Caregiver Chellan##16553
|tip Inside the building.
turnin Word from Azure Watch##9314 |goto 48.34,49.15
step
talk Caregiver Chellan##16553
|tip Inside the building.
home Azure Watch |goto 48.34,49.15 |q 9506 |future
step
talk Guvan##17482
|tip Inside the building.
accept Help Tavara##9586 |goto 48.60,49.29
|only if Draenei Priest
step
cast Lesser Heal##2050
|tip Cast it on Tavara.
Heal Tavara |q 9586/1 |goto 56.22,48.88
|only if Draenei Priest
step
Enter the building |goto 48.77,49.92 < 7 |walk
talk Guvan##17482
|tip Inside the building.
turnin Help Tavara##9586 |goto 48.60,49.29
|only if Draenei Priest
stickystart "Collect_Root_Trapper_Vines"
step
kill Moongraze Stag##17200+
collect 6 Moongraze Stag Tenderloin##23676 |q 9454/1 |goto 51.53,58.11
|tip Make sure to not accidentally sell these to a vendor.
You can find more around [53.32,64.44]
step
label "Collect_Root_Trapper_Vines"
kill Root Trapper##17196+
collect 8 Root Trapper Vine##23685 |q 9463/1 |goto 51.53,58.11
You can find more around [53.32,64.44]
|only if havequest(9463) or completedq(9463)
step
Kill enemies around this area
Reach Level 7 |ding 7 |goto 51.53,58.11
You can find more around [53.32,64.44]
step
talk Admiral Odesyus##17240
accept A Small Start##9506 |goto 47.04,70.21
step
talk "Cookie" McWeaksauce##17246
|tip He walks around this area.
accept Cookie's Jumbo Gumbo##9512 |goto 46.69,70.62
step
kill Skittering Crawler##17216+
collect 6 Skittering Crawler Meat##23757 |q 9512/1 |goto 46.05,74.26
You can find more around [50.19,71.54]
step
talk "Cookie" McWeaksauce##17246
|tip He walks around this area.
turnin Cookie's Jumbo Gumbo##9512 |goto 46.69,70.62
step
talk Priestess Kyleen Il'dinare##17241
accept Reclaiming the Ruins##9513 |goto 47.13,70.28
step
talk Archaeologist Adamant Ironheart##17242
accept Precious and Fragile Things Need Special Handling##9523 |goto 47.24,69.99
step
click Nautical Map##181674
collect Nautical Map##23739 |q 9506/2 |goto 58.57,66.37
step
click Nautical Compass##181675
collect Nautical Compass##23738 |q 9506/1 |goto 59.57,67.64
step
talk Admiral Odesyus##17240
turnin A Small Start##9506 |goto 47.03,70.21
accept I've Got a Plant##9530 |goto 47.03,70.21
stickystart "Collect_Piles_Of_Leaves"
step
click Hollowed Out Tree##181696
|tip They look like tree stumps with a ring of frayed bark around the top of them on the ground around this area.
collect Hollowed Out Tree##23790 |q 9530/1 |goto 48.01,63.25
step
label "Collect_Piles_Of_Leaves"
click Piles of Leaves##6884+
|tip They look like piles of purple leaves on the ground around this area.
collect 5 Pile of Leaves##23791 |q 9530/2 |goto 48.33,64.77
You can find more around [44.53,68.72]
step
talk Admiral Odesyus##17240
turnin I've Got a Plant##9530 |goto 47.03,70.21
accept Tree's Company##9531 |goto 47.03,70.21
stickystart "Kill_Wrathscale_Myrmidons"
stickystart "Kill_Wrathscale_Nagas"
stickystart "Kill_Wrathscale_Sirens"
stickystart "Accept_Rune_Covered_Tablet"
step
Follow the path up |goto 40.92,72.59 < 30 |only if walking
click Ancient Relic##181685+
|tip They look like glowing white orbs in small stands on the ground around this area.
collect 8 Ancient Relic##23779 |q 9523/1 |goto 39.61,75.30
You can find more around: |notinsticky
[34.68,78.23]
[29.28,78.60]
step
label "Kill_Wrathscale_Myrmidons"
kill 5 Wrathscale Myrmidon##17194 |q 9513/1 |goto 34.68,78.23
You can find more around [29.28,78.60]
step
label "Kill_Wrathscale_Nagas"
kill 5 Wrathscale Naga##17193 |q 9513/2 |goto 34.68,78.23
You can find more around [29.28,78.60]
step
label "Kill_Wrathscale_Sirens"
kill 5 Wrathscale Siren##17195 |q 9513/3 |goto 34.68,78.23
You can find more around [29.28,78.60]
step
label "Accept_Rune_Covered_Tablet"
Kill Wratchscale enemies around this area |notinsticky
collect Rune Covered Tablet##23759 |n
use the Rune Covered Tablet##23759
accept Rune Covered Tablet##9514 |goto 34.68,78.23
You can find more around [29.28,78.60]
step
Kill enemies around this area
Reach Level 8 |ding 8 |goto 34.68,78.23
You can find more around [29.28,78.60]
step
Follow the path |goto 19.62,84.46 < 30 |only if walking |notravel
use the Tree Disguise Kit##23792
Watch the dialogue
Uncover the Traitor |q 9531/1 |goto 18.49,84.35
step
talk Anchorite Fateema##17214
turnin Medicinal Purpose##9463 |goto 48.39,51.77
|only if havequest(9463) or completedq(9463)
step
talk Daedal##17215
accept An Alternative Alternative##9473 |goto 48.39,51.48
|only if Draenei
step
talk Acteon##17110
turnin The Great Moongraze Hunt##9454 |goto 49.78,51.94
accept The Great Moongraze Hunt##10324 |goto 49.78,51.94
stickystart "Accept_Strange_Findings"
step
kill Moongraze Buck##17201+
collect 6 Moongraze Buck Hide##23677 |q 10324/1 |goto 50.82,43.17
You can find more around [48.18,37.73]
step
label "Accept_Strange_Findings"
kill Infected Nightstalker Runt##17202+
collect Faintly Glowing Crystal##23678 |n
use the Faintly Glowing Crystal##23678
accept Strange Findings##9455 |goto 50.82,43.17
You can find more around [48.18,37.73]
step
click Azure Snapdragon##181644+
|tip They look like blue flowers near trees on the ground around this area.
collect 5 Azure Snapdragon Bulb##23692 |q 9473/1 |goto 49.80,36.32
You can find more around: |notinsticky
[53.03,33.87]
[56.13,38.02]
|only if havequest(9473) or completedq(9473)
step
Follow the road |goto 47.01,39.79 < 50 |c |q 9473
|only if havequest(9473) or completedq(9473)
step
talk Acteon##17110
turnin The Great Moongraze Hunt##10324 |goto 49.78,51.94
step
talk Dulvi##17488
accept The Missing Fisherman##10428 |goto 48.96,51.06
step
talk Daedal##17215
turnin An Alternative Alternative##9473 |goto 48.39,51.48
|only if havequest(9473) or completedq(9473)
step
talk Exarch Menelaous##17116
turnin Strange Findings##9455 |goto 47.11,50.60
accept Nightstalker Clean Up, Isle 2...##9456 |goto 47.11,50.60
step
kill 8 Infected Nightstalker Runt##17202 |q 9456/1 |goto 43.16,45.02
You can find more around [45.07,38.35]
step
Kill enemies around this area
Reach Level 9 |ding 9 |goto 43.16,45.02
You can find more around [45.07,38.35]
step
Follow the road |goto 47.54,43.00 < 30 |only if walking
Follow the path |goto 48.33,48.51 < 20 |only if walking
talk Exarch Menelaous##17116
turnin Nightstalker Clean Up, Isle 2...##9456 |goto 47.11,50.60
step
talk Admiral Odesyus##17240
turnin Tree's Company##9531 |goto 47.04,70.21
accept Show Gnomercy##9537 |goto 47.04,70.21
step
talk Priestess Kyleen Il'dinare##17241
turnin Reclaiming the Ruins##9513 |goto 47.13,70.28
turnin Rune Covered Tablet##9514 |goto 47.13,70.28
accept Warlord Sriss'tiz##9515 |goto 47.13,70.28
step
talk Archaeologist Adamant Ironheart##17242
turnin Precious and Fragile Things Need Special Handling##9523 |goto 47.24,69.99
step
talk Engineer "Spark" Overgrind##17243
|tip He looks like a gnome that walks on the beach around this area.
Tell him _"It's over, Spark. The admiral knows it was you who betrayed the Alliance. Now you're either going to cooperate with me and tell me everything that you know or we're going to engage in some fisticuff."_
kill Engineer "Spark" Overgrind##17243
collect Traitor's Communication##23899 |q 9537/1 |goto 49.76,70.65
step
talk Admiral Odesyus##17240
turnin Show Gnomercy##9537 |goto 47.04,70.21
accept Deliver Them From Evil...##9602 |goto 47.04,70.21
step
Follow the road |goto 47.68,60.85 < 50 |only if walking
Follow the path |goto 48.99,52.53 < 30 |only if walking
talk Exarch Menelaous##17116
turnin Deliver Them From Evil...##9602 |goto 47.11,50.60
step
talk Cryptographer Aurren##17232
accept Learning the Language##9538 |goto 49.38,50.96
step
use the Stillpine Furbolg Language Primer##23818
Read the Stillpine Furbolg Language Primer |q 9538/1 |goto 49.38,50.96
step
clicknpc Totem of Akida##17360
turnin Learning the Language##9538 |goto 49.44,50.98
accept Totem of Coo##9539 |goto 49.44,50.98
step
Watch the dialogue
|tip Follow Stillpine Ancestor Akida as he walks.
clicknpc Totem of Coo##17361
turnin Totem of Coo##9539 |goto 55.23,41.64
accept Totem of Tikti##9540 |goto 55.23,41.64
step
Watch the dialogue
|tip Follow Stillpine Ancestor Coo as he walks.
Gain the Ghost Walk Buff |havebuff spell:30424 |goto 55.55,41.65 |q 9540
step
Watch the dialogue
|tip Jump off the cliff in the direction the arrow is pointing.
|tip You will float down safely to the ground.
clicknpc Totem of Tikti##17362
turnin Totem of Tikti##9540 |goto 64.48,39.77
accept Totem of Yor##9541 |goto 64.48,39.77
step
Watch the dialogue
|tip Follow Stillpine Ancestor Tikti as he walks.
Gain the Embrace of the Serpent Buff |havebuff spell:30430 |goto 63.78,40.23 |q 9541
step
Swim in the water |goto 61.86,43.19 < 50 |only if walking
Continue swimming in the water |goto 61.38,58.60 < 40 |only if walking
clicknpc Totem of Yor##17363
|tip Underwater.
turnin Totem of Yor##9541 |goto 63.11,67.88
accept Totem of Vark##9542 |goto 63.11,67.88
step
Watch the dialogue
|tip Follow Stillpine Ancestor Yor as he walks.
Gain the Shadow of the Forest Buff |havebuff spell:30448 |goto 61.04,69.46 |q 9542
step
Watch the dialogue
|tip Follow Stillpine Ancestor Yor as he walks.
|tip He eventually runs to this location.
clicknpc Totem of Vark##17364
turnin Totem of Vark##9542 |goto 28.10,62.39
accept The Prophecy of Akida##9544 |goto 28.10,62.39
step
Kill Bristlelimb enemies around this area
collect Bristlelimb Key##23801+ |n
click Bristlelimb Cage##1787+
|tip They look like yellow wooden cages on the ground around this area.
Free #8# Stillpine Captives |q 9544/1 |goto 27.39,63.15
You can find more around: |notinsticky
[28.03,66.62]
[25.12,67.50]
step
Kill enemies around this area
Reach Level 10 |ding 10 |goto 27.39,63.15
You can find more around: |notinsticky
[28.03,66.62]
[25.12,67.50]
step
Enter the cave |goto 26.91,76.44 < 15 |c |q 9515
step
Follow the path down |goto 25.38,72.87 < 10 |walk
Continue down the path |goto 26.55,71.50 < 10 |walk
Follow the path |goto 27.20,74.07 < 10 |c |q 9515
step
kill Warlord Sriss'tiz##17298 |q 9515/1 |goto 24.50,74.52
|tip He walks around this area.
|tip Downstairs inside the cave.
step
Follow the path up |goto 27.47,73.64 < 10 |walk
Continue up the path |goto 25.75,71.40 < 10 |c |q 9515
step
Leave the cave |goto 26.99,76.57 < 15 |walk
Follow the path |goto 18.60,90.36 < 30 |only if walking |notravel
Follow the path |goto 15.71,93.04 < 15 |only if walking |notravel
talk Cowlen##17311
turnin The Missing Fisherman##10428 |goto 16.59,94.45
accept All That Remains##9527 |goto 16.59,94.45
step
Kill Owlbeast enemies around this area
collect Remains of Cowlen's Family##23789 |q 9527/1 |goto 15.16,86.80
step
talk Cowlen##17311
turnin All That Remains##9527 |goto 16.59,94.45
step
talk Arugoo the Stillpine##17114
turnin The Prophecy of Akida##9544 |goto 49.37,51.09
accept Stillpine Hold##9559 |goto 49.37,51.09
step
talk Acteon##17110
accept Seek Huntress Kella Nightbow##9757 |goto Azuremyst Isle/0 49.78,51.94
|only if Draenei Hunter
step
Follow the road |goto 37.25,47.08 < 30 |only if walking
talk Huntress Kella Nightbow##17614
turnin Seek Huntress Kella Nightbow##9757 |goto 24.18,54.35
accept Taming the Beast##9591 |goto 24.18,54.35
|only if Draenei Hunter
step
use the Taming Totem##23896
|tip Use it on a Barbed Crawler.
|tip They look like crabs underwater around this area.
Tame a Barbed Crawler |q 9591/1 |goto The Veiled Sea/0 20.32,65.09 |notravel
|only if Draenei Hunter
step
talk Huntress Kella Nightbow##17614
turnin Taming the Beast##9591 |goto Azuremyst Isle/0 24.18,54.35 |notravel
accept Taming the Beast##9592 |goto Azuremyst Isle/0 24.18,54.35 |notravel
|only if Draenei Hunter
step
Follow the road |goto 30.92,48.80 < 30 |only if walking
Follow the path |goto The Exodar/0 77.35,65.92 < 30 |only if walking
use the Taming Totem##23897
|tip Use it on a Greater Timberstrider.
|tip They look like large birds on the ground around this area.
Tame a Greater Timberstrider |q 9592/1 |goto Azuremyst Isle/0 35.06,35.16
|only if Draenei Hunter
step
Follow the path |goto The Exodar/0 77.35,65.92 < 30 |only if walking
talk Huntress Kella Nightbow##17614
turnin Taming the Beast##9592 |goto Azuremyst Isle/0 24.18,54.35
accept Taming the Beast##9593 |goto Azuremyst Isle/0 24.18,54.35
|only if Draenei Hunter
step
Follow the path |goto The Exodar/0 77.35,65.92 < 30 |only if walking
use the Taming Totem##23898
|tip Use it on a Nightstalker.
|tip They look like dark grey tigers on the ground around this area.
Tame a Nightstalker |q 9593/1 |goto Azuremyst Isle/0 35.06,35.16
|only if Draenei Hunter
step
Follow the path |goto The Exodar/0 77.35,65.92 < 30 |only if walking
talk Huntress Kella Nightbow##17614
turnin Taming the Beast##9593 |goto Azuremyst Isle/0 24.18,54.35
accept Beast Training##9675 |goto Azuremyst Isle/0 24.18,54.35
|only if Draenei Hunter
step
Enter the building |goto The Exodar/0 41.92,72.84 < 10 |walk
talk Ganaar##16712
|tip Inside the building.
turnin Beast Training##9675 |goto The Exodar/0 44.23,86.59
|only if Draenei Hunter
step
Run up the ramp |goto 53.22,33.49 < 20 |walk
Follow the path up |goto 64.28,35.65 < 10 |walk
Leave the building |goto 74.35,53.92 < 15 |c |q 9559
|only if Draenei Hunter
step
talk Ruada##17480
accept Strength of One##9582 |goto Azuremyst Isle/0 50.02,50.52
|only if Draenei Warrior
step
Follow the road |goto Azuremyst Isle/0 36.92,47.01 < 20 |only if walking
Enter the building |goto The Exodar/0 33.14,44.01 < 15 |walk
talk Sulaa##17219
|tip Inside the building.
accept Call of Fire##9462 |goto The Exodar/0 32.25,23.87
|only if Draenei Shaman
step
Run up the ramp |goto 53.22,33.49 < 20 |walk
Follow the path up |goto 64.28,35.65 < 10 |walk
Leave the building |goto 74.35,53.92 < 15 |walk
Follow the road |goto 85.07,63.93 < 15 |only if walking
Follow the path up |goto Azuremyst Isle/0 48.49,54.50 < 20 |only if walking
talk Tuluun##17212
turnin Call of Fire##9462 |goto Azuremyst Isle/0 48.05,50.42
accept Call of Fire##9464 |goto Azuremyst Isle/0 48.05,50.42
|only if Draenei Shaman
step
talk Semid##17481
accept Control##9595 |goto Azuremyst Isle/0 49.87,49.95
|only if Draenei Mage
step
talk Priestess Kyleen Il'dinare##17241
turnin Warlord Sriss'tiz##9515 |goto Azuremyst Isle/0 47.13,70.28
step
talk Moordo##17442
accept Beasts of the Apocalypse!##9560 |goto 44.76,23.91
step
talk Gurf##17441
accept Murlocs... Why Here? Why Now?##9562 |goto 44.62,23.48
step
talk High Chief Stillpine##17440
turnin Stillpine Hold##9559 |goto 46.69,20.61
stickystart "Accept_Bandits"
step
kill Ravager Specimen##17199+
collect 8 Ravager Hide##23845 |q 9560/1 |goto 54.12,20.09
step
click Ravager Cage
kill Death Ravager##17556 |q 9582/1 |goto Azuremyst Isle/0 54.05,9.84
|only if Draenei Warrior
step
talk Temper##17205
turnin Call of Fire##9464 |goto 59.55,18.12
accept Call of Fire##9465 |goto 59.55,18.12
|only if Draenei Shaman
step
label "Accept_Bandits"
kill Blood Elf Bandit##17591+
|tip They are stealthed, and rare, around this area.
|tip If you don't find one before you finish the Ravager Hide quest, you can skip it.
collect Blood Elf Communication##23910 |n
use the Blood Elf Communication##23910
accept Bandits!##9616 |goto 53.53,19.41
step
Kill enemies around this area
Reach Level 11 |ding 11 |goto 54.12,20.09
step
talk Moordo##17442
turnin Beasts of the Apocalypse!##9560 |goto 44.76,23.91
stickystart "Accept_Gurfs_Dignity"
stickystart "Kill_Queldorei_Magewraith"
step
Kill Siltfin enemies around this area
click Stillpine Grain##181757+
|tip They look like brown bags with yellow contents in them on the ground near murloc huts around this area.
collect 5 Stillpine Grain##23849 |q 9562/1 |goto 33.86,25.88
You can find more around [34.71,12.51]
step
label "Accept_Gurfs_Dignity"
kill Murgurgala##17475
|tip He looks like a larger purple murloc that walks up and down the beach around this area.
collect Gurf's Dignity##23850 |n
use Gurf's Dignity##23850
accept Gurf's Dignity##9564 |goto 33.86,25.88
Also check around [34.71,12.51]
step
label "Kill_Queldorei_Magewraith"
Kill Siltfin enemies around this area
|tip Eventually, a Quel'dorei Magewraith will appear and attack you.
kill Quel'dorei Magewraith##17612 |q 9595/1 |goto 33.86,25.88
You can find more around [34.71,12.51]
|only if Draenei Mage
step
talk Gurf##17441
turnin Gurf's Dignity##9564 |goto 44.62,23.48
turnin Murlocs... Why Here? Why Now?##9562 |goto 44.62,23.48
step
talk High Chief Stillpine##17440
accept Search Stillpine Hold##9565 |goto 46.69,20.61
step
talk Stillpine the Younger##17445
accept Chieftain Oomooroo##9573 |goto 46.90,21.16
stickystart "Collect_Ritual_Torch"
stickystart "Kill_Crazed_Wildkins"
step
Enter the cave |goto 45.34,19.50 < 15 |walk
Follow the path up |goto 47.06,16.34 < 7 |walk
Cross the bridge |goto 48.15,14.51 < 7 |walk
kill Chieftain Oomooroo##17448 |q 9573/1 |goto 47.40,14.12
|tip Upstairs inside the cave.
step
Jump down and follow the path |goto 47.87,14.44 < 7 |walk
click Blood Crystal##181748
|tip Inside the cave.
|tip You will be attacked by 2 owlkins.
turnin Search Stillpine Hold##9565 |goto 50.58,11.56
accept Blood Crystals##9566 |goto 50.58,11.56
step
Follow the path |goto 48.50,13.47 < 10 |c |q 9573
step
label "Collect_Ritual_Torch"
kill Crazed Wildkin##17189+
|tip Inside the cave. |notinsticky
collect Ritual Torch##23733 |q 9465/1 |goto 46.69,16.29
|only if Draenei Shaman
step
label "Kill_Crazed_Wildkins"
kill 9 Crazed Wildkin##17189 |q 9573/2 |goto 46.69,16.29
|tip Inside the cave. |notinsticky
step
Follow the path |goto 45.68,17.15 < 10 |walk
Leave the cave |goto 45.36,19.26 < 15 |walk
talk High Chief Stillpine##17440
turnin Blood Crystals##9566 |goto 46.69,20.61
step
talk Stillpine the Younger##17445
turnin Chieftain Oomooroo##9573 |goto 46.90,21.16
step
talk Kurz the Revelator##17443
accept The Kurken is Lurkin'##9570 |goto 46.97,22.27
step
Enter the cave |goto 45.34,19.50 < 15 |walk
Follow the path |goto 46.75,15.44 < 7 |walk
kill The Kurken##17447
|tip It walks around this area.
|tip Inside the cave.
collect The Kurken's Hide##23860 |q 9570/1 |goto 49.76,12.95
step
Kill enemies around this area
|tip Inside the cave.
Reach Level 12 |ding 12 |goto 46.69,16.29
step
Follow the path |goto 45.68,17.15 < 10 |walk
Leave the cave |goto 45.36,19.26 < 15 |walk
talk Kurz the Revelator##17443
turnin The Kurken is Lurkin'##9570 |goto 46.97,22.27
accept The Kurken's Hide##9571 |goto 46.97,22.27
step
talk High Chief Stillpine##17440
accept Warn Your People##9622 |goto 46.69,20.61
step
talk Moordo##17442
turnin The Kurken's Hide##9571 |goto 44.76,23.91
step
talk Temper##17205
turnin Call of Fire##9465 |goto 59.55,18.12
accept Call of Fire##9467 |goto 59.55,18.12
|only if Draenei Shaman
step
use the Fireproof Satchel##24336
collect Ritual Torch##23682 |q 9467
collect Orb of Returning##24335 |q 9467
|only if Draenei Shaman
step
talk Tullas##17483
|tip Inside the building.
accept Jol##10366 |goto Azuremyst Isle/0 48.36,49.56
|only if Draenei Paladin
step
talk Ruada##17480
turnin Strength of One##9582 |goto Azuremyst Isle/0 50.02,50.52
accept Behomat##10350 |goto Azuremyst Isle/0 50.02,50.52
|only if Draenei Warrior
step
talk Exarch Menelaous##17116
turnin Bandits!##9616 |goto 47.11,50.60	|only if havequest(9616) or completedq(9616)
turnin Warn Your People##9622 |goto 47.11,50.60
accept Coming of Age##9623 |goto 47.11,50.60
step
talk Torallius the Pack Handler##17584
turnin Coming of Age##9623 |goto The Exodar/0 81.50,51.46
step
Enter the building |goto The Exodar/0 33.05,43.96 < 15 |walk
talk Jol##17509
|tip Inside the building.
turnin Jol##10366 |goto The Exodar/0 23.87,51.49
accept Redemption##9598 |goto The Exodar/0 23.87,51.49
|only if Draenei Paladin
step
talk Jol##17509
|tip Inside the building.
turnin Redemption##9598 |goto 23.87,51.49
accept Redemption##9600 |goto 23.87,51.49
|only if Draenei Paladin
step
Run up the ramp |goto 53.22,33.49 < 20 |walk
Follow the path up |goto 64.28,35.65 < 10 |walk
Leave the building |goto 74.35,53.92 < 15 |walk
Follow the road |goto 35.65,42.72 < 50 |only if walking
Continue following the road |goto Azuremyst Isle/0 37.66,18.67 < 50 |only if walking
Cross the bridge |goto Azuremyst Isle/0 42.43,5.28 < 15 |only if walking
use the Symbol of Life##6866
|tip Use it on the Young Furbolg Shaman.
Resurrect the Young Furbolg Shaman |q 9598/1 |goto Bloodmyst Isle/0 65.29,77.54
|only if Draenei Paladin
step
Cross the bridge |goto 65.39,93.01 < 15 |only if walking
Follow the road |goto Azuremyst Isle/0 37.41,19.12 < 50 |only if walking
Follow the path |goto The Exodar/0 35.51,42.69 < 40 |only if walking
Enter the building |goto The Exodar/0 33.05,43.96 < 15 |walk
talk Jol##17509
|tip Inside the building.
turnin Redemption##9600 |goto The Exodar/0 23.87,51.49
|only if Draenei Paladin
step
Run up the ramp |goto 53.22,33.49 < 20 |walk
Follow the path up |goto 64.28,35.65 < 10 |walk
Leave the building |goto 74.35,53.92 < 15 |c |q 963 |future
|only if Draenei Paladin
step
Enter the building |goto The Exodar/0 33.05,43.96 < 15 |walk
talk Behomat##17120
|tip Inside the building.
turnin Behomat##10350 |goto The Exodar/0 55.59,82.27
|only if Draenei Warrior
step
Run up the ramp |goto 53.22,33.49 < 20 |walk
Follow the path up |goto 64.28,35.65 < 10 |walk
Leave the building |goto 74.35,53.92 < 15 |c |q 963 |future
|only if Draenei Warrior
step
Follow the path up |goto Azuremyst Isle/0 14.48,77.16 < 30 |only if walking
click Wickerman Effigy
kill Hauteur##17206
collect Hauteur's Ashes##23688 |q 9467/1 |goto Azuremyst Isle/0 11.42,82.29
|only if Draenei Shaman
step
use the Orb of Returning##24335
Return to Temper |goto 59.17,18.16 < 30 |noway |c |q 9467
|only if Draenei Shaman
step
talk Temper##17205
turnin Call of Fire##9467 |goto 59.55,18.12
accept Call of Fire##9468 |goto 59.55,18.12
|only if Draenei Shaman
step
Follow the road |goto 51.03,25.41 < 50 |only if walking
Follow the path |goto 48.34,48.41 < 20 |only if walking
talk Tuluun##17212
turnin Call of Fire##9468 |goto 48.05,50.42
accept Call of Fire##9461 |goto 48.05,50.42
|only if Draenei Shaman
step
Follow the path |goto 36.90,46.99 < 20 |only if walking
Enter the building |goto The Exodar/0 33.15,44.04 < 15 |walk
talk Prophet Velen##17468
|tip Inside the building.
turnin Call of Fire##9461 |goto The Exodar/0 22.45,44.20
accept Call of Fire##9555 |goto The Exodar/0 22.45,44.20
|only if Draenei Shaman
step
talk Farseer Nobundo##17204
|tip Inside the building.
turnin Call of Fire##9555 |goto 31.28,27.65
|only if Draenei Shaman
step
Run up the ramp |goto 53.22,33.49 < 20 |walk
Follow the path up |goto 64.28,35.65 < 10 |walk
Leave the building |goto 74.35,53.92 < 15 |c |q 963 |future
|only if Draenei Shaman
step
Enter the building |goto The Exodar/0 33.05,43.96 < 15 |walk
talk Bati##17514
|tip Inside the building.
turnin Control##9595 |goto The Exodar/0 46.35,63.48
|only if Draenei Mage
step
Run up the ramp |goto 53.22,33.49 < 20 |walk
Follow the path up |goto 64.28,35.65 < 10 |walk
Leave the building |goto 74.35,53.92 < 15 |c |q 963 |future
|only if Draenei Mage
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Darkshore (12-17)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Darkshore",
condition_suggested=function() return level >= 12 and level <= 17 and not completedq(1138) end,
next="Leveling Guides\\Classic (12-58)\\Loch Modan (17-18)",
},[[
step
Follow the path |goto Dun Morogh 43.74,44.12 < 30 |only if walking
Continue following the path |goto Dun Morogh 38.97,38.75 < 30 |only if walking
Follow the path up |goto Dun Morogh 30.71,34.33 < 10 |only if walking
Continue up the path |goto Dun Morogh 31.06,32.56 < 7 |only if walking
Continue up the path |goto Dun Morogh 31.43,32.34 < 7 |only if walking
Continue up the path |goto Dun Morogh 31.14,30.50 < 7 |only if walking
Follow the path down |goto Dun Morogh 32.33,28.63 < 15 |only if walking
Follow the path |goto Dun Morogh 32.74,27.11 < 20 |only if walking
Jump to Your Death |havebuff 132331 |goto Eastern Kingdoms 44.92,51.98 |q 963 |future |notravel
|tip While you are in the Wetlands, keep running north and jump off the cliff.
|tip This is a much easier and faster way to reach Menethil Harbor.
|only if Human
step
talk Spirit Healer##6491
Tell her _"Return me to life."_
Resurrect at the Spirit Healer Near Menethil Harbor |nobuff 132331 |goto Wetlands 11.72,43.30 |q 963 |future |zombiewalk
|only if Human
step
Cross the bridge |goto Wetlands 12.38,50.30 < 20 |only if walking
Follow the path |goto Wetlands 10.86,55.08 < 15 |only if walking
talk Shellei Brondir##1571
fpath Menethil Harbor |goto Wetlands 9.49,59.69
|only if Human
step
talk Cerellean Whiteclaw##3644
|tip On the dock.
accept For Love Eternal##963 |goto Darkshore 35.74,43.71
step
talk Wizbang Cranktoggle##3666
|tip Upstairs inside the building.
accept Buzzbox 827##983 |goto 36.98,44.14
step
talk Innkeeper Shaussiy##6737
|tip Inside the building.
home Auberdine |goto 37.04,44.12
step
talk Gwennyth Bly'Leggonde##10219
accept Washed Ashore##3524 |goto 36.62,45.59
step
talk Caylais Moonfeather##3841
fpath Auberdine |goto 36.34,45.58
step
talk Barithras Moonshade##3583
accept Cave Mushrooms##947 |goto 37.32,43.64
step
talk Sentinel Glynda Nal'Shea##2930
|tip She walks around this area.
accept The Red Crystal##4811 |goto 37.70,43.39
step
Enter the building |goto 37.77,41.36 < 10 |walk
talk Thundris Windweaver##3649
|tip Inside the building.
accept Bashal'Aran##954 |goto 37.39,40.13
accept Tools of the Highborne##958 |goto 37.39,40.13
step
talk Tharnariun Treetender##3701
accept Plagued Lands##2118 |goto 38.84,43.42
step
talk Terenthis##3693
|tip Inside the building.
accept How Big a Threat?##984 |goto 39.37,43.48
step
kill Pygmy Tide Crawler##2231+
collect 6 Crawler Leg##5385 |q 983/1 |goto 36.12,48.70
step
click Beached Sea Creature
collect Sea Creature Bones##12242 |q 3524/1 |goto 36.39,50.88
step
click Buzzbox 827
turnin Buzzbox 827##983 |goto 36.66,46.26
accept Buzzbox 411##1001 |goto 36.66,46.26
step
talk Gwennyth Bly'Leggonde##10219
turnin Washed Ashore##3524 |goto 36.62,45.59
accept Washed Ashore##4681 |goto 36.62,45.59
stickystart "Collect_Thresher_Eyes"
step
click Skeletal Sea Turtle
|tip Underwater.
collect Sea Turtle Remains##12289 |q 4681/1 |goto 31.87,46.32
step
label "Collect_Thresher_Eyes"
kill Darkshore Thresher##2185+
|tip Underwater around this area.
collect 3 Thresher Eye##5412 |q 1001/1 |goto 31.60,39.75
You can find more around: |notinsticky
[35.39,37.08]
[32.83,34.79]
step
talk Gwennyth Bly'Leggonde##10219
turnin Washed Ashore##4681 |goto 36.62,45.59
step
Enter the building |goto 37.77,41.36 < 10 |only if walking
Follow the path |goto 36.85,38.20 < 50 |only if walking
click Beached Sea Creature
accept Beached Sea Creature##4723 |goto 41.88,31.55
step
click Buzzbox 411
turnin Buzzbox 411##1001 |goto 41.96,28.64
accept Buzzbox 323##1002 |goto 41.96,28.64
step
Kill enemies around this area
Reach Level 13 |ding 13 |goto 43.50,33.38
step
talk Asterion##3650
turnin Bashal'Aran##954 |goto 44.17,36.29
accept Bashal'Aran##955 |goto 44.17,36.29
step
Kill enemies around this area
|tip Only Vile Sprites and Wild Grells will drop the quest item.
collect 8 Grell Earring##5336 |goto 45.13,38.46
You can find more around [47.72,37.13]
step
talk Asterion##3650
turnin Bashal'Aran##955 |goto 44.17,36.29
accept Bashal'Aran##956 |goto 44.17,36.29
step
kill Deth'ryll Satyr##2212+
collect Ancient Moonstone Seal##5338 |q 956/1 |goto 45.50,36.68
You can find more around: |notinsticky
[45.57,39.70]
[46.75,39.13]
[47.71,36.91]
step
talk Asterion##3650
turnin Bashal'Aran##956 |goto 44.17,36.30
accept Bashal'Aran##957 |goto 44.17,36.30
step
Locate the Large, Red Crystal on Darkshore's Eastern Mountain Range |q 4811/1 |goto 47.29,48.69
step
Find a Corrupt Furbolg Camp |q 984/1 |goto 40.27,53.57
step
talk Sentinel Tysha Moonblade##3639
accept The Fall of Ameth'Aran##953 |goto 40.30,59.73
stickystart "Collect_Highborne_Relics"
stickystart "Collect_Anyas_Pendant"
step
click Lay of Ameth'Aran
Read the Lay of Ameth'Aran |q 953/1 |goto 43.31,58.70
step
click Ancient Flame
Destroy the Seal at the Ancient Flame |q 957/1 |goto 42.37,61.79
step
click Fall of Ameth'Aran
Read the Fall of Ameth'Aran |q 953/2 |goto 42.67,63.10
step
label "Collect_Highborne_Relics"
Kill Highborne enemies around this area
collect 7 Highborne Relic##5360 |q 958/1 |goto 43.07,60.24
step
label "Collect_Anyas_Pendant"
kill Anaya Dawnrunner##3667
|tip She looks like a neutral female night elf ghost that walks around this area.
|tip She is level 16, so if you have trouble, grind to level 14 first.
collect Anaya's Pendant##5382 |q 963/1 |goto 42.88,62.51
step
talk Sentinel Tysha Moonblade##3639
turnin The Fall of Ameth'Aran##953 |goto 40.30,59.73
step
Kill Moonstalker enemies around this area
|tip They look like blue and black striped tigers.
|tip They share spawn points with Rabid Thistle Bears, so kill those too, if you can't find any Moonstalkers.
collect 6 Moonstalker Fang##5413 |q 1002/1 |goto 38.79,59.10
You can find more around |notinsticky
[39.11,63.81]
[39.37,66.79]
[39.32,70.23]
[41.98,69.94]
step
Kill enemies around this area
Reach Level 14 |ding 14 |goto 38.79,59.10
You can find more around |notinsticky
[39.11,63.81]
[39.37,66.79]
[39.32,70.23]
[41.98,69.94]
step
use Tharnariun's Hope##7586
|tip Use it on a Rabid Thistle Bear around this area.
|tip Make sure it's very close to you when you use it.
|tip Make it get close to the glowing red circle that appears on the ground.
Capture a Rabid Thistle Bear |q 2118/1 |goto 38.32,54.90
step
talk Cerellean Whiteclaw##3644
|tip On the dock.
turnin For Love Eternal##963 |goto 35.74,43.71
step
talk Gwennyth Bly'Leggonde##10219
turnin Beached Sea Creature##4723 |goto 36.62,45.59
step
talk Sentinel Glynda Nal'Shea##2930
|tip She walks around this area.
turnin The Red Crystal##4811 |goto 37.71,43.39
accept As Water Cascades##4812 |goto 37.71,43.39
step
use the Empty Water Tube##14338
collect Moonwell Water Tube##14339 |q 4812/1 |goto 37.79,44.06
step
talk Tharnariun Treetender##3701
turnin Plagued Lands##2118 |goto 38.84,43.42
accept Cleansing of the Infected##2138 |goto 38.84,43.42
step
talk Terenthis##3693
|tip Inside the building.
turnin How Big a Threat?##984 |goto 39.37,43.48
accept How Big a Threat?##985 |goto 39.37,43.48
accept Thundris Windweaver##4761 |goto 39.37,43.48
step
talk Sentinel Elissa Starbreeze##3657
|tip Upstairs inside the building.
accept The Tower of Althalaxx##965 |goto 39.05,43.55
step
Enter the building |goto 37.77,41.35 < 10 |walk
talk Thundris Windweaver##3649
|tip Inside the building.
turnin Tools of the Highborne##958 |goto 37.40,40.13
turnin Thundris Windweaver##4761 |goto 37.40,40.13
accept The Cliffspring River##4762 |goto 37.40,40.13
step
Run up the ramp |goto Darnassus 58.89,55.46 < 10 |only if walking
talk Auctioneer Golothas##8723
|tip Inside the building.
buy 5 Earthroot##2449 |goto Darnassus 56.24,54.03 |q 6123 |future
|only if NightElf Druid
step
Enter the building |goto Darnassus 35.52,10.72 < 7 |walk
talk Mathrengyl Bearwalker##4217
|tip Upstairs inside the building.
accept Lessons Anew##6121 |goto Darnassus 35.38,8.41
|only if NightElf Druid
step
talk Dendrite Starblaze##11802
|tip Upstairs inside the building.
turnin Lessons Anew##6121 |goto Moonglade 56.21,30.64
accept The Principal Source##6122 |goto Moonglade 56.21,30.64
|only if NightElf Druid
step
Follow the road |goto Darkshore 40.33,46.35 < 30 |only if walking
Follow the path |goto Darkshore 46.41,32.14 < 30 |only if walking
Follow the path up |goto Darkshore 54.64,31.76 < 20 |only if walking
use the Empty Cliffspring Falls Sampler##15844
|tip At the entrance of the cave.
collect Filled Cliffspring Falls Sampler##15845 |q 6122/1 |goto Darkshore 54.93,33.32
|only if NightElf Druid
step
Follow the road |goto 47.10,26.84 < 30 |only if walking
Follow the path |goto 42.21,42.33 < 30 |only if walking
Enter the building |goto 37.77,41.36 < 10 |walk
talk Alanndarian Nightsong##3702
|tip Inside the building.
turnin The Principal Source##6122 |goto 37.69,40.66
accept Gathering the Cure##6123 |goto 37.69,40.66
|only if NightElf Druid
step
Leave the building |goto 37.77,41.36 < 10 |walk
Follow the road |goto 40.04,46.77 < 30 |only if walking
click Lunar Fungal Bloom+
|tip They look like clusters of small white-spotted mushrooms on the ground inside the small caves around this area.
collect 12 Lunar Fungus##15851 |q 6123/2 |goto 43.07,45.55
You can find more small caves at: |notinsticky
[43.07,49.24]
[43.38,50.50]
[42.71,52.28]
[45.22,53.45]
[46.30,45.56]
[45.52,50.24]
|only if NightElf Druid
step
Follow the road |goto 39.93,46.07 < 30 |only if walking
Enter the building |goto 37.77,41.36 < 10 |walk
talk Alanndarian Nightsong##3702
|tip Inside the building.
turnin Gathering the Cure##6123 |goto 37.69,40.66
accept Curing the Sick##6124 |goto 37.69,40.66
|only if NightElf Druid
step
Leave the building |goto 37.77,41.34 < 10 |walk
Follow the road |goto 39.55,45.39 < 30 |only if walking
use the Curative Animal Salve##15826
|tip Use it on Sickly Deer around this area.
|tip They look like green diseased deer in areas with trees.
|tip They are spread out all throughout Darkshore.
Cure #10# Sickly Deer |q 6124/1 |goto 41.51,46.08
|only if NightElf Druid
step
talk Dendrite Starblaze##11802
|tip Upstairs inside the building.
turnin Curing the Sick##6124 |goto Moonglade 56.21,30.64
accept Power over Poison##6125 |goto Moonglade 56.21,30.64
|only if NightElf Druid
step
Enter the building |goto Darnassus 35.52,10.72 < 7 |walk
talk Mathrengyl Bearwalker##4217
|tip Upstairs inside the building.
turnin Power over Poison##6125 |goto Darnassus 35.38,8.41
|only if NightElf Druid
step
Follow the path |goto Darkshore 37.12,38.21 < 30 |only if walking
talk Asterion##3650
turnin Bashal'Aran##957 |goto Darkshore 44.17,36.30
step
click Beached Sea Turtle
accept Beached Sea Turtle##4725 |goto 44.21,20.64
step
label "Kill_Rabid_Thistle_Bears"
kill 20 Rabid Thistle Bear##2164 |q 2138/1 |goto 48.78,26.02
You can find more around: |notinsticky
[50.64,28.62]
[52.92,27.47]
[48.23,32.83]
[44.24,27.17]
step
click Buzzbox 323
turnin Buzzbox 323##1002 |goto 51.28,24.58
accept Buzzbox 525##1003 |goto 51.28,24.58
step
use the Empty Sampling Tube##12350
|tip In the water, at the bottom of the waterfall.
collect Cliffspring River Sample##12349 |goto 50.84,25.50
step
Follow the path |goto 51.05,23.32 < 20 |only if walking
click Beached Sea Turtle
accept Beached Sea Turtle##4727 |goto 53.09,18.15
step
talk Tharnariun Treetender##3701
turnin Cleansing of the Infected##2138 |goto 38.84,43.41
accept Tharnariun's Hope##2139 |goto 38.84,43.41
step
Enter the building |goto 37.77,41.35 < 10 |walk
talk Thundris Windweaver##3649
|tip Inside the building.
turnin The Cliffspring River##4762 |goto 37.39,40.13
accept The Blackwood Corrupted##4763 |goto 37.39,40.13
step
talk Archaeologist Hollee##2913
accept The Absent Minded Prospector##729 |goto 37.44,41.84
step
use the Empty Cleansing Bowl##12346
collect Filled Cleansing Bowl##12347 |goto 37.78,44.02 |q 4763
step
talk Gwennyth Bly'Leggonde##10219
turnin Beached Sea Turtle##4725 |goto 36.62,45.60
turnin Beached Sea Turtle##4727 |goto 36.62,45.60
step
talk Gubber Blump##10216
accept Fruit of the Sea##1138 |goto 36.09,44.93
step
click Mysterious Red Crystal
turnin As Water Cascades##4812 |goto 47.29,48.69
accept The Fragments Within##4813 |goto 47.29,48.69
stickystart "Kill_Blackwood_Windtalkers"
step
kill 8 Blackwood Pathfinder##2167 |q 985/1 |goto 39.81,53.87
You can find more around [39.93,56.19]
step
label "Kill_Blackwood_Windtalkers"
kill 5 Blackwood Windtalker##2324 |q 985/2 |goto 39.81,53.87
You can find more around [39.93,56.19]
step
click Beached Sea Turtle
accept Beached Sea Turtle##4722 |goto 37.14,62.16
step
click Beached Sea Creature
accept Beached Sea Creature##4728 |goto 36.06,70.86
step
kill Grizzled Thistle Bear##2165+
collect 4 Grizzled Scalp##5414 |q 1003/1 |goto 38.40,82.67
step
click Buzzbox 525
turnin Buzzbox 525##1003 |goto 41.40,80.56
step
Kill enemies around this area
|tip You will have to kill a level 18 enemy soon, with bodyguards.
|tip Being a level higher will help to make the next quests easier.
Reach Level 16 |ding 16 |goto 38.40,82.67
step
Follow the path |goto 41.87,76.89 < 30 |only if walking
talk Onu##3616
turnin Grove of the Ancients##952 |goto 43.56,76.30
|only if NightElf
step
talk Gwennyth Bly'Leggonde##10219
turnin Beached Sea Turtle##4722 |goto 36.62,45.60
turnin Beached Sea Creature##4728 |goto 36.62,45.60
step
talk Sentinel Glynda Nal'Shea##2930
|tip She walks around this area.
turnin The Fragments Within##4813 |goto 37.71,43.39
step
talk Terenthis##3693
|tip Inside the building.
turnin How Big a Threat?##985 |goto 39.37,43.48
step
Follow the road |goto 40.47,46.24 < 30 |only if walking
Follow the path |goto 45.30,34.99 < 30 |only if walking
click Blackwood Grain Stores
|tip You will be attacked when you loot it.
collect Blackwood Grain Sample##12342 |goto 50.62,34.95 |q 4763
step
Follow the path up |goto 52.40,35.94 < 10 |only if walking
Enter the cave |goto 51.57,37.49 < 10 |walk
kill Den Mother##6788 |q 2139/1 |goto 51.48,38.26
|tip Inside the cave.
|tip She is level 18, but you should be able to kill her at this level.
|tip If you have trouble, try to find someone to help you.
step
click Blackwood Nut Stores
collect Blackwood Nut Sample##12343 |goto 51.83,33.56 |q 4763
step
click Blackwood Fruit Stores
collect Blackwood Fruit Sample##12341 |goto 52.83,33.41 |q 4763
step
use the Filled Cleansing Bowl##12347
|tip Some enemies will appear and walk toward the bowl.
|tip Don't worry, they won't attack you.
kill Xabraxxis##10373
|tip He appears nearby.
|tip He is level 19, but you should be able to kill him at this level.
|tip If you have trouble, try to find someone to help you.
click Xabraxxis' Demon Bag
|tip It appears on the ground after you kill him.
collect Talisman of Corruption##12355 |q 4763/1 |goto 52.41,33.44
stickystart "Collect_Scaber_Stalks"
step
Follow the path up |goto 54.56,31.75 < 15 |only if walking
Enter the cave |goto 54.97,33.37 < 10 |walk
Follow the path up |goto 55.16,33.97 < 7 |walk
click Death Cap
|tip Upstairs inside the cave.
|tip They look like brown and white mushrooms on the ground around this area inside the cave.
|tip If there's not one around here, you can find more downstairs in the side rooms of the cave.
collect Death Cap##5270 |q 947/2 |goto 55.75,36.19
step
label "Collect_Scaber_Stalks"
click Scaber Stalk+
|tip They look like blue mushrooms on the ground around this area inside the cave.
|tip You can find them all throughout the cave.
collect 5 Scaber Stalk##5271 |q 947/1 |goto 55.22,33.92
step
Leave the cave |goto 54.97,33.38 < 10 |walk
Follow the path |goto 54.15,30.93 < 30 |only if walking
talk Balthule Shadowstrike##3661
turnin The Tower of Althalaxx##965 |goto 54.97,24.89
accept The Tower of Althalaxx##966 |goto 54.97,24.89
step
kill Dark Strand Fanatic##2336+
collect 4 Worn Parchment##5348 |q 966/1 |goto 55.46,26.77
step
talk Balthule Shadowstrike##3661
turnin The Tower of Althalaxx##966 |goto 54.97,24.89
accept The Tower of Althalaxx##967 |goto 54.97,24.89
step
kill Reef Crawler##2235+
collect 6 Fine Crab Chunks##12237 |q 1138/1 |goto 49.51,21.27
You can find more around [45.58,20.83]
step
Kill enemies around this area
Reach Level 17 |ding 17 |goto 49.51,21.27
You can find more around [45.58,20.83]
step
talk Tharnariun Treetender##3701
turnin Tharnariun's Hope##2139 |goto 38.84,43.41
step
Enter the building |goto 37.77,41.35 < 10 |walk
talk Thundris Windweaver##3649
|tip Inside the building.
turnin The Blackwood Corrupted##4763 |goto 37.40,40.13
step
talk Barithras Moonshade##3583
turnin Cave Mushrooms##947 |goto 37.32,43.64
accept Onu##948 |goto 37.32,43.64
step
talk Gubber Blump##10216
turnin Fruit of the Sea##1138 |goto 36.10,44.93
step
Enter the building |goto Darnassus 35.49,10.63 < 7 |walk
talk Mathrengyl Bearwalker##4217
|tip Upstairs inside the building.
accept A Lesson to Learn##26 |goto Darnassus 35.37,8.39
|only if NightElf Druid
step
talk Dendrite Starblaze##11802
|tip Upstairs inside the building.
turnin A Lesson to Learn##26 |goto Moonglade 56.21,30.64
accept Trial of the Lake##29 |goto Moonglade 56.21,30.64
|only if NightElf Druid
step
click Bauble Container
|tip It looks like a wicker basket vase on the ground underwater.
|tip They spawn randomly, so you may have to search around this area.
collect Shrine Bauble##15877 |q 29/1 |goto 54.33,55.65
|only if NightElf Druid
step
use the Shrine Bauble##15877
Complete the Trial of the Lake |q 29/2 |goto 35.92,41.38
|only if NightElf Druid
step
talk Tajarri##11799
turnin Trial of the Lake##29 |goto 36.51,40.11
accept Trial of the Sea Lion##272 |goto 36.51,40.11
|only if NightElf Druid
step
Follow the road |goto Darkshore 40.23,46.41 < 30 |only if walking
Follow the path |goto Darkshore 48.43,24.86 < 30 |only if walking
click Strange Lockbox
|tip Underwater.
collect Half Pendant of Aquatic Agility##15883 |goto Darkshore 48.87,11.32 |q 272
|only if NightElf Druid
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Loch Modan (17-18)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Loch Modan",
condition_suggested=function() return level >= 17 and level <= 18 and not completedq(1338) end,
next="Leveling Guides\\Classic (12-58)\\Redridge Mountains (18-20)",
},[[
step
talk Shellei Brondir##1571
fpath Menethil Harbor |goto Wetlands 9.49,59.69
|only if NightElf or Draenei
step
Cross the bridge |goto 10.97,54.47 < 20 |only if walking
Follow the road |goto 15.29,45.35 < 30 |only if walking
Continue following the road |goto 50.67,39.99 < 30 |only if walking
Enter the tunnel |goto 53.86,70.33 < 10 |only if walking
Leave the tunnel |goto 49.29,70.57 < 10 |only if walking
Follow the path up |goto 48.30,67.28 < 15 |c |q 1338 |future
|only if NightElf or Draenei
step
Enter the tunnel |goto 50.14,71.56 < 10 |only if walking
Leave the tunnel |goto 50.17,78.37 < 10 |only if walking
Enter the tunnel |goto 50.64,82.58 < 10 |only if walking
Leave the tunnel |goto 55.15,83.54 < 10 |only if walking
Enter the tunnel |goto Loch Modan 25.28,0.08 < 10 |only if walking
Leave the tunnel |goto Loch Modan 25.57,10.27 < 10 |only if walking
Enter the building |goto Loch Modan 23.53,17.89 < 7 |walk
talk Mountaineer Stormpike##1343
|tip Upstairs inside the building.
accept Stormpike's Order##1338 |goto Loch Modan 24.76,18.39
|only if NightElf or Draenei
step
talk Thorgrum Borrelson##1572
fpath Thelsamar |goto 33.94,50.95
|only if NightElf or Draenei
step
Enter the building |goto Loch Modan 35.23,47.74 < 7 |walk
talk Innkeeper Hearthstove##6734
|tip Inside the building.
home Stoutlager Inn |goto Loch Modan 35.53,48.40
step
Leave the building |goto 35.23,47.74 < 7 |walk
Enter the building |goto 37.18,47.10 < 7 |walk
talk Jern Hornhelm##1105
|tip Downstairs inside the building.
|tip He sometimes walks out near the entrance of the building.
accept Ironband's Excavation##436 |goto 37.24,47.39
step
Leave the building |goto 37.17,47.06 < 7 |walk
Follow the path |goto 45.06,64.15 < 30 |only if walking
talk Magmar Fellhew##1345
turnin Ironband's Excavation##436 |goto 64.90,66.65
accept Gathering Idols##297 |goto 64.90,66.65
step
talk Prospector Ironband##1344
accept Excavation Progress Report##298 |goto 65.93,65.62
step
Follow the path |goto 67.77,63.14 < 15 |only if walking
Kill enemies around this area
collect 8 Carved Stone Idol##2636 |q 297/1 |goto 70.31,62.79
step
talk Magmar Fellhew##1345
turnin Gathering Idols##297 |goto 64.90,66.65
step
Follow the path |goto 66.22,52.81 < 30 |only if walking
Continue following the path |goto 80.19,59.08 < 30 |only if walking
Enter the building |goto 83.43,62.83 < 10 |walk
talk Marek Ironheart##1154
|tip Inside the building.
accept Crocolisk Hunting##385 |goto 81.75,61.66
step
talk Daryl the Youngling##1187
|tip Inside the building.
accept A Hunter's Boast##257 |goto 83.47,65.46
step
kill 6 Mountain Buzzard##1194 |q 257/1 |goto 80.20,65.20
|tip Try to hurry, this quest is timed.
You can find more around: |notinsticky
[76.41,73.71]
[74.40,69.25]
[77.04,57.34]
step
Follow the path |goto 80.99,59.40 < 30 |only if walking
Enter the building |goto 83.43,62.83 < 10 |walk
talk Daryl the Youngling##1187
|tip Inside the building.
|tip Try to hurry, this quest is timed.
turnin A Hunter's Boast##257 |goto 83.47,65.46
accept A Hunter's Challenge##258 |goto 83.47,65.46
step
Follow the path |goto 78.83,58.75 < 30 |only if walking
kill 5 Elder Mountain Boar##1192 |q 258/1 |goto 76.58,43.83
|tip Try to hurry, this quest is timed.
You can find more around: |notinsticky
[67.11,37.93]
[61.61,34.76]
step
Follow the path |goto 80.49,59.39 < 30 |only if walking
Enter the building |goto 83.43,62.83 < 10 |walk
talk Daryl the Youngling##1187
|tip Inside the building.
|tip Try to hurry, this quest is timed.
turnin A Hunter's Challenge##258 |goto 83.47,65.46
step
Follow the path |goto 79.02,58.78 < 30 |only if walking
talk Bingles Blastenheimer##6577
|tip He walks around this area.
accept Bingles' Missing Supplies##2038 |goto 63.56,47.92
stickystart "Collect_Crocolisk_Skin"
step
kill Loch Crocolisk##1693+
collect 5 Crocolisk Meat##2924 |q 385/1 |goto 54.84,38.49
|tip Be careful not to accidentally sell these to a vendor.
You can find more around [54.80,54.28]
step
label "Collect_Crocolisk_Skin"
kill Loch Crocolisk##1693+
collect 6 Crocolisk Skin##2925 |q 385/2 |goto 54.84,38.49
You can find more around [54.80,54.28]
step
Kill enemies around this area
Reach Level 18 |ding 18 |goto 54.84,38.49
You can find more around [54.80,54.28]
step
click Bingles's Toolbucket
collect Bingles' Wrench##7343 |q 2038/1 |goto 48.73,30.09
step
click Bingles' Blastencapper
collect Bingles' Blastencapper##7376 |q 2038/4 |goto 54.21,26.60
step
click Bingles's Toolbucket
collect Bingles' Hammer##7346 |q 2038/3 |goto 51.78,24.09
step
click Bingles' Toolbucket
collect Bingles' Screwdriver##7345 |q 2038/2 |goto 48.37,20.51
step
Run up the ramp |goto 55.39,14.84 < 10 |only if walking
Follow the path |goto 52.89,10.99 < 10 |only if walking
talk Chief Engineer Hinderweir VII##1093
accept A Dark Threat Looms##250 |goto 46.05,13.62
step
talk Nillen Andemar##222
|tip Sell any items you don't need, to clear some bag space.
Click Here to Continue |confirm |goto 42.87,9.90 |q 250
step
Follow the path |goto 52.93,11.04 < 10 |only if walking
click Suspicious Barrel
|tip On the ground next the wall.
turnin A Dark Threat Looms##250 |goto 56.05,13.24
accept A Dark Threat Looms##199 |goto 56.05,13.24
step
Run up the ramp |goto 55.39,14.84 < 10 |only if walking
Follow the path |goto 52.89,10.99 < 10 |only if walking
talk Chief Engineer Hinderweir VII##1093
turnin A Dark Threat Looms##199 |goto 46.05,13.62
step
talk Bingles Blastenheimer##6577
|tip He walks around this area.
turnin Bingles' Missing Supplies##2038 |goto 63.56,47.91
step
Follow the path |goto 72.32,52.39 < 30 |only if walking
Enter the building |goto 83.43,62.83 < 10 |walk
talk Marek Ironheart##1154
|tip Inside the building.
turnin Crocolisk Hunting##385 |goto 81.76,61.66
step
Leave the building |goto 35.20,47.74 < 7 |walk
Enter the building |goto 37.18,47.10 < 7 |walk
talk Jern Hornhelm##1105
|tip Downstairs inside the building.
|tip He sometimes walks out near the entrance of the building.
turnin Excavation Progress Report##298 |goto 37.24,47.39
accept Report to Ironforge##301 |goto 37.24,47.39
step
Follow the road |goto 29.36,60.49 < 30 |only if walking
Follow the path up |goto 22.50,70.24 < 20 |only if walking
Enter the tunnel |goto 19.55,62.70 < 10 |only if walking
Leave the tunnel |goto Dun Morogh 86.24,51.32 < 10 |only if walking
Enter the tunnel |goto Dun Morogh 84.21,51.33 < 10 |only if walking
Leave the tunnel |goto Dun Morogh 82.26,53.44 < 10 |only if walking
Follow the road |goto Dun Morogh 77.86,49.71 < 30 |only if walking
Follow the path up |goto Dun Morogh 47.19,41.72 < 20 |only if walking
Enter Ironforge |goto Ironforge 15.23,85.56 < 15 |walk
talk Gryth Thurden##1573
fpath Ironforge |goto Ironforge 55.53,47.77
|only if NightElf or Draenei
step
talk Prospector Stormpike##1356
|tip Inside the building.
turnin Report to Ironforge##301 |goto Ironforge 74.64,11.73
step
talk Gnoarn##6569
accept Speak with Shoni##2041 |goto 69.22,50.56
step
Follow the path |goto 72.81,50.26 < 10 |walk
Enter the Deeprun Tram
|tip Walk into the swirling portal.
Click Here After Entering the Deeprun Tram |confirm |goto 77.02,51.26 |q 1338
step
_Inside Deeprun Tram:_
talk Monty##12997
|tip On the middle platform, near the wall.
|tip In the Ironforge section of the Deeprun Tram.
accept Deeprun Rat Roundup##6661
step
_Inside Deeprun Tram:_
use Rat Catcher's Flute##17117
|tip Use it on Deeprun Rats around this area.
|tip They look like small grey rats on the ground around this area.
|tip In the Ironforge section of the Deeprun Tram.
Capture #5# Rats |q 6661/1
step
_Inside Deeprun Tram:_
talk Monty##12997
|tip On the middle platform, near the wall.
|tip In the Ironforge section of the Deeprun Tram.
turnin Deeprun Rat Roundup##6661
accept Me Brother, Nipsy##6662
step
_Inside Deeprun Tram:_
Ride the Tram
|tip Ride the Deeprun Tram from Ironforge to Stormwind City.
Click Here After Riding the Tram |confirm |q 6662
step
_Inside Deeprun Tram:_
talk Nipsy##13018
|tip On the middle platform, near the wall.
|tip In the Stormwind City section of the Deeprun Tram.
turnin Me Brother, Nipsy##6662
step
_Inside Deeprun Tram:_
Enter Stormwind City |goto Stormwind City |c |noway |q 2041
|tip Walk into the swirling portal on the north end of the tram terminal.
step
talk Shoni the Shilent##6579
turnin Speak with Shoni##2041 |goto Stormwind City 55.52,12.51
step
talk Furen Longbeard##5413
turnin Stormpike's Order##1338 |goto 58.09,16.52
step
Enter the building |goto 55.29,68.12 < 7 |walk
talk Olivia Burnside##2455
|tip Inside the building.
|tip Put these items in the bank.
bank Letter to Delgren##5354 |goto 57.54,72.45 |q 967
step
Run up the ramp |goto 62.39,62.31 < 7 |only if walking
talk Dungar Longdrink##352
|tip Inside the building.
fpath Stormwind |goto Stormwind City 66.27,62.14
|only if not Human
step
Leave Stormwind City |goto Stormwind City 69.66,86.28 < 30 |only if walking
Follow the road |goto Elwynn Forest 27.27,77.72 < 30 |only if walking
Enter Westfall |goto Westfall 61.50,18.22 < 30 |only if walking
click Strange Lockbox
|tip Underwater.
collect Half Pendant of Aquatic Endurance##15882 |goto Westfall 17.87,33.11 |q 272
|only if NightElf Druid
step
use the Half Pendant of Aquatic Agility##15883
collect Pendant of the Sea Lion##15885 |q 272/1 |goto Moonglade 35.92,41.42
|only if NightElf Druid
step
talk Dendrite Starblaze##11802
|tip Upstairs inside the building.
turnin Trial of the Sea Lion##272 |goto 56.21,30.64
accept Aquatic Form##5061 |goto 56.21,30.64
|only if NightElf Druid
step
Enter the building |goto Darnassus 35.49,10.63 < 7 |walk
talk Mathrengyl Bearwalker##4217
|tip Upstairs inside the building.
turnin Aquatic Form##5061 |goto Darnassus 35.37,8.39
|only if NightElf Druid
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Redridge Mountains (18-20)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Redridge Mountains",
condition_suggested=function() return level >= 18 and level <= 20 and not completedq(150) end,
next="Leveling Guides\\Classic (12-58)\\Darkshore (20-20)",
},[[
step
Leave Stormwind City |goto Stormwind City 69.66,86.28 < 30 |only if walking
Follow the road |goto Elwynn Forest 42.77,67.31 < 30 |only if walking
talk Guard Parker##464
|tip He walks around this area.
accept Encroaching Gnolls##244 |goto Redridge Mountains 15.27,71.46
step
talk Deputy Feldon##1070
turnin Encroaching Gnolls##244 |goto 30.74,60.00
accept Assessing the Threat##246 |goto 30.74,60.00
step
talk Ariena Stormfeather##931
fpath Lakeshire |goto 30.59,59.41
step
talk Marshal Marris##382
accept Blackrock Menace##20 |goto 33.51,48.97
step
talk Foreman Oslow##341
accept The Lost Tools##125 |goto 32.14,48.64
step
talk Shawn##8965
accept Hilary's Necklace##3741 |goto 29.32,53.63
step
talk Dockmaster Baren##381
accept Selling Fish##127 |goto 27.72,47.38
step
Enter the building |goto 26.61,46.37 < 7 |walk
talk Innkeeper Brianna##6727
|tip Inside the building.
home Lakeshire |goto 27.01,44.82
step
talk Darcy##379
|tip She walks around this area inside the building.
accept A Free Lunch##129 |goto 26.75,44.35
step
Enter the building |goto 22.80,44.56 < 7 |walk
talk Chef Breanna##343
|tip Inside the building.
accept Redridge Goulash##92 |goto 22.68,43.84
step
kill Great Goretusk##547+
|tip Be careful to avoid Bellygrub.
|tip It's a darker brown level 24 boar that walks around this area.
collect 5 Great Goretusk Snout##2296 |q 92/1 |goto 17.32,48.12
|tip Be careful not to accidentally sell these to a vendor.
You can find more around [17.52,55.11]
step
click Glinting Mound
|tip It looks like a brown pile of dirt on the ground underwater.
|tip It spawns in random locations in the water, so you may need to search around.
collect Hilary's Necklace##10958 |q 3741/1 |goto 19.17,51.76
Also check around [38.03,54.49]
stickystart "Collect_Spotted_Sunfish"
stickystart "Collect_Murloc_Fins"
step
click Sunken Chest
|tip Underwater.
collect Oslow's Toolbox##1309 |q 125/1 |goto 41.53,54.67
step
label "Collect_Spotted_Sunfish"
Kill Murloc enemies around this area
|tip Underwater. |notinsticky
collect 10 Spotted Sunfish##1467 |q 127/1 |goto 41.75,48.23
step
label "Collect_Murloc_Fins"
Kill Murloc enemies around this area
|tip Underwater. |notinsticky
collect 8 Murloc Fin##1468 |goto 41.75,48.23 |q 150 |future
|tip Be careful not to accidentally sell these to a vendor.
step
talk Foreman Oslow##341
turnin The Lost Tools##125 |goto 32.14,48.64
accept The Everstill Bridge##89 |goto 32.14,48.64
step
talk Hilary##8962
turnin Hilary's Necklace##3741 |goto 29.24,53.63
step
talk Dockmaster Baren##381
turnin Selling Fish##127 |goto 27.72,47.38
step
talk Guard Parker##464
|tip He walks around this area.
turnin A Free Lunch##129 |goto 15.27,71.45
accept Visit the Herbalist##130 |goto 15.27,71.45
step
kill Tarantula##442+
|tip They share spawn points with other creatures, so kill those too, if you can't find any.
collect 5 Crisp Spider Meat##1081 |q 92/3 |goto 20.28,68.29
|tip Be careful not to accidentally sell these to a vendor.
You can find more around [14.40,77.92]
stickystart "Kill_Redridge_Mongrels"
step
kill 6 Redridge Poacher##424 |q 246/2 |goto 31.47,81.01
You can find more around [43.02,71.64]
step
label "Kill_Redridge_Mongrels"
kill 10 Redridge Mongrel##423 |q 246/1 |goto 31.47,81.01
You can find more around [43.02,71.64]
step
kill Dire Condor##428+
collect 5 Tough Condor Meat##1080 |q 92/2 |goto 58.04,75.72
You can find more around [47.23,76.89]
step
talk Martie Jainrose##342
turnin Visit the Herbalist##130 |goto 21.86,46.33
accept Delivering Daffodils##131 |goto 21.86,46.33
step
Enter the building |goto 22.81,44.55 < 7 |walk
talk Chef Breanna##343
|tip Inside the building.
turnin Redridge Goulash##92 |goto 22.68,43.83
step
_Destroy or Sell These Items:_
|tip They are no longer needed.
trash Great Goretusk Snout##2296
trash Tough Condor Meat##1080
trash Crisp Spider Meat##1081
step
Enter the building |goto 26.60,46.38 < 7 |walk
talk Darcy##379
|tip She walks around this area.
|tip Inside the building.
turnin Delivering Daffodils##131 |goto 26.75,44.34
stickystart "Collect_Iron_Rivets"
step
Follow the path up |goto 34.92,40.80 < 20 |only if walking
Kill Redridge enemies around this area
|tip Redridge Alphas will not drop the quest item.
collect 5 Iron Pike##2856 |q 89/1 |goto 38.80,32.27
You can find more around [23.02,36.55]
step
label "Collect_Iron_Rivets"
Kill Redridge enemies around this area
|tip Redridge Alphas will not drop the quest item.
collect 5 Iron Rivet##1013 |q 89/2 |goto 38.80,32.27
You can find more around [23.02,36.55]
step
Kill enemies around this area
Reach Level 20 |ding 20 |goto 38.80,32.27
You can find more around [23.02,36.55]
step
_Note for Rogues:_
|tip You will begin the questline that rewards you with the ability to make Poisons later.
|tip The quest will be easier to complete at a higher level.
|tip You will need Lockpicking skill of at least 75, so start trying to work on that now, as you can, while questing.
Click Here to Continue |confirm |q 2607 |future
|only if Rogue
step
talk Dockmaster Baren##381
accept Murloc Poachers##150 |goto 27.72,47.38
step
talk Dockmaster Baren##381
turnin Murloc Poachers##150 |goto 27.72,47.38
step
_Destroy or Sell These Items:_
|tip They are no longer needed.
trash Murloc Fin##1468
step
talk Foreman Oslow##341
turnin The Everstill Bridge##89 |goto 32.14,48.64
step
talk Deputy Feldon##1070
turnin Assessing the Threat##246 |goto 30.73,60.00
step
talk Lago Blackwrench##6120
accept Gakin's Summons##1717 |goto Ironforge 47.62,9.26
|only if Warlock
step
Enter the building |goto Stormwind City 29.14,74.17 < 7 |walk
talk Gakin the Darkbinder##6122
|tip Downstairs inside the building.
turnin Gakin's Summons##1717 |goto Stormwind City 25.26,78.56
accept Devourer of Souls##1716 |goto Stormwind City 25.26,78.56
|only if Warlock
step
Leave the building |goto Stormwind City 29.14,74.17 < 7 |walk
Follow the road |goto Darkshore 39.98,47.69 < 30 |only if walking
Enter Ashenvale |goto Darkshore 43.05,93.50 < 30 |only if walking
Follow the road |goto Ashenvale 29.63,17.12 < 30 |only if walking
talk Daelyshia##4267
fpath Astranaar |goto Ashenvale 34.41,47.99
|only if Warlock
step
Follow the road |goto 38.91,57.93 < 30 |only if walking
Follow the road |goto 67.13,71.87 < 30 |only if walking
Enter the Barrens |goto The Barrens 48.99,5.39 < 20 |only if walking
Follow the road |goto The Barrens 48.55,13.02 < 30 |only if walking
Avoid the Crossroads |goto The Barrens 53.91,30.00 < 30 |only if walking
Follow the road |goto The Barrens 50.43,37.77 < 30 |only if walking
talk Takar the Seer##6244
turnin Devourer of Souls##1716 |goto The Barrens 49.31,57.10
accept Heartswood##1738 |goto The Barrens 49.31,57.10
|only if Warlock
step
Follow the road |goto 51.03,50.04 < 30 |only if walking
Avoid the Crossroads |goto 53.68,29.52 < 30 |only if walking
Follow the road |goto 51.18,15.34 < 30 |only if walking
Enter Ashenvale |goto 48.98,5.37 < 20 |only if walking
Follow the road |goto Ashenvale 68.53,84.01 < 30 |only if walking
Continue following the road |goto Ashenvale 66.87,71.29 < 30 |only if walking
Follow the path |goto Ashenvale 26.14,35.41 < 30 |only if walking
click Heartswood
collect Heartswood##6912 |q 1738/1 |goto Ashenvale 31.49,31.45
|only if Warlock
step
Follow the road |goto 25.58,36.45 < 30 |only if walking
Enter the building |goto Stormwind City 29.14,74.17 < 7 |walk
talk Gakin the Darkbinder##6122
|tip Downstairs inside the building.
turnin Heartswood##1738 |goto Stormwind City 25.26,78.56
accept The Binding##1739 |goto Stormwind City 25.26,78.56
|only if Warlock
step
Follow the path down |goto 24.96,79.42 < 7 |walk
Run down the stairs |goto 24.30,78.63 < 7 |walk
Run down the stairs |goto 26.16,79.32 < 7 |walk
use the Heartswood Core##6913
|tip Use it while standing on the pink symbol on the ground.
|tip Downstairs inside the building, inside the crypt.
kill Summoned Succubus##5677 |q 1739/1 |goto 25.11,77.46
|only if Warlock
step
Follow the path up |goto 26.03,79.83 < 7 |walk
Run up the stairs |goto 23.31,79.68 < 7 |walk
talk Gakin the Darkbinder##6122
|tip Upstairs inside the building, in the basement above the crypt.
turnin The Binding##1739 |goto 25.25,78.56
|only if Warlock
step
Leave the building |goto 29.14,74.17 < 7 |c |q 89
|only if Warlock
step
Enter the building |goto Stormwind City 55.29,68.12 < 7 |walk
talk Olivia Burnside##2455
|tip Inside the building.
|tip Collect these items from the bank.
collect Letter to Delgren##5354 |goto Stormwind City 57.54,72.45 |q 967
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Darkshore (20-20)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Darkshore",
condition_suggested=function() return level == 20 and not completedq(967) end,
next="Leveling Guides\\Classic (12-58)\\Ashenvale (20-22)",
},[[
step
Enter the building |goto The Exodar/0 41.87,72.81 < 7 |walk
talk Farseer Nobundo##17204
|tip Inside the building.
accept Call of Water##9501 |goto The Exodar/0 31.28,27.65
|only if Shaman
step
Run up the ramp |goto 53.27,33.16 < 20 |walk
Enter the building |goto 59.63,24.50 < 10 |walk
talk Caregiver Breel##16739
|tip Inside the building.
home The Exodar |goto 59.59,19.40
|only if Shaman
step
Run up the ramp |goto 64.24,35.79 < 10 |walk
Leave the building |goto 74.44,54.03 < 10 |walk
Cross the bridge |goto Azuremyst Isle/0 42.42,5.26 < 20 |only if walking
Cross the bridge |goto Bloodmyst Isle/0 58.71,73.84 < 20 |only if walking
Follow the path |goto Bloodmyst Isle/0 54.18,61.46 < 20 |only if walking
talk Laando##17554
fpath Blood Watch |goto Bloodmyst Isle/0 57.68,53.87
|only if Shaman
step
talk Aqueous##17275
|tip Underwater.
turnin Call of Water##9501 |goto 32.30,16.18
accept Call of Water##9503 |goto 32.30,16.18
|only if Shaman
step
Follow the path |goto 44.46,26.98 < 50 |only if walking
Continue following the path |goto 46.92,33.46 < 50 |only if walking
kill Fouled Water Spirit##17358+
collect 6 Foul Essence##23744 |q 9503/1 |goto 29.10,38.36
|only if Shaman
step
Jump down carefully |goto 33.74,35.47 < 15 |only if walking
talk Aqueous##17275
|tip Underwater.
turnin Call of Water##9503 |goto 32.30,16.18
accept Call of Water##9504 |goto 32.30,16.18
|only if Shaman
step
talk Fiora Longears##4456
accept Journey to Astranaar##1133 |goto Darkshore/0 33.77,42.37
step
talk Innkeeper Shaussiy##6737
|tip Inside the building.
home Auberdine |goto 37.04,44.13
step
click WANTED: Murkdeep!
accept WANTED: Murkdeep!##4740 |goto 37.23,44.23
step
Follow the road |goto 40.06,46.75 < 30 |only if walking
Follow the path |goto 41.87,76.70 < 30 |only if walking
talk Onu##3616
turnin Onu##948 |goto 43.55,76.29
accept The Master's Glaive##944 |goto 43.55,76.29
step
Enter the Master's Glaive |q 944/1 |goto 38.57,86.30
step
use the Phial of Scrying##5251
click Scrying Bowl
|tip It appears on the ground next to you.
turnin The Master's Glaive##944 |goto 38.53,86.17
accept The Twilight Camp##949 |goto 38.53,86.17
step
_Destroy This Items:_
|tip It is no longer needed.
trash Phial of Scrying##5251
step
click Twilight Tome
turnin The Twilight Camp##949 |goto 38.54,86.05
accept Return to Onu##950 |goto 38.54,86.05
step
talk Therylune##3584
|tip She walks around this area.
|tip This is an escort quest.
|tip If she's not here, someone may be escorting her.
|tip Wait for her to respawn.
accept Therylune's Escape##945 |goto 38.64,87.34 |noautoaccept
step
Watch the dialogue
|tip Follow Therylune and protect her as she walks.
|tip She eventually walks to this location.
Escort Therylune Away from the Master's Glaive |q 945/1 |goto 40.51,87.09
step
talk Prospector Remtravel##2917
|tip This is an escort quest.
|tip If he's not here, someone may be escorting him.
|tip Wait until he respawns.
turnin The Absent Minded Prospector##729 |goto 35.73,83.70
accept The Absent Minded Prospector##731 |goto 35.73,83.70 |noautoaccept
step
Watch the dialogue
|tip Follow Prospector Remtravel and protect him as he walks.
|tip He is very weak and can die easily, so get the enemies off of him quickly.
|tip Troggs will appear and ambush him 3 times along the way.
|tip He eventually walks back to this location.
Escort Prospector Remtravel |q 731/1 |goto 35.73,83.70
|tip If you have trouble, try to find someone to help you, or skip it.
step
Follow the path |goto 35.46,83.22 < 20 |only if walking
click Beached Sea Creature
accept Beached Sea Creature##4733 |goto 31.27,87.39
step
click Beached Sea Turtle
accept Beached Sea Turtle##4732 |goto 31.24,85.63
step
click Beached Sea Turtle
accept Beached Sea Turtle##4731 |goto 31.69,83.72
step
click Beached Sea Creature
accept Beached Sea Creature##4730 |goto 32.66,80.81
step
Kill Greymist enemies around this area
|tip Groups of murlocs will appear near the water and run into the camp.
|tip Kill them to get Murkdeep to appear.
kill Murkdeep##10323 |q 4740/1 |goto 36.51,76.59
step
talk Onu##3616
turnin Return to Onu##950 |goto 43.56,76.29
step
Watch the dialogue
talk Onu##3616
accept Mathystra Relics##951 |goto 43.56,76.29
step
talk Kerlonian Evershade##11218
|tip This is an escort quest.
|tip If he's not here, someone may be escorting him.
|tip Wait for him to respawn.
accept The Sleeper Has Awakened##5321 |goto 44.39,76.43 |noautoaccept
step
click Kerlonian's Chest
collect Horn of Awakening##13536 |q 5321/1 |goto 44.38,76.31
stickystart "Escort_Kerlonian_Evershade"
step
Follow the road |goto 41.66,76.98 < 30 |only if walking
Follow the path |goto 40.74,86.36 < 30 |only if walking
Follow the path up |goto 45.45,90.70 < 10 |only if walking
talk Sentinel Aynasha##11711
|tip If she's not here, someone may have just recently done this quest.
|tip Wait for her to respawn.
accept One Shot. One Kill.##5713 |goto 45.94,90.29
step
Watch the dialogue
Kill the enemies that attack in waves
kill Marosh the Devious##11714
|tip He will attack after the second wave of enemies
Protect Aynasha |q 5713/1 |goto 45.94,90.29
step
label "Escort_Kerlonian_Evershade"
Enter Ashenvale and follow the road |goto 43.49,94.32 < 30 |only if walking
Enter the building |goto Ashenvale 26.87,36.65 < 10 |walk
use the Horn of Awakening##13536
|tip Kerlonian Evershade will follow you.
|tip He will sometimes stop walking and fall asleep.
|tip Use it near him when he falls asleep.
|tip Make sure he is next to you at all times.
|tip Avoid walking on the road, or you will get ambushed by groups of enemies.
|tip You can still follow the road, but stay in the forest on the sides.
|tip Lead Kerlonian Evershade to this location inside the building.
|tip Try to hurry, this quest is timed.
|tip If you fail, you can skip it.
Escort Kerlonian Evershade to Maestra's Post |q 5321/2 |goto Ashenvale 27.15,35.92
step
talk Liladris Moonriver##11219
|tip On the balcony of the building.
turnin The Sleeper Has Awakened##5321 |goto 27.26,35.58
step
talk Sentinel Onaeya##11806
turnin One Shot.  One Kill.##5713 |goto 26.61,36.73
step
talk Delgren the Purifier##3663
turnin The Tower of Althalaxx##967 |goto 26.20,38.70
accept The Tower of Althalaxx##970 |goto 26.20,38.70
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Ashenvale (20-22)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Ashenvale",
condition_suggested=function() return level >= 20 and level <= 22 and not completedq(945) end,
next="Leveling Guides\\Classic (12-58)\\Stonetalon Mountains (22-23)",
},[[
step
talk Orendil Broadleaf##3847
accept Bathran's Hair##1010 |goto Ashenvale 26.44,38.59
step
Kill Dark Strand enemies around this area
collect Glowing Soul Gem##5366 |q 970/1 |goto 31.39,30.62
step
Kill enemies around this area
Reach Level 21 |ding 21 |goto 31.39,30.62
step
click Plant Bundle+
|tip They look like small piles of grey straw on the ground around this area.
|tip They can respawn fairly quickly.
collect 5 Bathran's Hair##5437 |q 1010/1 |goto 30.44,24.05
You can find more around: |notinsticky
[31.75,22.70]
[32.29,21.79]
step
talk Orendil Broadleaf##3847
turnin Bathran's Hair##1010 |goto 26.44,38.59
accept Orendil's Cure##1020 |goto 26.44,38.59
step
talk Delgren the Purifier##3663
turnin The Tower of Althalaxx##970 |goto 26.20,38.70
accept The Tower of Althalaxx##973 |goto 26.20,38.70
step
Follow the road |goto 25.53,38.43 < 20 |only if walking
Follow the path down |goto 25.77,47.09 < 20 |only if walking
talk Therysil##3585
turnin Therylune's Escape##945 |goto 22.65,51.91
step
Follow the road |goto 26.16,46.68 < 20 |c |q 1008 |future
step
talk Daelyshia##4267
fpath Astranaar |goto 34.41,47.99
step
talk Shindrell Swiftfire##3845
turnin Journey to Astranaar##1133 |goto 34.67,48.84
accept The Zoram Strand##1008 |goto 34.67,48.84
step
talk Sentinel Thenysil##4079
accept On Guard in Stonetalon##1070 |goto 34.89,49.79
step
talk Faldreas Goeth'Shael##3996
accept Journey to Stonetalon Peak##1056 |goto 35.77,49.10
step
talk Raene Wolfrunner##3691
|tip Inside the building.
accept Raene's Cleansing##991 |goto 36.62,49.58
accept Culling the Threat##1054 |goto 36.62,49.58
step
talk Innkeeper Kimlya##6738
|tip Upstairs inside the building.
home Astranaar |goto 36.99,49.22
step
Enter the building |goto 37.20,51.86 < 7 |walk
talk Pelturas Whitemoon##3894
|tip Inside the building.
turnin Orendil's Cure##1020 |goto 37.37,51.79
step
Watch the dialogue
talk Pelturas Whitemoon##3894
|tip Inside the building.
accept Elune's Tear##1033 |goto 37.37,51.79
step
Follow the road |goto 32.70,47.09 < 30 |only if walking
Follow the path |goto 24.91,38.06 < 30 |only if walking
click Teronis' Corpse
turnin Raene's Cleansing##991 |goto 20.31,42.33
accept Raene's Cleansing##1023 |goto 20.31,42.33
step
Kill Saltspittle enemies around this area
collect Glowing Gem##5463 |q 1023/1 |goto 20.31,42.33
step
Follow the path |goto 18.45,32.56 < 30 |only if walking
talk Talen##3846
accept The Ancient Statuette##1007 |goto 14.79,31.30
stickystart "Collect_Wrathtail_Heads"
step
click Ancient Statuette
collect Ancient Statuette##5424 |q 1007/1 |goto 14.20,20.64
step
label "Collect_Wrathtail_Heads"
Kill Wrathtail enemies around this area
collect 20 Wrathtail Head##5490 |q 1008/1 |goto 15.14,22.61
You can find more around: |notinsticky
[13.12,29.41]
step
Kill enemies around this area
|tip You are about to have to kill a level 23 enemy, with 2 bodyguards.
|tip It will help to be a higher level.
Reach Level 22 |ding 22 |goto 15.14,22.61
You can find more around: |notinsticky
[13.12,29.41]
step
talk Talen##3846
turnin The Ancient Statuette##1007 |goto 14.79,31.30
step
Watch the dialogue
talk Talen##3846
accept Ruuzel##1009 |goto 14.79,31.30
step
kill Ruuzel##3943
|tip She looks like a green naga with pink fins.
|tip She walks clockwise near the water around this small island.
|tip She has 2 guards with her.
|tip Try to kite her away from her guards, down the coast to the east, to fight her alone.
|tip If you have trouble, try to get someone to help you.
collect Ring of Zoram##5445 |q 1009/1 |goto 6.58,13.46
step
talk Talen##3846
turnin Ruuzel##1009 |goto 14.79,31.30
step
talk Raene Wolfrunner##3691
|tip Inside the building.
turnin Raene's Cleansing##1023 |goto 36.62,49.58
accept Raene's Cleansing##1024 |goto 36.62,49.58
accept An Aggressive Defense##1025 |goto 36.62,49.58
step
_Destroy This Item:_
|tip It is no longer needed.
trash Teronis' Journal##5505
step
talk Shindrell Swiftfire##3845
turnin The Zoram Strand##1008 |goto 34.67,48.84
accept Pridewings of Stonetalon##1134 |goto 34.67,48.84
step
Follow the path up |goto 41.60,50.11 < 15 |only if walking
Continue up the path |goto 43.57,45.62 < 20 |only if walking
click Elune's Tear+
|tip They look like white balls on the ground around this area.
collect Elune's Tear##5493 |q 1033/1 |goto 46.24,45.96
step
Follow the path up |goto 46.82,49.04 < 10 |only if walking
Follow the path |goto 51.37,45.68 < 20 |only if walking
talk Shael'dryn##3916
|tip She walks around this area.
turnin Raene's Cleansing##1024 |goto 53.54,46.29
accept Raene's Cleansing##1026 |goto 53.54,46.29
stickystart "Kill_Foulweald_Ursas"
stickystart "Kill_Foulweald_Totemics"
stickystart "Kill_Foulweald_Warriors"
step
Follow the path |goto 51.05,45.80 < 30 |only if walking
Follow the path down |goto 51.22,58.48 < 20 |only if walking
kill Foulweald Den Watcher##3746 |q 1025/1 |goto 50.44,61.25
You can find more around [55.84,62.92]
step
label "Kill_Foulweald_Ursas"
kill 2 Foulweald Ursa##3749 |q 1025/2 |goto 50.44,61.25
You can find more around [55.84,62.92]
step
label "Kill_Foulweald_Totemics"
kill 10 Foulweald Totemic##3750 |q 1025/3 |goto 50.44,61.25
You can find more around [55.84,62.92]
step
label "Kill_Foulweald_Warriors"
kill 12 Foulweald Warrior##3743 |q 1025/4 |goto 50.44,61.25
You can find more around [55.84,62.92]
step
Follow the road |goto 51.17,58.06 < 30 |only if walking
Enter the building |goto 37.20,51.86 < 7 |walk
talk Pelturas Whitemoon##3894
|tip Inside the building.
turnin Elune's Tear##1033 |goto 37.37,51.79
step
Watch the dialogue
talk Pelturas Whitemoon##3894
|tip Inside the building.
accept The Ruins of Stardust##1034 |goto 37.37,51.79
step
talk Raene Wolfrunner##3691
|tip Inside the building.
turnin An Aggressive Defense##1025 |goto 36.62,49.58
step
Follow the path |goto 37.25,59.55 < 30 |only if walking
click Stardust Covered Bush+
|tip They look like bushes with white sparkles floating off of them on the ground around this area.
collect 5 Handful of Stardust##5494 |q 1034/1 |goto 33.27,67.20
step
use the Empty Bota Bag##23749
collect Filled Bota Bag##23750 |q 9504/1 |goto Ashenvale 33.55,67.44
|only if Shaman
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Stonetalon Mountains (22-23)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Stonetalon Mountains",
condition_suggested=function() return level >= 22 and level <= 23 and not completedq(1056) end,
next="Leveling Guides\\Classic (12-58)\\Darkshore (23-24)",
},[[
step
Follow the path |goto Ashenvale 36.14,68.58 < 30 |only if walking
Continue following the path |goto Ashenvale 37.26,71.45 < 30 |only if walking
Enter the tunnel |goto Ashenvale 42.27,71.09 < 10 |only if walking
Follow the main path and leave the tunnel |goto Stonetalon Mountains 78.24,42.68 < 10 |only if walking
Enter the building |goto Stonetalon Mountains 59.04,62.24 < 7 |walk
talk Ziz Fizziks##4201
|tip Inside the building.
accept Super Reaper 6000##1093 |goto Stonetalon Mountains 58.99,62.60
step
Follow the path |goto 60.79,64.04 < 30 |only if walking
Continue following the path |goto 60.11,70.51 < 30 |only if walking
Continue following the path |goto 58.98,68.42 < 30 |only if walking
talk Kaela Shadowspear##4080
turnin On Guard in Stonetalon##1070 |goto 59.90,66.85
accept On Guard in Stonetalon##1085 |goto 59.90,66.85
step
talk Gaxim Rustfizzle##4077
turnin On Guard in Stonetalon##1085 |goto 59.52,67.15
accept A Gnome's Respite##1071 |goto 59.52,67.15
stickystart "Kill_Venture_Co_Loggers"
stickystart "Kill_Venture_Co_Deforesters"
step
kill Venture Co. Operator##3988+
collect Super Reaper 6000 Blueprints##5734 |q 1093/1 |goto 62.33,53.49
You can find more around: |notinsticky
[66.16,52.01]
[66.49,45.90]
[70.97,43.13]
[73.02,49.47]
[74.68,55.44]
step
talk Veenix##4086
|tip Sell any items you don't need, to clear some bag space.
|tip Repair your items.
Click Here to Continue |confirm |goto 58.22,51.74 |q 1071
step
label "Kill_Venture_Co_Loggers"
kill 10 Venture Co. Logger##3989 |q 1071/1 |goto 60.44,52.78
You can find more around: |notinsticky
[71.20,56.50]
[70.01,48.11]
[64.24,46.72]
step
label "Kill_Venture_Co_Deforesters"
kill 10 Venture Co. Deforester##3991 |q 1071/2 |goto 60.44,52.78
You can find more around: |notinsticky
[71.20,56.50]
[70.01,48.11]
[64.24,46.72]
step
Enter the building |goto 59.04,62.24 < 7 |walk
talk Ziz Fizziks##4201
|tip Inside the building.
turnin Super Reaper 6000##1093 |goto 58.99,62.60
step
Follow the path |goto 60.79,64.04 < 30 |only if walking
Continue following the path |goto 60.11,70.51 < 30 |only if walking
Continue following the path |goto 58.98,68.42 < 30 |only if walking
talk Gaxim Rustfizzle##4077
turnin A Gnome's Respite##1071 |goto 59.52,67.15
accept An Old Colleague##1072 |goto 59.52,67.15
accept A Scroll from Mauren##1075 |goto 59.52,67.15
step
Follow the road |goto 56.34,64.34 < 30 |only if walking
Continue following the road |goto 53.12,61.21 < 30 |only if walking
Kill Pridewing enemies around this area
|tip They look like wyverns.
collect 12 Pridewing Venom Sac##5808 |q 1134/1 |goto 51.55,45.08
You can find more around: |notinsticky
[54.89,42.08]
[54.05,39.63]
[45.90,46.08]
step
Follow the path |goto 46.86,31.45 < 20 |only if walking
Continue following the path |goto 43.26,16.17 < 30 |only if walking
talk Keeper Albagorm##3994
turnin Journey to Stonetalon Peak##1056 |goto 37.10,8.10
step
talk Teloren##4407
fpath Stonetalon Peak |goto 36.44,7.18
step
talk Aqueous##17275
|tip Underwater.
turnin Call of Water##9504 |goto Bloodmyst Isle 32.30,16.18
accept Call of Water##9508 |goto Bloodmyst Isle 32.30,16.18
|only if Shaman
step
Follow the path |goto 44.46,26.98 < 50 |only if walking
Continue following the path |goto 46.92,33.46 < 50 |only if walking
click Barrel of Filth
Watch the dialogue
kill Tel'athion the Impure##17359
collect Head of Tel'athion##23997 |q 9508/1 |goto 25.56,40.79
|only if Shaman
step
Jump down carefully |goto 33.74,35.47 < 15 |only if walking
talk Aqueous##17275
|tip Underwater.
turnin Call of Water##9508 |goto 32.30,16.18
accept Call of Water##9509 |goto 32.30,16.18
|only if Shaman
step
Follow the path |goto 44.17,26.89 < 50 |only if walking
Follow the path up |goto 55.36,52.32 < 20 |only if walking
Enter the building |goto The Exodar/0 74.09,53.75 < 10 |walk
talk Farseer Nobundo##17204
|tip Inside the building.
turnin Call of Water##9509 |goto The Exodar/0 31.28,27.65
|only if Shaman
step
Run up the ramp |goto 34.86,74.54 < 15 |walk
Leave the building |goto 41.49,74.16 < 10 |c |q 986 |future
|only if Shaman
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Darkshore (23-24)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Darkshore",
condition_suggested=function() return level >= 23 and level <= 24 and not completedq(741) end,
next="Leveling Guides\\Classic (12-58)\\Ashenvale (24-24)",
},[[
step
talk Gwennyth Bly'Leggonde##10219
turnin Beached Sea Creature##4730 |goto Darkshore 36.62,45.59
turnin Beached Sea Turtle##4731 |goto Darkshore 36.62,45.59
turnin Beached Sea Turtle##4732 |goto Darkshore 36.62,45.59
turnin Beached Sea Creature##4733 |goto Darkshore 36.62,45.59
step
talk Innkeeper Shaussiy##6737
|tip Inside the building.
home Auberdine |goto 37.04,44.12
step
talk Sentinel Glynda Nal'Shea##2930
|tip She walks around this area.
turnin WANTED: Murkdeep!##4740 |goto 37.71,43.39
step
talk Archaeologist Hollee##2913
turnin The Absent Minded Prospector##731 |goto 37.44,41.84
accept The Absent Minded Prospector##741 |goto 37.44,41.84
step
talk Terenthis##3693
|tip Inside the building.
accept A Lost Master##986 |goto 39.37,43.48
step
Enter the building |goto 37.76,41.35 < 10 |walk
talk Thundris Windweaver##3649
|tip Inside the building.
accept Onward to Ashenvale##10752 |goto 37.39,40.13
step
Follow the path |goto 37.07,38.39 < 20 |only if walking
Follow the road |goto 42.60,36.66 < 30 |only if walking
click Mathystra Relic+
|tip They look like various small grey-ish colored stone objects on the ground around this area.
|tip They may not all contain the quest item.
collect 6 Mathystra Relic##5273 |q 951/1 |goto 58.64,23.94
You can find more around: |notinsticky
[61.03,21.68]
[58.13,20.36]
[56.88,22.20]
step
talk Gelkak Gyromast##6667
accept Gyromast's Retrieval##2098 |goto 56.65,13.48
step
Kill Crawler enemies around this area
|tip They look like crabs.
collect Bottom of Gelkak's Key##7500 |q 2098/3 |goto 56.47,14.58
You can find more around [52.01,21.19]
step
Kill Greymist enemies around this area
|tip Underwater.
collect Middle of Gelkak's Key##7499 |q 2098/2 |goto 54.95,12.16
stickystart "Collect_Fine_Moonstalker_Pelts"
step
kill Giant Foreststrider##2323+
collect Top of Gelkak's Key##7498 |q 2098/1 |goto 61.19,14.79
You can find more around [61.12,10.76]
step
label "Collect_Fine_Moonstalker_Pelts"
Kill Moonstalker enemies around this area
|tip They look like blue and black striped tigers.
|tip Only the Matriarchs and Sires will drop the quest item.
collect 5 Fine Moonstalker Pelt##5386 |q 986/1 |goto 59.67,12.89
You can find more around [62.68,7.47]
step
talk Gelkak Gyromast##6667
turnin Gyromast's Retrieval##2098 |goto 56.65,13.48
accept Gyromast's Revenge##2078 |goto 56.65,13.48
step
Locate the Threshwackonator 4100 |goto 55.81,18.29 < 15 |c |q 2078
step
talk The Threshwackonator 4100##6669
Choose _"Turn the key to start the machine."_
Run North on the Beach |goto 55.81,18.29 > 15 |c |q 2078
|tip The Threshwackonator 4100 will follow you.
step
kill The Threshwackonator 4100##6669
|tip He will attack you when he reaches this location.
Defeat Gelkak's First Mate |q 2078/1 |goto 56.65,13.48
step
talk Gelkak Gyromast##6667
turnin Gyromast's Revenge##2078 |goto 56.65,13.48
|tip Make sure to save the "Elixir of Water Breathing" quest reward items.
|tip You will use them for later quests.
step
_Destroy This Item:_
|tip It is no longer needed.
trash Gyromast's Key##7442
step
Kill enemies around this area
Reach Level 24 |ding 24 |goto 58.64,23.94
You can find more around: |notinsticky
[61.03,21.68]
[58.13,20.36]
[56.88,22.20]
step
talk Terenthis##3693
|tip Inside the building.
turnin A Lost Master##986 |goto 39.37,43.48
accept A Lost Master##993 |goto 39.37,43.48
step
Follow the path |goto 41.81,76.80 < 30 |only if walking
talk Onu##3616
turnin Mathystra Relics##951 |goto 43.55,76.29
step
Enter the cave |goto 44.58,85.11 < 10 |walk
talk Volcor##3692
|tip Inside the cave.
turnin A Lost Master##993 |goto 45.01,85.30
accept Escape Through Force##994 |goto 45.01,85.30 |or |noautoaccept
|tip This quest rewards more experience.
|tip The quest reward for this quest is better for non-casters.
|tip Volcor will help you fight your way to the road.
|tip You will be attacked by multiple groups of enemies along the way.
_Or_
accept Escape Through Stealth##995 |goto 45.01,85.30 |or |noautoaccept
|tip The quest reward for this quest is better for casters.
|tip Volcor runs away alone, allowing you to stealth out by yourself.
step
Watch the dialogue
|tip Follow Volcor and protect him as he walks.
|tip He eventually walks to this location.
Help Volcor to the Road |q 994/1 |goto 41.95,81.80
|only if havequest(994) or completedq(994)
step
Watch the dialogue
|tip Volcor will run out of the cave and escape by himself.
|tip Do not follow him.
|tip You can then sneak out of the area stealthed by yourself.
Help Volcor Escape the Cave |q 995/1 |goto 45.01,85.30
|only if havequest(995) or completedq(995)
step
talk Terenthis##3693
|tip Inside the building.
turnin Escape Through Force##994 |goto 39.37,43.48 |or |only if havequest(994) or completedq(994)
turnin Escape Through Force##995 |goto 39.37,43.48 |or |only if havequest(995) or completedq(995)
step
Watch the dialogue
|tip Inside the building.
talk Sentinel Selarin##3694
accept Trek to Ashenvale##990 |goto 39.30,43.47
step
Follow the path |goto Teldrassil 56.77,92.68 < 20 |only if walking
talk Vesprystus##3838
fpath Rut'theran Village |goto Teldrassil 58.40,94.02
step
Cross the bridge |goto Darnassus/0 38.53,48.36 < 20 |only if walking
talk Chief Archaeologist Greywhisker##2912
turnin The Absent Minded Prospector##741 |goto Darnassus/0 31.24,84.51
accept The Absent Minded Prospector##942 |goto Darnassus/0 31.24,84.51
step
talk Garryeth##4209
|tip Put these items in the bank.
bank Elixir of Water Breathing##5996 |goto 39.87,42.19 |q 942
|tip You should have 5 of these.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Ashenvale (24-25)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Ashenvale",
condition_suggested=function() return level >= 24 and level <= 25 and not completedq(1016) end,
next="Leveling Guides\\Classic (12-58)\\Wetlands (25-27)",
},[[
step
talk Shindrell Swiftfire##3845
turnin Pridewings of Stonetalon##1134 |goto Ashenvale 34.67,48.84
accept Kayneth Stillwind##4581 |goto Ashenvale 34.67,48.84
step
talk Raene Wolfrunner##3691
|tip Inside the building.
turnin Trek to Ashenvale##990 |goto 36.62,49.58
turnin Onward to Ashenvale##10752 |goto 36.62,49.58
step
Enter the building |goto 37.19,51.86 < 7 |walk
talk Pelturas Whitemoon##3894
|tip Inside the building.
turnin The Ruins of Stardust##1034 |goto 37.37,51.79
step
Watch the dialogue
talk Pelturas Whitemoon##3894
|tip Inside the building.
accept Fallen Sky Lake##1035 |goto 37.37,51.79
step
Follow the path |goto 35.39,57.31 < 20 |only if walking
Follow the path |goto 28.40,60.72 < 20 |only if walking
Follow the path up |goto 25.86,63.07 < 15 |only if walking
kill Ilkrud Magthrull##3664
|tip Try to carefully pull the 2 Felhounds near him, without pulling him too.
|tip He has a succubus guard, and he summons multiple voidwalkers throughout the fight, so try to kill him quickly.
|tip If you have trouble, try to find someone to help you.
collect Ilkrud Magthrull's Tome##5533 |q 973/1 |goto 25.28,60.69
step
Follow the path |goto 28.41,60.89 < 20 |only if walking
Follow the path |goto 31.28,46.51 < 30 |only if walking
Continue following the path |goto 33.10,41.23 < 30 |only if walking
Continue following the path |goto 36.14,39.67 < 30 |only if walking
Continue following the path |goto 38.48,36.14 < 20 |only if walking
kill Dal Bloodclaw##3987
|tip He looks like a grey furbolg that walks around this area.
collect Dal Bloodclaw's Skull##5544 |q 1054/1 |goto 37.35,35.60
step
Follow the path |goto 38.49,36.13 < 20 |only if walking
Continue following the path |goto 37.86,39.35 < 30 |only if walking
Continue following the path |goto 33.10,41.23 < 30 |only if walking
Follow the road |goto 30.17,47.29 < 30 |only if walking
talk Delgren the Purifier##3663
turnin The Tower of Althalaxx##973 |goto 26.20,38.70
accept The Tower of Althalaxx##1140 |goto 26.20,38.70
step
Follow the road |goto 25.49,38.85 < 20 |only if walking
talk Raene Wolfrunner##3691
|tip Inside the building.
turnin Culling the Threat##1054 |goto 36.62,49.58
step
Follow the road |goto 38.43,57.74 < 30 |only if walking
Follow the path down |goto 51.23,58.37 < 20 |only if walking
Enter the building |goto 50.12,66.47 < 10 |walk
talk Sentinel Velene Starstrike##3885
|tip Inside the building.
accept Elemental Bracers##1016 |goto 49.80,67.21
step
kill Befouled Water Elemental##3917+
|tip You can find more in the water surrounding this small island.
collect 5 Intact Elemental Bracer##12220 |goto 48.38,69.68 |q 1016
step
use the Divining Scroll##5456
collect Divined Scroll##5455 |q 1016/1
step
Kill enemies around this area
|tip You can find more in the water surrounding this small island.
Reach Level 25 |ding 25 |goto 48.38,69.68
step
talk Sentinel Velene Starstrike##3885
|tip Inside the building.
turnin Elemental Bracers##1016 |goto 49.80,67.21
step
_Destroy These Items:_
|tip They are no longer needed.
trash Intact Elemental Bracer##12220
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Wetlands (25-27)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Wetlands",
condition_suggested=function() return level >= 25 and level <= 27 and not completedq(1075) end,
next="Leveling Guides\\Classic (12-58)\\Redridge Mountains (27-28)",
},[[
step
talk Karl Boran##1242
|tip He walks around this area.
accept Claws from the Deep##279 |goto Wetlands 8.31,58.53
step
talk First Mate Fitzsimmons##1239
accept The Third Fleet##288 |goto 10.89,59.67
accept The Greenwarden##463 |goto 10.89,59.67
step
Enter the building |goto 10.79,59.76 < 7 |walk
talk Innkeeper Helbrek##1464
|tip He walks around inside the building.
home Deepwater Tavern |goto 10.70,60.95
step
talk Innkeeper Helbrek##1464
|tip He walks around inside the building.
buy Flagon of Mead##2594 |q 288/1 |goto 10.70,60.95
step
talk Archaeologist Flagongut##2911
|tip Upstairs inside the building.
turnin The Absent Minded Prospector##942 |goto 10.84,60.43
accept The Absent Minded Prospector##943 |goto 10.84,60.43
step
Leave the building |goto 10.79,59.77 < 7 |walk
talk First Mate Fitzsimmons##1239
turnin The Third Fleet##288 |goto 10.89,59.67
accept The Cursed Crew##289 |goto 10.89,59.67
step
talk Sida##2111
accept Digging Through the Ooze##470 |goto 11.80,57.99
step
Enter the building |goto 10.30,56.30 < 10 |walk
Run up the stairs |goto 9.80,57.77 < 5 |walk
talk Captain Stoutfist##2104
|tip Upstairs inside the building, in the large room.
accept War Banners##464 |goto 9.86,57.49
stickystart "Slay_Bluegill_Murlocs"
step
Leave the building |goto 10.28,56.36 < 10 |walk
talk James Halloran##2094
|tip He walks around this area.
accept Young Crocolisk Skins##484 |goto 8.51,55.71
step
Follow the path |goto 10.76,55.06 < 15 |only if walking
talk Tarrel Rockweaver##2096
|tip He walks around this area.
accept In Search of The Excavation Team##305 |goto 11.50,52.14
step
kill Gobbler##1259
|tip He looks like a grey murloc that walks around this area.
collect Gobbler's Head##3618 |q 279/2 |goto 17.99,40.38
Also check around: |notinsticky
[14.45,41.53]
[14.86,35.88]
step
label "Slay_Bluegill_Murlocs"
Kill Bluegill enemies around this area
Slay #12# Bluegill Murlocs |q 279/1 |goto 13.64,39.55
step
Kill enemies around this area
Reach Level 25 |ding 25 |goto 13.64,39.55
step
kill Young Wetlands Crocolisk##1417+
|tip Underwater around this area.
collect 4 Young Crocolisk Skin##3397 |q 484/1 |goto 20.01,46.59
You can find more around: |notinsticky
[27.47,40.25]
[34.44,36.03]
step
Follow the path |goto 34.19,41.09 < 15 |only if walking
Follow the path up |goto 37.11,42.98 < 15 |only if walking
talk Ormer Ironbraid##1078
|tip He walks around this area.
accept Ormer's Revenge##294 |goto 38.18,50.89
step
Enter the cave |goto 38.32,51.59 < 10 |walk
talk Merrin Rockweaver##1076
|tip Inside the cave.
turnin In Search of The Excavation Team##305 |goto 38.91,52.34
accept In Search of The Excavation Team##306 |goto 38.91,52.34
step
click Flagongut's Fossil
|tip Inside the cave.
collect Flagongut's Fossil##5234 |q 943/2 |goto 38.86,52.21
stickystart "Kill_Mottled_Raptors"
stickystart "Kill_Mottled_Screechers"
step
Follow the path down |goto 37.10,47.90 < 15 |only if walking
Follow the path |goto 34.02,40.85 < 15 |only if walking
Kill Mottled enemies around this area
|tip They look like raptors.
collect Stone of Relu##5233 |q 943/1 |goto 29.12,44.15
You can find more around: |notinsticky
[25.11,47.95]
[22.90,53.35]
step
label "Kill_Mottled_Raptors"
kill 10 Mottled Raptor##1020 |q 294/1 |goto 29.12,44.15
You can find more around: |notinsticky
[25.11,47.95]
[22.90,53.35]
step
label "Kill_Mottled_Screechers"
kill 10 Mottled Screecher##1021 |q 294/2 |goto 29.12,44.15
You can find more around: |notinsticky
[25.11,47.95]
[22.90,53.35]
step
Follow the path |goto 34.19,41.09 < 15 |only if walking
Follow the path up |goto 37.11,42.98 < 15 |only if walking
talk Ormer Ironbraid##1078
|tip He walks around this area.
turnin Ormer's Revenge##294 |goto 38.18,50.89
accept Ormer's Revenge##295 |goto 38.18,50.89
step
Enter the cave |goto 38.32,51.59 < 10 |walk
talk Prospector Whelgar##1077
|tip Inside the cave.
accept Uncovering the Past##299 |goto 38.81,52.39
stickystart "Collect_Golm_Fragment"
stickystart "Collect_Modr_Fragment"
stickystart "Collect_Ados_Fragment"
stickystart "Kill_Mottled_Scytheclaws"
stickystart "Kill_Mottled_Razormaws"
step
Follow the path down |goto 37.10,47.90 < 15 |only if walking
click Loose Soil
|tip It looks like a large pile of dark brown dirt on the ground.
|tip It randomly spawns in multiple locations around this area.
|tip It can also spawn up on the cliff next to the higher level Sarltooth raptor.
|tip If it does, try to get someone to help you, if you can't solo him.
collect Neru Fragment##2661 |q 299/4 |goto 36.51,42.11
Also check: |notinsticky
Around [34.73,45.31]
Around [32.82,48.77]
Around [35.30,49.72]
Up the path at [31.90,50.17]
step
label "Collect_Golm_Fragment"
click Ancient Relic
|tip It looks like a large wide yellow vase sitting upright on the ground.
|tip It randomly spawns in multiple locations around this area. |notinsticky
|tip It can also spawn up on the cliff next to the higher level Sarltooth raptor. |notinsticky
|tip If it does, try to get someone to help you, if you can't solo him. |notinsticky
collect Golm Fragment##2660 |q 299/3 |goto 36.51,42.11
Also check: |notinsticky
Around [34.73,45.31]
Around [32.82,48.77]
Around [35.30,49.72]
Up the path at [31.90,50.17]
step
label "Collect_Modr_Fragment"
click Ancient Relic
|tip It looks like a large tall red vase sitting upright on the ground.
|tip It randomly spawns in multiple locations around this area. |notinsticky
|tip It can also spawn up on the cliff next to the higher level Sarltooth raptor. |notinsticky
|tip If it does, try to get someone to help you, if you can't solo him. |notinsticky
collect Modr Fragment##2659 |q 299/2 |goto 36.51,42.11
Also check: |notinsticky
Around [34.73,45.31]
Around [32.82,48.77]
Around [35.30,49.72]
Up the path at [31.90,50.17]
step
label "Collect_Ados_Fragment"
click Ancient Relic
|tip It looks like a large stone box container on the ground.
|tip It randomly spawns in multiple locations around this area. |notinsticky
|tip It can also spawn up on the cliff next to the higher level Sarltooth raptor. |notinsticky
|tip If it does, try to get someone to help you, if you can't solo him. |notinsticky
collect Ados Fragment##2658 |q 299/1 |goto 36.51,42.11
Also check: |notinsticky
Around [34.73,45.31]
Around [32.82,48.77]
Around [35.30,49.72]
Up the path at [31.90,50.17]
step
label "Kill_Mottled_Scytheclaws"
kill 10 Mottled Scytheclaw##1022 |q 295/1 |goto 34.73,45.31
[32.82,48.77]
[35.30,49.72]
step
label "Kill_Mottled_Razormaws"
kill 10 Mottled Razormaw##1023 |q 295/2 |goto 34.73,45.31
[32.82,48.77]
[35.30,49.72]
step
Follow the path up |goto 37.11,42.98 < 15 |only if walking
talk Ormer Ironbraid##1078
|tip He walks around this area.
turnin Ormer's Revenge##295 |goto 38.18,50.89
accept Ormer's Revenge##296 |goto 38.18,50.89
step
Enter the cave |goto 38.32,51.59 < 10 |walk
talk Prospector Whelgar##1077
|tip Inside the cave.
turnin Uncovering the Past##299 |goto 38.81,52.39
step
Follow the path down |goto 37.10,47.90 < 15 |only if walking
Follow the path up |goto 31.89,48.63 < 7 |only if walking
Continue up the path |goto 31.90,50.17 < 10 |only if walking
kill Sarltooth##1353
|tip Up on the cliff.
|tip He looks like a blue raptor, and he sometimes walks around in the valley below, with the other raptors.
|tip So if he's not here, check around
|tip He's level 29, but you should be able to kill him at this level.
|tip If you have trouble, try to get someone to help you.
collect Sarltooth's Talon##3638 |q 296/1 |goto 33.26,51.52
step
Kill enemies around this area
Reach Level 26 |ding 26 |goto 33.26,51.52
step
Follow the path up |goto 37.11,42.98 < 15 |only if walking
talk Ormer Ironbraid##1078
|tip He walks around this area.
turnin Ormer's Revenge##296 |goto 38.18,50.89
step
Follow the path down |goto 37.10,47.90 < 15 |only if walking
Follow the path |goto 34.02,40.85 < 20 |only if walking
Follow the road |goto 34.79,37.97 < 30 |only if walking
Kill Dragonmaw enemies around this area
collect 8 Dragonmaw War Banner##3337 |q 464/1 |goto 42.95,41.12
You can find more around [45.71,44.48]
step
talk Einar Stonegrip##2093
accept Daily Delivery##469 |goto 49.91,39.37
step
talk Kixxle##8305
|tip Sell any items you don't need, to clear some bag space.
Click Here to Continue |confirm |goto 50.20,37.74 |q 463
step
talk Rethiel the Greenwarden##1244
turnin The Greenwarden##463 |goto 56.37,40.40
accept Tramping Paws##276 |goto 56.37,40.40
stickystart "Kill_Mosshide_Gnolls"
step
kill 10 Mosshide Mongrel##1008 |q 276/2 |goto 61.18,57.60
You can find more around: |notinsticky
[64.11,63.15]
[62.39,70.70]
[55.68,74.52]
step
label "Kill_Mosshide_Gnolls"
kill 15 Mosshide Gnoll##1007 |q 276/1 |goto 64.11,63.15
You can find more around: |notinsticky
[62.39,70.70]
[55.68,74.52]
step
talk Rethiel the Greenwarden##1244
turnin Tramping Paws##276 |goto 56.37,40.40
accept Fire Taboo##277 |goto 56.37,40.40
step
talk Kixxle##8305
|tip Sell any items you don't need, to clear some bag space.
Click Here to Continue |confirm |goto 50.20,37.74 |q 277
step
Kill Mosshide enemies around this area
collect 9 Crude Flint##2611 |q 277/1 |goto 45.65,33.83
You can find more around [36.76,28.88]
step
Kill Ooze enemies around this area
|tip Inside and outside the crypt.
collect Sida's Bag##3349 |q 470/1 |goto 44.28,25.51
step
talk Rethiel the Greenwarden##1244
turnin Fire Taboo##277 |goto 56.37,40.40
accept Blisters on The Land##275 |goto 56.37,40.40
step
kill 8 Fen Creeper##1040 |q 275/1 |goto 55.06,37.24
|tip They are stealthed, usually near or in the water around this area.
|tip You will kill more of these later.
You can find more around: |notinsticky
[53.31,36.23]
[47.69,32.72]
[46.82,34.61]
[47.43,35.97]
[48.92,37.46]
[53.96,41.25]
[54.98,46.16]
step
talk Rethiel the Greenwarden##1244
turnin Blisters on The Land##275 |goto 56.37,40.40
step
talk Archaeologist Flagongut##2911
|tip Upstairs inside the building.
turnin The Absent Minded Prospector##943 |goto 10.84,60.43
step
Leave the building |goto 10.79,59.77 < 7 |walk
talk Karl Boran##1242
|tip He walks around this area.
turnin Claws from the Deep##279 |goto 8.31,58.53
accept Reclaiming Goods##281 |goto 8.31,58.53
step
talk James Halloran##2094
|tip He walks around this area.
turnin Young Crocolisk Skins##484 |goto 8.51,55.71
accept Apprentice's Duties##471 |goto 8.51,55.71
turnin Daily Delivery##469 |goto 8.51,55.71
step
Enter the building |goto 10.30,56.29 < 10 |walk
Run up the stairs |goto 9.79,57.77 < 5 |walk
talk Captain Stoutfist##2104
|tip Upstairs inside the building.
turnin War Banners##464 |goto 9.86,57.48
accept Nek'rosh's Gambit##465 |goto 9.86,57.48
step
Leave the building |goto 10.31,56.29 < 10 |walk
talk Sida##2111
turnin Digging Through the Ooze##470 |goto 11.80,57.99
step
Follow the path |goto 10.81,54.99 < 15 |only if walking
talk Tarrel Rockweaver##2096
turnin In Search of The Excavation Team##306 |goto 11.50,52.14
step
click Damaged Crate
turnin Reclaiming Goods##281 |goto 13.51,41.38
accept The Search Continues##284 |goto 13.51,41.38
step
click Sealed Barrel
turnin The Search Continues##284 |goto 13.61,38.21
accept Search More Hovels##285 |goto 13.61,38.21
step
click Half-buried Barrel
turnin Search More Hovels##285 |goto 13.95,34.81
accept Return the Statuette##286 |goto 13.95,34.81
stickystart "Kill_Cursed_Marines"
stickystart "Kill_Cursed_Sailors"
step
Enter the hole in the side of the ship |goto 14.05,30.54 < 7 |walk
kill First Mate Snellig##1159
|tip Underwater, inside the sunken ship.
|tip He's level 29, but you should be able to kill him at this level.
|tip If you have trouble, try to get someone to help you.
collect Snellig's Snuffbox##3619 |q 289/3 |goto 14.08,30.01
step
label "Kill_Cursed_Marines"
kill 5 Cursed Marine##1158 |q 289/2 |goto 14.22,28.53
You can find more around [14.82,24.62]
step
label "Kill_Cursed_Sailors"
kill 13 Cursed Sailor##1157 |q 289/1 |goto 14.22,28.53
You can find more around [14.82,24.62]
step
kill Giant Wetlands Crocolisk##2089+
collect 6 Giant Crocolisk Skin##3348 |q 471/1 |goto 16.57,28.25
You can find more around: |notinsticky
[20.92,21.92]
[27.08,21.65]
step
talk First Mate Fitzsimmons##1239
turnin The Cursed Crew##289 |goto 10.89,59.67
accept Lifting the Curse##290 |goto 10.89,59.67
step
talk Karl Boran##1242
|tip He walks around this area.
turnin Return the Statuette##286 |goto 8.31,58.54
step
talk James Halloran##2094
|tip He walks around this area.
turnin Apprentice's Duties##471 |goto 8.51,55.71
step
Enter the building |goto Ironforge 26.14,72.23 < 10 |walk
talk Auctioneer Redmuse##8720
|tip Inside the building.
|tip Buy the following item from the Auction House.
|tip If you can't get it, that's okay, but you will have to skip a quest.
collect Bronze Tube##4371 |goto Ironforge 24.25,74.55 |q 174 |future
step
Enter the building |goto 34.09,62.38 < 7 |walk
talk Bailey Stonemantle##2461
|tip Inside the building.
|tip Put these items in the bank.
bank Dwarven Tinder##3339 |goto 35.55,60.53 |q 465
step
talk Lomac Gearstrip##4081
turnin An Old Colleague##1072 |goto 72.10,51.89
step
talk Collin Mauren##4078
turnin A Scroll from Mauren##1075 |goto Stormwind City 43.09,80.38
step
Follow the road |goto Redridge Mountains 35.02,44.11 < 30 |only if walking
Follow the path |goto Redridge Mountains 43.30,37.54 < 30 |only if walking
click Practice Lockbox+
|tip They look like grey metal chests.
|tip Inside the building.
|tip Keep clicking them until you reach Lockpicking skill level 75.
Click Here After Reaching Level 75 Lockpicking |confirm |goto Redridge Mountains 51.97,45.15 |q 2607 |future
|only if Rogue
step
Follow the path |goto Stormwind City 74.74,53.70 < 7 |only if walking
Enter the building |goto Stormwind City 77.14,58.02 < 7 |walk
talk Master Mathias Shaw##332
|tip Upstairs inside the building.
accept Mathias and the Defias##2360 |goto Stormwind City 75.78,59.85
|only if Rogue
step
Leave the building |goto 77.11,58.00 < 7 |walk
Follow the path |goto 74.67,53.63 < 7 |only if walking
Leave Stormwind |goto 71.10,88.88 < 30 |only if walking
Follow the road |goto Elwynn Forest 27.55,77.78 < 30 |only if walking
Enter Westfall |goto Elwynn Forest 20.73,79.79 < 20 |only if walking
talk Thor##523
fpath Sentinel Hill |goto Westfall 56.56,52.64
|only if Rogue
step
talk Agent Kearnen##7024
turnin Mathias and the Defias##2360 |goto 68.49,70.08
accept Klaven's Tower##2359 |goto 68.49,70.08
|only if Rogue
step
collect Defias Tower Key##7923 |q 2359/2 |goto 71.63,73.91
|tip Use your "Pickpocket" ability on Malformed Defias Drone.
|tip He walks around this area.
|only if Rogue
step
Enter the building |goto 69.97,74.07 < 7 |walk
click Duskwood Chest
|tip Upstairs inside the building.
|tip You will get a debuff after opening it.
|tip Use your "Sap" ability on Klaven Mortwake nearby before clicking the chest.
|tip He is elite, but you should be fine.
|tip If you have trouble, try to find someone to help you.
collect Klaven Mortwake's Journal##7908 |q 2359/1 |goto 70.41,73.93
|only if Rogue
step
Leave the building |goto 69.95,74.04 < 7 |walk
Follow the path |goto Stormwind City 74.74,53.70 < 7 |only if walking
Enter the building |goto Stormwind City 77.14,58.02 < 7 |walk
talk Master Mathias Shaw##332
|tip Upstairs inside the building.
turnin Klaven's Tower##2359 |goto Stormwind City 75.78,59.85
accept The Touch of Zanzil##2607 |goto Stormwind City 75.78,59.85
|only if Rogue
step
talk Doc Mixilpixil##7207
|tip Downstairs inside the building.
turnin The Touch of Zanzil##2607 |goto 78.04,58.77
accept The Touch of Zanzil##2608 |goto 78.04,58.77
|only if Rogue
step
Watch the dialogue
|tip Use the "/lay" emote while targeting Doc Mixilpixil.
Complete the Diagnosis |q 2608/1 |goto 78.04,58.77
|only if Rogue
step
talk Doc Mixilpixil##7207
|tip Downstairs inside the building.
turnin The Touch of Zanzil##2608 |goto 78.04,58.77
|only if Rogue
step
Remove the Touch of Zanzil |nobuff 136230
|tip You will still have the "Touch of Zanzil" debuff.
|tip There is a quest to remove the buff.
|tip The quest makes you gather items in Stormwind City, but gathering the items can cost a lot of silver.
|tip To remove the buff without doing the quest and wasting money, you have 2 options:
|tip If you have First Aid leveled, create an "Anti-Venom" and use it on yourself.
|tip You can also try to buy one from the Auction House, they're usually cheap.
|tip Alternatively, try to ask a Druid player to use their "Cure Poison" ability on you.
|only if Rogue
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Redridge Mountains (27-28)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Redridge Mountains",
condition_suggested=function() return level >= 27 and level <= 28 and not completedq(180) end,
next="Leveling Guides\\Classic (12-58)\\Duskwood (28-29)",
},[[
step
talk Guard Howe##903
accept Blackrock Bounty##128 |goto Redridge Mountains 31.54,57.85
step
talk Marshal Marris##382
accept Blackrock Menace##20 |goto 33.50,48.97
step
Enter the building |goto 29.50,46.12 < 7 |walk
talk Bailiff Conacher##900
|tip Inside the building.
accept Solomon's Law##91 |goto 29.72,44.26
step
Leave the building |goto 29.50,46.12 < 7 |walk
click Wanted: Lieutenant Fangore
accept Wanted: Lieutenant Fangore##180 |goto 26.75,46.47
step
Enter the building |goto 26.62,46.36 < 7 |walk
talk Innkeeper Brianna##6727
|tip Inside the building.
home Lakeshire |goto 27.01,44.82
step
Leave the building |goto 26.62,46.36 < 7 |walk
talk Martie Jainrose##342
accept An Unwelcome Guest##34 |goto 21.86,46.33
step
kill Bellygrub##345
|tip He looks like a darker brown boar that walks around this area.
collect Bellygrub's Tusk##3631 |q 34/1 |goto 15.68,49.32
step
talk Martie Jainrose##342
turnin An Unwelcome Guest##34 |goto 21.86,46.33
stickystart "Kill_Blackrock_Champions"
step
Follow the road |goto 33.03,47.92 < 30 |only if walking
Follow the path |goto 46.98,24.67 < 30 |only if walking
Continue following the path |goto 39.21,14.27 < 20 |only if walking
Kill Blackrock enemies around this area
|tip They look like orcs.
|tip Inside and outside the cave. |notinsticky
|tip They are mostly inside the cave, and the next guide step is inside the cave. |notinsticky
|tip Try to kill them mostly inside the cave. |notinsticky
collect 10 Battleworn Axe##3014 |q 20/1 |goto 33.21,6.88
step
label "Kill_Blackrock_Champions"
kill 15 Blackrock Champion##435 |q 128/1 |goto 33.21,6.88
|tip Inside and outside the cave. |notinsticky
|tip They are mostly inside the cave, and the next guide step is inside the cave. |notinsticky
|tip Try to kill them mostly inside the cave. |notinsticky
step
Follow the path inside the cave |goto 31.69,12.88 < 20 |walk
Continue following the path |goto 30.83,14.84 < 7 |walk
Follow the path |goto 28.45,13.64 < 7 |walk
talk Corporal Keeshan##349
|tip Inside the cave.
|tip This is an escort quest.
|tip If he's not here, someone may be escorting him.
|tip Wait until he respawns.
accept Missing In Action##219 |goto 28.39,12.55 |noautoaccept
step
Watch the dialogue
|tip Follow Corporal Keeshan and protect him as he walks.
|tip He walks out of the cave and all the way back to Lakeshire.
|tip When you reach the exit of the cave, pull the enemies to him, one group at a time.
|tip He eventually walks to this location.
Escort Corporal Keeshan Back to Redridge |q 219/1 |goto 33.41,48.51 |notravel
step
talk Marshal Marris##382
turnin Blackrock Menace##20 |goto 33.50,48.97
turnin Missing In Action##219 |goto 33.51,48.97
step
talk Guard Howe##903
turnin Blackrock Bounty##128 |goto 31.54,57.86
stickystart "Collect_Shadowhide_Pendants"
step
Follow the road |goto 34.62,44.68 < 30 |only if walking
Follow the path |goto 43.57,37.66 < 30 |only if walking
kill Lieutenant Fangore##703
|tip He looks like a gnoll wearing a red robe, and carrying a long sword, that walks around this area.
|tip Try to kite him away, so you can fight him alone.
|tip If you have trouble, try to find someone to help you.
collect Fangore's Paw##3632 |q 180/1 |goto 78.93,38.46
Also check around [84.46,50.51]
step
label "Collect_Shadowhide_Pendants"
Kill Shadowhide enemies around this area
collect 10 Shadowhide Pendant##1075 |q 91/1 |goto 77.98,39.66
You can find more around: |notinsticky
[76.82,54.09]
[83.92,54.28]
step
Kill enemies around this area
Reach Level 28 |ding 28 |goto 77.98,39.66
You can find more around: |notinsticky
[76.82,54.09]
[83.92,54.28]
step
Leave the building |goto 26.62,46.38 < 7 |walk
Enter the building |goto 29.49,46.13 < 7 |walk
talk Bailiff Conacher##900
|tip Inside the building.
turnin Solomon's Law##91 |goto 29.71,44.27
step
talk Magistrate Solomon##344
|tip Inside the building.
turnin Wanted: Lieutenant Fangore##180 |goto 29.99,44.46
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Duskwood (28-29)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Duskwood",
condition_suggested=function() return level >= 28 and level <= 29 and not completedq(2923) end,
next="Leveling Guides\\Classic (12-58)\\Ashenvale (29-31)",
},[[
step
Follow the road |goto Redridge Mountains 32.87,49.71 < 30 |only if walking
Continue following the road |goto Redridge Mountains 16.76,70.24 < 30 |only if walking
Enter Duskwood |goto Redridge Mountains 6.97,89.66 < 30 |only if walking
Follow the road |goto Duskwood 74.08,23.23 < 30 |only if walking
Enter the building |goto Duskwood 75.55,45.37 < 7 |walk
talk Madame Eva##265
|tip She walks around this area inside the building.
accept The Legend of Stalvan##66 |goto Duskwood 75.82,45.29
accept The Totem of Infliction##101 |goto Duskwood 75.82,45.29
step
Leave the building |goto 75.55,45.37 < 7 |walk
Enter the building |goto 73.83,46.02 < 7 |walk
talk Innkeeper Trelayne##6790
|tip Inside the building.
home Darkshire |goto 73.87,44.41
step
talk Commander Althea Ebonlocke##264
|tip She walks around this area.
accept The Night Watch##56 |goto 73.60,46.90
step
Enter the building |goto 72.93,46.81 < 7 |walk
talk Clerk Daltry##267
|tip He walks around this area inside the building.
turnin The Legend of Stalvan##66 |goto 72.52,46.85
step
talk Calor##663
|tip He walks around this area in front of the building.
accept Worgen in the Woods##173 |goto 75.30,48.05
step
Enter the building |goto 75.23,48.26 < 7 |walk
talk Elaine Carevin##633
|tip Inside the building.
accept Raven Hill##163 |goto 75.33,48.69
accept The Hermit##165 |goto 75.33,48.69
accept Deliveries to Sven##164 |goto 75.33,48.69
step
Enter the building |goto 79.78,47.69 < 7 |walk
talk Viktori Prism'Antras##276
|tip Inside the building.
accept Look To The Stars##174 |goto 79.80,48.02
step
talk Viktori Prism'Antras##276
|tip Inside the building.
turnin Look To The Stars##174 |goto 79.80,48.02
accept Look To The Stars##175 |goto 79.80,48.02
step
talk Felicia Maline##2409
fpath Darkshire |goto 77.49,44.29
step
Enter the building |goto 81.67,59.14 < 7 |walk
talk Blind Mary##302
|tip She walks around inside the building.
turnin Look To The Stars##175 |goto 81.99,59.09
accept Look To The Stars##177 |goto 81.99,59.09
stickystart "Kill_Skeletal_Mages"
stickystart "Kill_Skeletal_Warriors"
step
kill Insane Ghoul##511
|tip He walks around this area.
|tip Inside the building, as well as around the graveyard.
collect Mary's Looking Glass##1946 |q 177/1 |goto 80.33,71.10
step
Kill Skeletal enemies around this area
collect 10 Skeleton Finger##2378 |q 101/3 |goto 79.42,70.31
step
label "Kill_Skeletal_Mages"
kill 6 Skeletal Mage##203 |q 56/2 |goto 79.42,70.31
step
label "Kill_Skeletal_Warriors"
kill 8 Skeletal Warrior##48 |q 56/1 |goto 79.42,70.31
step
Follow the road |goto 73.30,57.93 < 30 |only if walking
Follow the path |goto 61.91,61.97 < 30 |only if walking
kill 6 Nightbane Shadow Weaver##533 |q 173/1 |goto 62.96,69.82
step
Follow the road |goto 62.07,61.44 < 30 |only if walking
talk Commander Althea Ebonlocke##264
|tip She walks around this area.
turnin The Night Watch##56 |goto 73.60,46.90
accept The Night Watch##57 |goto 73.60,46.90
step
talk Calor##663
|tip He walks around this area in front of the building.
turnin Worgen in the Woods##173 |goto 75.30,48.05
accept Worgen in the Woods##221 |goto 75.30,48.05
step
Enter the building |goto 79.78,47.69 < 7 |walk
talk Viktori Prism'Antras##276
|tip Inside the building.
turnin Look To The Stars##177 |goto 79.80,48.02
accept Look To The Stars##181 |goto 79.80,48.02
step
Follow the path up |goto 71.18,46.13 < 7 |only if walking
kill 12 Nightbane Dark Runner##205 |q 221/1 |goto 61.26,40.74
You can find more around [63.82,50.94]
step
talk Calor##663
|tip He walks around this area in front of the building.
turnin Worgen in the Woods##221 |goto 75.30,48.05
accept Worgen in the Woods##222 |goto 75.30,48.05
stickystart "Kill_Nightbane_Vile_Fangs"
step
Follow the path |goto 73.04,64.47 < 30 |only if walking
kill 8 Nightbane Tainted One##920 |q 222/2 |goto 73.03,75.08
|tip Inside the mine.
|tip Keep an eye out for the level 32 enemy, Gutspill, who walks around inside the mine.
step
label "Kill_Nightbane_Vile_Fangs"
kill 8 Nightbane Vile Fang##206 |q 222/1 |goto 72.57,71.13
|tip Outside the mine.
step
Follow the road |goto 72.84,58.53 < 30 |only if walking
Follow the path down |goto 43.67,67.31 < 30 |only if walking
Enter the cave |goto 34.07,76.85 < 10 |walk
Follow the path |goto 36.78,77.62 < 7 |walk
Continue following the path |goto 36.83,81.89 < 7 |walk
kill Zzarc' Vul##300
|tip Inside the cave.
|tip He can spawn in other locations inside the cave.
|tip If he's not here, search around.
collect Ogre's Monocle##1968 |q 181/1 |goto 36.81,83.79
step
Leave the cave |goto 34.07,76.85 < 15 |walk
Follow the path up |goto 31.43,67.33 < 15 |only if walking
Follow the road |goto 30.75,59.16 < 30 |only if walking
talk Jitters##288
|tip He walks around this area.
turnin Raven Hill##163 |goto 18.16,56.51
step
Enter the building |goto 18.03,55.24 < 7 |walk
talk Bliztik##2481
|tip Upstairs inside the building.
|tip Sell any items you don't need, to clear some bag space.
Click Here to Continue |confirm |goto 18.04,54.37 |q 101
stickystart "Kill_Skeletal_Horrors"
step
kill 15 Skeletal Fiend##531 |q 57/1 |goto 15.20,44.97
You can find more around: |notinsticky
[21.50,47.70]
[22.93,43.21]
step
label "Kill_Skeletal_Horrors"
kill 15 Skeletal Horror##202 |q 57/2 |goto 15.20,44.97
You can find more around: |notinsticky
[21.50,47.70]
[22.93,43.21]
step
kill Black Widow Hatchling##930+
collect 5 Vial of Spider Venom##1130 |q 101/2 |goto 27.99,50.83
You can find more around: |notinsticky
[33.54,50.07]
[32.44,35.72]
step
talk Abercrombie##289
|tip Inside the building.
turnin The Hermit##165 |goto 28.11,31.47
accept Supplies from Darkshire##148 |goto 28.11,31.47
step
Kill enemies around this area
|tip Only enemies that look like ghouls will drop the quest item.
collect 10 Ghoul Fang##1129 |q 101/1 |goto 24.74,36.61
You can find more inside the crypt at [23.59,34.89]
step
Kill enemies around this area
Reach Level 29 |ding 29 |goto 24.74,36.61
You can find more inside the crypt at [23.59,34.89]
step
click A Weathered Grave
|tip Leave the crypt, if you went inside there in the previous step.
accept The Weathered Grave##225 |goto 17.72,29.08
step
talk Sven Yorgen##311
turnin Deliveries to Sven##164 |goto 7.78,34.07
accept Sven's Revenge##95 |goto 7.78,34.07
step
talk Thor##523
fpath Sentinel Hill |goto Westfall 56.55,52.64
step
talk Commander Althea Ebonlocke##264
|tip She walks around this area.
turnin The Night Watch##57 |goto Duskwood 73.59,46.90
accept The Night Watch##58 |goto Duskwood 73.59,46.90
step
Enter the building |goto 72.93,46.81 < 7 |walk
talk Sirra Von'Indi##268
|tip Inside the building.
turnin The Weathered Grave##225 |goto 72.64,47.62
accept Morgan Ladimore##227 |goto 72.64,47.62
step
talk Commander Althea Ebonlocke##264
|tip She walks around this area.
turnin Morgan Ladimore##227 |goto 73.59,46.90
step
_Destroy This Item:_
|tip It is no longer needed.
trash The Story of Morgan Ladimore##2154
step
talk Calor##663
|tip He walks around this area in front of the building.
turnin Worgen in the Woods##222 |goto 75.30,48.05
accept Worgen in the Woods##223 |goto 75.30,48.05
step
Enter the building |goto 75.22,48.25 < 7 |walk
talk Jonathan Carevin##661
|tip He walks around inside the building.
turnin Worgen in the Woods##223 |goto 75.32,49.02
step
Enter the building |goto 75.57,45.37 < 7 |walk
talk Madame Eva##265
|tip She walks around this area inside the building.
turnin The Totem of Infliction##101 |goto 75.81,45.29
turnin Supplies from Darkshire##148 |goto 75.81,45.29
accept Ghost Hair Thread##149 |goto 75.81,45.29
step
Enter the building |goto 79.79,47.69 < 7 |walk
talk Viktori Prism'Antras##276
|tip Inside the building.
turnin Look To The Stars##181 |goto 79.80,48.02
step
Enter the building |goto 81.68,59.13 < 7 |walk
talk Blind Mary##302
|tip She walks around inside the building.
turnin Ghost Hair Thread##149 |goto 81.98,59.09
accept Return the Comb##154 |goto 81.98,59.09
step
Enter the building |goto 75.57,45.37 < 7 |walk
talk Madame Eva##265
|tip She walks around this area inside the building.
turnin Return the Comb##154 |goto 75.81,45.29
accept Deliver the Thread##157 |goto 75.81,45.29
step
Follow the road |goto 74.97,52.11 < 30 |only if walking
Follow the road |goto 61.44,61.78 < 30 |only if walking
click Mound of loose dirt
|tip There are stealthed enemies around this area.
turnin Sven's Revenge##95 |goto 49.86,77.70
accept Sven's Camp##230 |goto 49.86,77.70
step
Follow the road |goto 43.55,65.09 < 30 |only if walking
Enter the building |goto 18.03,55.24 < 7 |walk
talk Bliztik##2481
|tip Upstairs inside the building.
|tip Sell any items you don't need, to clear some bag space.
Click Here to Continue |confirm |goto 18.04,54.37 |q 58
step
kill 20 Plague Spreader##604 |q 58/1 |goto 23.64,34.89
|tip Outside near the crypt, and inside the crypt.
step
talk Abercrombie##289
|tip Inside the building.
|tip Leave the crypt, if you went inside there in the previous step.
turnin Deliver the Thread##157 |goto 28.11,31.47
accept Zombie Juice##158 |goto 28.11,31.47
step
talk Sven Yorgen##311
turnin Sven's Camp##230 |goto 7.78,34.07
accept The Shadowy Figure##262 |goto 7.78,34.07
step
Enter the building |goto 73.83,46.01 < 7 |walk
talk Tavernkeep Smitts##273
|tip He walks around this area inside the building.
turnin Zombie Juice##158 |goto 73.78,44.48
step
talk Commander Althea Ebonlocke##264
|tip She walks around this area.
turnin The Night Watch##58 |goto 73.59,46.90
step
Enter the building |goto 75.55,45.37 < 7 |walk
talk Madame Eva##265
|tip She walks around this area inside the building.
turnin The Shadowy Figure##262 |goto 75.81,45.29
accept The Shadowy Search Continues##265 |goto 75.81,45.29
step
Enter the building |goto 72.92,46.81 < 7 |walk
talk Clerk Daltry##267
|tip He walks around this area inside the building.
turnin The Shadowy Search Continues##265 |goto 72.53,46.85
accept Inquire at the Inn##266 |goto 72.53,46.85
step
Enter the building |goto 73.82,46.03 < 7 |walk
talk Tavernkeep Smitts##273
|tip He walks around this area inside the building.
turnin Inquire at the Inn##266 |goto 73.78,44.48
step
Enter the building |goto 74.90,51.56 < 7 |walk
Enter the building |goto 77.97,48.19 < 7 |walk
talk Wu Shen##5479
|tip Upstairs inside the building.
accept The Islander##1718 |goto 78.68,45.80
|only if Warrior
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Ashenvale (29-31)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Ashenvale",
condition_suggested=function() return level >= 29 and level <= 31 and not completedq(565) end,
next="Leveling Guides\\Classic (12-58)\\Wetlands (31-31)",
},[[
step
talk Vindicator Palanaar##17106
accept A Helping Hand##9533 |goto Ashenvale/0 34.90,49.71
step
talk Innkeeper Kimlya##6738
|tip Upstairs inside the building.
home Astranaar |goto 36.99,49.22
step
Follow the road |goto 38.44,57.76 < 30 |only if walking
Continue following the road |goto 59.74,62.67 < 50 |only if walking
Follow the path up |goto 63.06,44.21 < 30 |only if walking
Follow the path |goto 65.59,44.43 < 30 |only if walking
click Circle of Imprisonment
Free the Highborne Soul in Night Run |q 1140/1 |goto 66.63,56.98
step
Follow the path |goto 66.62,47.34 < 30 |only if walking
Kill Ancient enemies around this area
|tip They look like walking trees around this area.
collect Wooden Key##5475 |goto 61.60,43.79 |q 1026
You can find more around: |notinsticky
[58.22,41.41]
[60.11,38.71]
[57.67,32.39]
[54.97,34.00]
step
Follow the path up |goto 54.54,34.56 < 15 |only if walking
click Worn Chest
collect Iron Shaft##5464 |q 1026/1 |goto 54.41,35.39
step
Follow the road |goto 55.85,34.05 < 50 |only if walking
Follow the path up |goto 61.03,45.59 < 20 |only if walking
Follow the path |goto 60.93,51.64 < 30 |only if walking
Continue following the path |goto 57.38,56.02 < 30 |only if walking
Continue following the path |goto 53.02,54.43 < 30 |only if walking
Continue following the path |goto 50.99,52.15 < 30 |only if walking
Continue following the path |goto 51.29,45.61 < 30 |only if walking
talk Shael'dryn##3916
|tip She walks around this area.
turnin Raene's Cleansing##1026 |goto 53.53,46.21
step
Follow the path |goto 50.93,45.99 < 30 |only if walking
Follow the road |goto 51.73,58.12 < 50 |only if walking
Follow the path |goto 83.66,50.23 < 30 |only if walking
Follow the path up |goto 84.42,44.25 < 15 |only if walking
talk Suralais Farwind##22935
fpath Forest Song |goto 85.09,43.45
step
talk Kayneth Stillwind##3848
|tip He walks around this area.
turnin Kayneth Stillwind##4581 |goto 85.24,44.71
accept Forsaken Diseases##1011 |goto 85.24,44.71
accept The Lost Chalice##9519 |goto 85.24,44.71
step
talk Sentinel Luciel Starwhisper##17287
accept Agents of Destruction##9518 |goto 86.00,44.36
step
talk Vindicator Vedaar##17303
|tip He walks around this area.
accept Destroy the Legion##9516 |goto 86.48,44.17
step
talk Illiyana##3901
|tip She walks around this area.
accept Vile Satyr! Dryads in Danger!##1021 |goto 87.10,43.49
step
talk Architect Nemos##17291
turnin A Helping Hand##9533 |goto 86.84,44.81
accept A Shameful Waste##9517 |goto 86.84,44.81
step
talk Gnarl##17310
|tip He looks like a large tree that walks around this area.
accept Reclaiming Felfire Hill##9526 |goto 86.30,44.82
step
Follow the path up |goto 83.04,48.28 < 20 |only if walking
talk Anilia##3920
turnin Vile Satyr! Dryads in Danger!##1021 |goto 78.33,44.82
accept The Branch of Cenarius##1031 |goto 78.33,44.82
step
Follow the path |goto 78.35,43.80 < 15 |only if walking
kill Geltharis##4619
collect Branch of Cenarius##5461 |q 1031/1 |goto 78.00,42.42
step
Follow the path |goto 79.14,46.47 < 30 |only if walking
Continue following the path |goto 83.67,47.99 < 30 |only if walking
talk Illiyana##3901
|tip She walks around this area.
turnin The Branch of Cenarius##1031 |goto 87.10,43.49
accept Satyr Slaying!##1032 |goto 87.10,43.49
stickystart "Collect_Satynaar_Fel_Wood"
stickystart "Collect_Satyr_Horns"
step
Follow the path down |goto 83.01,49.28 < 20 |only if walking
click Circle of Imprisonment
Free the Highborne Soul in Satyrnaar |q 1140/2 |goto 81.60,48.58
step
click Chalice of Elune
|tip It looks like a blue-glowing white cup.
|tip It may spawn in other places on this same red ledge.
collect Chalice of Elune##23760 |q 9519/1 |goto 81.23,48.72
step
label "Collect_Satynaar_Fel_Wood"
click Tainted Wood+
|tip They look like small stacks of 3 brown logs on the ground around this area.
collect 5 Satyrnaar Fel Wood##24081 |q 9517/2 |goto 80.93,49.95
step
label "Collect_Satyr_Horns"
Kill Bleakheart enemies around this area
collect 16 Satyr Horns##5481 |q 1032/1 |goto 80.93,49.95
step
Follow the path up |goto 82.92,50.13 < 20 |only if walking
talk Kayneth Stillwind##3848
|tip He walks around this area.
turnin The Lost Chalice##9519 |goto 85.24,44.71
step
talk Illiyana##3901
|tip She walks around this area.
turnin Satyr Slaying!##1032 |goto 87.10,43.49
stickystart "Collect_Warsong_Lumber"
stickystart "Kill_Warsong_Shredders"
stickystart "Kill_Horde_Deforesters"
stickystart "Kill_Horde_Scouts"
step
Follow the path |goto 86.69,47.74 < 30 |only if walking
kill Overseer Gorthak##17304 |q 9518/1 |goto 88.82,59.55
|tip Inside the building.
step
label "Collect_Warsong_Lumber"
click Lumber Pile+
|tip They look like various sized stacks of brown wooden boards on the ground around this area.
collect 15 Warsong Lumber##23776 |q 9517/1 |goto 89.33,58.06
You can find more around: |notinsticky
[88.57,59.92]
[88.89,62.33]
[86.24,64.03]
[84.90,60.79]
[86.55,56.05]
step
label "Kill_Warsong_Shredders"
kill 2 Warsong Shredder##11684 |q 9518/2 |goto 85.04,61.70
|tip They look like metal machines walking around this area.
|tip They are usually rare and spread out.
You can find more around: |notinsticky
[86.31,56.66]
[88.38,64.63]
step
label "Kill_Horde_Deforesters"
kill 5 Horde Deforester##11681 |q 9518/3 |goto 87.44,62.84
You can find more around: |notinsticky
[84.90,62.35]
[83.48,60.31]
[85.67,58.76]
[86.06,56.56]
step
label "Kill_Horde_Scouts"
kill 10 Horde Scout##11680 |q 9518/4 |goto 87.44,62.84
You can find more around: |notinsticky
[84.90,62.35]
[83.48,60.31]
[85.67,58.76]
[86.06,56.56]
stickystart "Accept_Diabolical_Plans"
stickystart "Kill_Mannoroc_Lashers"
stickystart "Kill_Searing_Infernals"
stickystart "Kill_Roaming_Felguards"
step
Cross the bridge |goto 85.15,65.05 < 20 |only if walking
click Fertile Dirt Mound+
|tip They look like piles of green and brown dirt on the ground around this area.
Plant #8# Tree Seedlings |q 9526/1 |goto 81.31,66.33
You can find more around [82.42,70.23]
step
label "Accept_Diabolical_Plans"
Kill enemies around this area
collect Diabolical Plans##23777 |n
|tip If you don't find it before you finish the other quests in this area, skip it.
use the Diabolical Plans##23777
accept Diabolical Plans##9520 |goto 81.31,66.33
You can find more around [82.42,70.23]
step
label "Kill_Mannoroc_Lashers"
kill 6 Mannoroc Lasher##11697 |q 9516/1 |goto 81.31,66.33
|tip They share spawn points with other demons, so kill those too, if you can't find any. |notinsticky
You can find more around [82.42,70.23]
step
label "Kill_Searing_Infernals"
kill 6 Searing Infernal##6073 |q 9516/3 |goto 81.31,66.33
|tip They share spawn points with other demons, so kill those too, if you can't find any. |notinsticky
You can find more around [82.42,70.23]
step
label "Kill_Roaming_Felguards"
kill 6 Roaming Felguard##6115 |q 9516/2 |goto 81.31,66.33
|tip They share spawn points with other demons, so kill those too, if you can't find any. |notinsticky
You can find more around [82.42,70.23]
step
Kill enemies around this area
Reach Level 31 |ding 31 |goto 81.31,66.33
You can find more around [82.42,70.23]
step
Follow the path |goto 76.99,67.88 < 30 |only if walking
click Bottle of Disease
|tip This camp is surrounded by stealthed enemies.
|tip Kill them before running into the camp.
collect Bottle of Disease##5440 |q 1011/1 |goto 75.29,72.22
step
Follow the path |goto 69.89,75.67 < 30 |only if walking
kill Shadethicket Oracle##3931
collect Fallen Moonstone##5508 |q 1035/1 |goto 66.68,82.19
step
Enter the Barrens |goto The Barrens 48.98,5.34 < 20 |only if walking
Follow the road |goto The Barrens 48.95,13.40 < 30 |only if walking
Avoid Crossroads and follow the road |goto The Barrens 54.58,33.13 < 30 |only if walking
Continue following the road |goto The Barrens 59.68,38.93 < 30 |only if walking
talk Bragok##16227
fpath Ratchet |goto The Barrens 63.09,37.16
|only if Warrior
step
talk Klannoc Macleod##6236
turnin The Islander##1718 |goto The Barrens 68.62,49.17
accept The Affray##1719 |goto The Barrens 68.62,49.17
|only if Warrior
step
Step on the Grate to Begin the Affray |q 1719/1 |goto 68.61,48.72
|only if Warrior
step
kill Affray Challenger##6240+
|tip You will have to kill six of them before Big Will will appear.
|tip They will fight them one at a time.
kill Big Will##6238 |q 1719/2 |goto 68.61,48.72
|tip It may take a while before he appears.
|only if Warrior
step
talk Klannoc Macleod##6236
turnin The Affray##1719 |goto 68.62,49.17
|only if Warrior
step
Follow the road |goto 62.68,38.03 < 30 |only if walking
Avoid Crossroads |goto 54.12,30.50 < 40 |only if walking
Follow the road |goto 52.38,20.03 < 30 |only if walking
Enter Ashenvale |goto 48.98,5.38 < 20 |c |q 1140
|only if Warrior
step
Follow the road |goto Ashenvale/0 67.73,79.96 < 30 |only if walking
Continue following the road |goto Ashenvale/0 67.24,71.44 < 30 |only if walking
Follow the path |goto Ashenvale/0 83.66,50.23 < 30 |only if walking
talk Kayneth Stillwind##3848
|tip He walks around this area.
turnin Forsaken Diseases##1011 |goto Ashenvale/0 85.24,44.71
step
talk Sentinel Luciel Starwhisper##17287
turnin Agents of Destruction##9518 |goto 86.00,44.36
step
talk Vindicator Vedaar##17303
|tip He walks around this area.
turnin Diabolical Plans##9520 |goto 86.48,44.17 |only if havequest(9520) or completedq(9520)
turnin Destroy the Legion##9516 |goto 86.48,44.17
step
talk Gnarl##17310
|tip He looks like a large tree that walks around this area.
turnin A Shameful Waste##9517 |goto 86.30,44.82
turnin Reclaiming Felfire Hill##9526 |goto 86.30,44.82
step
Follow the road |goto 87.39,49.97 < 50 |only if walking
Cross the bridge |goto 94.74,47.77 < 20 |only if walking
talk Jarrodenus##12577
fpath Talrendis Point |goto Azshara 11.90,77.59
step
talk Jarrodenus##12577
Begin Flying to Astranaar, Ashenvale |ontaxi |goto 11.90,77.59 |q 1035
step
Fly to Astranaar |offtaxi |goto Ashenvale/0 34.50,48.01 |q 1035 |notravel
step
Enter the building |goto Ashenvale/0 37.19,51.87 < 7 |walk
talk Pelturas Whitemoon##3894
|tip Inside the building.
turnin Fallen Sky Lake##1035 |goto Ashenvale/0 37.36,51.79
step
Follow the road |goto 32.71,47.08 < 30 |only if walking
talk Delgren the Purifier##3663
turnin The Tower of Althalaxx##1140 |goto 26.19,38.70
step
Follow the road |goto 25.54,38.46 < 20 |only if walking
Continue following the road |goto 26.23,47.04 < 30 |only if walking
Continue following the road |goto 32.09,46.94 < 30 |only if walking
talk Garryeth##4209
|tip Collect this item from the bank.
collect Dwarven Tinder##3339 |goto Darnassus/0 39.87,42.17 |q 465
step
Enter the building |goto The Exodar/0 41.87,72.81 < 7 |walk
talk Farseer Nobundo##17204
|tip Inside the building.
accept Call of Air##9552 |goto The Exodar/0 31.28,27.65
|only if Shaman
step
Run up the ramp |goto 53.27,33.16 < 20 |walk
Run up the ramp |goto 64.24,35.79 < 10 |walk
Leave the building |goto 74.44,54.03 < 10 |walk
Follow the path |goto 83.37,48.75 < 20 |only if walking
Follow the path |goto Azuremyst Isle/0 31.51,24.43 < 30 |only if walking
Follow the path up |goto Azuremyst Isle/0 26.84,26.54 < 20 |only if walking
Enter the cave |goto Azuremyst Isle/0 24.20,35.65 < 10 |walk
talk Velaada##17431
|tip Inside the cave.
turnin Call of Air##9552 |goto Azuremyst Isle/0 24.90,35.92
accept Call of Air##9553 |goto Azuremyst Isle/0 24.90,35.92
|only if Shaman
step
talk Susurrus##17435
turnin Call of Air##9553 |goto 22.31,32.55
accept Call of Air##9554 |goto 22.31,32.55
|only if Shaman
step
talk Susurrus##17435
Tell him _"I am ready."_
Begin Flying Back to the Exodar |havebuff spell:32474 |goto 22.31,32.55 |q 9554
|only if Shaman
step
Return to the Exodar |goto The Exodar/0 34.29,44.27 < 20 |c |notravel |q 9554
|only if Shaman
step
Enter the building |goto 33.15,44.05 < 10 |walk
talk Farseer Nobundo##17204
|tip Inside the building.
turnin Call of Air##9554 |goto 31.28,27.65
|only if Shaman
step
Run up the ramp |goto 34.86,74.54 < 15 |walk
Leave the building |goto 41.49,74.16 < 10 |c |q 290
|only if Shaman
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Wetlands (31-31)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Wetlands",
condition_suggested=function() return level == 31 and not completedq(634) end,
next="Leveling Guides\\Classic (12-58)\\Hillsbrad Foothills (31-32)",
},[[
step
Enter the building |goto Wetlands 10.79,59.76 < 7 |walk
talk Innkeeper Helbrek##1464
|tip He walks around inside the building.
home Deepwater Tavern |goto Wetlands 10.70,60.96
step
Leave the building |goto 10.79,59.77 < 7 |walk
Follow the path |goto 10.80,55.01 < 15 |only if walking
Follow the path up |goto 16.01,23.09 < 5 |only if walking
kill Captain Halyndor##1160
|tip On the deck of the ship.
collect Intrepid Strongbox Key##2629 |q 290/1 |goto 15.45,23.61
step
Swim underwater through the hole in the bottom of the ship |goto 14.35,23.68 < 5 |walk
click Intrepid's Locked Strongbox
|tip Underwater, at the bottom of the ship.
turnin Lifting the Curse##290 |goto 14.37,24.02
accept The Eye of Paleth##292 |goto 14.37,24.02
step
Swim out of the hole in the ship |goto 14.31,23.69 < 5 |walk
Follow the road |goto 25.10,42.26 < 30 |only if walking
Follow the path up |goto 42.87,40.78 < 30 |only if walking
click Dragonmaw Catapult
turnin Nek'rosh's Gambit##465 |goto 47.40,46.90
accept Defeat Nek'rosh##474 |goto 47.40,46.90
step
Follow the path|goto 51.28,52.08 < 15 |only if walking
kill Chieftain Nek'rosh##2091
|tip He walks around this area.
collect Nek'rosh's Head##3625|q 474/1 |goto 53.47,54.64
step
talk Glorin Steelbrow##1217
|tip Inside the building.
turnin The Eye of Paleth##292 |goto 10.59,60.59
accept Cleansing the Eye##293 |goto 10.59,60.59
step
talk Harlo Barnaby##2097
accept Fall of Dun Modr##472 |goto 10.85,55.90
step
Enter the building|goto 10.25,56.43 < 10|walk
talk Captain Stoutfist##2104
|tip Upstairs inside the building.
turnin Defeat Nek'rosh##474 |goto 9.86,57.49
step
Follow the road |goto 12.48,50.14 < 30 |only if walking
Continue following the road |goto 48.97,27.27 < 30 |only if walking
talk Longbraid the Grim##1071
turnin Fall of Dun Modr##472 |goto 49.80,18.26
step
talk Rhag Garmason##1075
accept The Thandol Span##631 |goto 49.92,18.21
step
Follow the path |goto 51.06,11.72 < 20 |only if walking
Enter the building and run down the stairs |goto 51.36,8.11 < 5 |walk
click Ebenezer Rustlocke's Corpse
|tip Downstairs inside the building.
|tip You will be attacked by two enemies after turning in the quest.
turnin The Thandol Span##631 |goto 51.28,7.95
accept The Thandol Span##632 |goto 51.28,7.95
step
Run up the stairs |goto 51.04,8.28 < 5 |c |q 632
step
Run up the stairs and leave the building |goto 50.69,8.00 < 5 |walk
Follow the path |goto 51.08,11.74 < 30 |only if walking
talk Rhag Garmason##1075
turnin The Thandol Span##632 |goto 49.92,18.22
accept The Thandol Span##633 |goto 49.92,18.22
step
Cross the bridge |goto 51.11,11.58 < 20 |only if walking
Cross the hanging bridge |goto Arathi Highlands 45.96,88.11 < 10 |only if walking
click Cache of Explosives
Destroy the Cache of Explosives |q 633/1 |goto Arathi Highlands 48.73,88.05
step
Cross the hanging bridge |goto 48.14,88.11 < 10 |only if walking
Cross the bridge |goto 45.47,89.24 < 20 |only if walking
talk Rhag Garmason##1075
turnin The Thandol Span##633 |goto Wetlands 49.92,18.22
accept Plea To The Alliance##634 |goto Wetlands 49.92,18.22
step
Cross the bridge |goto 51.11,11.66 < 20 |only if walking
Follow the road |goto Arathi Highlands 45.39,88.84 < 30 |only if walking
Continue following the road |goto Arathi Highlands 45.09,58.64 < 30 |only if walking
Follow the path down |goto Arathi Highlands 43.96,51.17 < 30 |only if walking
talk Captain Nials##2700
turnin Plea To The Alliance##634 |goto Arathi Highlands 45.83,47.55
step
talk Cedrik Prose##2835
fpath Refuge Pointe |goto 45.76,46.12
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Hillsbrad Foothills (31-32)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Hillsbrad Foothills",
condition_suggested=function() return level >= 31 and level <= 32 and not completedq(563) end,
next="Leveling Guides\\Classic (12-58)\\Stranglethorn Vale (32-33)",
},[[
step
Follow the path up |goto Arathi Highlands 44.47,48.47 < 20 |only if walking
Follow the road |goto Arathi Highlands 42.27,54.87 < 30 |only if walking
Enter Hillsbrad Foothills |goto Arathi Highlands 20.17,29.54 < 30 |only if walking
talk Darla Harris##2432
fpath Southshore |goto Hillsbrad Foothills 49.34,52.27
step
talk Darren Malvew##2382
accept Costly Menace##564 |goto 52.42,55.96
step
Enter the building |goto 50.45,58.55 < 7 |walk
talk Innkeeper Anderson##2352
|tip Inside the building.
home Southshore |goto 51.17,58.93
step
talk Lieutenant Farren Orinelle##2228
|tip Inside the building.
accept Down the Coast##536 |goto 51.46,58.38
stickystart "Kill_Torn_Fin_Oracles"
step
kill 10 Torn Fin Tidehunter##2377 |q 536/1 |goto 46.55,64.38
|tip You can find more in the water along the shore. |notinsticky
You can find more around: |notinsticky
[43.51,67.70]
[37.04,68.74]
step
label "Kill_Torn_Fin_Oracles"
kill 10 Torn Fin Oracle##2376 |q 536/2 |goto 46.55,64.38
|tip You can find more in the water along the shore. |notinsticky
You can find more around: |notinsticky
[43.51,67.70]
[37.04,68.74]
step
Kill enemies around this area
Reach Level 32 |ding 32 |goto 46.55,64.38
You can find more around: |notinsticky
[43.51,67.70]
[37.04,68.74]
step
Enter the building |goto 50.45,58.55 < 7 |walk
talk Lieutenant Farren Orinelle##2228
|tip Inside the building.
turnin Down the Coast##536 |goto 51.46,58.38
accept Farren's Proof##559 |goto 51.46,58.38
step
Kill Torn Fin enemies around this area
|tip You can find more in the water along the shore.
collect 10 Murloc Head##3716 |q 559/1 |goto 46.55,64.38
You can find more around: |notinsticky
[43.51,67.70]
[37.04,68.74]
step
Enter the building |goto 50.45,58.55 < 7 |walk
talk Lieutenant Farren Orinelle##2228
|tip Inside the building.
turnin Farren's Proof##559 |goto 51.46,58.38
accept Farren's Proof##560 |goto 51.46,58.38
step
talk Huraan##17218
|tip Inside the building.
accept Missing Crystals##9435 |goto 50.99,58.70
step
talk Marshal Redpath##2263
turnin Farren's Proof##560 |goto 49.48,58.73
accept Farren's Proof##561 |goto 49.48,58.73
step
Enter the building |goto 50.45,58.55 < 7 |walk
talk Lieutenant Farren Orinelle##2228
|tip Inside the building.
turnin Farren's Proof##561 |goto 51.46,58.38
accept Stormwind Ho!##562 |goto 51.46,58.38
stickystart "Kill_Daggerspine_Sirens"
step
kill 10 Daggerspine Shorehunter##2369 |q 562/1 |goto 53.42,64.21
|tip You can find more in the water along the shore.
You can find more around: |notinsticky
[57.57,66.32]
[60.95,75.24]
step
label "Kill_Daggerspine_Sirens"
kill 10 Daggerspine Siren##2371 |q 562/2 |goto 53.42,64.21
|tip You can find more in the water along the shore.
You can find more around: |notinsticky
[57.57,66.32]
[60.95,75.24]
step
Enter the building |goto 50.45,58.55 < 7 |walk
talk Lieutenant Farren Orinelle##2228
|tip Inside the building.
turnin Stormwind Ho!##562 |goto 51.46,58.38
accept Reassignment##563 |goto 51.46,58.38
step
Enter the building|goto 55.25,34.50 < 7|walk
click Unopened Crate
|tip Inside the building.
collect Shipment of Rare Crystals##23646|q 9435/1 |goto 55.57,35.21
stickystart "Kill_Hulking_Mountain_Lions"
step
Follow the path |goto 47.97,26.79 < 30 |only if walking
Follow the path up |goto Alterac Mountains/0 43.26,80.08 < 20 |only if walking
kill 8 Mountain Lion##2406 |q 564/1 |goto Alterac Mountains/0 46.70,77.31
You can find more around: |notinsticky
[37.69,85.48]
[32.86,83.10]
step
label "Kill_Hulking_Mountain_Lions"
kill 10 Hulking Mountain Lion##2407 |q 564/2 |goto 46.70,77.31
You can find more around: |notinsticky
[37.69,85.48]
[32.86,83.10]
step
talk Huraan##17218
|tip Inside the building.
turnin Missing Crystals##9435 |goto Hillsbrad Foothills 50.99,58.69
step
talk Darren Malvew##2382
turnin Costly Menace##564 |goto 52.42,55.97
step
talk Captain Nials##2700
accept Northfold Manor##681 |goto Arathi Highlands 45.83,47.55
stickystart "Kill_Syndicate_Mercenaries"
step
Follow the path up |goto 44.46,48.47 < 20 |only if walking
kill 10 Syndicate Highwayman##2586 |q 681/1 |goto 32.67,29.22
|tip Some of them are stealthed, so be careful.
|tip They are also inside the buildings.
|tip You can find more stealted along the small hill ridges surrounding this village.
step
label "Kill_Syndicate_Mercenaries"
kill 6 Syndicate Mercenary##2589 |q 681/2 |goto 32.67,29.22
|tip They are also inside the buildings.
|tip Be careful, some enemies can be stealthed around this area.
step
talk Captain Nials##2700
turnin Northfold Manor##681 |goto 45.83,47.55
step
talk Roetten Stonehammer##5637
|tip He walks around inside the building.
accept Reclaimers' Business in Desolace##1453 |goto Ironforge 67.91,17.49
step
Enter the building |goto 66.36,82.45 < 7 |walk
talk Pilot Longbeard##2092
|tip Inside the building.
accept The Brassbolts Brothers##1179 |goto 72.73,94.01
step
Enter the building |goto Stormwind City 53.50,64.86 < 7 |walk
talk Innkeeper Allison##6740
|tip Inside the building.
home Stormwind City |goto Stormwind City 52.62,65.70
step
Enter the building |goto 55.29,68.13 < 7 |walk
talk Olivia Burnside##2455
|tip Inside the building.
|tip Put these items in the bank.
bank Crate of Crash Helmets##5849 |goto 57.55,72.43 |q 1179
step
talk Archmage Malin##2708
accept Malin's Request##690 |goto 39.85,81.45
step
Enter the building |goto 43.05,34.48 < 7 |walk
talk Archbishop Benedictus##1284
|tip Inside the building.
turnin Cleansing the Eye##293 |goto 39.59,27.25
step
Enter the building |goto 69.14,28.62 < 10 |walk
Follow the path |goto 76.68,17.75 < 7 |walk
talk Major Samuelson##2439
|tip Inside the building.
turnin Reassignment##563 |goto 72.60,15.87
step
Follow the path |goto 76.04,17.50 < 7 |walk
Leave the building |goto 69.01,28.83 < 7 |walk
Enter the building |goto 54.11,59.01 < 7 |walk
talk Auctioneer Jaxon##15659
|tip Inside the building.
|tip Buy these items from the Auction House.
|tip If you can't get them, it's okay, but you will have to skip a quest.
collect 4 Lesser Bloodstone Ore##4278 |goto 53.61,59.77 |q 627 |future
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Stranglethorn Vale (32-33)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Stranglethorn Vale",
condition_suggested=function() return level >= 32 and level <= 33 and not completedq(1179) end,
next="Leveling Guides\\Classic (12-58)\\Thousand Needles (33-34)",
},[[
step
Follow the road |goto Duskwood 74.59,49.24 < 20 |only if walking
Continue following the road |goto Duskwood 44.27,67.29 < 30 |only if walking
Follow the path |goto Stranglethorn Vale 40.84,4.28 < 30 |only if walking
Follow the path up |goto Stranglethorn Vale 38.56,5.01 < 15 |only if walking
talk Nizzle##24366
fpath Rebel Camp |goto Stranglethorn Vale/0 38.23,4.04
step
talk Corporal Kaleb##770
accept Krazek's Cookery##210 |goto 37.74,3.30
step
Follow the path |goto 39.27,5.55 < 20 |only if walking
talk Barnil Stonepot##716
accept Welcome to the Jungle##583 |goto 35.66,10.53
step
talk Hemet Nesingwary##715
turnin Welcome to the Jungle##583 |goto 35.66,10.81
accept Raptor Mastery##194 |goto 35.66,10.81
step
talk Ajeck Rouack##717
accept Tiger Mastery##185 |goto 35.61,10.62
step
talk Sir S. J. Erlgadin##718
accept Panther Mastery##190 |goto 35.55,10.55
step
Collect Green Hills of Stranglethorn Pages
|tip These can drop from Humanoid enemies in Stranglethorn Vale.
|tip Just keep any that you find while questing.
|tip You can sell any duplicates you find on the Auction House.
|tip You can buy any missing pages that you need from the Auction House, usually.
|tip If you manage to collect them all, accept the quest in this camp and complete it.
Click Here to Continue |confirm |q 338 |future
step
kill 10 Young Stranglethorn Tiger##681 |q 185/1 |goto 35.23,12.83
You can find more around: |notinsticky
[33.42,11.47]
[31.79,9.19]
step
Kill enemies around this area
Reach Level 33 |ding 33 |goto 35.23,12.83
You can find more around: |notinsticky
[33.42,11.47]
[31.79,9.19]
step
talk Ajeck Rouack##717
turnin Tiger Mastery##185 |goto 35.61,10.62
accept Tiger Mastery##186 |goto 35.61,10.62
step
kill 10 Young Panther##683 |q 190/1 |goto 41.70,12.28
You can find more around: |notinsticky
[42.40,10.56]
[41.06,8.26]
step
Follow the path up |goto 43.88,14.22 < 20 |only if walking
kill 10 Stranglethorn Tiger##682 |q 186/1 |goto 45.28,14.27
You can find more around: |notinsticky
[47.77,13.18]
[46.73,16.86]
step
talk Ajeck Rouack##717
turnin Tiger Mastery##186 |goto 35.61,10.62
accept Tiger Mastery##187 |goto 35.61,10.62
step
talk Sir S. J. Erlgadin##718
turnin Panther Mastery##190 |goto 35.55,10.55
accept Panther Mastery##191 |goto 35.55,10.55
step
Follow the path up |goto 30.79,8.27 < 20 |only if walking
kill 10 Panther##736 |q 191/1 |goto 30.02,10.56
You can find more around: |notinsticky
[28.35,12.13]
[28.55,16.11]
step
kill 10 Stranglethorn Raptor##685 |q 194/1 |goto 26.04,16.19
step
Follow the path down |goto 30.49,8.61 < 20 |only if walking
talk Sir S. J. Erlgadin##718
turnin Panther Mastery##191 |goto 35.55,10.55
accept Panther Mastery##192 |goto 35.55,10.55
step
talk Hemet Nesingwary##715
turnin Raptor Mastery##194 |goto 35.66,10.81
accept Raptor Mastery##195 |goto 35.66,10.81
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
accept The Green Hills of Stranglethorn##338 |goto 35.66,10.53
accept Chapter I##339 |goto 35.66,10.53
|only if ((itemcount(2725) >= 1) and (itemcount(2728) >= 1) and (itemcount(2730) >= 1) and (itemcount(2732) >= 1) and (not completedq(339)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
turnin Chapter I##339 |goto 35.66,10.53
|only if ((itemcount(2725) >= 1) and (itemcount(2728) >= 1) and (itemcount(2730) >= 1) and (itemcount(2732) >= 1) and (not completedq(339)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
accept The Green Hills of Stranglethorn##338 |goto 35.66,10.53
accept Chapter II##340 |goto 35.66,10.53
|only if ((itemcount(2734) >= 1) and (itemcount(2735) >= 1) and (itemcount(2738) >= 1) and (itemcount(2740) >= 1) and (not completedq(340)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
turnin Chapter II##340 |goto 35.66,10.53
|only if ((itemcount(2734) >= 1) and (itemcount(2735) >= 1) and (itemcount(2738) >= 1) and (itemcount(2740) >= 1) and (not completedq(340)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
accept The Green Hills of Stranglethorn##338 |goto 35.66,10.53
accept Chapter III##341 |goto 35.66,10.53
|only if ((itemcount(2742) >= 1) and (itemcount(2744) >= 1) and (itemcount(2745) >= 1) and (itemcount(2748) >= 1) and (not completedq(341)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
turnin Chapter III##341 |goto 35.66,10.53
|only if ((itemcount(2742) >= 1) and (itemcount(2744) >= 1) and (itemcount(2745) >= 1) and (itemcount(2748) >= 1) and (not completedq(341)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
accept The Green Hills of Stranglethorn##338 |goto 35.66,10.53
accept Chapter IV##342 |goto 35.66,10.53
|only if ((itemcount(2749) >= 1) and (itemcount(2750) >= 1) and (itemcount(2751) >= 1) and (not completedq(342)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
turnin Chapter IV##342 |goto 35.66,10.53
|only if ((itemcount(2749) >= 1) and (itemcount(2750) >= 1) and (itemcount(2751) >= 1) and (not completedq(342)))
step
talk Barnil Stonepot##716
turnin The Green Hills of Stranglethorn##338 |goto 35.66,10.53
|only if ((itemcount(2756) >= 1) and (itemcount(2757) >= 1) and (itemcount(2758) >= 1) and (itemcount(2759) >= 1) and (not completedq(338)))
step
Follow the road |goto 35.48,15.56 < 30 |only if walking
Continue following the road |goto 36.80,48.87 < 30 |only if walking
Enter the tunnel to Booty Bay |goto 29.55,72.51 < 10 |only if walking
Leave the tunnel |goto 27.96,73.67 < 10 |only if walking
Enter the building |goto 27.08,77.62 < 5 |walk
talk Krazek##773
|tip Upstairs inside the building, on the top floor.
turnin Krazek's Cookery##210 |goto 26.94,77.21
accept Favor for Krazek##627 |goto 26.94,77.21
step
talk talk 773
|tip Upstairs inside the building, on the top floor.
turnin Favor for Krazek##627 |goto 26.94,77.21
accept Return to Corporal Kaleb##622 |goto 26.94,77.21
accept The Haunted Isle##616 |goto 26.94,77.21
step
talk Baron Revilgaz##2496
|tip Upstairs on the balcony of the building.
turnin The Haunted Isle##616 |goto 27.23,76.87
step
Follow the path and leave the building |goto 26.99,77.49 < 5 |only if walking
Enter the building and run up the stairs |goto 27.52,77.86 < 5 |only if walking
talk Gyll##2859
|tip Upstairs on the balcony of the building.
fpath Booty Bay |goto 27.53,77.79
step
talk Fuzruckle##3496
|tip Collect these items from the bank.
collect Crate of Crash Helmets##5849 |goto The Barrens/0 62.64,37.42 |q 1179
step
talk Bragok##16227
fpath Ratchet |goto 63.08,37.16
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Thousand Needles (33-34)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Thousand Needles",
condition_suggested=function() return level >= 33 and level <= 34 and not completedq(1175) end,
next="Leveling Guides\\Classic (12-58)\\Desolace (34-35)",
},[[
step
Follow the path |goto The Barrens 60.01,38.84 < 30 |only if walking
Follow the road |goto The Barrens 50.98,50.16 < 30 |only if walking
Ride the elevator down |goto Thousand Needles 31.72,23.63 < 30 |only if walking
click Henrig Lonebrow's Journal
|tip It looks like a book in a dead dwarf's hand.
collect Henrig Lonebrow's Journal##5791 |goto Thousand Needles 30.73,24.35 |q 1100 |future
step
use Henrig Lonebrow's Journal##5791
accept Lonebrow's Journal##1100
step
Follow the road |goto 31.46,30.20 < 30 |only if walking
Continue following the road |goto 28.84,33.47 < 30 |only if walking
Follow the path |goto 12.16,16.75 < 30 |only if walking
talk Thyssiana##4319
fpath Thalanaar |goto Feralas 89.50,45.85
step
talk Falfindel Waywarder##4048
turnin Lonebrow's Journal##1100 |goto 89.64,46.56
step
Follow the road |goto Thousand Needles 11.69,15.83 < 30 |only if walking
Continue following the road |goto Thousand Needles 29.52,34.59 < 30 |only if walking
Avoid the Freewind Post elevators |goto Thousand Needles 43.37,48.03 < 30 |only if walking
Avoid the Freewind Post elevators |goto Thousand Needles 43.78,53.34 < 30 |only if walking
Follow the road |goto Thousand Needles 49.43,52.57 < 30 |only if walking
Follow the path |goto Thousand Needles 66.74,55.86 < 30 |only if walking
talk Kravel Koalbeard##4452
accept Rocket Car Parts##1110 |goto Thousand Needles 77.79,77.27
accept Wharfmaster Dizzywig##1111 |goto Thousand Needles 77.79,77.27
accept Hemet Nesingwary##5762 |goto Thousand Needles 77.79,77.27
step
talk Fizzle Brassbolts##4454
accept Salt Flat Venom##1104 |goto 78.06,77.13
step
talk Wizzle Brassbolts##4453
turnin The Brassbolts Brothers##1179 |goto 78.14,77.12
accept Hardened Shells##1105 |goto 78.14,77.12
step
talk Pozzik##4630
accept Load Lightening##1176 |goto 80.18,75.89
step
talk Trackmaster Zherin##4629
accept A Bump in the Road##1175 |goto 81.64,77.95
stickystart "Collect_Hollow_Vulture_Bones"
stickystart "Collect_Hardened_Tortoise_Shells"
stickystart "Collect_Salty_Scorpid_Venom"
stickystart "Kill_Saltstone_Basilisks"
stickystart "Collect_Rocket_Car_Parts"
stickystart "Kill_Saltstone_Crystalhides"
step
label "Collect_Hollow_Vulture_Bones"
Kill Salt Flats enemies around this area
|tip They look like vultures.
|tip You can rarely find individual ones all around Shimmering Flats.
|tip However, this is the only location where there are multiple of them.
collect 10 Hollow Vulture Bone##5848 |q 1176/1 |goto 87.45,65.73
|tip Work on other quests in the northern part of Shimmering Flats, and keep revisiting this area until you have them all.
step
label "Collect_Hardened_Tortoise_Shells"
Kill Sparkleshell enemies around this area
|tip They look like turtles.
collect 9 Hardened Tortoise Shell##5795 |q 1105/1 |goto 82.53,55.37
You can find more around: |notinsticky
[77.41,53.72]
[73.05,56.51]
[74.82,63.33]
step
label "Collect_Salty_Scorpid_Venom"
Kill Scorpid enemies around this area
|tip They look like scorpions.
collect 6 Salty Scorpid Venom##5794 |q 1104/1 |goto 83.06,61.38
You can find more around: |notinsticky
[77.95,53.29]
[73.56,56.98]
[71.30,66.70]
[77.61,68.70]
[71.62,72.74]
step
label "Kill_Saltstone_Basilisks"
kill 10 Saltstone Basilisk##4147 |q 1175/1 |goto 77.73,59.22
You can find more around: |notinsticky
[73.41,57.27]
[70.97,66.69]
[77.48,52.40]
step
label "Collect_Rocket_Car_Parts"
click Rocket Car Rubble##19868+
|tip They look like various machine parts scattered on the ground.
|tip You can find them all throughout the Shimmering Flats.
collect 30 Rocket Car Parts##5798 |q 1110/1 |goto 83.06,61.38
You can find more around: |notinsticky
[77.95,53.29]
[73.56,56.98]
[71.30,66.70]
[77.61,68.70]
stickystop "Kill_Saltstone_Crystalhides"
step
talk Kravel Koalbeard##4452
turnin Rocket Car Parts##1110 |goto 77.79,77.27
step
talk Fizzle Brassbolts##4454
turnin Salt Flat Venom##1104 |goto 78.06,77.13
step
talk Wizzle Brassbolts##4453
turnin Hardened Shells##1105 |goto 78.14,77.12
step
talk Pozzik##4630
turnin Load Lightening##1176 |goto 80.18,75.88
accept Goblin Sponsorship##1178 |goto 80.18,75.88
stickystart "Kill_Saltstone_Crystalhides"
step
kill 6 Saltstone Gazer##4150 |q 1175/3 |goto 77.51,87.20
step
label "Kill_Saltstone_Crystalhides"
kill 10 Saltstone Crystalhide##4151 |q 1175/2 |goto 77.51,87.20
step
Kill enemies around this area
Reach Level 34 |ding 34 |goto 77.51,87.20
step
talk Trackmaster Zherin##4629
turnin A Bump in the Road##1175 |goto 81.63,77.95
step
Follow the path up |goto 74.17,92.85 < 15 |only if walking
Continue following the path |goto Tanaris 51.11,22.59 < 15 |only if walking
Follow the path |goto Tanaris 51.26,26.48 < 10 |only if walking
talk Bera Stonehammer##7823
fpath Gadgetzan |goto Tanaris 51.01,29.34
step
Enter the building |goto Stormwind City 55.29,68.13 < 7 |walk
talk Olivia Burnside##2455
|tip Inside the building.
|tip Put these items in the bank.
bank Kravel's Parts Order##5799 |goto Stormwind City 57.55,72.43 |q 1111
bank Kravel's Crate##14542 |goto Stormwind City 57.55,72.43 |q 5762
step
talk Olivia Burnside##2455
|tip Inside the building.
|tip Collect these items from the bank.
collect 5 Elixir of Water Breathing##5996 |goto 57.55,72.43 |q 6161 |future
|tip You should have these from an earlier quest reward.
step
Enter the building |goto 39.84,85.25 < 7 |walk
talk Angus Stern##1141
|tip Inside the building.
accept Morgan Stern##1260 |goto 41.50,89.39
step
Leave the building |goto 39.84,85.25 < 7 |walk
talk Baldruc##4321
fpath Theramore |goto Dustwallow Marsh 67.48,51.30
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Desolace (34-35)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Desolace",
condition_suggested=function() return level >= 34 and level <= 35 and not completedq(1370) end,
next="Leveling Guides\\Classic (12-58)\\Stranglethorn Vale (35-37)",
},[[
step
Follow the path |goto Stonetalon Mountains 41.62,15.95 < 20 |only if walking
Continue following the path |goto Stonetalon Mountains 46.90,31.60 < 30 |only if walking
Continue following the path |goto Stonetalon Mountains 42.36,42.47 < 20 |only if walking
Follow the path up |goto Stonetalon Mountains 30.22,75.85 < 20 |only if walking
Follow the road |goto Desolace 53.35,6.17 < 40 |only if walking
Follow the path up |goto Desolace 67.49,15.76 < 15 |only if walking
talk Vahlarriel Demonslayer##5642
accept Vahlarriel's Search##1437 |goto Desolace 66.44,11.82
step
talk Captain Pentigast##5396
accept Strange Alliance##1382 |goto 66.66,10.93
step
talk Corporal Melkins##5752
accept Centaur Bounty##1387 |goto 66.74,10.87
step
talk Kreldig Ungor##5638
turnin Reclaimers' Business in Desolace##1453 |goto 66.20,9.63
accept The Karnitol Shipwreck##1454 |goto 66.20,9.63
accept Reagents for Reclaimers Inc.##1458 |goto 66.20,9.63
step
talk Baritanas Skyriver##6706
fpath Nijel's Point |goto 64.66,10.54
step
talk Innkeeper Lyshaerya##11103
|tip Inside the building.
home Nijel's Point |goto 66.27,6.56
step
Follow the path down |goto 67.05,13.04 < 15 |only if walking
click Malem Chest
turnin Vahlarriel's Search##1437 |goto 56.54,17.83
accept Vahlarriel's Search##1465 |goto 56.54,17.83
stickystart "Collect_Hatefury_Horns"
step
Kill Hatefury enemies around this area
collect 10 Hatefury Claw##6246 |q 1458/1 |goto 75.60,23.34
You can find more around: |notinsticky
[79.65,19.76]
[77.19,15.26]
[72.61,18.28]
step
label "Collect_Hatefury_Horns"
Kill Hatefury enemies around this area
collect 10 Hatefury Horn##6247 |q 1458/2 |goto 75.60,23.34
You can find more around: |notinsticky
[79.65,19.76]
[77.19,15.26]
[72.61,18.28]
step
Follow the path up |goto 67.39,15.50 < 15 |only if walking
talk Vahlarriel Demonslayer##5642
turnin Vahlarriel's Search##1465 |goto 66.44,11.82
accept Vahlarriel's Search##1438 |goto 66.44,11.82
step
talk Kreldig Ungor##5638
turnin Reagents for Reclaimers Inc.##1458 |goto 66.20,9.63
accept Reagents for Reclaimers Inc.##1459 |goto 66.20,9.63
step
Follow the path down |goto 67.05,13.04 < 15 |only if walking
kill Scorpashi Snapper##4696+
|tip They share spawn points with Gritjaw Basilisks.
collect 10 Scorpashi Venom##6248 |q 1459/1 |goto 69.71,24.65
You can find more around: |notinsticky
[73.86,31.30]
[68.72,33.08]
[65.86,29.09]
[64.70,22.78]
[61.89,23.40]
step
talk Bibbly F'utzbuckle##11438
|tip He walks around this area.
accept Bone Collector##5501 |goto 62.33,38.98
stickystart "Reach_Friendly_With_The_Gelkis_Clan_Centaur"
step
Kill Magram enemies around this area
|tip The ones in the outskirts of the village are a bit lower level and easier to grind. |notinsticky
|tip Be careful to avoid the Magram Pack Runners that walk around this area with 2 high level hyena guards. |notinsticky
collect 15 Centaur Ear##6067 |q 1387/1 |goto 70.30,73.77
step
label "Reach_Friendly_With_The_Gelkis_Clan_Centaur"
Kill Magram enemies around this area
|tip The ones in the outskirts of the village are a bit lower level and easier to grind. |notinsticky
|tip Be careful to avoid the Magram Pack Runners that walk around this area with 2 high level hyena guards. |notinsticky
Reach Friendly Reputation with the Gelkis Clan Centaur |condition rep('Gelkis Clan Centaur') >= Friendly |goto 70.42,73.40 |q 1382
|tip Press "U" to open your reputation list.
|tip Select the "Gelkis Clan Centaur" reputation, and select "Show as Experience Bar".
|tip This will show you a progress bar for this reputation, similar to your experience bar.
|tip You will have to kill at least one enemy before you can see the reputation.
step
talk Smeed Scrabblescrew##11596
accept Kodo Roundup##5561 |goto 60.86,61.86
stickystart "Collect_Kodo_Bones"
stickystart "Collect_Aged_Kodo_Hides"
step
use the Kodo Kombobulator##13892
|tip Use it on Kodo enemies around this area.
|tip You can find more all around this bone graveyard area.
Tame #5# Kodos |q 5561/1 |goto 54.45,63.19
|tip You must bring them back to Smeed Scrabblescrew to tame them.
|tip Talk to the kodos after you bring them to Smeed Scrabblescrew.
Bring the Kodos back to [60.73,61.96]
step
talk Smeed Scrabblescrew##11596
turnin Kodo Roundup##5561 |goto 60.86,61.86
step
label "Collect_Kodo_Bones"
click Kodo Bones+
|tip They look like large white horned animal skulls on the ground around this area.
|tip If a Kodo Apparition appears and attacks you, run away until it leaves you alone, if you can't kill them.
collect 10 Kodo Bone##13703 |q 5501/1 |goto 51.31,58.04
step
label "Collect_Aged_Kodo_Hides"
kill Aged Kodo##4700+
collect 3 Aged Kodo Hide##6249 |q 1459/2 |goto 51.41,58.45
step
Follow the path |goto 48.25,62.99 < 30 |only if walking
Follow the path up |goto 46.76,67.06 < 10 |only if walking
Follow the path down |goto 46.35,70.20 < 10 |only if walking
Follow the road |goto 43.71,76.57 < 30 |only if walking
talk Uthek the Wise##5397
turnin Strange Alliance##1382 |goto 36.22,79.25
step
Follow the road |goto 40.42,83.18 < 30 |only if walking
Continue following the road |goto Feralas 45.07,2.43 < 30 |only if walking
Follow the path down |goto Feralas 47.56,37.72 < 20 |only if walking
Ride the boat or swim across the water |goto Feralas 43.39,42.75 < 20 |only if walking
talk Fyldren Moonfeather##8019
fpath Feathermoon |goto Feralas 30.24,43.25
step
talk Kreldig Ungor##5638
turnin Reagents for Reclaimers Inc.##1459 |goto Desolace/0 66.20,9.63
step
talk Corporal Melkins##5752
turnin Centaur Bounty##1387 |goto 66.74,10.87
step
Follow the path down |goto 67.05,13.01 < 15 |only if walking
talk Bibbly F'utzbuckle##11438
|tip He walks around this area.
turnin Bone Collector##5501 |goto 62.33,38.98
step
click Karnitol's Chest
turnin The Karnitol Shipwreck##1454 |goto 36.11,30.45
accept The Karnitol Shipwreck##1455 |goto 36.11,30.45
step
click Rackmore's Log
accept Claim Rackmore's Treasure!##6161 |goto 36.07,30.41
step
use an Elixir of Water Breathing##5996
|tip If you don't have any, swim next to the bubbling gray rock mounds on the ground underwater around this area.
|tip They will allow you to breath underwater.
Kill Drysnap enemies around this area
|tip They look like lobster underwater.
collect Rackmore's Silver Key##15878 |q 6161/1 |goto 32.78,31.37
step
Follow the path up |goto 36.05,30.81 < 40 |only if walking
Follow the path |goto 41.61,33.95 < 20 |only if walking
talk Azore Aldamort##11863
accept Sceptre of Light##5741 |goto 38.88,27.17
step
Follow the path up |goto 55.56,32.51 < 30 |only if walking
Follow the path |goto 56.06,29.54 < 10 |only if walking
kill Burning Blade Seer##13019
|tip At the top of the tower.
collect Sceptre of Light##15750 |q 5741/1 |goto 55.17,30.15
step
Enter the building |goto 55.48,27.83 < 7 |walk
Follow the path |goto 55.66,26.69 < 7 |walk
Follow the path |goto 55.51,26.11 < 7 |walk
talk Dalinda Malem##5644
|tip Inside the building.
turnin Vahlarriel's Search##1438 |goto 54.86,26.13
accept Search for Tyranis##1439 |goto 54.86,26.13
step
Follow the path |goto 55.51,26.12 < 7 |walk
Continue following the path |goto 55.64,26.75 < 7 |walk
Leave the building |goto 55.48,27.83 < 7 |walk
Enter the building |goto 53.73,29.42 < 7 |walk
kill Tyranis Malem##5643
|tip Inside the building.
|tip Try to pull him toward the building entrance, so you don't accidentally attract other enemies.
collect Tyranis' Pendant##6767 |q 1439/1 |goto 53.01,29.08
step
Leave the building |goto 53.73,29.42 < 7 |walk
Enter the building |goto 55.48,27.83 < 7 |walk
Follow the path |goto 55.66,26.69 < 7 |walk
Follow the path |goto 55.51,26.11 < 7 |walk
talk Dalinda Malem##5644
|tip Inside the building.
|tip If she's not here, someone may be escorting her.
|tip Wait until she respawns.
turnin Search for Tyranis##1439 |goto 54.86,26.13
accept Return to Vahlarriel##1440 |goto 54.86,26.13 |noautoaccept
|tip This is an escort quest.
|tip Kill all enemies in this room before starting the quest.
step
Watch the dialogue
|tip Follow Dalinda Malem and protect her as she walks.
|tip She eventually walks to this location.
Rescue Dalinda Malem |q 1440/1 |goto 58.26,30.95
step
Follow the road |goto 52.89,36.80 < 50 |only if walking
talk Azore Aldamort##11863
turnin Sceptre of Light##5741 |goto 38.89,27.17
accept Book of the Ancients##6027 |goto 38.89,27.17
step
Kill Slitherblade enemies around this area
|tip Underwater.
collect Rackmore's Golden Key##15881 |q 6161/2 |goto 35.20,24.86
step
click Serpent Statue
kill Lord Kragaru##12369
|tip He's level 38, but you should be able to kill him at this level.
|tip If you have trouble, try to find someone to help you.
collect Book of the Ancients##15803 |q 6027/1 |goto 28.19,6.62
step
click Rackmore's Chest
|tip On the ground at the base of the tree.
turnin Claim Rackmore's Treasure!##6161 |goto 30.00,8.70
step
Follow the path up |goto 40.99,28.91 < 15 |only if walking
talk Azore Aldamort##11863
turnin Book of the Ancients##6027 |goto 38.89,27.17
step
talk Kreldig Ungor##5638
turnin The Karnitol Shipwreck##1455 |goto 66.20,9.63
step
talk Vahlarriel Demonslayer##5642
turnin Return to Vahlarriel##1440 |goto 66.44,11.82
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Stranglethorn Vale (35-37)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Stranglethorn Vale",
condition_suggested=function() return level >= 35 and level <= 37 and not completedq(575) end,
next="Leveling Guides\\Classic (12-58)\\Hillsbrad Foothills (37-38)",
},[[
step
Enter the building |goto The Barrens 62.89,36.52 < 7 |walk
talk Gazlowe##3391
|tip Upstairs inside the building.
turnin Goblin Sponsorship##1178 |goto The Barrens 62.68,36.23
accept Goblin Sponsorship##1180 |goto The Barrens 62.68,36.23
step
talk Fuzruckle##3496
|tip Put these items in the bank.
bank Elixir of Water Breathing##5996 |goto 62.64,37.42 |q 1111
|tip You should still have a few of these left.
step
talk Fuzruckle##3496
|tip Collect these items from the bank.
collect Kravel's Parts Order##5799 |goto 62.64,37.42 |q 1111
collect Kravel's Crate##14542 |goto 62.64,37.42 |q 5762
step
talk Wharfmaster Dizzywig##3453
turnin Wharfmaster Dizzywig##1111 |goto 63.35,38.46
accept Parts for Kravel##1112 |goto 63.35,38.46
step
talk Wharfmaster Lozgil##4631
turnin Goblin Sponsorship##1180 |goto Stranglethorn Vale 26.35,73.56
accept Goblin Sponsorship##1181 |goto Stranglethorn Vale 26.35,73.56
step
Enter the building |goto 27.08,77.62 < 5 |walk
talk Innkeeper Skindle##6807
|tip Inside the building.
home Booty Bay |goto 27.04,77.31
step
talk Crank Fizzlebub##2498
|tip Inside the building.
accept Singing Blue Shards##605 |goto 27.12,77.21
step
talk Krazek##773
|tip Upstairs inside the building, on the top floor.
accept Investigate the Camp##201 |goto 26.94,77.21
accept Supplies to Private Thorsen##198 |goto 26.94,77.21
step
talk Kebok##737
|tip Upstairs inside the building, on the top floor.
accept Bloodscalp Ears##189 |goto 27.00,77.12
accept Hostile Takeover##213 |goto 27.00,77.12
step
talk Baron Revilgaz##2496
|tip Upstairs on the balcony of the building.
turnin Goblin Sponsorship##1181 |goto 27.23,76.87
accept Goblin Sponsorship##1182 |goto 27.23,76.87
accept The Stone of the Tides##578 |goto 27.23,76.87
step
Follow the path up |goto 27.85,76.74 < 7 |only if walking
Cross the bridge |goto 28.15,76.52 < 7 |only if walking
Enter the building |goto 28.21,77.33 < 5 |walk
talk Drizzlik##2495
|tip Inside the building.
accept Supply and Demand##575 |goto 28.29,77.59
step
talk Sergeant Yohwa##733
accept The Second Rebellion##203 |goto 38.02,3.33
accept Bad Medicine##204 |goto 38.02,3.33
step
talk Corporal Kaleb##770
turnin Return to Corporal Kaleb##622 |goto 37.74,3.30
step
talk Private Thorsen##738
|tip He periodically walks along the path to the south, from the Rebel Camp.
|tip If he's not here, wait for him to return.
turnin Supplies to Private Thorsen##198 |goto 37.98,3.42
step
talk Private Thorsen##738
|tip He periodically walks along the path to the south, from the Rebel Camp.
|tip If he's here, wait for him to start walking, and follow him.
|tip He will eventually get attacked by two Kurzen enemies.
|tip Help him kill the enemies and he will offer you a quest.
|tip He takes this walk every 10 minutes, or so.
accept Jungle Secrets##215 |goto 37.98,3.41
If he's not here, check around: |notinsticky
[40.34,8.44]
step
Follow the road |goto 39.89,8.26 < 30 |only if walking
Follow the path up |goto 39.06,5.21 < 15 |only if walking
talk Lieutenant Doren##469
turnin Jungle Secrets##215 |goto 38.04,3.01
accept Bookie Herod##200 |goto 38.04,3.01
stickystart "Collect_Jungle_Remedies"
stickystart "Kill_Kurzen_Jungle_Fighters"
step
Follow the path |goto 39.27,5.55 < 20 |only if walking
Follow the path up |goto 43.23,10.80 < 15 |only if walking
click Kurzen Supplies
|tip In front of the building.
|tip Be careful to stay out of sight of the enemies near the doorway inside the building.
collect Venom Fern Extract##2634 |q 204/2 |goto 44.10,9.56
step
Enter the building |goto 44.02,9.46 < 7 |walk
click Bookie Herod's Records
|tip Upstairs inside the building.
turnin Bookie Herod##200 |goto 43.67,9.37
accept The Hidden Key##328 |goto 43.67,9.37
step
label "Collect_Jungle_Remedies"
Kill Kurzen enemies around this area
|tip Try to interrupt the Medicine Men's spell casts, or drain their mana if you can.
|tip They can heal themselves and other enemies.
collect 7 Jungle Remedy##2633 |q 204/1 |goto 43.88,10.71
step
label "Kill_Kurzen_Jungle_Fighters"
kill 15 Kurzen Jungle Fighter##937 |q 203/1 |goto 43.88,10.71
step
Kill enemies around this area
Reach Level 36 |ding 36 |goto 43.88,10.71
step
Follow the road |goto 39.89,8.26 < 30 |only if walking
Follow the path up |goto 39.06,5.21 < 15 |only if walking
talk Sergeant Yohwa##733
turnin The Second Rebellion##203 |goto 38.02,3.33
turnin Bad Medicine##204 |goto 38.02,3.33
accept Special Forces##574 |goto 38.02,3.33
stickystart "Kill_Kurzen_Headshrinkers"
stickystart "Kill_Kurzen_Commandos"
step
Follow the path |goto 39.27,5.55 < 20 |only if walking
Follow the path up |goto 43.23,10.80 < 15 |only if walking
Enter the cave |goto 45.82,8.18 < 30 |walk
Follow the path |goto 46.53,7.05 < 10 |walk
Follow the path down |goto 47.78,7.81 < 10 |walk
Follow the path |goto 48.78,8.64 < 10 |walk
click Bookie Herod's Strongbox
|tip Downstairs inside the cave.
turnin The Hidden Key##328 |goto 49.61,7.57
accept The Spy Revealed!##329 |goto 49.61,7.57
step
Follow the path up |goto 48.20,8.53 < 7 |c |q 574
step
label "Kill_Kurzen_Headshrinkers"
kill 6 Kurzen Headshrinker##941 |q 574/2 |goto 46.48,7.08
|tip Inside the cave, on the top level.
step
label "Kill_Kurzen_Commandos"
kill 10 Kurzen Commando##938 |q 574/1 |goto 46.48,7.08
|tip They are stealthed upstairs inside the cave, on the top level.
step
Leave the cave |goto 45.82,8.18 < 30 |walk
Follow the path |goto 43.05,9.88 < 70 |only if walking
Follow the road |goto 39.82,8.07 < 30 |only if walking
Follow the path up |goto 39.06,5.21 < 15 |only if walking
talk Lieutenant Doren##469
turnin The Spy Revealed!##329 |goto 38.04,3.01
accept Patrol Schedules##330 |goto 38.04,3.01
turnin Special Forces##574 |goto 38.04,3.01
step
talk Corporal Sethman##1422
turnin Patrol Schedules##330 |goto 37.66,3.39
accept Report to Doren##331 |goto 37.66,3.39
step
talk Lieutenant Doren##469
turnin Report to Doren##331 |goto 38.04,3.01
stickystart "Collect_Tumbled_Crystals"
step
Follow the path up |goto 42.25,18.10 < 10 |only if walking
kill Foreman Cozzle##4723
|tip Inside the building at the top of the platform.
collect Cozzle's Key##5851 |goto 42.65,18.35 |q 1182
step
Enter the building |goto 43.45,20.36 < 7 |walk
click Cozzle's Footlocker
|tip Inside the building.
collect Fuel Regulator Blueprints##5852 |q 1182/1 |goto 43.34,20.34
step
label "Collect_Tumbled_Crystals"
kill Venture Co. Geologist##1096+
collect 8 Tumbled Crystal##4106 |q 213/1 |goto 44.63,21.45
step
Follow the path up |goto 47.00,22.88 < 15 |only if walking
kill 10 Shadowmaw Panther##684 |q 192/1 |goto 49.23,22.66
|tip They are stealthed around this area.
|tip They share spawn points with Stranglethorn Tigresses, so kill those too, if you can't find any.
You can find more around [46.42,27.34]
step
Follow the road|goto 42.90,24.53 < 30 |only if walking
kill 10 Lashtail Raptor##686 |q 195/1 |goto 38.52,26.06
You can find more around: |notinsticky
[35.81,26.67]
[32.72,24.28]
[30.55,24.12]
step
kill 10 Elder Stranglethorn Tiger##1085 |q 187/1 |goto 34.68,18.95
You can find more around [31.55,19.39]
step
Locate the Hunters' Camp |q 201/1 |goto 35.55,10.55
step
talk Hemet Nesingwary##715
turnin Raptor Mastery##195 |goto 35.66,10.81
accept Raptor Mastery##196 |goto 35.66,10.81
turnin Hemet Nesingwary##5762 |goto 35.66,10.81
step
talk Ajeck Rouack##717
turnin Tiger Mastery##187 |goto 35.62,10.62
accept Tiger Mastery##188 |goto 35.62,10.62
step
talk Sir S. J. Erlgadin##718
turnin Panther Mastery##192 |goto 35.55,10.55
accept Panther Mastery##193 |goto 35.55,10.55
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
accept The Green Hills of Stranglethorn##338 |goto 35.66,10.53
accept Chapter I##339 |goto 35.66,10.53
|only if ((itemcount(2725) >= 1) and (itemcount(2728) >= 1) and (itemcount(2730) >= 1) and (itemcount(2732) >= 1) and (not completedq(339)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
turnin Chapter I##339 |goto 35.66,10.53
|only if ((itemcount(2725) >= 1) and (itemcount(2728) >= 1) and (itemcount(2730) >= 1) and (itemcount(2732) >= 1) and (not completedq(339)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
accept The Green Hills of Stranglethorn##338 |goto 35.66,10.53
accept Chapter II##340 |goto 35.66,10.53
|only if ((itemcount(2734) >= 1) and (itemcount(2735) >= 1) and (itemcount(2738) >= 1) and (itemcount(2740) >= 1) and (not completedq(340)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
turnin Chapter II##340 |goto 35.66,10.53
|only if ((itemcount(2734) >= 1) and (itemcount(2735) >= 1) and (itemcount(2738) >= 1) and (itemcount(2740) >= 1) and (not completedq(340)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
accept The Green Hills of Stranglethorn##338 |goto 35.66,10.53
accept Chapter III##341 |goto 35.66,10.53
|only if ((itemcount(2742) >= 1) and (itemcount(2744) >= 1) and (itemcount(2745) >= 1) and (itemcount(2748) >= 1) and (not completedq(341)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
turnin Chapter III##341 |goto 35.66,10.53
|only if ((itemcount(2742) >= 1) and (itemcount(2744) >= 1) and (itemcount(2745) >= 1) and (itemcount(2748) >= 1) and (not completedq(341)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
accept The Green Hills of Stranglethorn##338 |goto 35.66,10.53
accept Chapter IV##342 |goto 35.66,10.53
|only if ((itemcount(2749) >= 1) and (itemcount(2750) >= 1) and (itemcount(2751) >= 1) and (not completedq(342)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
turnin Chapter IV##342 |goto 35.66,10.53
|only if ((itemcount(2749) >= 1) and (itemcount(2750) >= 1) and (itemcount(2751) >= 1) and (not completedq(342)))
step
talk Barnil Stonepot##716
turnin The Green Hills of Stranglethorn##338 |goto 35.66,10.53
|only if ((itemcount(2756) >= 1) and (itemcount(2757) >= 1) and (itemcount(2758) >= 1) and (itemcount(2759) >= 1) and (not completedq(338)))
step
kill River Crocolisk##1150+
|tip Along the water around this area.
collect 2 Large River Crocolisk Skin##4053 |q 575/1 |goto 33.45,8.28
You can find more around: |notinsticky
[37.63,9.93]
[40.24,13.68]
stickystart "Collect_Bloodscalp_Ears"
step
Follow the path up |goto 31.81,16.83 < 10 |only if walking
kill Sin'Dall##729
|tip He looks like an orange tiger that walks around this area.
|tip He usually is on top of the hill.
collect Paw of Sin'Dall##3879 |q 188/1 |goto 32.21,17.39
step
label "Collect_Bloodscalp_Ears"
Kill Bloodscalp enemies around this area
|tip You can find a few more along the path in the outskirts circling this camp.
collect 15 Bloodscalp Ear##1519 |q 189/1 |goto 29.36,19.97
You can find more around: |notinsticky
[33.85,15.53]
[31.68,12.65]
step
kill Crystal Spine Basilisk##689+
collect 10 Singing Crystal Shard##3918 |q 605/1 |goto 27.06,18.51
You can find more around [25.11,17.42]
step
Locate the Haunted Island |q 578/1 |goto 21.33,21.93
step
Kill enemies around this area
Reach Level 37 |ding 37 |goto 29.36,19.97
You can find more around: |notinsticky
[33.85,15.53]
[31.68,12.65]
step
talk Ajeck Rouack##717
turnin Tiger Mastery##188 |goto 35.62,10.62
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
accept The Green Hills of Stranglethorn##338 |goto 35.66,10.53
accept Chapter I##339 |goto 35.66,10.53
|only if ((itemcount(2725) >= 1) and (itemcount(2728) >= 1) and (itemcount(2730) >= 1) and (itemcount(2732) >= 1) and (not completedq(339)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
turnin Chapter I##339 |goto 35.66,10.53
|only if ((itemcount(2725) >= 1) and (itemcount(2728) >= 1) and (itemcount(2730) >= 1) and (itemcount(2732) >= 1) and (not completedq(339)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
accept The Green Hills of Stranglethorn##338 |goto 35.66,10.53
accept Chapter II##340 |goto 35.66,10.53
|only if ((itemcount(2734) >= 1) and (itemcount(2735) >= 1) and (itemcount(2738) >= 1) and (itemcount(2740) >= 1) and (not completedq(340)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
turnin Chapter II##340 |goto 35.66,10.53
|only if ((itemcount(2734) >= 1) and (itemcount(2735) >= 1) and (itemcount(2738) >= 1) and (itemcount(2740) >= 1) and (not completedq(340)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
accept The Green Hills of Stranglethorn##338 |goto 35.66,10.53
accept Chapter III##341 |goto 35.66,10.53
|only if ((itemcount(2742) >= 1) and (itemcount(2744) >= 1) and (itemcount(2745) >= 1) and (itemcount(2748) >= 1) and (not completedq(341)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
turnin Chapter III##341 |goto 35.66,10.53
|only if ((itemcount(2742) >= 1) and (itemcount(2744) >= 1) and (itemcount(2745) >= 1) and (itemcount(2748) >= 1) and (not completedq(341)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
accept The Green Hills of Stranglethorn##338 |goto 35.66,10.53
accept Chapter IV##342 |goto 35.66,10.53
|only if ((itemcount(2749) >= 1) and (itemcount(2750) >= 1) and (itemcount(2751) >= 1) and (not completedq(342)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
turnin Chapter IV##342 |goto 35.66,10.53
|only if ((itemcount(2749) >= 1) and (itemcount(2750) >= 1) and (itemcount(2751) >= 1) and (not completedq(342)))
step
talk Barnil Stonepot##716
turnin The Green Hills of Stranglethorn##338 |goto 35.66,10.53
|only if ((itemcount(2756) >= 1) and (itemcount(2757) >= 1) and (itemcount(2758) >= 1) and (itemcount(2759) >= 1) and (not completedq(338)))
step
talk Crank Fizzlebub##2498
|tip Inside the building.
turnin Singing Blue Shards##605 |goto 27.12,77.21
step
talk Krazek##773
|tip Upstairs inside the building, on the top floor.
turnin Investigate the Camp##201 |goto 26.94,77.21
step
talk Kebok##737
|tip Upstairs inside the building, on the top floor.
turnin Bloodscalp Ears##189 |goto 27.00,77.12
turnin Hostile Takeover##213 |goto 27.00,77.12
step
talk Baron Revilgaz##2496
|tip Upstairs on the balcony of the building.
turnin Goblin Sponsorship##1182 |goto 27.23,76.87
accept Goblin Sponsorship##1183 |goto 27.23,76.87
turnin The Stone of the Tides##578 |goto 27.23,76.87
accept Water Elementals##601 |goto 27.23,76.87
step
_Destroy This Item:_
|tip It is no longer needed.
trash Library Scrip##3898
step
Follow the path up |goto 27.85,76.74 < 7 |only if walking
Cross the bridge |goto 28.15,76.52 < 7 |only if walking
Enter the building |goto 28.21,77.33 < 5 |walk
talk Drizzlik##2495
|tip Inside the building.
turnin Supply and Demand##575 |goto 28.29,77.59
accept Some Assembly Required##577 |goto 28.29,77.59
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Hillsbrad Foothills (37-37)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Hillsbrad Foothills",
condition_suggested=function() return level == 37 and not completedq(512) end,
next="Leveling Guides\\Classic (12-58)\\Arathi Highlands (37-39)",
},[[
step
Enter the building |goto Ironforge 34.08,62.41 < 7 |walk
talk Bailey Stonemantle##2461
|tip Inside the building.
|tip Put these items in the bank.
bank Fuel Regulator Blueprints##5852 |goto Ironforge 35.57,60.53 |q 1183
bank Kravel's Parts##5800 |goto Ironforge 35.57,60.53 |q 1112
step
talk Bailey Stonemantle##2461
|tip Inside the building.
|tip Collect these items from the bank.
collect 2 Elixir of Water Breathing##5996 |goto 35.57,60.53 |q 666 |future
|tip You should have at least a few of these.
step
Enter the building |goto 20.63,53.24 < 5 |walk
talk Innkeeper Firebrew##5111
|tip Inside the building.
home Ironforge |goto 18.15,51.46
step
talk Prospector Stormpike##1356
|tip Inside the building.
accept Ironband Wants You!##707 |goto 74.64,11.75
step
Enter the building |goto Hillsbrad Foothills 50.45,58.55 < 7 |walk
talk Chef Jessen##2430
|tip Inside the building.
accept Soothing Turtle Bisque##555 |goto Hillsbrad Foothills 51.89,58.68
step
talk Marshal Redpath##2263
accept Crushridge Bounty##500 |goto 49.48,58.73
step
Enter the building |goto 49.00,59.12 < 7 |walk
talk Magistrate Henry Maleb##2276
|tip Inside the building.
accept Syndicate Assassins##505 |goto 48.14,59.11
step
Enter the building |goto 49.31,55.49 < 7 |walk
talk Micha Yance##2381
|tip Inside the building.
buy Soothing Spices##3713 |q 555/2 |goto 48.94,55.03
|tip Be careful not to accidentally sell this to a vendor.
step
kill Snapjaw##2408+
collect 10 Turtle Meat##3712 |q 555/1 |goto 55.82,57.06
|tip Be careful not to accidentally sell these to a vendor.
You can find more around: |notinsticky
[57.26,48.03]
[61.94,43.03]
[65.30,39.18]
[67.57,35.26]
[68.21,23.03]
[70.16,12.16]
stickystart "Kill_Syndicate_Thieves"
stickystart "Kill_Syndicate_Footpads"
step
Follow the road and avoid Tarren Mill |goto 57.32,35.31 < 50 |only if walking
Follow the path up |goto Alterac Mountains 53.08,65.13 < 20 |only if walking
click Syndicate Documents
accept Foreboding Plans##510 |goto Alterac Mountains 58.32,67.92
accept Encrypted Letter##511 |goto Alterac Mountains 58.32,67.92
step
label "Kill_Syndicate_Thieves"
kill 8 Syndicate Thief##2241 |q 505/2 |goto 58.32,67.92
You can find more around [47.91,82.14]
step
label "Kill_Syndicate_Footpads"
kill 12 Syndicate Footpad##2240 |q 505/1 |goto 58.32,67.92
You can find more around [47.91,82.14]
step
talk Loremaster Dibbs##2277
turnin Encrypted Letter##511 |goto Hillsbrad Foothills 50.57,57.09
accept Letter to Stormpike##514 |goto Hillsbrad Foothills 50.57,57.09
step
Enter the building |goto 49.02,59.12 < 7 |walk
talk Magistrate Henry Maleb##2276
|tip Inside the building.
turnin Syndicate Assassins##505 |goto 48.14,59.11
turnin Foreboding Plans##510 |goto 48.14,59.11
accept Noble Deaths##512 |goto 48.14,59.11
step
Follow the road |goto 57.15,34.90 < 30 |only if walking
Kill Crushridge enemies around this area
|tip They look like ogres.
collect 9 Dirty Knucklebones##2843 |q 500/1 |goto Alterac Mountains 47.57,61.10
You can find more around: |notinsticky
[49.51,52.14]
[48.47,39.68]
step
Kill Syndicate enemies around this area
|tip Be careful, the Syndicate Spies can be stealthed.
collect 7 Alterac Signet Ring##3505 |q 512/1 |goto 58.16,44.65
You can find more around [62.27,44.04]
step
Follow the road |goto 65.69,46.84 < 30 |only if walking
Continue following the road |goto 79.76,43.47 < 30 |only if walking
talk Bibilfaz Featherwhistle##12596
fpath Chillwind Camp |goto Western Plaguelands 42.93,85.06
step
talk Phin Odelic##2711
accept Hints of a New Plague?##659 |goto Hillsbrad Foothills 50.34,59.05
step
Enter the building |goto 50.46,58.55 < 7 |walk
talk Chef Jessen##2430
|tip Inside the building.
turnin Soothing Turtle Bisque##555 |goto 51.89,58.68
step
talk Marshal Redpath##2263
turnin Crushridge Bounty##500 |goto 49.48,58.73
step
Enter the building |goto 49.01,59.12 < 7 |walk
talk Magistrate Henry Maleb##2276
|tip Inside the building.
turnin Noble Deaths##512 |goto 48.14,59.11
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Arathi Highlands (37-39)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Arathi Highlands",
condition_suggested=function() return level >= 37 and level <= 39 and not completedq(1186) end,
next="Leveling Guides\\Classic (12-58)\\Dustwallow Marsh (39-42)",
},[[
step
talk Skuerto##2789
turnin Malin's Request##690 |goto Arathi Highlands 46.65,47.01
step
talk Apprentice Kryten##2788
accept Worth Its Weight in Gold##691 |goto 46.20,47.75
step
Follow the path |goto 48.79,44.25 < 30 |only if walking
click Shards of Myzrael
accept The Princess Trapped##642 |goto 62.50,33.80
step
Avoid Hammerfall |goto 72.95,40.77 < 50 |only if walking
Kill Drywhisker enemies around this area
|tip They look like kobolds.
|tip You can find more in the cave at the top of the path referenced below.
collect 12 Mote of Myzrael##4435 |q 642/1 |goto 76.13,44.11
You can find more around [78.07,35.28]
You can find more up the path that starts at [80.84,39.91]
step
Follow the path up |goto 80.90,39.96 < 10 |only if walking
Enter the cave |goto 82.66,36.16 < 10 |walk
Follow the path |goto 83.87,33.30 < 10 |walk
Follow the path up |goto 87.13,31.39 < 7 |walk
Follow the path |goto 84.73,28.93 < 7 |walk
click Iridescent Shards
|tip Upstairs inside the cave.
turnin The Princess Trapped##642 |goto 84.31,30.92
accept Stones of Binding##651 |goto 84.31,30.92
step
Follow the path |goto 83.77,33.75 < 10 |walk
Leave the cave |goto 82.69,36.21 < 10 |c |q 651
step
Kill enemies around this area
Reach Level 38 |ding 38 |goto 76.13,44.11
You can find more around [78.07,35.28]
You can find more up the path that starts at [80.84,39.91]
step
Avoid Hammerfall |goto 73.48,41.26 < 50 |only if walking
click Stone of East Binding
collect Cresting Key##4484 |q 651/2 |goto 66.75,29.75
step
talk Quae##2712
turnin Hints of a New Plague?##659 |goto 60.19,53.85
stickystart "Collect_Witherbark_Medicine_Pouches"
stickystart "Collect_Witherbark_Tusks"
step
Follow the path |goto 63.81,53.03 < 30 |only if walking
Follow the path up |goto 68.04,72.17 < 15 |only if walking
Enter the cave |goto 68.32,75.18 < 10 |walk
kill Witherbark Shadow Hunter##2557+
|tip Inside the cave.
collect Shadow Hunter Knife##5040 |q 691/3 |goto 67.59,78.45
|tip Be careful not to accidentally sell this to a vendor.
step
label "Collect_Witherbark_Medicine_Pouches"
Follow the path |goto 67.52,77.58 < 10 |walk
Leave the cave |goto 68.32,75.18 < 10 |walk
kill Witherbark Witch Doctor##2555+
|tip Inside and outside the cave. |notinsticky
collect 4 Witherbark Medicine Pouch##4522 |q 691/2 |goto 66.66,64.37
You can find more outside the cave around: |notinsticky
[61.45,72.04]
[64.79,72.83]
[70.29,68.39]
[72.11,64.09]
[70.82,60.27]
step
label "Collect_Witherbark_Tusks"
Kill Witherbark enemies around this area
|tip Inside and outside the cave. |notinsticky
collect 10 Witherbark Tusk##4503 |q 691/1 |goto 66.66,64.37
You can find more outside the cave around: |notinsticky
[61.45,72.04]
[64.79,72.83]
[70.29,68.39]
[72.11,64.09]
[70.82,60.27]
step
click Stone of Outer Binding
collect Thundering Key##4485 |q 651/3 |goto 52.04,50.77
step
talk Apprentice Kryten##2788
turnin Worth Its Weight in Gold##691 |goto 46.20,47.75
step
talk Skuerto##2789
accept Wand over Fist##693 |goto 46.65,47.01
step
Follow the path up |goto 44.34,48.60 < 20 |only if walking
Enter the cave |goto 53.75,77.37 < 10 |walk
Follow the path |goto 54.63,79.26 < 7 |walk
kill Kor'gresh Coldrage##2793
|tip Inside the cave.
collect Trelane's Wand of Invocation##4525 |q 693/1 |goto 54.75,81.87
step
Leave the cave |goto 53.68,77.23 < 10 |walk
talk Skuerto##2789
turnin Wand over Fist##693 |goto 46.65,47.01
step
Follow the path up |goto 44.38,48.55 < 20 |only if walking
Follow the road |goto 42.44,54.84 < 30 |only if walking
click Stone of West Binding
collect Burning Key##4483 |q 651/1 |goto 25.45,30.16
step
Follow the road |goto 22.85,36.03 < 50 |only if walking
click Stone of Inner Binding
turnin Stones of Binding##651 |goto 36.19,57.37
step
Follow the path |goto 31.22,65.35 < 15 |only if walking
Continue following the path |goto 23.60,70.17 < 15 |only if walking
Enter the tunnel |goto 21.58,75.61 < 10 |only if walking
Leave the tunnel |goto 22.00,79.55 < 10 |only if walking
talk Lolo the Lookout##2766
|tip He walks around this area.
accept Land Ho!##663 |goto 31.78,82.70
step
talk Shakes O'Breen##2610
turnin Land Ho!##663 |goto 32.28,81.38
step
talk First Mate Nilzlix##2767
|tip He walks around this area.
accept Deep Sea Salvage##662 |goto 32.75,81.50
step
talk Captain Steelgut##2769
accept Drowned Sorrows##664 |goto 34.00,80.79
step
talk Professor Phizzlethorpe##2768
|tip This is an escort quest.
|tip If he's not here, someone may be escorting him.
|tip Wait until he respawns.
accept Sunken Treasure##665 |goto 33.87,80.55 |noautoaccept
step
Watch the dialogue
|tip Follow Professor Phizzlethorpe as he walks.
|tip He eventually walks back to this location.
Kill the enemies that attack
|tip Two level 40 water elementals will attack.
|tip If you have trouble, try to find someone to help you.
Defend Professor Phizzlethorpe |q 665/1 |goto 33.87,80.55
step
talk Doctor Draxlegauge##2774
turnin Sunken Treasure##665 |goto 33.86,80.45
accept Sunken Treasure##666 |goto 33.86,80.45
step
Equip The Goggles of Gem Hunting |equipped Goggles of Gem Hunting##4491 |q 666
|tip They should be in your bags.
step
use an Elixir of Water Breathing##5996
|tip If you don't have any water breathing potions, skip the next few steps in the water and abandon the quests.
|tip They're extremely difficult and time consuming to do without water breathing.
Gain Water Breathing |havebuff 135859 |q 666
stickystart "Collect_Elven_Gems"
stickystart "Kill_Daggerspine_Sorceresses"
stickystart "Kill_Daggerspine_Raiders"
step
Swim through the sunken ship window |goto 23.44,85.43 < 3 |walk
click Maiden's Folly Log
|tip It looks like a large brown book in a grey metal cauldron.
|tip On the middle floor of the sunken ship.
collect Maiden's Folly Log##4489 |q 662/2 |goto 23.41,85.10
step
click Maiden's Folly Charts
|tip It looks like a tan scroll laying flat on a wooden ledge.
|tip On the middle floor of the sunken ship.
collect Maiden's Folly Charts##4487 |q 662/1 |goto 23.04,84.51
step
Swim through the sunken ship window |goto 22.74,85.05 < 3 |walk
Swim through the sunken ship window |goto 20.85,85.60 < 3 |walk
click Spirit of Silverpine Charts
|tip It looks like a tan scroll laying flat on a wooden crate next to a cannon.
|tip On the middle floor of the sunken ship.
collect Spirit of Silverpine Charts##4488 |q 662/3 |goto 20.45,85.60
step
Swim through the sunken ship window and enter the hole at the bottom of the ship |goto 20.30,84.79 < 3 |walk
click Spirit of Silverpine Log
|tip It looks like an open book laying on the ground.
|tip At the very bottom of the ship.
collect Spirit of Silverpine Log##4490 |q 662/4 |goto 20.65,85.10
step
label "Collect_Elven_Gems"
click Calcified Elven Gem+
|tip They look like large gray stones on the ground underwater around this area.
|tip If you are wearing the Goggles of Gen Hunting, they will appear on your minimap as yellow dots.
collect 10 Elven Gem##4492 |q 666/1 |goto 25.03,85.70
You can find more around: |notinsticky
[24.65,90.70]
[18.60,90.36]
[19.70,84.18]
step
label "Kill_Daggerspine_Sorceresses"
kill 3 Daggerspine Sorceress##2596 |q 664/2 |goto 22.83,87.29
|tip Underwater around this area. |notinsticky
step
label "Kill_Daggerspine_Raiders"
kill 10 Daggerspine Raider##2595 |q 664/1 |goto 22.83,87.29
|tip Underwater around this area. |notinsticky
step
talk First Mate Nilzlix##2767
|tip He walks around this area.
turnin Deep Sea Salvage##662 |goto 32.80,81.48
step
talk Captain Steelgut##2769
turnin Drowned Sorrows##664 |goto 34.00,80.79
step
talk Doctor Draxlegauge##2774
turnin Sunken Treasure##666 |goto 33.85,80.45
accept Sunken Treasure##668 |goto 33.85,80.45
step
Equip Your Regular Head Armor
Click Here After Equipping Your Regular Head Armor |confirm |q 668
step
talk Shakes O'Breen##2610
turnin Sunken Treasure##668 |goto 32.29,81.38
accept Sunken Treasure##669 |goto 32.29,81.38
step
Enter the building |goto Ironforge 34.08,62.40 < 7 |walk
talk Bailey Stonemantle##2461
|tip Inside the building.
|tip Put these items in the bank.
bank Sample Elven Gem##4502 |goto Ironforge 35.56,60.54 |q 669
bank Elixir of Water Breathing##5996 |goto Ironforge 35.56,60.54 |q 669
|tip Any that you have.
step
talk Bailey Stonemantle##2461
|tip Inside the building.
|tip Collect these items from the bank.
collect Kravel's Parts##5800 |goto 35.56,60.54 |q 1112
collect Fuel Regulator Blueprints##5852 |goto 35.56,60.54 |q 1183
step
talk Prospector Stormpike##1356
|tip Inside the building.
turnin Letter to Stormpike##514 |goto 74.64,11.73
step
talk Vincent Hyal##5082
accept James Hyal##1302 |goto Wetlands/0 8.39,61.75
step
Follow the path up |goto Tanaris 50.24,24.83 < 30 |only if walking
Follow the path down |goto Tanaris 51.56,21.92 < 30 |only if walking
talk Kravel Koalbeard##4452
turnin Parts for Kravel##1112 |goto Thousand Needles 77.79,77.26
step
Watch the dialogue
talk Kravel Koalbeard##4452
accept Delivery to the Gnomes##1114 |goto 77.79,77.27
step
talk Fizzle Brassbolts##4454
turnin Delivery to the Gnomes##1114 |goto 78.06,77.12
accept Martek the Exiled##1106 |goto 78.06,77.12
step
talk Kravel Koalbeard##4452
accept The Rumormonger##1115 |goto 77.79,77.27
step
talk Pozzik##4630
turnin Goblin Sponsorship##1183 |goto 80.18,75.88
accept The Eighteenth Pilot##1186 |goto 80.18,75.88
step
talk Razzeric##4706
turnin The Eighteenth Pilot##1186 |goto 80.33,76.09
accept Razzeric's Tweaking##1187 |goto 80.33,76.09
step
Enter the building |goto Tanaris 52.21,28.57 < 7 |walk
talk Gimblethorn##7799
|tip Inside the building.
|tip Put these items in the bank.
bank Fizzle Brassbolts' Letter##5827 |goto Tanaris 52.30,28.91 |q 1106
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Dustwallow Marsh (39-42)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Dustwallow Marsh",
condition_suggested=function() return level >= 39 and level <= 42 and not completedq(1287) end,
next="Leveling Guides\\Classic (12-58)\\Stranglethorn Vale (42-42)",
},[[
step
talk Sergeant Amelyn##23835
|tip She walks around this area.
accept This Old Lighthouse##11191 |goto Dustwallow Marsh/0 68.25,51.81
step
talk Calia Hastings##23566
|tip She walks around this area.
accept Traitors Among Us##11126 |goto 68.33,51.04
step
talk Deserter Agitator##23602+
|tip They look like guards all around this area.
Tell them _"Your propaganda won't work on me. Spout your treasonous filth elsewhere, traitor!"_
|tip Some of them may attack you.
Expose #5# Deserter Agitators |q 11126/1 |goto 67.15,50.48
step
talk Guard Byron##4921
accept They Call Him Smiling Jim##1282 |goto 66.15,46.07
accept Tabetha's Farm##11212 |goto 66.15,46.07
step
Enter the building |goto 66.00,45.20 < 7 |walk
talk Morgan Stern##4794
|tip Inside the building.
turnin Morgan Stern##1260 |goto 66.34,45.47
accept Mudrock Soup and Bugs##1204 |goto 66.34,45.47
step
talk Innkeeper Janene##6272
|tip Inside the building.
home Theramore Isle |goto 66.59,45.22
step
talk Lieutenant Aden##23951
accept Mission to Mudsprocket##11214 |goto 65.07,47.13
step
Enter the building |goto 67.81,47.70 < 10 |walk
talk Clerk Lendry##5083
|tip Upstairs inside the building.
turnin James Hyal##1302 |goto 67.88,48.24
step
talk Captain Garran Vimes##4944
|tip Upstairs inside the building.
turnin They Call Him Smiling Jim##1282 |goto 68.21,48.62
accept Inspecting the Ruins##11123 |goto 68.21,48.62
step
Leave the building |goto 67.76,47.55 < 7 |walk
talk Calia Hastings##23566
|tip She walks around this area.
turnin Traitors Among Us##11126 |goto 68.33,51.04
accept Propaganda War##11128 |goto 68.33,51.04
step
click Deserter Propoganda
|tip It looks like a pile of brown boxes.
|tip Downstairs, on the middle floor, inside the ship.
collect Deserter Propaganda##33008 |q 11128/1 |goto 67.93,58.74
step
talk Calia Hastings##23566
|tip She walks around this area.
turnin Propaganda War##11128 |goto 68.33,51.04
step
Watch the dialogue
talk Calia Hastings##23566
accept Discrediting the Deserters##11133 |goto 68.33,51.04
step
talk Theramore Guard##4979+
|tip They look like guards all around this area.
Tell them _"You look like an intelligent person. Why don't you read one of these leaflets and give it some thought?"_
Distribute #6# Leaflets |q 11133/1 |goto 67.15,50.48
step
talk Calia Hastings##23566
|tip She walks around this area.
turnin Discrediting the Deserters##11133 |goto 68.33,51.04
accept The End of the Deserters##11134 |goto 68.33,51.04
step
Follow the path |goto 69.11,51.64 < 30 |only if walking
talk Babs Fizzletorque##23892
turnin This Old Lighthouse##11191 |goto 72.11,47.05
accept Thresher Oil##11192 |goto 72.11,47.05
step
kill Young Murk Thresher##4388+
|tip Underwater around this area.
collect 4 Thresher Oil##33126 |q 11192/1 |goto 72.69,48.83
step
Run up the ramp |goto 76.70,55.41 < 7 |only if walking
kill Gavis Greyshield##23941
|tip Downstairs, on the middle floor, inside the ship.
|tip He will eventually surrender.
Capture Gavis Greyshield |q 11134/1 |goto 76.27,57.07
step
talk Babs Fizzletorque##23892
turnin Thresher Oil##11192 |goto 72.11,47.05
accept Dastardly Denizens of the Deep##11193 |goto 72.11,47.05
step
Follow the path up |goto 70.53,50.47 < 10 |only if walking
talk "Dirty" Michael Crowe##23896
turnin Dastardly Denizens of the Deep##11193 |goto 69.24,51.89
accept Is it Real?##11194 |goto 69.24,51.89
step
talk Calia Hastings##23566
|tip She walks around this area.
turnin The End of the Deserters##11134 |goto 68.36,51.03
step
Follow the path |goto 68.15,53.20 < 30 |only if walking
talk Nat Pagle##12919
turnin Is it Real?##11194 |goto 58.76,60.17
accept Nat's Bargain##11209 |goto 58.76,60.17
step
use Pagle's Fish Paste, Extra Strength##33166
Wear Pagle's Fish Paste |havebuff spell:42644 |q 11209
step
kill Lurking Shark##23928
|tip It will appear and attack you.
|tip Underwater.
Test the Fish Paste |q 11209/1 |goto 56.6,62.4
step
talk Nat Pagle##12919
turnin Nat's Bargain##11209 |goto 58.76,60.17
accept Oh, It's Real##11210 |goto 58.76,60.17
step
Follow the path up |goto 66.80,55.34 < 15 |only if walking
talk Major Mills##23905
turnin Oh, It's Real##11210 |goto 69.61,51.77
accept Take Down Tethyr!##11198 |goto 69.61,51.77
step
Watch the dialogue
click Cove Cannon##186432+
|tip They look like large metal cannons mounted on the docks around this area.
kill Tethyr##23899
|tip Run around on the docks and click the Cove Cannons to fight Tethyr.
Defend the Theramore Docks from Tethyr |q 11198/1 |goto 69.61,51.77
step
Watch the dialogue
talk Major Mills##23905
turnin Take Down Tethyr!##11198 |goto 69.61,51.77
step
talk Sergeant Amelyn##23835
|tip She walks around this area.
accept The Hermit of Swamplight Manor##11177 |goto 68.26,51.84
step
talk Lieutenant Aden##23951
accept A Disturbing Development##11136 |goto 65.07,47.13
step
Follow the road |goto 62.83,42.35 < 30 |only if walking
Enter the building |goto 59.90,40.93 < 7|walk
talk Captain Wymor##5086
|tip He walks around this area.
|tip Inside the building.
turnin A Disturbing Development##11136 |goto 59.67,41.08
accept Defias in Dustwallow?##11137 |goto 59.67,41.08
step
Kill Mudrock enemies around this area
|tip They look like tortoises.
|tip You can find more in the water nearby.
|tip They seem to respawn fairly quickly.
collect 8 Forked Mudrock Tongue##5883 |q 1204/1 |goto 64.79,42.00
You can find more around: |notinsticky
[63.08,35.77]
[61.72,30.64]
[61.92,25.24]
step
kill Garn Mathers##23679
|tip He walks around this area.
collect Defias Orders##33037 |q 11137/1 |goto 63.8,28.9
step
talk "Swamp Eye" Jarl##4792
turnin The Hermit of Swamplight Manor##11177 |goto 55.44,26.27
accept Marsh Frog Legs##1218 |goto 55.44,26.27
step
talk Mordant Grimsby##23843
|tip Inside the building.
|tip He also walks outside sometimes.
accept What's Haunting Witch Hill?##11180 |goto 55.58,26.14
step
click the Loose Dirt##209627
accept The Orc Report##1219 |goto 55.43,25.92
stickystart "Gather_Information"
step
kill Giant Marsh Frog##23979+
|tip Reduce the "Ground Clutter" graphics setting to make them much easier to see.
collect 10 Marsh Frog Leg##33202 |q 1218/1 |goto 55.52,24.96
You can find more around [57.23,26.98]
step
label "Gather_Information"
Kill Risen enemies around this area
Gather #10# Information |q 11180/1 |goto 57.15,23.52
step
talk "Swamp Eye" Jarl##4792
turnin Marsh Frog Legs##1218 |goto 55.44,26.27
accept Jarl Needs Eyes##1206 |goto 55.44,26.27
step
talk Mordant Grimsby##23843
|tip Inside the building.
|tip He also walks outside sometimes.
turnin What's Haunting Witch Hill?##11180 |goto 55.58,26.14
accept The Witch's Bane##11181 |goto 55.58,26.14
step
click Witchbane##186423
|tip They look like green plants with purple flowers in the middle of them on the ground around this area.
collect 9 Witchbane##33112 |q 11181/1 |goto 57.82,24.43
You can find more around:
[56.34,28.14]
[54.48,25.37]
[53.32,20.90]
step
talk Mordant Grimsby##23843
|tip Inside the building.
|tip He also walks outside sometimes.
turnin The Witch's Bane##11181 |goto 55.58,26.14
accept Cleansing Witch Hill##11183 |goto 55.58,26.14
step
use the Witchbane Torch##33113
|tip Use it while standing at the end of the dock right outside.
Watch the dialogue
kill Zelfrax##23864
Cleanse Witch Hill |q 11183/1 |goto 55.21,26.64
step
talk Mordant Grimsby##23843
|tip Inside the building.
|tip He also walks outside sometimes.
turnin Cleansing Witch Hill##11183 |goto 55.58,26.14
step
talk Sergeant Lukas##23723
accept Raptor Captor##11146 |goto 46.66,23.05
stickystart "Capture_Raptors"
step
talk "Stinky" Ignatz##4880
|tip This is an escort quest.
|tip If he's not here, someone may be escorting him.
|tip Wait for him to respawn.
accept Stinky's Escape##1222 |goto 46.89,17.52
step
Watch thed dialogue
|tip Follow "Stinky" Ignatz and protect him as he walks.
|tip He eventually walks to this location.
Help Stinky Find Bogbean Leaves |q 1222/1 |goto 48.86,24.66
step
label "Capture_Raptors"
Kill Bloodfen enemies around this area
|tip They look like raptors.
|tip Don't kill them, just get them to low health.
use the Sturdy Rope##33069
|tip Use it on Bloodfen enemies when they are at about 20% health.
|tip You will see a message in your chat when they are ready to be captured.
Capture #6# Raptors |q 11146/1 |goto 49.43,20.51
step
talk Sergeant Lukas##23723
turnin Raptor Captor##11146 |goto 46.66,23.05
step
Kill Darkmist enemies around this area
collect 20 Unpopped Darkmist Eye##5884 |q 1206/1 |goto 34.44,22.56
step
Follow the path up and avoid Brackenwall Village |goto 34.43,27.72 < 20 |only if walking
talk Mudcrush Durtfeet##4503
accept Hungry!##1177 |goto 35.15,38.26
step
talk Inspector Tarem##23567
|tip He walks around this area.
turnin Inspecting the Ruins##11123 |goto 29.79,47.67
step
click Suspicious Hoofprint##187273
accept Suspicious Hoofprints##1284 |goto 29.70,47.63
step
click Theramore Guard Badge##21042
accept Lieutenant Paval Reethe##1252 |goto 29.83,48.24
step
click Black Shield##20992
accept The Black Shield##1253 |goto 29.63,48.59
step
Follow the road |goto 33.35,47.79 < 30 |only if walking
Enter the building |goto 42.09,72.95 < 7 |walk
talk Drazzit Dripvalve##23572
|tip Inside the building.
turnin Mission to Mudsprocket##11214 |goto 42.33,72.93
step
click Wanted Poster##184945
accept WANTED: Goreclaw the Ravenous##11184 |goto 41.75,73.11
step
Enter the building |goto 41.87,73.36 < 7 |walk
talk Brogg##23579
|tip Inside the building.
accept Bloodfen Feathers##11158 |goto 41.86,73.96
step
talk Gizzix Grimegurgle##23570
accept Catch a Dragon by the Tail##11217 |goto 41.54,72.98
step
talk Dyslix Silvergrub##40358
fpath Mudsprocket |goto 42.82,72.43
stickystart "Collect_Bloodfen_Feathers"
step
Follow the road |goto 40.56,68.71 < 30 |only if walking
kill Goreclaw the Ravenous##23873 |q 11184/1 |goto 32.25,65.44
|tip He looks like a big purple and green raptor that walks around this area.
step
label "Collect_Bloodfen_Feathers"
Kill Bloodfen enemies around this area
collect 5 Bloodfen Feather##33085 |q 11158/1 |goto 33.46,64.72
step
talk Morgan Stern##4794
|tip Inside the building.
turnin Mudrock Soup and Bugs##1204 |goto 66.34,45.47
turnin Stinky's Escape##1222 |goto 66.34,45.47
|tip Make sure to save the Elixir of Fortitude quest reward.
|tip It is needed for a quest later.
step
talk Lieutenant Aden##23951
turnin The Orc Report##1219 |goto 65.07,47.13
accept Captain Vimes##1220 |goto 65.07,47.13
step
Enter the building |goto 67.82,47.71 < 10 |walk
talk Captain Garran Vimes##4944
|tip Upstairs inside the building.
turnin Captain Vimes##1220 |goto 68.21,48.62
turnin Suspicious Hoofprints##1284 |goto 68.21,48.62
turnin Lieutenant Paval Reethe##1252 |goto 68.21,48.62
accept Lieutenant Paval Reethe##1259 |goto 68.21,48.62
turnin The Black Shield##1253 |goto 68.21,48.62
accept The Black Shield##1319 |goto 68.21,48.62
step
talk Adjutant Tesoran##4948
|tip Upstairs inside the building.
turnin Lieutenant Paval Reethe##1259 |goto 68.05,48.12
accept Daelin's Men##1285 |goto 68.05,48.12
step
talk Captain Garran Vimes##4944
|tip Upstairs inside the building.
turnin Daelin's Men##1285 |goto 68.21,48.62
accept The Deserters##1286 |goto 68.21,48.62
step
Leave the building |goto 67.80,47.68 < 7 |walk
Enter the building |goto 64.69,49.97 < 7 |walk
talk Caz Twosprocket##4941
|tip Inside the building.
turnin The Black Shield##1319 |goto 64.75,50.43
accept The Black Shield##1320 |goto 64.75,50.43
step
Enter the building |goto 67.82,47.71 < 10 |walk
talk Captain Garran Vimes##4944
|tip Upstairs inside the building.
turnin The Black Shield##1320 |goto 68.21,48.62
step
Leave the building |goto 67.81,47.69 < 7 |walk
Follow the road |goto 64.75,46.48 < 30 |only if walking
Enter the building |goto 59.90,40.92 < 7 |walk
talk Captain Wymor##5086
|tip He walks around this area.
|tip Inside the building.
turnin Defias in Dustwallow?##11137 |goto 59.66,41.10
accept Renn McGill##11138 |goto 59.66,41.10
step
talk "Swamp Eye" Jarl##4792
turnin Jarl Needs Eyes##1206 |goto 55.43,26.27
accept Jarl Needs a Blade##1203 |goto 55.43,26.27
step
_Destroy These Items:_
|tip They are no longer needed.
trash Unpopped Darkmist Eye##5884
stickystart "Collect_Mirefin_Heads"
step
Follow the path down |goto 57.75,19.91 < 15 |only if walking
kill Razorspine##23841
|tip He looks like and orange murloc that walks up and down this path.
collect Razorspine's Sword##33110 |q 1203/1 |goto 57.84,19.03
step
label "Collect_Mirefin_Heads"
Kill Mirefin enemies around this area
collect 8 Mirefin Head##5847 |q 1177/1 |goto 57.99,15.64
You can find more around [54.19,15.20]
step
talk Renn McGill##23569
|tip Underwater.
turnin Renn McGill##11138 |goto 63.74,17.05
accept Secondhand Diving Gear##11139 |goto 63.74,17.05
step
click Tool Kit
|tip It looks like a small grey metal bucket with tools in it.
|tip It can spawn next to any of the tents around this area.
click Tool Kit##186272 |q 11139/2 |goto 62.61,18.62
step
click Damaged Diving Gear##186273
|tip It looks like a dark brown wooden crate.
|tip It can spawn in various places on this small island.
collect Damaged Diving Gear##33038 |q 11139/1 |goto 62.33,18.88
Also check at [61.69,18.19]
step
talk Renn McGill##23569
|tip Underwater.
turnin Secondhand Diving Gear##11139 |goto 63.74,17.05
accept Recover the Cargo!##11140 |goto 63.74,17.05
step
use Renn's Supplies##33045
collect Salvage Kit##33044 |q 11140/2
collect Repaired Diving Gear##33040 |q 11140
step
use the Repaired Diving Gear##33040
Wear the Repaired Diving Gear |havebuff spell:42275 |q 11140
step
use the Salvage Kit##33044
|tip Use it next to Shipwreck Debris.
|tip They look like clusters of wooden objects floating underwater around this area.
kill Mirefin Ambusher##23701+
|tip They may appear after looting Shipwreck Debris.
collect 6 Salvaged Strongbox##33041 |q 11140/1 |goto 65.43,16.01
step
talk Renn McGill##23569
|tip Underwater.
turnin Recover the Cargo!##11140 |goto 63.74,17.05
accept Jaina Must Know##11141 |goto 63.74,17.05
step
Equip Your Regular Head Armor
Click Here After Equipping Your Regular Head Armor |confirm |q 1203
step
_Destroy This Item:_
|tip It is no longer needed.
trash Repaired Diving Gear##33040
step
Follow the path up |goto 57.88,18.47 < 20 |only if walking
talk "Swamp Eye" Jarl##4792
turnin Jarl Needs a Blade##1203 |goto 55.43,26.27
step
Follow the road |goto 46.37,22.70 < 30 |only if walking
talk Mudcrush Durtfeet##4503
turnin Hungry!##1177 |goto 35.15,38.26
step
Follow the road |goto 33.35,47.79 < 30 |only if walking
Enter the building |goto 35.72,53.98 < 7 |walk
kill Balos Jacken##5089
|tip Inside the building.
|tip He will eventually surrender.
talk Balos Jacken##5089
turnin The Deserters##1286 |goto 36.09,54.30
accept The Deserters##1287 |goto 36.09,54.30
step
Follow the road |goto 34.24,54.74 < 30 |only if walking
Enter the building |goto 42.09,72.94 < 7 |walk
talk Drazzit Dripvalve##23572
|tip Inside the building.
turnin WANTED: Goreclaw the Ravenous##11184 |goto 42.33,72.93
step
Enter the building |goto 41.88,73.36 < 7 |walk
talk Brogg##23579
|tip Inside the building.
turnin Bloodfen Feathers##11158 |goto 41.86,73.96
accept Banner of the Stonemaul##11160 |goto 41.86,73.96
accept The Essence of Enmity##11161 |goto 41.86,73.96
step
talk Axle##23995
|tip He walks around this area.
|tip Inside the building.
home Mudsprocket |goto 41.89,73.89 |q 27413 |future
step
Enter the building |goto 67.81,47.70 < 10 |walk
talk Captain Garran Vimes##4944
|tip Upstairs inside the building.
turnin The Deserters##1287 |goto 68.21,48.62
accept A Grim Connection##11143 |goto 68.21,48.62
step
Leave the building |goto 67.79,47.64 < 7 |walk
Follow the path up |goto 65.20,47.93 < 15 |only if walking
Enter the building |goto 65.72,48.59 < 7 |walk
talk Lady Jaina Proudmoore##4968
|tip She walks around this area.
|tip Upstairs inside the building.
turnin Jaina Must Know##11141 |goto 66.27,49.05
accept Survey Alcaz Island##11142 |goto 66.27,49.05
step
Follow the road |goto 65.75,46.80 < 30 |only if walking
talk Cassa Crimsonwing##23704
Tell her _"Lady Jaina told me to speak to you about using a gryphon to survey Alcaz Island."_
Begin Flying to Alcaz Island |ontaxi |goto 67.33,51.14 |q 11142
step
Survey Alcaz Island |q 11142/1
|tip You will fly around the island, before flying back to Thermaore Isle.
step
Return to Theramore Isle |offtaxi |goto 67.33,51.13 |q 11142 |notravel
step
Follow the path up |goto 65.20,47.93 < 15 |only if walking
Enter the building |goto 65.72,48.59 < 7 |walk
talk Lady Jaina Proudmoore##4968
|tip She walks around this area.
|tip Upstairs inside the building.
turnin Survey Alcaz Island##11142 |goto 66.27,49.05
step
Follow the road |goto 64.75,46.48 < 30 |only if walking
talk Sergeant Lukas##23723
accept Prisoners of the Grimtotems##11145 |goto 46.66,23.05
accept Unleash the Raptors##11147 |goto 46.66,23.05
step
Enter the building |goto 46.66,24.00 < 7 |walk
talk Captain Darill##23568
|tip Inside the building.
turnin A Grim Connection##11143 |goto 46.62,24.61
accept Confirming the Suspicion##11144 |goto 46.62,24.61
accept Arms of the Grimtotems##11148 |goto 46.62,24.61
stickystart "Free_Theramore_Prisoners"
stickystart "Collect_Blackhoof_Armaments"
stickystart "Collect_Grimtotem_Battle_Plan"
step
use the Raptor Bait##33070
Release the Raptors |q 11147/1 |goto 41.52,12.09
step
label "Free_Theramore_Prisoners"
Kill Grimtotem enemies around this area.
collect Grimtotem Key##33061+ |n
click Blackhoof Cage##1787+
|tip They look like yellow wooden cages on the ground around this area.
Free #5# Theramore Prisoners |q 11145/1 |goto 41.52,12.09
step
label "Collect_Blackhoof_Armaments"
click Blackhoof Armaments+
|tip They look like wooden racks with weapons on them on the ground around this area.
collect 7 Blackhoof Armaments##33071 |q 11148/1 |goto 41.75,12.28
step
label "Collect_Grimtotem_Battle_Plan"
kill Grimtotem Elder##23714+
collect 4 Grimtotem Note##33050+ |n
use the Grimtotem Note##33050+
collect Grimtotem Battle Plan##33051 |q 11144/1 |goto 41.75,12.28
step
Kill enemies around this area
Reach Level 41 |ding 41 |goto 41.75,12.28
step
talk Sergeant Lukas##23723
turnin Prisoners of the Grimtotems##11145 |goto 46.66,23.05
turnin Unleash the Raptors##11147 |goto 46.66,23.05
step
Enter the building |goto 46.66,23.99 < 7 |walk
talk Captain Darill##23568
|tip Inside the building.
turnin Confirming the Suspicion##11144 |goto 46.62,24.61
turnin Arms of the Grimtotems##11148 |goto 46.62,24.61
accept Tabetha's Assistance##11149 |goto 46.62,24.61
step
click Wyrmtail##186463+
|tip They look like green balls of vines on the ground around this area.
collect 8 Wyrmtail##33175 |q 11217/1 |goto 45.34,79.03
step
talk Gizzix Grimegurgle##23570
turnin Catch a Dragon by the Tail##11217 |goto 41.54,72.98
stickystart "Collect_Black_Dragonkin_Essences"
step
Follow the path |goto 39.68,66.83 < 10 |only if walking
Enter the cave |goto 38.50,65.93 < 15 |only if walking
click Stonemaul Banner##6957
|tip Inside the cave.
collect Stonemaul Banner##33086 |q 11160/1 |goto 38.12,69.43
step
label "Collect_Black_Dragonkin_Essences"
Kill Firemane enemies around this area
|tip Inside and outside the cave.
use Brogg's Totem##33088
|tip Use it on their corpses.
collect 10 Black Dragonkin Essence##33087 |q 11161/1 |goto 38.50,65.93
step
Follow the path |goto 39.68,66.82 < 10 |only if walking
Enter the building |goto 41.88,73.36 < 7 |walk
talk Brogg##23579
|tip Inside the building.
turnin Banner of the Stonemaul##11160 |goto 41.86,73.97
turnin The Essence of Enmity##11161 |goto 41.86,73.97
accept Spirits of Stonemaul Hold##11159 |goto 41.86,73.97
step
click Ogre Remains##233818+
|tip They look like large bone rib cages on the ground around this area.
kill Stonemaul Spirit##23786+
Lay #10# Stonemaul Spirits to Rest |q 11159/1 |goto 42.87,66.93
You can find more around: |notinsticky
[44.70,65.94]
[46.60,65.90]
step
talk Apprentice Morlann##23600
|tip He walks around this area.
accept Direhorn Raiders##11156 |goto 46.10,57.44
accept The Zeppelin Crash##11172 |goto 46.10,57.44
step
Enter the building |goto 45.89,57.21 < 7 |walk
talk Tabetha##6546
|tip Inside the building.
turnin Tabetha's Farm##11212 |goto 46.05,57.09
turnin Tabetha's Assistance##11149 |goto 46.05,57.09
accept Raze Direhorn Post!##11150 |goto 46.05,57.09
step
talk Apprentice Garion##23601
|tip Inside the building.
accept The Reagent Thief##11173 |goto 46.05,57.24
step
Kill enemies around this area
|tip Mottled Drywallow Crocolisks will not drop the quest item.
collect 6 Marsh Venom##33103 |q 11173/1 |goto 40.26,56.22
You can find more around: |notinsticky
[41.48,51.89]
[44.15,53.53]
stickystart "Kill_Direhorn_Grimtotems"
step
use Tabetha's Torch##33072
|tip Use it inside the tent.
Burn the East Tent |q 11150/3 |goto 47.40,47.54
step
kill Apothecary Cylla##23881
|tip Inside the building.
collect Sealed Letter##33114 |n
use the Sealed Letter##33114
accept The Apothecary's Letter##11185 |goto 47.22,46.59
step
use Tabetha's Torch##33072
|tip Use it inside the tent.
Burn the Northeast Tent |q 11150/2 |goto 47.22,46.59
step
use Tabetha's Torch##33072
|tip Use it inside the tent.
Burn the North Tent |q 11150/1 |goto 46.62,46.04
step
label "Kill_Direhorn_Grimtotems"
Kill Grimtotem enemies around this area
Kill #12# Direhorn Grimtotems |q 11156/1 |goto 46.68,48.10
step
talk Moxie Steelgrille##23797
turnin The Zeppelin Crash##11172 |goto 53.58,56.91
accept Corrosion Prevention##11174 |goto 53.58,56.91
accept Secure the Cargo!##11207 |goto 53.58,56.91
stickystart "Dissolve_Oozes"
stickystart "Collect_Zeppelin_Cargo"
step
click Gizmorium Shipping Crate
collect Seaforium Booster##5862 |q 1187/1 |goto 54.07,56.49
step
label "Dissolve_Oozes"
use the Ooze Buster##33108
|tip Use it on green and blue oozes around this area, while you have the "Energized!" buff.
|tip Stand next to the blue lightning structures around this area to get the "Energized!" buff.
Dissolve #10# Oozes |q 11174/1 |goto 53.1,56.0
step
label "Collect_Zeppelin_Cargo"
click the Zeppelin Cargo##186450
|tip They look like brown wooden boxes on the ground around this area.
collect 8 Zeppelin Cargo##33163 |q 11207/1 |goto 53.1,56.0
step
talk Moxie Steelgrille##23797
turnin Corrosion Prevention##11174 |goto 53.58,56.91
turnin Secure the Cargo!##11207 |goto 53.58,56.91
accept Delivery for Drazzit##11208 |goto 53.58,56.91
step
talk Apprentice Morlann##23600
|tip He walks around this area.
turnin Direhorn Raiders##11156 |goto 46.10,57.44
step
Enter the building |goto 45.89,57.22 < 7 |walk
talk Tabetha##6546
|tip Inside the building.
turnin Raze Direhorn Post!##11150 |goto 46.06,57.09
accept Justice for the Hyals##11151 |goto 46.06,57.09
step
talk Apprentice Garion##23601
|tip Inside the building.
turnin The Reagent Thief##11173 |goto 46.05,57.24
step
talk Andello Porter##23942
turnin The Apothecary's Letter##11185 |goto 45.47,57.77
step
talk Brogg##23579
|tip Inside the building.
turnin Spirits of Stonemaul Hold##11159 |goto 41.86,73.96
accept Challenge to the Black Flight##11162 |goto 41.86,73.96
step
Enter the building |goto 42.08,72.95 < 7 |walk
talk Drazzit Dripvalve##23572
|tip Inside the building.
turnin Delivery for Drazzit##11208 |goto 42.33,72.93
step
use the Stonemaul Banner##33095
|tip Use it at the foot of the stone ramp at the entrance to Onyxia's Lair.
Watch the dialogue
kill Smolderwing##23789
Avenge the Stonemaul Clan |q 11162/1 |goto 52.11,75.73
step
Enter the building |goto 41.87,73.35 < 7 |walk
talk Brogg##23579
|tip Inside the building.
turnin Challenge to the Black Flight##11162 |goto 41.86,73.97
step
Enter the building |goto 67.81,47.70 < 10 |walk
talk Captain Garran Vimes##4944
|tip Upstairs inside the building.
turnin Justice for the Hyals##11151 |goto 68.21,48.62
accept Peace at Last##11152 |goto 68.21,48.62
step
Leave the building |goto 67.79,47.64 < 7 |walk
Follow the road |goto 64.81,46.62 < 30 |only if walking
use the Wreath##33082
Watch the dialogue
Lay the Wreath at the Hyal Monument |q 11152/1 |goto 63.66,42.89
step
Cross the bridge |goto 63.67,44.50 < 30 |only if walking
Enter the building |goto 67.81,47.70 < 10 |walk
talk Captain Garran Vimes##4944
|tip Upstairs inside the building.
turnin Peace at Last##11152 |goto 68.21,48.62
step
Leave the building |goto 67.79,47.64 < 7 |walk
talk Fuzruckle##3496
|tip Put these items in the bank.
bank Elixir of Fortitude##3825 |goto The Barrens 62.64,37.42 |q 3842 |future
bank Seaforium Booster##5862 |goto The Barrens 62.64,37.42 |q 1187
step
talk Fuzruckle##3496
|tip Collect these items from the bank.
collect Sample Elven Gem##4502 |goto 62.64,37.42 |q 669
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Stranglethorn Vale (42-42)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Stranglethorn Vale",
condition_suggested=function() return level >= 42 and level <= 42 and not completedq(607) end,
next="Leveling Guides\\Classic (12-58)\\Badlands (42-43)",
},[[
step
talk First Mate Crazz##2490
accept The Bloodsail Buccaneers##595 |goto Stranglethorn Vale 28.10,76.22
step
Enter the building |goto 27.64,77.09 < 5 |walk
talk "Sea Wolf" MacKinley##2501
|tip Inside the building.
accept Scaring Shaky##606 |goto 27.78,77.07
step
Leave the building |goto 27.64,77.09 < 5 |walk
Enter the building |goto 27.08,77.62 < 5 |walk
talk Innkeeper Skindle##6807
|tip Inside the building.
home Booty Bay |goto 27.04,77.31
step
talk Krazek##773
|tip Upstairs inside the building, on the top floor.
turnin The Rumormonger##1115 |goto 26.94,77.21
step
talk Fleet Master Seahorn##2487
|tip Upstairs on the balcony of the building.
turnin Sunken Treasure##669 |goto 27.17,77.01
step
Enter the tunnel |goto 27.95,73.60 < 10 |only if walking
Leave the tunnel |goto 29.58,72.47 < 10 |only if walking
click Bloodsail Correspondence
turnin The Bloodsail Buccaneers##595 |goto 27.28,69.52
accept The Bloodsail Buccaneers##597 |goto 27.28,69.52
step
Follow the path |goto 28.38,70.55 < 20 |only if walking
Follow the road |goto 30.67,72.24 < 30 |only if walking
kill Elder Mistvale Gorilla##1557+
collect 5 Mistvale Giblets##3919 |q 606/1 |goto 31.72,67.03
You can find more around: |notinsticky
[33.79,64.66]
[32.18,59.97]
step
Follow the road |goto 30.52,67.45 < 30 |only if walking
Continue following the road |goto 36.18,48.87 < 30 |only if walking
Follow the path |goto 38.53,40.71 < 30 |only if walking
kill 10 Jungle Stalker##687 |q 196/1 |goto 32.80,38.48
You can find more around: |notinsticky
[31.79,41.74]
[28.91,44.29]
[27.19,49.65]
step
kill Snapjaw Crocolisk##1152+
|tip Underwater and on the shores near the water around this area.
collect 5 Snapjaw Crocolisk Skin##4104 |q 577/1 |goto 39.28,30.27
You can find more around: |notinsticky
[40.03,24.70]
[41.52,19.48]
step
talk Hemet Nesingwary##715
turnin Raptor Mastery##196 |goto 35.66,10.81
accept Raptor Mastery##197 |goto 35.66,10.81
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
accept The Green Hills of Stranglethorn##338 |goto 35.66,10.53
accept Chapter I##339 |goto 35.66,10.53
|only if ((itemcount(2725) >= 1) and (itemcount(2728) >= 1) and (itemcount(2730) >= 1) and (itemcount(2732) >= 1) and (not completedq(339)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
turnin Chapter I##339 |goto 35.66,10.53
|only if ((itemcount(2725) >= 1) and (itemcount(2728) >= 1) and (itemcount(2730) >= 1) and (itemcount(2732) >= 1) and (not completedq(339)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
accept The Green Hills of Stranglethorn##338 |goto 35.66,10.53
accept Chapter II##340 |goto 35.66,10.53
|only if ((itemcount(2734) >= 1) and (itemcount(2735) >= 1) and (itemcount(2738) >= 1) and (itemcount(2740) >= 1) and (not completedq(340)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
turnin Chapter II##340 |goto 35.66,10.53
|only if ((itemcount(2734) >= 1) and (itemcount(2735) >= 1) and (itemcount(2738) >= 1) and (itemcount(2740) >= 1) and (not completedq(340)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
accept The Green Hills of Stranglethorn##338 |goto 35.66,10.53
accept Chapter III##341 |goto 35.66,10.53
|only if ((itemcount(2742) >= 1) and (itemcount(2744) >= 1) and (itemcount(2745) >= 1) and (itemcount(2748) >= 1) and (not completedq(341)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
turnin Chapter III##341 |goto 35.66,10.53
|only if ((itemcount(2742) >= 1) and (itemcount(2744) >= 1) and (itemcount(2745) >= 1) and (itemcount(2748) >= 1) and (not completedq(341)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
accept The Green Hills of Stranglethorn##338 |goto 35.66,10.53
accept Chapter IV##342 |goto 35.66,10.53
|only if ((itemcount(2749) >= 1) and (itemcount(2750) >= 1) and (itemcount(2751) >= 1) and (not completedq(342)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
turnin Chapter IV##342 |goto 35.66,10.53
|only if ((itemcount(2749) >= 1) and (itemcount(2750) >= 1) and (itemcount(2751) >= 1) and (not completedq(342)))
step
talk Barnil Stonepot##716
turnin The Green Hills of Stranglethorn##338 |goto 35.66,10.53
|only if ((itemcount(2756) >= 1) and (itemcount(2757) >= 1) and (itemcount(2758) >= 1) and (itemcount(2759) >= 1) and (not completedq(338)))
step
Follow the path |goto 30.14,17.13 < 50 |only if walking
kill Lesser Water Elemental##691+
collect 6 Water Elemental Bracers##3923 |q 601/1 |goto 21.14,22.56
step
Follow the path up |goto 27.85,76.74 < 7 |only if walking
Cross the bridge |goto 28.15,76.52 < 7 |only if walking
Enter the building |goto 28.21,77.33 < 5 |walk
talk Drizzlik##2495
|tip Inside the building.
turnin Some Assembly Required##577 |goto 28.29,77.59
accept Excelsior##628 |goto 28.29,77.59
step
talk First Mate Crazz##2490
turnin The Bloodsail Buccaneers##597 |goto 28.10,76.22
accept The Bloodsail Buccaneers##599 |goto 28.10,76.22
step
Enter the building |goto 27.08,77.62 < 5 |walk
talk Fleet Master Seahorn##2487
|tip Upstairs on the balcony of the building.
turnin The Bloodsail Buccaneers##599 |goto 27.17,77.01
step
talk Baron Revilgaz##2496
|tip Upstairs on the balcony of the building.
turnin Water Elementals##601 |goto 27.23,76.87
accept Magical Analysis##602 |goto 27.23,76.87
step
talk "Shaky" Phillipe##2502
turnin Scaring Shaky##606 |goto 26.90,73.59
accept Return to MacKinley##607 |goto 26.90,73.59
step
Enter the building |goto 27.64,77.09 < 5 |walk
talk "Sea Wolf" MacKinley##2501
|tip Inside the building.
turnin Return to MacKinley##607 |goto 27.78,77.07
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Badlands (42-43)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Badlands",
condition_suggested=function() return level >= 42 and level <= 43 and not completedq(739) end,
next="Leveling Guides\\Classic (12-58)\\Stranglethorn Vale (43-45)",
},[[
step
Enter the building |goto Ironforge 34.07,62.42 < 7 |walk
talk Bailey Stonemantle##2461
|tip Inside the building.
|tip Collect these items from the bank.
collect Fizzle Brassbolts' Letter##5827 |goto Ironforge 35.58,60.53 |q 1106
step
Enter the building |goto 26.16,72.16 < 10 |walk
talk Auctioneer Redmuse##8720
|tip Buy these items from the Auction House.
|tip If you can't buy them, ask in trade chat to pay someone to make them for you.
|tip The Blue Pearls cannot be created by a profession.
|tip These are needed to complete some easy quests in the Badlands soon.
|tip If you can't get them, that's okay, but you will need to skip some quests.
collect Frost Oil##3829 |goto 24.24,74.54 |q 713 |future
collect Gyrochronatom##4389 |goto 24.24,74.54 |q 714 |future
collect Healing Potion##929 |goto 24.24,74.54 |q 715 |future
collect Lesser Invisibility Potion##3823 |goto 24.24,74.54 |q 715 |future
collect Patterned Bronze Bracers##2868 |goto 24.24,74.54 |q 716 |future
collect 9 Blue Pearl##4611 |goto 24.24,74.54 |q 705 |future
step
Enter the building |goto Loch Modan 35.22,47.74 < 7 |walk
talk Innkeeper Hearthstove##6734
|tip Inside the building.
home Stoutlager Inn |goto Loch Modan 35.53,48.40
step
Leave the building |goto 35.22,47.74 < 7 |walk
Enter the building |goto 36.64,48.53 < 7 |walk
talk Ghak Healtouch##1470
|tip Inside the building.
accept Badlands Reagent Run##2500 |goto 37.07,49.38
step
Leave the building |goto 36.64,48.53 < 7 |walk
Follow the path |goto 47.77,66.72 < 30 |only if walking
talk Prospector Ironband##1344
turnin Ironband Wants You!##707 |goto 65.93,65.62
accept Find Agmond##738 |goto 65.93,65.62
step
Follow the path |goto 55.57,67.85 < 30 |only if walking
Enter the Badlands |goto 46.79,78.25 < 30 |only if walking
Follow the path |goto Badlands 51.84,15.51 < 30 |only if walking
Follow the path up |goto Badlands 50.48,37.05 < 50 |only if walking
talk Prospector Ryedol##2910
turnin A Sign of Hope##720 |goto Badlands 53.42,43.40
accept A Dwarf and His Tools##719 |goto Badlands 53.42,43.40
step
talk Sigrun Ironhew##2860
accept Mirages##718 |goto 53.80,43.31
stickystart "Collect_Ryedols_Lucky_Pick"
step
Follow the path |goto 51.77,33.17 < 15 |only if walking
click Crumpled Map
accept A Sign of Hope##720 |goto 53.03,33.93
step
label "Collect_Ryedols_Lucky_Pick"
Kill Shadowforge enemies around this area
collect Ryedol's Lucky Pick##4616 |q 719/1 |goto 52.59,32.20
step
Follow the path |goto 55.84,27.36 < 30 |only if walking
click Excavation Supply Crate
|tip It looks like a wooden crate.
|tip It may spawn in other locations in this camp.
collect Supply Crate##4629 |q 718/1 |goto 66.61,22.02
step
Follow the path |goto 55.77,27.20 < 30 |only if walking
Follow the path up |goto 50.48,37.05 < 50 |only if walking
talk Prospector Ryedol##2910
turnin A Dwarf and His Tools##719 |goto 53.42,43.40
step
talk Sigrun Ironhew##2860
turnin Mirages##718 |goto 53.80,43.31
accept Scrounging##733 |goto 53.80,43.31
stickystart "Collect_Buzzard_Gizzards"
stickystart "Collect_Crag_Coyote_Fangs"
step
talk Rigglefuzz##2817
accept Barbecued Buzzard Wings##703 |goto 42.39,52.93
accept Pearl Diving##705 |goto 42.39,52.93
step
talk Rigglefuzz##2817
turnin Pearl Diving##705 |goto 42.39,52.93
step
talk Martek the Exiled##4618
turnin Martek the Exiled##1106 |goto 42.22,52.69
accept Indurium##1108 |goto 42.22,52.69
stickystart "Collect_Buzzard_Wings"
step
Follow the path |goto 48.69,53.36 < 30 |only if walking
click Battered Dwarven Skeleton
turnin Find Agmond##738 |goto 50.89,62.41
accept Murdaloc##739 |goto 50.89,62.41
stickystart "Collect_Iridium_Flakes"
stickystart "Kill_Stonevault_Bonesnapper"
step
kill Murdaloc##2945 |q 739/1 |goto 49.63,66.30
|tip He walks around this area.
step
label "Collect_Iridium_Flakes"
Kill Stonevault enemies around this area
collect 10 Indurium Flake##5797 |q 1108/1 |goto 50.51,69.96
step
label "Kill_Stonevault_Bonesnapper"
kill 12 Stonevault Bonesnapper##2893 |q 739/2 |goto 50.51,69.96
step
Follow the path |goto 48.69,53.36 < 30 |only if walking
talk Martek the Exiled##4618
turnin Indurium##1108 |goto 42.21,52.70
step
Watch the dialogue
talk Martek the Exiled##4618
accept News for Fizzle##1137 |goto 42.21,52.70
step
talk Jazzrik##9179
|tip Sell any items you don't need, to clear some bag space.
|tip Repair your items.
Click Here to Continue |confirm |goto 42.46,52.50 |q 710 |future
step
talk Lotwil Veriatus##2921
accept Study of the Elements: Rock##710 |goto 25.95,44.87
accept Coolant Heads Prevail##713 |goto 25.95,44.87
step
talk Lotwil Veriatus##2921
turnin Coolant Heads Prevail##713 |goto 25.95,44.87
accept Gyro... What?##714 |goto 25.95,44.87
step
talk Lotwil Veriatus##2921
turnin Gyro... What?##714 |goto 25.95,44.87
step
talk Lucien Tosselwrench##2920
accept Liquid Stone##715 |goto 25.82,44.24
step
talk Lucien Tosselwrench##2920
turnin Liquid Stone##715 |goto 25.82,44.24
stickystart "Collect_Small_Stone_Shards"
step
kill Lesser Rock Elemental##2735+
collect 5 Rock Elemental Shard##7848 |q 2500/3 |goto 19.46,43.02
step
label "Collect_Small_Stone_Shards"
kill Lesser Rock Elemental##2735+
collect 10 Small Stone Shard##4626 |q 710/1 |goto 19.46,43.02
step
talk Lotwil Veriatus##2921
turnin Study of the Elements: Rock##710 |goto 25.95,44.87
accept Study of the Elements: Rock##711 |goto 25.95,44.87
step
Kill enemies around this area
Reach Level 43 |ding 43 |goto 27.18,54.51
step
Follow the path up |goto 37.40,73.32 < 30 |only if walking
kill Rock Elemental##92+
collect 3 Large Stone Slab##4627 |q 711/1 |goto 39.30,77.11
You can find more around [43.56,84.04]
step
talk Lotwil Veriatus##2921
turnin Study of the Elements: Rock##711 |goto 25.95,44.87
accept Study of the Elements: Rock##712 |goto 25.95,44.87
step
label "Collect_Buzzard_Gizzards"
Kill Buzzard enemies around this area
collect 5 Buzzard Gizzard##7847 |q 2500/1 |goto 16.82,59.84
You can find more around: |notinsticky
[12.45,69.20]
[17.43,48.90]
[25.63,62.04]
[33.36,59.65]
[28.67,72.03]
[24.51,74.45]
[18.90,77.65]
step
label "Collect_Buzzard_Wings"
Kill Buzzard enemies around this area
collect 4 Buzzard Wing##3404 |q 703/1 |goto 16.82,59.84
|tip Be careful to not accidentally sell these to a vendor.
You can find more around: |notinsticky
[12.45,69.20]
[17.43,48.90]
[25.63,62.04]
[33.36,59.65]
[28.67,72.03]
[24.51,74.45]
[18.90,77.65]
step
label "Collect_Crag_Coyote_Fangs"
Kill Coyote enemies around this area
collect 10 Crag Coyote Fang##7846 |q 2500/2 |goto 23.75,55.12
You can find more around: |notinsticky
[14.18,65.72]
[31.58,65.16]
step
Kill Dustbelcher enemies around this area
collect 7 Scrap Metal##4630 |q 733/1 |goto 11.29,75.60
step
Follow the path up |goto 13.20,83.27 < 20 |only if walking
kill Greater Rock Elemental##2736+
|tip If you have trouble, try to find someone to help you.
collect 5 Bracers of Rock Binding##4628 |q 712/1 |goto 15.36,88.40
step
Follow the path down |goto 13.21,83.30 < 20 |only if walking
talk Lotwil Veriatus##2921
turnin Study of the Elements: Rock##712 |goto 25.95,44.87
accept This Is Going to Be Hard##734 |goto 25.95,44.87
step
talk Lucien Tosselwrench##2920
turnin This Is Going to Be Hard##734 |goto 25.82,44.25
accept This Is Going to Be Hard##777 |goto 25.82,44.25
accept Stone Is Better than Cloth##716 |goto 25.82,44.24
step
talk Lucien Tosselwrench##2920
turnin Stone Is Better than Cloth##716 |goto 25.82,44.24
step
talk Lotwil Veriatus##2921
turnin This Is Going to Be Hard##777 |goto 25.95,44.86
step
talk Lotwil Veriatus##2921
accept This Is Going to Be Hard##778 |goto 25.95,44.86
|tip A Level 45 elemental will appear and attack you, so be prepared.
step
kill Fam'retor Guardian##2919
|tip If you have trouble, try to find someone to help you.
collect Lotwil's Shackles of Elemental Binding##4847 |q 778/1 |goto 26.10,46.81
step
talk Lotwil Veriatus##2921
turnin This Is Going to Be Hard##778 |goto 25.95,44.86
step
talk Rigglefuzz##2817
turnin Barbecued Buzzard Wings##703 |goto 42.39,52.93
step
_Destroy or Sell These Items:_
|tip They are no longer needed.
trash Buzzard Wing##3404
step
talk Sigrun Ironhew##2860
turnin Scrounging##733 |goto 53.80,43.31
step
Leave the building |goto Loch Modan 35.20,47.76 < 7 |walk
Enter the building |goto Loch Modan 36.63,48.53 < 7 |walk
talk Ghak Healtouch##1470
|tip Inside the building.
turnin Badlands Reagent Run##2500 |goto Loch Modan 37.07,49.38
step
_Destroy These Items:_
|tip They are no longer needed.
trash Crag Coyote Fang##7846
step
Leave the building |goto 36.63,48.51 < 7 |walk
Follow the path |goto 47.77,66.72 < 50 |only if walking
talk Prospector Ironband##1344
turnin Murdaloc##739 |goto 65.93,65.62
step
Follow the path |goto Hillsbrad Foothills 32.08,29.16 < 40 |only if walking
talk Archmage Ansirem Runeweaver##2543
turnin Magical Analysis##602 |goto Alterac Mountains 18.84,78.49
step
Watch the dialogue
talk Archmage Ansirem Runeweaver##2543
accept Ansirem's Key##603 |goto 18.84,78.49
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Stranglethorn Vale (43-45)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Stranglethorn Vale",
condition_suggested=function() return level >= 43 and level <=45 and not completedq(1258) end,
next="Leveling Guides\\Classic (12-58)\\Swamp of Sorrows (45-45)",
},[[
step
Enter the building |goto Stranglethorn Vale 27.10,77.66 < 5 |walk
talk Crank Fizzlebub##2498
|tip Inside the building.
accept Venture Company Mining##600 |goto Stranglethorn Vale 27.12,77.21
accept Zanzil's Secret##621 |goto Stranglethorn Vale 27.12,77.21
step
talk Innkeeper Skindle##6807
|tip Inside the building.
home Booty Bay |goto 27.04,77.31
step
talk Catelyn the Blade##2542
|tip Upstairs inside the building.
turnin Ansirem's Key##603 |goto 27.28,77.53
accept "Pretty Boy" Duncan##610 |goto 27.28,77.53
step
talk Deeg##2488
|tip Upstairs inside the building, on the top floor.
accept Up to Snuff##587 |goto Stranglethorn Vale 26.92,77.35
step
Watch the dialogue
talk Krazek##773
|tip Upstairs inside the building, on the top floor.
accept Tran'rek##2864 |goto 26.94,77.21
step
talk Kebok##737
|tip Upstairs inside the building, on the top floor.
accept Skullsplitter Tusks##209 |goto 27.00,77.13
step
talk Fleet Master Seahorn##2487
|tip Upstairs, on the balcony of the building.
accept The Bloodsail Buccaneers##604 |goto 27.17,77.01
step
talk Privateer Bloads##2494
|tip He walks around this area.
accept Akiris by the Bundle##617 |goto 26.76,76.38
He sometimes walks to [27.43,76.78]
step
Enter the building |goto 27.64,77.09 < 5 |walk
talk "Sea Wolf" MacKinley##2501
|tip Inside the building.
accept Voodoo Dues##609 |goto 27.78,77.07
accept Stoley's Debt##2872 |goto 27.78,77.07
step
Leave the building |goto 27.63,77.08 < 5 |walk
Run up the ramp |goto 27.86,76.76 < 7 |only if walking
Follow the path |goto 28.39,75.77 < 7 |only if walking
talk Dizzy One-Eye##2493
accept Keep An Eye Out##576 |goto 28.59,75.90
step
Enter the tunnel |goto 27.95,73.61 < 10 |only if walking
Leave the tunnel |goto 29.54,72.53 < 10 |only if walking
kill "Pretty Boy" Duncan##2545
collect Catelyn's Blade##4027 |q 610/1 |goto 27.38,69.41
step
Enter the tunnel |goto 29.51,72.52 < 10 |only if walking
Leave the tunnel |goto 27.92,73.75 < 10 |only if walking
Enter the building |goto 27.08,77.62 < 5 |walk
talk Catelyn the Blade##2542
|tip Upstairs inside the building.
turnin "Pretty Boy" Duncan##610 |goto 27.28,77.53
accept The Curse of the Tides##611 |goto 27.28,77.53
stickystart "Collect_Snuff"
stickystart "Collect_Dizzys_Eye"
stickystart "Kill_Bloodsail_Swashbucklers"
step
Enter the tunnel |goto 27.95,73.61 < 10 |only if walking
Leave the tunnel |goto 29.54,72.53 < 10 |only if walking
Follow the path |goto 30.86,72.28 < 30 |only if walking
Continue following the path |goto 32.89,73.75 < 30 |only if walking
click Bloodsail Charts
|tip It looks like a brown piece of paper laying on a wooden crate.
collect Bloodsail Charts##3920 |q 604/2 |goto 29.59,80.83
Also check around [27.15,82.69]
step
click Bloodsail Orders
|tip It looks like a white unrolled scroll.
collect Bloodsail Orders##3921 |q 604/3 |goto 29.59,80.80
Also check around: |notinsticky
[27.18,82.66]
[27.74,83.13]
step
label "Collect_Dizzys_Eye"
Kill Bloodsail enemies around this area
collect Dizzy's Eye##3897 |q 576/1 |goto 27.07,82.90
You can find more around: |notinsticky
[29.78,81.38]
[32.96,73.85]
step
label "Collect_Snuff"
Kill Bloodsail enemies around this area
collect 15 Snuff##3910 |q 587/1 |goto 27.07,82.90
You can find more around: |notinsticky
[29.78,81.38]
[32.96,73.85]
step
label "Kill_Bloodsail_Swashbucklers"
kill 10 Bloodsail Swashbuckler##1563 |q 604/1 |goto 27.07,82.90
You can find more around: |notinsticky
[29.78,81.38]
[32.96,73.85]
step
Follow the path |goto 32.75,73.65 < 30 |only if walking
Follow the path up |goto 29.71,66.37 < 20 |only if walking
Jump down here |goto 27.85,67.41 < 15 |only if walking
Follow the path |goto 24.57,64.60 < 20 |only if walking
Follow the path up |goto 25.73,63.56 < 15 |only if walking
Follow the path |goto 27.35,62.99 < 15 |only if walking
Cross the bridge |goto 28.17,62.71 < 15 |only if walking
kill Naga Explorer##1907+
collect 10 Akiris Reed##4029 |q 617/1 |goto 25.43,62.88
You can find more around: |notinsticky
[27.00,63.02]
[27.88,62.75]
[26.04,60.45]
stickystart "Collect_Zanzils_Mixture"
step
Cross the bridge |goto 27.19,58.95 < 15 |only if walking
Follow the path |goto 29.63,57.09 < 20 |only if walking
Follow the path |goto 30.08,54.17 < 15 |only if walking
Follow the path |goto 34.08,51.96 < 15 |only if walking
kill Jon-Jon the Crow##2536
collect Jon-Jon's Golden Spyglass##3925 |q 609/2 |goto 34.93,51.85
step
kill Maury "Club Foot" Wilkins##2535
collect Maury's Clubbed Foot##3924 |q 609/1 |goto 35.25,51.26
step
Follow the road |goto 33.46,52.67 < 30 |only if walking
Follow the path |goto 34.10,54.05 < 15 |only if walking
kill Chucky "Ten Thumbs"##2537
collect Chucky's Huge Ring##3926 |q 609/3 |goto 40.00,58.24
step
label "Collect_Zanzils_Mixture"
Kill Zanzil enemies around this area
collect 12 Zanzil's Mixture##4016 |q 621/1 |goto 40.00,58.24
step
Kill enemies around this area
Reach Level 44 |ding 44 |goto 40.00,58.24
step
Follow the path up |goto 38.00,56.42 < 20 |only if walking
Follow the road |goto 33.44,53.67 < 30 |only if walking
Continue following the road |goto 35.90,48.86 < 20 |only if walking
Follow the path up |goto 40.39,42.90 < 20 |only if walking
Kill Venture Co. enemies around this area
collect 10 Singing Blue Crystal##3917 |q 600/1 |goto 41.22,43.95
step
Follow the path |goto 38.45,40.55 < 30 |only if walking
kill Tethis##730
|tip He looks like a blue raptor that walks around this area.
collect Talon of Tethis##3877 |q 197/1 |goto 32.22,40.89
You can also find him around: |notinsticky
[31.17,43.40]
[28.74,44.84]
step
Follow the path |goto 32.79,40.42 < 40 |only if walking
Kill Skullspliter enemies around this area
collect 18 Skullsplitter Tusk##1524 |q 209/1 |goto 42.69,36.60
You can find more around: |notinsticky
[45.93,32.79]
[47.39,39.42]
[45.33,42.07]
step
kill Bhag'thera##728
|tip He looks like an unstealthed black panther.
|tip He can spawn in multiple locations.
collect Fang of Bhag'thera##3876 |q 193/1 |goto 46.37,29.05
Cross this tree bridge to get to the other locations: [48.92,28.04]
You can also find him around: |notinsticky
[49.60,24.03]
[48.99,20.20]
step
kill Elder Saltwater Crocolisk##2635
|tip Be careful to avoid Grom'gol Base Camp, the Horde town nearby.
collect Elder Crocolisk Skin##4105 |q 628/1 |goto 33.41,32.54
Also check around: |notinsticky
[29.86,25.63]
[29.29,22.16]
[25.39,19.18]
step
click Altar of the Tides
|tip Underwater.
Watch the dialogue
kill Gazban##2624
collect Stone of the Tides##4034 |q 611/1 |goto 24.95,23.59
step
talk Crank Fizzlebub##2498
|tip Inside the building.
turnin Venture Company Mining##600 |goto 27.12,77.21
turnin Zanzil's Secret##621 |goto 27.12,77.21
step
talk Whiskey Slim##2491
|tip Inside the building.
accept Whiskey Slim's Lost Grog##580 |goto 27.13,77.45
step
talk Kebok##737
|tip Upstairs inside the building, on the top floor.
turnin Skullsplitter Tusks##209 |goto 27.00,77.13
step
talk Deeg##2488
|tip Upstairs inside the building, on the top floor.
turnin Up to Snuff##587 |goto 26.92,77.35
step
talk Fleet Master Seahorn##2487
|tip Upstairs, on the balcony of the building.
turnin The Bloodsail Buccaneers##604 |goto 27.17,77.01
accept The Bloodsail Buccaneers##608 |goto 27.17,77.01
step
talk Baron Revilgaz##2496
|tip Upstairs on the balcony of the building.
turnin The Curse of the Tides##611 |goto 27.23,76.87
step
talk Privateer Bloads##2494
|tip He walks around this area.
turnin Akiris by the Bundle##617 |goto 26.76,76.38
accept Akiris by the Bundle##623 |goto 26.76,76.38
He sometimes walks to [27.43,76.78]
step
Enter the building |goto 27.64,77.09 < 5 |walk
talk "Sea Wolf" MacKinley##2501
|tip Inside the building.
turnin Voodoo Dues##609 |goto 27.78,77.07
step
Run up the ramp |goto 27.89,76.72 < 7 |only if walking
Cross the bridge |goto 28.16,76.54 < 7 |only if walking
Enter the building |goto 28.21,77.33 < 5 |walk
talk Drizzlik##2495
|tip Inside the building.
turnin Excelsior##628 |goto 28.29,77.59
step
Follow the path |goto 28.15,76.39 < 7 |only if walking
talk Dizzy One-Eye##2493
turnin Keep An Eye Out##576 |goto 28.59,75.90
step
Enter the tunnel |goto 27.95,73.59 < 10 |only if walking
Leave the tunnel |goto 29.56,72.46 < 10 |only if walking
Follow the path |goto 31.58,72.33 < 30 |only if walking
click Half-Buried Bottle+
|tip They look like tiny green bottle on the ground around this area.
|tip You can find them next to the water along this whole beach.
collect Carefully Folded Note##4098 |n
use the Carefully Folded Note##4098
accept Message in a Bottle##594 |goto 35.07,72.90
You can find more around: |notinsticky
[37.00,65.47]
[29.71,83.17]
step
talk Princess Poobah##2634
turnin Message in a Bottle##594 |goto 38.53,80.58
accept Message in a Bottle##630 |goto 38.53,80.58
step
Follow the path |goto 39.59,80.59 < 30 |only if walking
kill King Mukla##1559
|tip He looks like a huge grey and black gorilla that walks around this area.
collect Shackle Key##4103 |q 630/1 |goto 40.51,83.02
step
Follow the path |goto 39.59,80.59 < 30 |only if walking
talk Princess Poobah##2634
turnin Message in a Bottle##630 |goto 38.53,80.58
step
Run up the ramp |goto 33.66,87.48 < 7 |only if walking
kill Captain Stillwater##2550 |q 608/1 |goto 32.87,88.20
|tip Downstairs inside the ship.
|tip On the middle floor.
|tip If you have trouble, try to find someone to help you.
step
click Cortello's Riddle
|tip It looks like a white rolled up scroll.
|tip It can spawn in multiple locations on any floor downstairs inside the ship.
collect Cortello's Riddle##4056 |goto 33.39,88.17 |q 624 |future |or
|tip
Click Here if the Scroll is Not On This Ship |confirm |or
step
Run up the ramp |goto 30.17,89.43 < 7 |only if walking
kill Fleet Master Firallon##2546 |q 608/3 |goto 30.58,90.64
|tip Downstairs inside the ship.
|tip On the middle floor.
|tip If you have trouble, try to find someone to help you.
step
click Cortello's Riddle
|tip It looks like a white rolled up scroll.
|tip It can spawn in multiple locations on any floor downstairs inside the ship.
collect Cortello's Riddle##4056 |goto 30.64,90.17 |q 624 |future |or
|tip
Click Here if the Scroll is Not On This Ship |confirm |or
step
Run up the ramp |goto 29.89,89.33 < 7 |only if walking
kill Captain Keelhaul##2548 |q 608/2 |goto 29.20,88.34
|tip He walks around this area, downstairs inside the ship.
|tip On the middle floor.
|tip If you have trouble, try to find someone to help you.
step
click Cortello's Riddle
|tip It looks like a white rolled up scroll.
|tip It can spawn in multiple locations on any floor downstairs inside the ship.
collect Cortello's Riddle##4056 |goto 29.20,88.60 |q 624 |future |or
|tip If you still can't find it, skip the quest.
step
use Cortello's Riddle##4056
accept Cortello's Riddle##624
step
Follow the path |goto 32.75,73.65 < 30 |only if walking
Enter the tunnel |goto 29.51,72.52 < 10 |only if walking
Leave the tunnel |goto 27.92,73.75 < 10 |only if walking
Enter the building |goto 27.08,77.62 < 5 |walk
talk Fleet Master Seahorn##2487
|tip Upstairs, on the balcony of the building.
turnin The Bloodsail Buccaneers##608 |goto 27.17,77.01
step
talk Auctioneer Auctioneer O'reely##15681
|tip Buy these items from the Auction House.
|tip If you have any Green Hills of Stranglethorn pages in your bank, get them out before buying any of these pages.
|tip If you can't get all of the pages, just sell them on the Auction House and skip the quest.
collect Green Hills of Stranglethorn - Page 1##2725 |goto Stranglethorn Vale 26.59,76.36 |q 339 |future
collect Green Hills of Stranglethorn - Page 4##2728 |goto Stranglethorn Vale 26.59,76.36 |q 339 |future
collect Green Hills of Stranglethorn - Page 6##2730 |goto Stranglethorn Vale 26.59,76.36 |q 339 |future
collect Green Hills of Stranglethorn - Page 8##2732 |goto Stranglethorn Vale 26.59,76.36 |q 339 |future
collect Green Hills of Stranglethorn - Page 10##2734 |goto Stranglethorn Vale 26.59,76.36 |q 340 |future
collect Green Hills of Stranglethorn - Page 11##2735 |goto Stranglethorn Vale 26.59,76.36 |q 340 |future
collect Green Hills of Stranglethorn - Page 14##2738 |goto Stranglethorn Vale 26.59,76.36 |q 340 |future
collect Green Hills of Stranglethorn - Page 16##2740 |goto Stranglethorn Vale 26.59,76.36 |q 340 |future
collect Green Hills of Stranglethorn - Page 18##2742 |goto Stranglethorn Vale 26.59,76.36 |q 341 |future
collect Green Hills of Stranglethorn - Page 20##2744 |goto Stranglethorn Vale 26.59,76.36 |q 341 |future
collect Green Hills of Stranglethorn - Page 21##2745 |goto Stranglethorn Vale 26.59,76.36 |q 341 |future
collect Green Hills of Stranglethorn - Page 24##2748 |goto Stranglethorn Vale 26.59,76.36 |q 341 |future
collect Green Hills of Stranglethorn - Page 25##2749 |goto Stranglethorn Vale 26.59,76.36 |q 342 |future
collect Green Hills of Stranglethorn - Page 26##2750 |goto Stranglethorn Vale 26.59,76.36 |q 342 |future
collect Green Hills of Stranglethorn - Page 27##2751 |goto Stranglethorn Vale 26.59,76.36 |q 342 |future
step
Follow the path |goto 39.26,5.57 < 20 |only if walking
talk Hemet Nesingwary##715
turnin Raptor Mastery##197 |goto 35.66,10.81
step
talk Sir S. J. Erlgadin##718
turnin Panther Mastery##193 |goto 35.55,10.55
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
accept The Green Hills of Stranglethorn##338 |goto 35.66,10.53
accept Chapter I##339 |goto 35.66,10.53
|only if ((itemcount(2725) >= 1) and (itemcount(2728) >= 1) and (itemcount(2730) >= 1) and (itemcount(2732) >= 1) and (not completedq(339)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
turnin Chapter I##339 |goto 35.66,10.53
|only if ((itemcount(2725) >= 1) and (itemcount(2728) >= 1) and (itemcount(2730) >= 1) and (itemcount(2732) >= 1) and (not completedq(339)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
accept The Green Hills of Stranglethorn##338 |goto 35.66,10.53
accept Chapter II##340 |goto 35.66,10.53
|only if ((itemcount(2734) >= 1) and (itemcount(2735) >= 1) and (itemcount(2738) >= 1) and (itemcount(2740) >= 1) and (not completedq(340)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
turnin Chapter II##340 |goto 35.66,10.53
|only if ((itemcount(2734) >= 1) and (itemcount(2735) >= 1) and (itemcount(2738) >= 1) and (itemcount(2740) >= 1) and (not completedq(340)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
accept The Green Hills of Stranglethorn##338 |goto 35.66,10.53
accept Chapter III##341 |goto 35.66,10.53
|only if ((itemcount(2742) >= 1) and (itemcount(2744) >= 1) and (itemcount(2745) >= 1) and (itemcount(2748) >= 1) and (not completedq(341)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
turnin Chapter III##341 |goto 35.66,10.53
|only if ((itemcount(2742) >= 1) and (itemcount(2744) >= 1) and (itemcount(2745) >= 1) and (itemcount(2748) >= 1) and (not completedq(341)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
accept The Green Hills of Stranglethorn##338 |goto 35.66,10.53
accept Chapter IV##342 |goto 35.66,10.53
|only if ((itemcount(2749) >= 1) and (itemcount(2750) >= 1) and (itemcount(2751) >= 1) and (not completedq(342)))
step
talk Barnil Stonepot##716
|tip Accept "The Green Hills of Stranglethorn" quest first. |only if not havequest(338) or completedq(338)
turnin Chapter IV##342 |goto 35.66,10.53
|only if ((itemcount(2749) >= 1) and (itemcount(2750) >= 1) and (itemcount(2751) >= 1) and (not completedq(342)))
step
talk Barnil Stonepot##716
turnin The Green Hills of Stranglethorn##338 |goto 35.66,10.53
|only if ((itemcount(2756) >= 1) and (itemcount(2757) >= 1) and (itemcount(2758) >= 1) and (itemcount(2759) >= 1) and (not completedq(338)))
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Swamp of Sorrows (45-45)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Swamp of Sorrows",
condition_suggested=function() return level == 45 and not completedq(1448) end,
next="Leveling Guides\\Classic (12-58)\\Tanaris (45-46)",
},[[
step
Follow the road |goto Stranglethorn Vale 39.34,7.24 < 30 |only if walking
Follow the path up |goto Stranglethorn Vale 39.03,5.20 < 15 |only if walking
Enter the building |goto Stormwind City/0 53.44,64.90 < 7 |walk
talk Innkeeper Allison##6740
|tip Inside the building.
home Stormwind City |goto 52.62,65.70
step
Enter the building |goto 63.60,22.83 < 7 |walk
talk Brohann Caskbelly##5384
|tip Inside the building.
accept In Search of The Temple##1448 |goto 64.33,20.66
step
Follow the road |goto Duskwood 79.16,45.38 < 30 |only if walking
Continue following the road |goto Duskwood 89.64,41.29 < 30 |only if walking
Cross the bridge |goto Deadwind Pass 41.83,34.69 < 20 |only if walking
Follow the road |goto Deadwind Pass 52.04,43.41 < 20 |only if walking
click A Soggy Scroll
|tip Underwater, under the bridge.
turnin Cortello's Riddle##624 |goto Swamp of Sorrows 22.86,48.19
accept Cortello's Riddle##625 |goto Swamp of Sorrows 22.86,48.19
step
talk Holaaru##18221
accept Pool of Tears##9610 |goto 25.87,32.42
step
path	follow loose;	loop;	ants curved;	dist 30
path	32.39,35.38		33.15,43.58		37.34,46.76		42.24,33.84
path	47.11,38.83		49.86,40.28		54.02,39.21		55.84,35.85
kill Noboru the Cudgel##5477
|tip He walks in a large path pattern around this area.
|tip He has 2 guards with him.
collect Noboru's Cudgel##6196 |q 1392 |future
step
use Noboru's Cudgel##6196
accept Noboru the Cudgel##1392
stickystart "Collect_Atalai_Artifacts"
step
Search for the Temple of Atal'Hakkar |q 1448/1 |goto 66.68,49.62
step
label "Collect_Atalai_Artifacts"
click Atal'ai Artifact+
|tip They look like various brown colored pottery items underwater on the ground around this area.
|tip You can find more all around in this lake.
collect 10 Atal'ai Artifact##6175 |q 9610/1 |goto 66.69,58.30
step
talk Holaaru##18221
turnin Pool of Tears##9610 |goto 25.87,32.42
step
talk Magtoor##1776
turnin Noboru the Cudgel##1392 |goto 25.99,31.40
step
Follow the road |goto 35.80,59.70 < 30 |only if walking
Follow the path |goto Blasted Lands 53.24,11.99 < 20 |only if walking
Follow the path up |goto Blasted Lands 60.43,18.21 < 30 |only if walking
Follow the path |goto Blasted Lands 62.66,19.80 < 20 |only if walking
Continue following the path |goto Blasted Lands/0 65.71,20.27 < 30 |only if walking
talk Alexandra Constantine##8609
|tip On top of the wooden platform.
fpath Nethergarde Keep |goto Blasted Lands 65.54,24.33
step
talk Watchmaster Sorigal##5464
accept Supplies for Nethergarde##1395 |goto Duskwood 75.77,46.15
step
talk Quartermaster Lungertz##5393
turnin Supplies for Nethergarde##1395 |goto Blasted Lands 66.52,21.38
step
Enter the building |goto Stormwind City 63.59,22.85 < 7 |walk
talk Brohann Caskbelly##5384
|tip Inside the building.
turnin In Search of The Temple##1448 |goto Stormwind City 64.33,20.66
accept To The Hinterlands##1449 |goto Stormwind City 64.33,20.66
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Tanaris (45-46)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Tanaris",
condition_suggested=function() return level >= 45 and level <= 46 and not completedq(1691) end,
next="Leveling Guides\\Classic (12-58)\\Feralas (46-47)",
},[[
step
talk Privateer Groy##2616
|tip He walks around this area.
turnin Akiris by the Bundle##623 |goto Dustwallow Marsh 68.84,53.22
Also check around [Dustwallow Marsh 68.02,51.44]
step
Follow the path |goto 35.30,64.41 < 30 |only if walking
Enter the cave |goto 31.71,65.74 < 10 |walk
click Musty Scroll
|tip Inside the cave.
turnin Cortello's Riddle##625 |goto 31.10,66.15
accept Cortello's Riddle##626 |goto 31.10,66.15
step
Follow the path |goto Tanaris 51.02,28.62 < 10 |only if walking
talk Senior Surveyor Fizzledowser##7724
accept Gadgetzan Water Survey##992 |goto Tanaris 50.21,27.48
step
talk Tran'rek##7876
turnin Tran'rek##2864 |goto 51.57,26.76
step
click Wanted Poster
accept WANTED: Caliph Scorpidsting##2781 |goto 51.84,27.02
accept WANTED: Andre Firebeard##2875 |goto 51.84,27.02
step
talk Curgle Cranklehop##7763
accept Handle With Care##3022 |goto 52.35,26.91
step
Enter the building |goto 52.38,27.91 < 7 |walk
talk Innkeeper Fizzgrimble##7733
|tip Inside the building.
home Gadgetzan |goto 52.51,27.91
step
talk Spigot Operator Luglunket##7408
accept Water Pouch Bounty##1707 |goto 52.48,28.44
step
talk Chief Engineer Bilgewhizzle##7407
accept Wastewander Justice##1690 |goto 52.46,28.51
step
Enter the building |goto 52.21,28.57 < 7 |walk
talk Gimblethorn##7799
|tip Inside the building.
|tip Put these items in the bank.
bank A Carefully-packed Crate##9507 |goto 52.30,28.91 |q 3022
step
talk Gimblethorn##7799
|tip Inside the building.
|tip Collect these items from the bank.
collect Goblin Rumors##5804 |goto 52.30,28.91 |q 1117
collect Seaforium Booster##5862 |goto 52.30,28.91 |q 1187
step
talk Fizzle Brassbolts##4454
turnin News for Fizzle##1137 |goto Thousand Needles 78.06,77.13
step
talk Razzeric##4706
turnin Razzeric's Tweaking##1187 |goto 80.33,76.10
accept Safety First##1188 |goto 80.33,76.10
step
talk Pozzik##4630
accept Keeping Pace##1190 |goto 80.18,75.88
step
talk Zamek##4709
|tip Accept "Zamek's Distraction".
Click Here After Accepting Zamek's Distraction |confirm |goto 79.81,77.03 |q 1190
step
Enter the building |goto 77.52,77.60 < 7 |walk
click Rizzle's Unguarded Plans
|tip Inside the building.
|tip Wait for Rizzle Brassbolts to run out of the building.
turnin Keeping Pace##1190 |goto 77.22,77.42
accept Rizzle's Schematics##1194 |goto 77.22,77.42
step
talk Pozzik##4630
turnin Rizzle's Schematics##1194 |goto 80.18,75.88
step
_Destroy This Item:_
|tip It is no longer needed.
trash Sample of Indurium Ore##5866
step
Follow the path up |goto 74.15,93.05 < 20 |only if walking
Follow the path down |goto Tanaris 51.44,22.32 < 20 |only if walking
Follow the path |goto Tanaris 51.26,26.48 < 10 |only if walking
talk Shreev##4708
turnin Safety First##1188 |goto Tanaris 50.96,27.24
stickystart "Kill_Wastewander_Bandits"
stickystart "Kill_Wastewander_Thives"
step
Kill Wastewander enemies around this area
collect 5 Wastewander Water Pouch##8483 |q 1707/1 |goto 59.82,24.34
|tip Be careful not to accidentally sell these to a vendor.
You can find more around [63.51,30.31]
step
label "Kill_Wastewander_Bandits"
kill 10 Wastewander Bandit##5618 |q 1690/1 |goto 59.82,24.34
You can find more around [63.51,30.31]
step
label "Kill_Wastewander_Thives"
kill 10 Wastewander Thief##5616 |q 1690/2 |goto 59.82,24.34
You can find more around [63.51,30.31]
step
talk Haughty Modiste##15165
accept Pirate Hats Ahoy!##8365 |goto 66.56,22.27
step
talk Yeh'kinya##8579
accept Screecher Spirits##3520 |goto 66.99,22.36
step
Enter the building |goto 66.99,23.87 < 7 |walk
talk Security Chief Bilgewhizzle##7882
|tip Inside the building.
accept Southsea Shakedown##8366 |goto 67.06,23.89
step
talk Stoley##7881
|tip Inside the building.
turnin Stoley's Debt##2872 |goto 67.11,23.98
accept Stoley's Shipment##2873 |goto 67.11,23.98
step
path	follow loose;	loop;	ants curved;	dist 30
path	63.84,31.89		63.30,37.23		62.29,37.83		59.52,41.19
path	58.71,38.17		61.87,33.42
kill Caliph Scorpidsting##7847
|tip He walks in a counter-clockwise pattern, so this path will help you find him faster.
|tip He walks with 2 stealthed guards with him, so be careful.
|tip Kite him away from his guards, so you can fight him alone.
|tip If you have trouble, try to find someone to help you.
collect Caliph Scorpidsting's Head##8723 |q 2781/1
stickystart "Collect_Southsea_Pirate_Hats"
stickystart "Kill_Southsea_Pirates"
stickystart "Kill_Southsea_Freebooters"
stickystart "Kill_Southsea_Dock_Workers"
stickystart "Kill_Southsea_Swashbucklers"
step
Enter the tunnel |goto 68.62,41.45 < 10 |only if walking
Follow the path |goto 73.18,45.56 < 15 |only if walking
Enter the building |goto 72.61,46.82 < 7 |walk
click Stolen Cargo
|tip Upstairs inside the building.
collect Stoley's Shipment##9244 |q 2873/1 |goto 72.19,46.77
step
Leave the building |goto 72.61,46.82 < 7 |walk
kill Andre Firebeard##7883
|tip Kite him away from the other enemies, so you can fight him alone.
|tip If you have trouble, try to find someone to help you.
collect Firebeard's Head##9246 |q 2875/1 |goto 73.37,47.14
step
label "Collect_Southsea_Pirate_Hats"
Kill Southsea enemies around this area
collect 20 Southsea Pirate Hat##20519 |q 8365/1 |goto 73.26,46.42
You can find more around [72.29,44.64]
step
label "Kill_Southsea_Pirates"
kill 10 Southsea Pirate##7855 |q 8366/1 |goto 73.26,46.42
You can find more around [72.29,44.64]
step
label "Kill_Southsea_Freebooters"
kill 10 Southsea Freebooter##7856 |q 8366/2 |goto 73.26,46.42
You can find more around [72.29,44.64]
step
label "Kill_Southsea_Dock_Workers"
kill 10 Southsea Dock Worker##7857 |q 8366/3 |goto 73.76,47.42
|tip You can find more up on the wooden platforms nearby.
step
label "Kill_Southsea_Swashbucklers"
kill 10 Southsea Swashbuckler##7858 |q 8366/4 |goto 75.19,45.96
You can find more in the buildings around [72.96,47.07]
step
talk Spigot Operator Luglunket##7408
turnin Water Pouch Bounty##1707 |goto 52.48,28.44
step
_Destroy or Sell These Items:_
|tip They are no longer needed.
trash Wastewander Water Pouch##8483
trash Gadgetzan Water Co. Care Package##8484
step
talk Chief Engineer Bilgewhizzle##7407
turnin WANTED: Caliph Scorpidsting##2781 |goto 52.46,28.51
turnin Wastewander Justice##1690 |goto 52.46,28.51
accept More Wastewander Justice##1691 |goto 52.46,28.51
step
Kill enemies around this area
Reach Level 46 |ding 46 |goto 40.14,29.53
step
use the Untapped Dowsing Widget##8584
|tip Use it in the water.
|tip Once you get the Tapped Dowsing Widget, run away to safety immediately.
|tip Multiple higher level enemies appear after using the item.
collect Tapped Dowsing Widget##8585 |q 992/1 |goto 39.09,29.17
step
Follow the path up |goto 49.75,27.75 < 10 |only if walking
talk Senior Surveyor Fizzledowser##7724
turnin Gadgetzan Water Survey##992 |goto 50.21,27.48
step
talk Haughty Modiste##15165
turnin Pirate Hats Ahoy!##8365 |goto 66.56,22.27
step
Enter the building |goto 66.99,23.87 < 7 |walk
talk Security Chief Bilgewhizzle##7882
|tip Inside the building.
turnin WANTED: Andre Firebeard##2875 |goto 67.06,23.89
turnin Southsea Shakedown##8366 |goto 67.06,23.89
step
talk Stoley##7881
|tip Inside the building.
turnin Stoley's Shipment##2873 |goto 67.11,23.97
accept Deliver to MacKinley##2874 |goto 67.11,23.97
stickystart "Kill_Wastewander_Assassins"
stickystart "Kill_Wastewander_Shadow_Mages"
step
kill 8 Wastewander Rogue##5615 |q 1691/1 |goto 60.87,32.74
|tip They are stealthed around this area.
You can find more around: |notinsticky
[61.84,34.67]
[59.99,37.02]
[58.85,36.63]
[58.81,39.22]
[60.52,39.06]
[63.40,37.65]
[64.43,39.57]
[65.32,36.89]
step
label "Kill_Wastewander_Assassins"
kill 6 Wastewander Assassin##5623 |q 1691/2 |goto 60.87,32.74
You can find more around: |notinsticky
[61.84,34.67]
[59.99,37.02]
[58.85,36.63]
[58.81,39.22]
[60.52,39.06]
[63.40,37.65]
[64.43,39.57]
[65.32,36.89]
step
label "Kill_Wastewander_Shadow_Mages"
kill 10 Wastewander Shadow Mage##5617 |q 1691/3 |goto 60.87,32.74
You can find more around: |notinsticky
[61.84,34.67]
[59.99,37.02]
[58.85,36.63]
[58.81,39.22]
[60.52,39.06]
[63.40,37.65]
[64.43,39.57]
[65.32,36.89]
step
talk Chief Engineer Bilgewhizzle##7407
turnin More Wastewander Justice##1691 |goto 52.46,28.51
step
Enter the building |goto 52.21,28.57 < 7 |walk
talk Gimblethorn##7799
|tip Inside the building.
|tip Put these items in the bank.
bank Stoley's Bottle##9245 |goto 52.30,28.91 |q 2874
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Feralas (46-47)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Feralas",
condition_suggested=function() return level >= 46 and level <= 47 and not completedq(4267) end,
next="Leveling Guides\\Classic (12-58)\\The Hinterlands (47-48)",
},[[
step
talk Pratt McGrubben##7852
accept The Mark of Quality##2821 |goto Feralas 30.63,42.71
step
talk Innkeeper Shyria##7736
|tip Inside the building.
home Feathermoon Stronghold |goto 30.97,43.49
step
Enter the building |goto 30.77,45.23 < 7 |walk
talk Latronicus Moonspear##7877
|tip Inside the building.
accept The Missing Courier##4124 |goto 30.38,46.17
step
talk Shandris Feathermoon##3936
|tip Inside the building.
accept The Ruins of Solarsal##2866 |goto 30.28,46.17
step
Leave the building |goto 30.77,45.23 < 7 |walk
talk Troyas Moonbreeze##7764
|tip Inside the building.
accept In Search of Knowledge##2939 |goto 31.78,45.50
step
talk Angelas Moonbreeze##7900
|tip Inside the building.
accept The High Wilderness##2982 |goto 31.83,45.61
step
talk Ginro Hearthkindle##7880
|tip Upstairs inside the building.
turnin The Missing Courier##4124 |goto 31.86,45.13
accept The Missing Courier##4125 |goto 31.86,45.13
step
click Solarsal Gazebo
turnin The Ruins of Solarsal##2866 |goto 26.32,52.34
accept Return to Feathermoon Stronghold##2867 |goto 26.32,52.34
step
Jump up here to enter the building |goto 31.01,46.41 < 7 |walk
talk Shandris Feathermoon##3936
|tip Inside the building.
turnin Return to Feathermoon Stronghold##2867 |goto 30.28,46.17
accept Against the Hatecrest##3130 |goto 30.28,46.17
step
talk Latronicus Moonspear##7877
|tip Inside the building.
turnin Against the Hatecrest##3130 |goto 30.38,46.17
accept Against the Hatecrest##2869 |goto 30.38,46.17
step
Kill Hatecrest enemies around this area
collect 10 Hatecrest Naga Scale##9247 |q 2869/1 |goto 28.66,53.05
You can find more around [26.21,51.95]
step
Jump up here to enter the building |goto 31.01,46.41 < 7 |walk
talk Latronicus Moonspear##7877
|tip Inside the building.
turnin Against the Hatecrest##2869 |goto 30.38,46.17
accept Against Lord Shalzaru##2870 |goto 30.38,46.17
step
Follow the path |goto 25.48,64.99 < 20 |only if walking
Enter the cave |goto 26.04,67.33 < 10 |walk
Follow the path up |goto 27.22,69.66 < 7 |walk
kill Lord Shalzaru##8136
|tip Inside the cave.
|tip If you have trouble, try to find someone to help you.
collect Mysterious Relic##9248 |q 2870/1 |goto 28.49,70.45
step
Follow the path down |goto 27.34,69.73 < 7 |walk
Leave the cave |goto 25.90,67.16 < 10 |walk
click Wrecked Row Boat
|tip Underwater.
|tip Use a healing potion when you're low health from the Fatigue from swimming across.
|tip You will make it out of the Fatigue zone shortly after.
|tip You will be hearthing back to Feathermoon Stronghold after this step is finished.
turnin The Missing Courier##4125 |goto 45.45,64.97
accept Boat Wreckage##4127 |goto 45.45,64.97
step
talk Ginro Hearthkindle##7880
|tip Upstairs inside the building.
turnin Boat Wreckage##4127 |goto 31.86,45.13
accept The Knife Revealed##4129 |goto 31.86,45.13
step
Enter the building |goto 30.77,45.23 < 7 |walk
talk Latronicus Moonspear##7877
|tip Inside the building.
turnin Against Lord Shalzaru##2870 |goto 30.38,46.17
accept Delivering the Relic##2871 |goto 30.38,46.17
step
talk Vestia Moonspear##7878
|tip Inside the building.
turnin Delivering the Relic##2871 |goto 30.08,45.06
step
Leave the building |goto 30.77,45.23 < 7 |walk
Enter the building |goto 32.34,43.69 < 7 |walk
talk Quintis Jonespyre##7879
|tip Upstairs inside the building.
turnin The Knife Revealed##4129 |goto 32.45,43.79
step
Watch the dialogue
talk Quintis Jonespyre##7879
|tip Upstairs inside the building.
accept Psychometric Reading##4130 |goto 32.45,43.79
step
Leave the building |goto 32.67,44.05 < 7 |walk
talk Ginro Hearthkindle##7880
|tip Upstairs inside the building.
turnin Psychometric Reading##4130 |goto 31.86,45.13
accept The Woodpaw Gnolls##4131 |goto 31.86,45.13
step
Run up the ramp |goto 30.92,43.21 < 15 |only if walking
Ride the boat or swim across the water |goto 31.03,39.92 < 20 |only if walking
kill Rogue Vale Screecher##5308+
use Yeh'kinya's Bramble##10699
|tip Use it on their corpses.
talk Screecher Spirit##8612+
|tip They appear after using Yeh'kinya's Bramble on the corpses.
Collect #3# Screecher Spirits |q 3520/1 |goto 46.26,40.14
You can find more around: |notinsticky
[45.86,37.59]
[44.46,36.19]
[42.49,36.47]
step
Follow the path up |goto 47.11,44.49 < 20 |only if walking
Follow the road |goto 48.68,45.02 < 30 |only if walking
Follow the path |goto 54.92,52.74 < 30 |only if walking
Kill Feral Scar enemies around this area
|tip They look like yetis.
collect 10 Thick Yeti Hide##8973 |q 2821/1 |goto 56.20,57.02
You can find more through the tunnel at [55.14,56.36]
step
Follow the path |goto 55.86,59.80 < 70 |only if walking
Follow the path up |goto 53.95,68.44 < 30 |only if walking
Follow the path up |goto 57.33,75.52 < 10 |only if walking
click Hippogryph Egg
collect Hippogryph Egg##8564 |goto 56.66,75.90 |q 2741 |future
|tip You will use this for a future quest.
|tip Be careful not to accidentally sell this to a vendor.
stickystart "Kill_Gordunni_Warlocks"
step
kill 8 Gordunni Shaman##5236 |q 2982/2 |goto 59.67,66.85
stickystart "Kill_Gordunni_Brutes"
step
label "Kill_Gordunni_Warlocks"
kill 8 Gordunni Warlock##5240 |q 2982/1 |goto 59.22,64.15
You can find more around [61.03,55.64]
step
label "Kill_Gordunni_Brutes"
kill 8 Gordunni Brute##5232 |q 2982/3 |goto 61.00,55.61
You can find more around [59.28,63.51]
step
Follow the road |goto 61.99,52.95 < 30 |only if walking
Follow the path down |goto 64.37,50.01 < 15 |only if walking
Follow the path |goto 64.91,48.18 < 20 |only if walking
Kill enemies around this area
|tip Clear the area around the large cage, to make the next step easier.
Click Here After You Clear the Enemies |confirm |goto 66.69,46.57 |q 2969 |future
step
Follow the path up |goto 65.66,46.77 < 10 |only if walking
Follow the path down |goto 65.81,46.10 < 10 |only if walking
talk Kindal Moonweaver##7956
accept Freedom for All Creatures##2969 |goto 65.94,45.65
step
click Cage Door
|tip Follow the Captured Sprite Darters and protect them.
|tip You have to make sure at least 6 of them survive.
|tip HURRY!  You must complete the quest and turn it in before the timer ends.
Save at Least 6 Sprite Darters from Capture |q 2969/1 |goto 66.67,46.75
step
Follow the path up |goto 65.66,46.77 < 10 |only if walking
Follow the path down |goto 65.81,46.10 < 10 |only if walking
talk Kindal Moonweaver##7956
|tip HURRY!  You must turn it in before the timer ends.
turnin Freedom for All Creatures##2969 |goto 65.94,45.65
step
talk Jer'kai Moonweaver##7957
accept Doling Justice##2970 |goto 65.95,45.61
stickystart "Kill_Grimtotem_Raiders"
stickystart "Kill_Grimtotem_Naturalists"
step
kill 6 Grimtotem Shaman##7727 |q 2970/3 |goto 66.89,46.43
You can find more: |notinsticky
Around [68.71,47.04]
Around [69.59,39.44]
Up the path at [68.26,39.25]
step
label "Kill_Grimtotem_Raiders"
kill 10 Grimtotem Raider##7725 |q 2970/2 |goto 66.89,46.43
You can find more: |notinsticky
Around [68.71,47.04]
Around [69.59,39.44]
Up the path at [68.26,39.25]
step
label "Kill_Grimtotem_Naturalists"
kill 12 Grimtotem Naturalist##7726 |q 2970/1 |goto 66.89,46.43
You can find more: |notinsticky
Around [68.71,47.04]
Around [69.59,39.44]
Up the path at [68.26,39.25]
step
Kill enemies around this area
Reach Level 47 |ding 47 |goto 66.89,46.43
You can find more: |notinsticky
Around [68.71,47.04]
Around [69.59,39.44]
Up the path at [68.26,39.25]
step
Follow the path up |goto 65.66,46.77 < 10 |only if walking
Follow the path down |goto 65.81,46.10 < 10 |only if walking
talk Jer'kai Moonweaver##7957
turnin Doling Justice##2970 |goto 65.95,45.61
accept Doling Justice##2972 |goto 65.95,45.61
step
click Large Leather Backpacks
turnin The Woodpaw Gnolls##4131 |goto 73.31,56.31
accept The Writhing Deep##4135 |goto 73.31,56.31
step
use the Undelivered Parcel##11463
accept Thalanaar Delivery##4281
step
Follow the path up |goto 72.11,62.68 < 30 |only if walking
Follow the path down |goto 73.69,63.07 < 15 |only if walking
Enter the cave at the bottom of the path |goto 73.17,63.88 < 7 |walk
Follow the path down |goto 72.69,64.56 < 5 |walk
click Zukk'ash Pod
|tip Inside the cave.
turnin The Writhing Deep##4135 |goto 72.08,63.75
accept Freed from the Hive##4265 |goto 72.08,63.75
step
Watch the dialogue
|tip Inside the cave.
Free Raschal |q 4265/1 |goto 72.08,63.81
step
talk Pratt McGrubben##7852
turnin The Mark of Quality##2821 |goto 30.63,42.71
step
talk Angelas Moonbreeze##7900
|tip Inside the building.
turnin The High Wilderness##2982 |goto 31.83,45.61
step
talk Ginro Hearthkindle##7880
|tip Upstairs inside the building.
turnin Freed from the Hive##4265 |goto 31.86,45.13
accept A Hero's Welcome##4266 |goto 31.86,45.13
step
Enter the building |goto 30.76,45.23 < 7 |walk
talk Shandris Feathermoon##3936
|tip Inside the building.
turnin A Hero's Welcome##4266 |goto 30.28,46.17
accept Rise of the Silithid##4267 |goto 30.28,46.17
step
talk Daryn Lightwind##7907
|tip Upstairs inside the building.
turnin In Search of Knowledge##2939 |goto Teldrassil 55.41,92.23
step
click Feralas: A History
|tip Upstairs inside the building.
accept Feralas: A History##2940 |goto 55.22,91.46
step
talk Daryn Lightwind##7907
|tip Upstairs inside the building.
turnin Feralas: A History##2940 |goto 55.41,92.23
accept The Borrower##2941 |goto 55.41,92.23
step
Cross the bridge |goto Darnassus 38.60,48.01 < 15 |only if walking
Enter the building |goto 39.06,77.04 < 10 |walk
Run up the ramp |goto 40.46,91.67 < 7 |walk
talk Gracina Spiritmight##7740
|tip Upstairs inside the building.
turnin Rise of the Silithid##4267 |goto 41.85,85.62
step
talk Tyrande Whisperwind##7999
|tip Upstairs inside the building.
turnin Doling Justice##2972 |goto 39.10,81.59
step
talk Garryeth##4209
|tip Put these items in the bank.
bank Yeh'kinya's Bramble##10699 |goto 39.89,42.18 |q 3520
step
talk Garryeth##4209
|tip Collect these items from the bank.
collect A Carefully-packed Crate##9507 |goto 39.89,42.18 |q 3022
step
talk Erelas Ambersky##7916
|tip Inside the building.
turnin Handle With Care##3022 |goto Teldrassil 55.50,92.05
accept Favored of Elune?##3661 |goto Teldrassil 55.50,92.05
step
talk Falfindel Waywarder##4048
turnin Thalanaar Delivery##4281 |goto Feralas 89.64,46.57
step
talk Curgle Cranklehop##7763
turnin The Borrower##2941 |goto Tanaris 52.36,26.91
accept The Super Snapper FX##2944 |goto Tanaris 52.36,26.91
step
click Egg-O-Matic
accept The Super Egg-O-Matic##2741 |goto 52.37,26.97
step
_Destroy This Item:_
|tip It is no longer needed.
trash Egg Crate##8647
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\The Hinterlands (47-48)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\The Hinterlands",
condition_suggested=function() return level >= 47 and level <= 48 and not completedq(3451) end,
next="Leveling Guides\\Classic (12-58)\\Feralas (48-49)",
},[[
step
Follow the path |goto Hillsbrad Foothills 66.41,42.83 < 30 |only if walking
Continue following the path |goto Hillsbrad Foothills 75.59,32.78 < 30 |only if walking
Follow the path |goto Hillsbrad Foothills 84.35,32.31 < 30 |only if walking
Follow the road |goto The Hinterlands 9.85,54.94 < 20 |only if walking
Follow the path up |goto The Hinterlands 13.50,47.99 < 15 |only if walking
talk Falstad Wildhammer##5635
turnin To The Hinterlands##1449 |goto The Hinterlands 11.81,46.76
accept Gryphon Master Talonaxe##1450 |goto The Hinterlands 11.81,46.76
step
talk Guthrum Thunderfist##8018
|tip At the top of the path.
fpath Aerie Peak |goto 11.07,46.15
step
Enter the building |goto 11.00,45.67 < 7 |walk
talk Gryphon Master Talonaxe##5636
|tip Inside the building.
turnin Gryphon Master Talonaxe##1450 |goto 9.76,44.48
accept Rhapsody Shindigger##1451 |goto 9.76,44.48
accept Witherbark Cages##2988 |goto 9.76,44.48
step
Leave the building |goto 10.99,45.66 < 7 |walk
Enter the building |goto 14.20,45.15 < 15 |only if walking
talk Fraggar Thundermantle##7884
|tip Inside the building.
accept Skulk Rock Clean-up##2877 |goto 14.83,44.56
accept Troll Necklace Bounty##2880 |goto 14.83,44.56
step
talk Innkeeper Thulfram##7744
|tip He walks around upstairs inside the building.
home Wildhammer Keep |goto 14.15,41.57
step
Leave the building |goto 14.18,45.19 < 15 |walk
talk Ambassador Rualeth##17223
accept Featherbeard's Endorsement##9469 |goto 15.10,47.21
accept A Gesture of Goodwill##9470 |goto 15.10,47.21
accept Preying on the Predators##9471 |goto 15.10,47.21
stickystart "Kill_Mangy_Silvermanes"
stickystart "Collect_Wildkin_Feathers"
step
Enter the building |goto 13.31,54.59 < 7 |walk
click Featherbeard's Journal
|tip Inside the building.
turnin Featherbeard's Endorsement##9469 |goto 13.43,55.22
accept In Pursuit of Featherbeard##9476 |goto 13.43,55.22
step
label "Kill_Mangy_Silvermanes"
kill 10 Mangy Silvermane##2923 |q 9471/1 |goto 17.96,53.71
step
Follow the path up |goto 20.81,47.82 < 15 |only if walking
talk Rhapsody Shindigger##5634
turnin Rhapsody Shindigger##1451 |goto 26.94,48.59
stickystart "Collect_Troll_Tribal_Necklaces"
step
kill 5 Silvermane Wolf##2924 |q 9471/2 |goto 28.53,53.82
You can find more around: |notinsticky
[26.49,57.77]
[29.72,64.49]
step
click First Witherbark Cage
Check the First Cage |q 2988/1 |goto 23.28,58.75
step
click Second Witherbark Cage
Check the Second Cage |q 2988/2 |goto 23.13,58.76
step
Follow the path |goto 26.22,62.88 < 30 |only if walking
Enter the cave |goto 25.31,66.04 < 15 |walk
kill Witch Doctor Mai'jin##17235 |q 9470/1 |goto 24.63,65.58
kill Tcha'kaz##17236 |q 9470/2 |goto 24.68,65.47
|tip Inside the cave.
step
Follow the path down |goto 35.78,63.96 < 30 |only if walking
Run up the stairs |goto 35.54,71.34 < 20 |only if walking
click Featherbeard's Remains
turnin In Pursuit of Featherbeard##9476 |goto 37.15,71.55
accept Reclaiming the Eggs##9475 |goto 37.15,71.55
step
click Gryphon Egg+
|tip They look like large white and brown eggs on the ground around this area.
|tip You can usually find more upstairs in the temples around this area.
collect 5 Gryphon Egg##23694 |q 9475/1 |goto 34.18,72.80
step
Follow the path |goto 35.78,63.96 < 30 |only if walking
click Third Witherbark Cage
Check the Third Cage |q 2988/3 |goto 31.99,57.38
step
label "Collect_Troll_Tribal_Necklaces"
Kill Witherbark enemies around this area
|tip They look like trolls.
collect 5 Troll Tribal Necklace##9259 |q 2880/1 |goto 32.03,58.00
|tip Be careful not to accidentally sell these to a vendor.
You can find more around [23.73,57.89]
stickystart "Kill_Jade_Oozes"
step
kill 10 Green Sludge##2655 |q 2877/1 |goto 47.11,41.36
You can find more around: |notinsticky
[49.04,52.42]
[56.67,43.39]
step
label "Kill_Jade_Oozes"
kill 10 Jade Ooze##2656 |q 2877/2 |goto 47.11,41.36
You can find more around: |notinsticky
[49.04,52.42]
[56.67,43.39]
step
Kill enemies around this area
Reach Level 48 |ding 48 |goto 47.11,41.36
You can find more around: |notinsticky
[49.04,52.42]
[56.67,43.39]
step
label "Collect_Wildkin_Feathers"
click Wildkin Feather+
|tip They look large brown and white feathers on the ground around this area.
|tip They can be found around most of the Hinterlands, except in the eastern part.
|tip Reduce the "Ground Clutter" graphics setting to make them much easier to see.
collect 15 Wildkin Feather##10819 |q 3661/1 |goto 44.35,45.43
You can find more around: |notinsticky
[41.01,44.97]
[33.03,43.66]
[33.90,48.74]
[28.43,54.20]
[21.94,52.89]
stickystart "Collect_Snapshot_Of_Gammerita"
stickystart "Collect_Pupellyverbos_Port"
step
Follow the road |goto 61.28,53.08 < 30 |only if walking
Follow the path down |goto 71.50,65.09 < 20 |only if walking
Follow the path |goto 81.05,55.35 < 30 |only if walking
click Cortello's Treasure
|tip Underwater.
turnin Cortello's Riddle##626 |goto 80.81,46.81
step
label "Collect_Snapshot_Of_Gammerita"
use the Super Snapper FX##9328
|tip Use it on Gammerita.
|tip It looks like a blue turtle that walks around this area.
|tip It will attack you after you use the item.
collect Snapshot of Gammerita##9330 |q 2944/1 |goto 75.62,67.03
You can also find it around: |notinsticky
[75.62,67.03]
[80.79,55.59]
step
label "Collect_Pupellyverbos_Port"
click Pupellyverbos Port+
|tip They look like small dark blue bottles on the ground around this area.
|tip Reduce the "Ground Clutter" graphics setting to make them much easier to see.
|tip Avoid the guards of the Horde town nearby.
collect 12 Pupellyverbos Port##3900 |q 580/1 |goto 81.08,55.81
You can find more around: |notinsticky
[79.46,62.41]
[78.49,69.25]
[78.44,75.71]
step
talk Fraggar Thundermantle##7884
|tip Inside the building.
turnin Skulk Rock Clean-up##2877 |goto 14.84,44.57
turnin Troll Necklace Bounty##2880 |goto 14.84,44.57
step
Leave the building |goto 14.19,45.19 < 15 |only if walking
talk Ambassador Rualeth##17223
turnin A Gesture of Goodwill##9470 |goto 15.11,47.21
turnin Preying on the Predators##9471 |goto 15.11,47.21
turnin Reclaiming the Eggs##9475 |goto 15.11,47.21
step
_Destroy This Item:_
|tip It is no longer needed.
trash Featherbeard's Map##23695
step
Follow the path up |goto 12.91,48.27 < 15 |only if walking
Enter the building at the top of the path |goto 11.00,45.67 < 7 |walk
talk Gryphon Master Talonaxe##5636
|tip Inside the building.
turnin Witherbark Cages##2988 |goto 9.76,44.47
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Feralas (48-49)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Feralas",
condition_suggested=function() return level >= 48 and level <= 49 and not completedq(7735) end,
next="Leveling Guides\\Classic (12-58)\\Tanaris (49-50)",
},[[
step
talk Erelas Ambersky##7916
|tip Inside the building.
turnin Favored of Elune?##3661 |goto Teldrassil 55.50,92.05
step
talk Daryn Lightwind##7907
|tip Upstairs inside the building.
turnin The Super Snapper FX##2944 |goto 55.41,92.23
accept Return to Troyas##2943 |goto 55.41,92.23
step
talk Pratt McGrubben##7852
accept Improved Quality##7733 |goto Feralas 30.63,42.71
step
talk Innkeeper Shyria##7736
|tip Inside the building.
home Feathermoon Stronghold |goto 30.97,43.49
step
talk Troyas Moonbreeze##7764
|tip Inside the building.
turnin Return to Troyas##2943 |goto 31.78,45.50
step
Watch the dialogue
talk Troyas Moonbreeze##7764
|tip Inside the building.
accept The Stave of Equinex##2879 |goto 31.78,45.50
step
talk Angelas Moonbreeze##7900
|tip Inside the building.
accept The Sunken Temple##3445 |goto 31.83,45.61
step
Run up the ramp |goto 30.92,43.21 < 7 |only if walking
Ride the boat or swim across the water |goto 31.03,39.92 < 20 |only if walking
talk Zorbin Fandazzle##14637
accept Zapped Giants##7003 |goto 44.81,43.42
accept Fuel for the Zapping##7721 |goto 44.81,43.42
stickystart "Collect_Water_Elemental_Cores"
step
use Zorbin's Ultra-Shrinker##18904
|tip Use it on Wave Striders around this area.
|tip They look like tall green giants that walks on the shore and in the water around this area.
|tip This quest item only lasts for 2 hours.
|tip If you need a new one, abandon the quest and accept it again from the goblin in the previous guide step.
kill Zapped Wave Strider##14638+
collect 15 Miniaturization Residue##18956 |q 7003/1 |goto 44.38,50.11
You can find more around: |notinsticky
[46.63,59.79]
[45.36,67.94]
[40.03,37.38]
[36.09,33.74]
step
label "Collect_Water_Elemental_Cores"
Kill Sea enemies around this area
|tip They look like water elementals.
|tip Up and down this whole shore.
collect 10 Water Elemental Core##18958 |q 7721/1 |goto 46.73,60.23
You can find more around: |notinsticky
[46.30,52.00]
[40.71,37.59]
step
talk Zorbin Fandazzle##14637
turnin Zapped Giants##7003 |goto 44.81,43.42
turnin Fuel for the Zapping##7721 |goto 44.81,43.42
step
_Destroy This Item:_
|tip It is no longer needed.
|tip You will get a new one in the next step, that will last an additional 2 hours.
trash Zorbin's Ultra-Shrinker##18904
step
talk Zorbin Fandazzle##14637
|tip Sell any items you don't need, to clear some bag space.
Click Here to Continue |confirm |goto 44.81,43.42 |q 2844 |future
step
talk Zorbin Fandazzle##14637
accept Again With the Zapped Giants##7725 |goto 44.81,43.42
step
Follow the path up |goto 46.28,37.56 < 15 |only if walking
Follow the path |goto 48.27,38.00 < 30 |only if walking
Follow the path up |goto 51.42,32.47 < 10 |only if walking
Kill Rage Scar enemies around this area
collect 10 Rage Scar Yeti Hide##18947 |q 7733/1 |goto 52.19,31.81
You can find more inside the cave at [53.17,31.82]
step
use the Pristine Yeti Hide##18969
accept Pristine Yeti Hide##7735
|only if itemcount(18969) > 0
step
Follow the path |goto 48.99,27.00 < 30 |only if walking
Continue following the path |goto 48.17,24.67 < 30 |only if walking
Follow the path up |goto 45.62,25.69 < 15 |only if walking
use the Zorbin's Ultra-Shrinker##18904
|tip Use it on enemies around this area.
|tip They look like rock giants.
Kill enemies around this area
collect 10 Miniaturization Residue##18956 |q 7725/1 |goto 40.25,24.48
You can find more around [37.96,20.91]
step
talk Rockbiter##7765
accept The Giant Guardian##2844 |goto 42.38,22.00
step
Follow the path |goto 39.96,15.89 < 30 |only if walking
click Flame of Byltan
collect Byltan Essence##9258 |goto 38.50,15.80 |q 2879
step
Follow the path up |goto 39.95,13.44 < 20 |only if walking
click Flame of Lahassa
collect Lahassa Essence##9255 |goto 37.76,12.17 |q 2879
step
click Flame of Imbel
collect Imbel Essence##9256 |goto 39.93,9.44 |q 2879
step
Jump up on the ledge |goto 40.33,11.04 < 7 |only if walking
Jump across here |goto 40.59,11.45 < 7 |only if walking
Jump up here |goto 40.97,11.87 < 7 |only if walking
click Flame of Samha
collect Samha Essence##9257 |goto 40.54,12.65 |q 2879
step
use Troyas' Stave##9263
collect Stave of Equinex##9306 |q 2879/1 |goto 38.87,13.23
step
click Equinex Monolith
turnin The Stave of Equinex##2879 |goto 38.87,13.23
accept The Morrow Stone##2942 |goto 38.87,13.23
step
Follow the path up |goto 39.94,13.34 < 20 |only if walking
Follow the path up |goto 37.58,11.17 < 15 |only if walking
talk Shay Leafrunner##7774
turnin The Giant Guardian##2844 |goto 38.22,10.30
accept Wandering Shay##2845 |goto 38.22,10.30
step
click Shay's Chest
collect Shay's Bell##9189 |q 2845/1 |goto 38.25,10.29
step
use Shay's Bell##9189
|tip Shay Leafrunner will follow you.
|tip Protect her as you walk.
|tip She will sometimes wander off and stop following you.
|tip You will see a message in your chat when she wanders off.
|tip When this happens, use Shay's Bell to get her to start following you again.
|tip This quest is timed, so try to hurry.
Take Shay Leafrunner to Rockbiter's Camp |q 2845/2 |goto 42.38,22.00
step
talk Rockbiter##7765
turnin Wandering Shay##2845 |goto 42.38,22.00
step
Follow the road |goto 48.13,24.68 < 30 |only if walking
Continue following the road |goto 48.41,33.30 < 30 |only if walking
Follow the path down |goto 47.53,37.63 < 20 |only if walking
talk Zorbin Fandazzle##14637
turnin Again With the Zapped Giants##7725 |goto 44.81,43.42
step
_Destroy This Item:_
|tip It is no longer needed.
trash Zorbin's Ultra-Shrinker##18904
step
talk Zorbin Fandazzle##14637
|tip Sell any items you don't need, to clear some bag space.
Click Here to Continue |confirm |goto 44.81,43.42 |q 2942 |future
step
talk Troyas Moonbreeze##7764
|tip Inside the building.
turnin The Morrow Stone##2942 |goto 31.78,45.50
step
talk Pratt McGrubben##7852
turnin Improved Quality##7733 |goto 30.63,42.71
turnin Pristine Yeti Hide##7735 |goto 30.63,42.71 |only if havequest(7735) or completedq(7735)
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Tanaris (49-50)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Tanaris",
condition_suggested=function() return level >= 49 and level <= 50 and not completedq(113) end,
next="Leveling Guides\\Classic (12-58)\\Searing Gorge (50-51)",
},[[
step
Follow the path |goto Tanaris 51.01,28.63 < 10 |only if walking
talk Senior Surveyor Fizzledowser##7724
accept Noxious Lair Investigation##82 |goto Tanaris 50.21,27.48
step
talk Tran'rek##7876
accept Thistleshrub Valley##3362 |goto 51.57,26.76
accept Super Sticky##4504 |goto 51.57,26.76
step
talk Andi Lynn##11758
accept The Dunemaul Compound##5863 |goto 52.82,27.40
step
Enter the building |goto 52.21,28.57 < 7 |walk
talk Gimblethorn##7799
|tip Inside the building.
|tip Collect these items from the bank.
collect Yeh'kinya's Bramble##10699 |goto 52.30,28.91 |q 3520
step
talk Marin Noggenfogger##7564
accept The Thirsty Goblin##2605 |goto 51.81,28.66
step
talk Marvon Rivetseeker##7771
turnin The Sunken Temple##3445 |goto 52.71,45.93
accept The Stone Circle##3444 |goto 52.71,45.93
accept Gahz'ridian##3161 |goto 52.71,45.93
step
Kill Centipaar enemies around this area
collect 5 Centipaar Insect Parts##8587 |q 82/1 |goto 35.74,42.06
stickystart "Kill_Dunemaul_Brutes"
stickystart "Kill_Dunemaul_Enforcers"
step
Enter the cave |goto 41.09,57.35 < 10 |walk
kill Gor'marok the Ravager##12046 |q 5863/3 |goto 41.50,57.81
|tip Inside the small cave.
step
label "Kill_Dunemaul_Brutes"
kill 10 Dunemaul Brute##5474 |q 5863/1 |goto 40.32,52.49
You can find more around [39.05,56.57]
step
label "Kill_Dunemaul_Enforcers"
kill 10 Dunemaul Enforcer##5472 |q 5863/2 |goto 40.32,52.49
You can find more around [39.05,56.57]
step
click Gahz'ridian+
|tip They look like small piles of sand on the ground around this area.
collect 30 Gahz'ridian Ornament##8443 |q 3161/1 |goto 40.45,72.67
You can find more around [46.96,65.87]
stickystart "Kill_Gnarled_Thistleshrubs"
stickystart "Kill_Thistleshrub_Rootshapers"
step
Follow the path |goto 30.70,67.87 < 30 |only if walking
kill Thistleshrub Dew Collector##5481+
collect Laden Dew Gland##8428 |q 2605/1 |goto 29.97,66.48
You can find more around: |notinsticky
[28.18,64.79]
[30.54,64.66]
step
label "Kill_Gnarled_Thistleshrubs"
kill 8 Gnarled Thistleshrub##5490 |q 3362/1 |goto 29.97,66.48
You can find more around: |notinsticky
[28.18,64.79]
[30.54,64.66]
step
label "Kill_Thistleshrub_Rootshapers"
kill 8 Thistleshrub Rootshaper##5485 |q 3362/2 |goto 29.97,66.48
You can find more around: |notinsticky
[28.18,64.79]
[30.54,64.66]
step
talk Tooga
|tip He looks like a turtle that walks around this area.
|tip This is an escort quest.
|tip If you can't find him, someone may be escorting him.
|tip Just keep grinding enemies around this area until you find him.
|tip If you reach level 50, and still haven't found him, skip the quest.
accept Tooga's Quest##1560 |goto 29.48,60.53 |noautoaccept
Also check around: |notinsticky
[28.5,63.1]
[29.97,66.48]
[30.54,64.66]
[31.79,74.15]
[29.58,74.73]
step
Lead Tooga to Torta |q 1560/1 |goto 66.35,25.82 |notravel
|tip He will follow you.
|tip Protect Tooga as you walk.
step
talk Torta##6015
turnin Tooga's Quest##1560 |goto 66.48,25.73
step
Enter the building |goto 66.99,23.87 < 7 |walk
talk Yorba Screwspigot##9706
|tip Inside the building.
accept Yuka Screwspigot##4324 |goto 67.03,24.01
step
talk Yeh'kinya##8579
turnin Screecher Spirits##3520 |goto 66.99,22.36
step
talk Marin Noggenfogger##7564
turnin The Thirsty Goblin##2605 |goto 51.81,28.66
accept In Good Taste##2606 |goto 51.81,28.66
step
talk Sprinkle##7583
turnin In Good Taste##2606 |goto 51.06,26.87
step
Enter the building |goto 50.98,27.00 < 7 |walk
talk Alchemist Pestlezugg##5594
|tip Inside the building.
turnin Noxious Lair Investigation##82 |goto 50.89,26.96
step
talk Senior Surveyor Fizzledowser##7724
accept The Scrimshank Redemption##10 |goto 50.21,27.48
step
talk Tran'rek##7876
turnin Thistleshrub Valley##3362 |goto 51.57,26.76
step
talk Andi Lynn##11758
turnin The Dunemaul Compound##5863 |goto 52.82,27.40
step
Enter the building |goto 52.38,27.91 < 7 |walk
talk Innkeeper Fizzgrimble##7733
|tip Inside the building.
home Gadgetzan |goto 52.51,27.92
step
talk Marvon Rivetseeker##7771
turnin Gahz'ridian##3161 |goto 52.71,45.93
step
Follow the path down |goto 55.87,70.27 < 15 |only if walking
Enter the cave |goto 55.78,68.91 < 7 |c |q 10
step
Follow the path down |goto 55.93,68.37 < 7 |walk
Continue following the path down |goto 56.17,68.34 < 7 |walk
Follow the path |goto 56.55,68.72 < 7 |walk
Follow the path up |goto 57.19,70.16 < 7 |walk
Follow the path down |goto 57.61,70.67 < 7 |walk
Follow the path |goto 57.38,71.30 < 7 |walk
click Scrimshank's Surveying Gear
|tip Inside the cave.
collect Scrimshank's Surveying Gear##8593 |q 10/1 |goto 55.97,71.18
step
Kill enemies around this area
Reach Level 50 |ding 50 |goto 55.87,67.08
step
talk Senior Surveyor Fizzledowser##7724
turnin The Scrimshank Redemption##10 |goto 50.21,27.48
accept Insect Part Analysis##110 |goto 50.21,27.48
step
talk Alchemist Pestlezugg##5594
|tip Inside the building.
turnin Insect Part Analysis##110 |goto 50.89,26.96
accept Insect Part Analysis##113 |goto 50.89,26.96
step
talk Senior Surveyor Fizzledowser##7724
turnin Insect Part Analysis##113 |goto 50.21,27.48
accept Rise of the Silithid##162 |goto 50.21,27.48
step
Enter the building |goto 52.21,28.57 < 7 |walk
talk Gimblethorn##7799
|tip Inside the building.
|tip Put these items in the bank.
bank Insect Analysis Report##8594 |goto 52.30,28.91 |q 162
step
click Marvon's Chest
collect Stone Circle##10556 |q 3444/1 |goto The Barrens 62.50,38.54
step
talk Liv Rizzlefix##8496
|tip Inside the building.
accept Volcanic Activity##4502 |goto 62.45,38.74
step
talk Fuzruckle##3496
|tip Put these items in the bank.
bank Stone Circle##10556 |goto 62.64,37.44 |q 3444
step
Enter the building |goto Stranglethorn Vale 27.64,77.09 < 5 |walk
talk "Sea Wolf" MacKinley##2501
|tip Inside the building.
turnin Deliver to MacKinley##2874 |goto Stranglethorn Vale 27.78,77.07
step
Enter the building |goto 27.08,77.62 < 5 |walk
talk Whiskey Slim##2491
|tip Inside the building.
turnin Whiskey Slim's Lost Grog##580 |goto 27.13,77.45
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Searing Gorge (50-51)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Searing Gorge",
condition_suggested=function() return level >= 50 and level <= 51 and not completedq(2944) end,
next="Leveling Guides\\Classic (12-58)\\Blasted Lands (51-52)",
},[[
step
Enter the building |goto Stormwind City 54.09,59.01 < 7 |walk
talk Auctioneer Jaxon##15659
|tip Inside the building.
|tip Buy these items from the Auction House.
|tip These are needed for a quest in Burning Steppes very soon.
collect 15 Silk Cloth##4306 |goto Stormwind City 53.61,59.77 |q 4449 |future
step
Follow the road |goto Redridge Mountains 34.01,45.49 < 30 |only if walking
Follow the path |goto Redridge Mountains 45.17,19.25 < 30 |only if walking
Enter Burning Steppes |goto Burning Steppes 78.30,77.69 < 20 |only if walking
Follow the path |goto Burning Steppes 78.88,63.45 < 30 |only if walking
Follow the path up |goto Burning Steppes 82.85,63.33 < 10 |only if walking
talk Borgus Stoutarm##2299
fpath Morgan's Vigil |goto Burning Steppes 84.33,68.33
step
Follow the path |goto Loch Modan 40.44,54.48 < 30 |only if walking
Continue following the path |goto Loch Modan 46.94,78.05 < 30 |only if walking
Follow the path |goto Badlands 52.24,17.09 < 30 |only if walking
Continue following the path |goto Badlands 44.61,40.18 < 30 |only if walking
Follow the path up |goto Badlands 4.76,61.31 < 30 |only if walking
Continue following the path |goto Searing Gorge 68.22,53.86 < 30 |only if walking
Follow the path up |goto Searing Gorge 62.77,64.32 < 30 |only if walking
click Wooden Outhouse
accept Caught!##4449 |goto Searing Gorge 65.54,62.24
stickystart "Kill_Dark_Iron_Geologists"
step
talk Dorius Stonetender##8284
|tip This is an escort quest.
|tip If he's not here, someone may be escorting him.
|tip Wait until he respawns.
accept Suntara Stones##3367 |goto 63.92,60.98 |noautoaccept
step
Watch the dialoguue
|tip Follow Dorius Stonetender and protect him as he walks.
|tip You will be attacked by groups of enemies along the way, so be ready.
|tip He eventually walks to this location.
Escort Dorius |q 3367/1 |goto 74.42,19.41
step
click Singed Letter
turnin Suntara Stones##3367 |goto 74.45,19.29
accept Suntara Stones##3368 |goto 74.45,19.29
step
label "Kill_Dark_Iron_Geologists"
Follow the path |goto 70.05,42.36 < 20 |only if walking
kill 8 Dark Iron Geologist##5839 |q 4449/1 |goto 63.13,60.28
|tip They share spawn points with the Dark Iron Watchmen, so kill those too.
step
Follow the path up |goto 62.77,64.32 < 30 |only if walking
click Wooden Outhouse
turnin Caught!##4449 |goto 65.54,62.24
step
Follow the path |goto 67.99,50.25 < 30 |only if walking
Continue following the path |goto 66.79,34.56 < 30 |only if walking
talk Kalaran Windblade##8479
accept Divine Retribution##3441 |goto 39.05,38.99
step
talk Kalaran Windblade##8479
Ask him _"Tell me what drives this vengeance?"_
Listen to Kalaran's Story |q 3441/1 |goto 39.05,38.99
step
talk Kalaran Windblade##8479
turnin Divine Retribution##3441 |goto 39.05,38.99
accept The Flawless Flame##3442 |goto 39.05,38.99
step
Follow the path up |goto 31.52,33.54 < 10 |only if walking
Follow the path |goto 35.51,25.96 < 20 |only if walking
click Wanted/Missing/Lost & Found
accept WANTED: Overseer Maltorius##7701 |goto 37.63,26.53
|tip You will need a group to complete this quest later.
|tip If you can, try to get some friends available later when you need them, to get the quest done faster.
accept STOLEN: Smithing Tuyere and Lookout's Spyglass##7728 |goto 37.63,26.53
accept JOB OPPORTUNITY: Culling the Competition##7729 |goto 37.63,26.53
step
talk Hansel Heavyhands##14627
accept Curse These Fat Fingers##7723 |goto 38.57,27.80
accept Fiery Menace!##7724 |goto 38.57,27.80
accept Incendosaurs? Whateverosaur is More Like It##7727 |goto 38.57,27.80
step
talk Master Smith Burninate##14624
accept What the Flux?##7722 |goto 38.80,28.49
step
talk Lanie Reed##2941
fpath Thorium Point |goto 37.94,30.86
step
talk Curator Thorius##8256
|tip He walks around this area inside the building.
turnin Suntara Stones##3368 |goto Ironforge 72.01,15.53
accept Dwarven Justice##3371 |goto Ironforge 72.01,15.53
stickystart "Collect_Smithing_Tuyere"
stickystart "Collect_Grimesilt_Outhouse_Key"
stickystart "Collect_Golem_Oil"
stickystart "Collect_Hearts_Of_Flame"
stickystart "Kill_Greater_Lava_Spiders"
stickystart "Kill_Heavy_War_Golems"
stickystart "Kill_Dark_Iron_Taskmasters"
stickystart "Kill_Dark_Iron_Slavers"
step
Follow the path |goto Searing Gorge 33.46,49.81 < 30 |only if walking
kill Dark Iron Lookout##8566+
|tip They are around the watch towers on the cliff surrounding the huge pit.
collect Lookout's Spyglass##18960 |q 7728/2 |goto Searing Gorge 33.03,53.44
You can find more around: |notinsticky
[35.40,59.82]
[43.47,63.52]
[52.47,57.97]
step
label "Collect_Smithing_Tuyere"
kill Dark Iron Steamsmith##5840+
|tip They have a roughly 5 minute respawn time.
|tip Work on the other quests around this area while waiting for them to respawn.
collect Smithing Tuyere##18959 |q 7728/1 |goto 39.13,49.64
You can find more around [42.86,51.59]
step
label "Collect_Grimesilt_Outhouse_Key"
Kill Dark Iron enemies around this area
collect Grimesilt Outhouse Key##11818 |goto 39.13,49.64 |q 4451 |future
You can find more around: |notinsticky
[42.59,50.65]
[43.93,40.43]
step
use the Grimesilt Outhouse Key##11818
accept The Key to Freedom##4451
step
label "Collect_Golem_Oil"
Kill enemies around this area
|tip Only Tempered War Golems, Heavy War Golems, and Magma Elementals will drop the quest item.
collect 4 Golem Oil##10511 |q 3442/2 |goto 48.59,38.32
You can find more around: |notinsticky
[43.27,39.20]
[36.56,40.58]
[32.26,46.19]
[25.43,53.98]
[31.52,72.23]
step
label "Collect_Hearts_Of_Flame"
Kill Elemental enemies around this area
|tip They can be fire or rock elementals.
collect 4 Heart of Flame##10509 |q 3442/1 |goto 48.59,38.32
You can find more around: |notinsticky
[43.27,39.20]
[36.56,40.58]
[32.26,46.19]
[25.43,53.98]
[31.52,72.23]
step
talk Kalaran Windblade##8479
turnin The Flawless Flame##3442 |goto 39.05,38.99
accept Forging the Shaft##3443 |goto 39.05,38.99
stickystart "Collect_Thorium_Plated_Daggers"
step
label "Kill_Greater_Lava_Spiders"
kill 20 Greater Lava Spider##5858 |q 7724/1 |goto 28.78,44.44
You can find more around: |notinsticky
[29.23,55.00]
[29.51,72.50]
step
label "Kill_Heavy_War_Golems"
kill 20 Heavy War Golem##5854 |q 7723/1	|goto 32.42,49.43
You can find more around: |notinsticky
[37.02,42.98]
[47.99,38.64]
step
Jump down here |goto 49.32,43.74 < 15 |only if walking
Enter the cave |goto 49.58,45.49 < 10 |c |q 7701
step
Cross the bridge |goto 47.78,42.60 < 15 |walk
Follow the path |goto 42.02,35.57 < 15 |walk
kill Overseer Maltorius##14621
|tip Inside the cave.
collect Head of Overseer Maltorius##18946 |q 7701/1 |goto 40.77,35.90
step
click Secret Plans: Fiery Flux
|tip Inside the cave.
collect Secret Plans: Fiery Flux##18922 |q 7722/1 |goto 40.44,35.74
step
Follow the path down |goto 42.44,30.40 < 15 |walk
talk Dying Archaeologist##8417
|tip Inside the cave.
turnin Dwarven Justice##3371 |goto 41.14,25.57
step
Run up the ramp |goto 44.25,24.20 < 15 |c |q 3443
step
label "Collect_Thorium_Plated_Daggers"
Kill Dark Iron enemies around this area
|tip Inside the cave, all throughout. |notinsticky
|tip You can also find some outside, near Thorium Point. |notinsticky
collect 8 Thorium Plated Dagger##10551 |q 3443/1 |goto 43.38,34.94
step
label "Kill_Dark_Iron_Taskmasters"
kill 15 Dark Iron Taskmaster##5846 |q 7729/1 |goto 43.38,34.94
|tip Inside the cave, all throughout. |notinsticky
|tip You can also find some outside, near Thorium Point. |notinsticky
step
label "Kill_Dark_Iron_Slavers"
kill 15 Dark Iron Slaver##5844 |q 7729/2 |goto 43.38,34.94
|tip Inside the cave, all throughout. |notinsticky
|tip You can also find some outside, near Thorium Point. |notinsticky
step
Cross the bridge |goto 44.44,37.30 < 15 |walk
Jump down here |goto 47.73,41.92 < 10 |walk
kill 20 Incendosaur##9318 |q 7727/1 |goto 51.73,37.16
|tip Inside the cave.
You can find more around: |notinsticky
[50.37,24.75]
[45.03,21.73]
step
Follow the path |goto 50.59,38.45 < 15 |walk
Continue following the path |goto 47.21,42.94 < 15 |walk
Leave the cave |goto 47.53,46.72 < 10 |walk
Jump down carefully here |goto 48.98,46.87 < 10 |only if walking
Follow the path up |goto 58.08,41.10 < 10 |only if walking
talk Kalaran Windblade##8479
turnin Forging the Shaft##3443 |goto 39.06,38.99
accept The Flame's Casing##3452 |goto 39.06,38.99
step
Follow the path up |goto 31.52,33.46 < 10 |only if walking
Follow the path |goto 35.30,25.83 < 20 |only if walking
talk Lookout Captain Lolo Longstriker##14634
turnin WANTED: Overseer Maltorius##7701 |goto 37.74,26.57
step
talk Hansel Heavyhands##14627
turnin Curse These Fat Fingers##7723 |goto 38.59,27.81
turnin Fiery Menace!##7724 |goto 38.59,27.81
turnin Incendosaurs? Whateverosaur is More Like It##7727 |goto 38.59,27.81
step
talk Taskmaster Scrange##14626
turnin STOLEN: Smithing Tuyere and Lookout's Spyglass##7728 |goto 38.98,27.51
turnin JOB OPPORTUNITY: Culling the Competition##7729 |goto 38.98,27.51
step
talk Master Smith Burninate##14624
turnin What the Flux?##7722 |goto 38.80,28.50
stickystart "Collect_Symbol_Of_Ragnaros"
step
Follow the path |goto 31.32,33.57 < 30 |only if walking
Follow the path up |goto 24.17,33.48 < 15 |only if walking
Continue up the path |goto 25.15,27.51 < 15 |only if walking
talk Zamael Lunthistle##8436
|tip The enemies near him, channeling a spell around the pool of lava, won't attack you unless you attack them first.
|tip The enemies that aren't channeling a spell will still attack you.
accept Prayer to Elune##3377 |goto 29.52,26.36
step
talk Zamael Lunthistle##8436
Tell him _"I wish to hear your tale."_
Listen to Zamael's Story |q 3377/1 |goto 29.52,26.36
step
talk Zamael Lunthistle##8436
turnin Prayer to Elune##3377 |goto 29.52,26.36
accept Prayer to Elune##3378 |goto 29.52,26.36
step
Kill Twilight enemies around this area
collect Prayer to Elune##10458 |q 3378/1 |goto 25.61,25.75
You can find more around [24.62,35.13]
You can find more inside the cave at [21.89,36.36]
step
label "Collect_Symbol_Of_Ragnaros"
Kill Twilight enemies around this area
collect Symbol of Ragnaros##10552 |q 3452/1 |goto 24.62,35.13
You can find more inside the cave at [21.89,36.36]
You can find more up the path that starts at [24.23,33.12]
step
talk Kalaran Windblade##8479
turnin The Flame's Casing##3452 |goto 39.05,38.99
accept The Torch of Retribution##3453 |goto 39.05,38.99
step
Watch the dialogue
Witness the Creation of the Torch |q 3453/1 |goto 39.05,38.99
step
talk Kalaran Windblade##8479
turnin The Torch of Retribution##3453 |goto 39.05,38.99
accept The Torch of Retribution##3454 |goto 39.05,38.99
step
click Torch of Retribution
turnin The Torch of Retribution##3454 |goto 39.06,39.06
step
talk Kalaran Windblade##8479
accept Squire Maltrake##3462 |goto 39.05,39.00
step
talk Squire Maltrake##8509
turnin Squire Maltrake##3462 |goto 39.16,38.99
accept Set Them Ablaze!##3463 |goto 39.16,38.99
step
Follow the path |goto 33.70,49.71 < 30 |only if walking
Run up the ramp |goto 33.50,53.64 < 7 |only if walking
click Sentry Brazier
|tip On the metal platform of the tower.
|tip You have to equip the Torch of Retribution.
|tip Remember to re-equip your normal weapon after.
Set the Northern Tower Ablaze |q 3463/4 |goto 33.31,54.49
step
Run up the ramp |goto 35.92,59.85 < 7 |only if walking
click Sentry Brazier
|tip On the metal platform of the tower.
|tip You have to equip the Torch of Retribution.
|tip Remember to re-equip your normal weapon after.
Set the Western Tower Ablaze |q 3463/1 |goto 35.67,60.68
step
Follow the path |goto 35.00,72.13 < 30 |only if walking
Continue following the path |goto 43.33,72.09 < 30 |only if walking
Run up the ramp |goto 44.10,61.85 < 7 |only if walking
click Sentry Brazier
|tip On the metal platform of the tower.
|tip You have to equip the Torch of Retribution.
|tip Remember to re-equip your normal weapon after.
Set the Southern Tower Ablaze |q 3463/2 |goto 44.03,60.91
step
Cross the hanging bridge |goto 52.48,57.95 < 10 |only if walking
Run up the ramp |goto 50.19,55.61 < 7 |only if walking
click Sentry Brazier
|tip On the metal platform of the tower.
|tip You have to equip the Torch of Retribution.
|tip Remember to re-equip your normal weapon after.
Set the Eastern Tower Ablaze |q 3463/3 |goto 50.07,54.74
step
Cross the hanging bridge |goto 51.42,55.64 < 10 |only if walking
Follow the path up |goto 63.37,64.65 < 30 |only if walking
click Wooden Outhouse
turnin The Key to Freedom##4451 |goto 65.53,62.23
step
Follow the path |goto 67.99,50.25 < 30 |only if walking
Continue following the path |goto 66.79,34.56 < 30 |only if walking
talk Squire Maltrake##8509
turnin Set Them Ablaze!##3463 |goto 39.17,39.00
step
_Destroy This Item:_
|tip It is no longer needed.
trash Torch of Retribution##10515
step
Watch the dialogue
click Hoard of the Black Dragonflight
accept Trinkets...##3481 |goto 38.86,38.99
step
click Hoard of the Black Dragonflight
turnin Trinkets...##3481 |goto 38.86,38.99
step
use the Hoard of the Black Dragonflight##10569
collect Black Dragonflight Molt##10575 |q 4022 |future
|tip Keep this, you'll need it for a future quest.
step
Follow the path up |goto 31.61,33.40 < 15 |only if walking
Enter the building |goto Ironforge 34.06,62.44 < 7 |walk
talk Bailey Stonemantle##2461
|tip Inside the building.
|tip Put these items in the bank.
bank Black Dragonflight Molt##10575 |goto Ironforge 35.56,60.52 |q 4022 |future
bank Prayer to Elune##10458 |goto Ironforge 35.56,60.52 |q 4022 |future
step
Enter the building |goto 20.65,53.22 < 7 |walk
talk Innkeeper Firebrew##5111
|tip Inside the building.
home Ironforge |goto 18.16,51.46
step
talk Innkeeper Firebrew##5111
|tip Inside the building.
accept Assisting Arch Druid Staghelm##3790 |goto 18.16,51.46
step
talk Laris Geardawdle##9616
|tip Inside the building.
accept A Little Slime Goes a Long Way##4512 |goto 75.77,23.37
step
talk Historian Karnik##2916
|tip Inside the building.
accept Passing the Burden##3448 |goto 77.53,11.83
step
Run up the stairs |goto 31.89,8.28 < 7 |only if walking
Enter the building |goto 32.02,5.49 < 5 |walk
talk Tymor##8507
|tip Inside the building.
turnin Passing the Burden##3448 |goto 30.96,4.82
accept Arcane Runes##3449 |goto 30.96,4.82
accept An Easy Pickup##3450 |goto 30.96,4.82
step
Enter the building |goto 66.40,82.48 < 7 |walk
talk Xiggs Fuselighter##8517
|tip Inside the building.
turnin An Easy Pickup##3450 |goto 70.88,94.55
accept Signal for Pickup##3451 |goto 70.88,94.55
step
talk Xiggs Fuselighter##8517
|tip Inside the building.
turnin Signal for Pickup##3451 |goto 70.88,94.55
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Blasted Lands (51-52)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Blasted Lands",
condition_suggested=function() return level >= 51 and level <= 52 and not completedq(2585) end,
next="Leveling Guides\\Classic (12-58)\\Azshara (52-52)",
},[[
step
Enter the building |goto Blasted Lands 66.40,18.98 < 7 |walk
talk Ambassador Ardalan##7826
|tip Upstairs inside the building, at the top.
accept Petty Squabbles##2783 |goto Blasted Lands 67.56,19.29
step
Leave the building |goto 66.38,19.00 < 7 |walk
Follow the path |goto 62.64,19.85 < 20 |only if walking
Follow the road |goto 52.30,10.72 < 30 |only if walking
talk Fallen Hero of the Horde##7572
turnin Petty Squabbles##2783 |goto Swamp of Sorrows 34.29,66.13
accept A Tale of Sorrow##2801 |goto Swamp of Sorrows 34.29,66.13
step
talk Fallen Hero of the Horde##7572
Tell him _"Please continue, Hero..."_
Listen to a Tale of Sorrow |q 2801/1 |goto 34.29,66.13
step
talk Fallen Hero of the Horde##7572
turnin A Tale of Sorrow##2801 |goto 34.29,66.13
step
talk Bloodmage Drazial##7505
accept Snickerfang Jowls##2581 |goto Blasted Lands 50.55,14.21
accept A Boar's Vitality##2583 |goto Blasted Lands 50.55,14.21
accept The Decisive Striker##2585 |goto Blasted Lands 50.55,14.21
step
talk Bloodmage Lynnore##7506
accept The Basilisk's Bite##2601 |goto 50.64,14.30
accept Vulture's Vigor##2603 |goto 50.64,14.30
stickystart "Collect_Blasted_Boar_Lungs"
stickystart "Collect_Scorpok_Pincers"
stickystart "Collect_Basilisk_Brains"
stickystart "Collect_Vulture_Gizzards"
step
Kill Snickerfang enemies around this area
|tip They look like hyenas.
|tip They share spawn locations with other enemies.
|tip If you can't find any at these locations, kill other enemies to get them to spawn.
collect 5 Snickerfang Jowl##8391 |goto 47.21,21.18 |q 2581
You can find more around: |notinsticky
[44.82,24.87]
[45.44,35.35]
[50.96,38.09]
step
label "Collect_Blasted_Boar_Lungs"
Kill Boar enemies around this area
|tip They share spawn locations with other enemies. |notinsticky
|tip If you can't find any at these locations, kill other enemies to get them to spawn. |notinsticky
collect 6 Blasted Boar Lung##8392 |goto 57.51,28.74 |q 2583
You can find more around: |notinsticky
[61.82,28.49]
[59.11,35.83]
[59.52,43.48]
step
label "Collect_Scorpok_Pincers"
kill Scorpok Stinger##5988+
|tip They look like scorpions.
|tip They share spawn locations with other enemies. |notinsticky
|tip If you can't find any at these locations, kill other enemies to get them to spawn. |notinsticky
collect 6 Scorpok Pincer##8393 |goto 49.10,18.12 |q 2585
You can find more around: |notinsticky
[45.29,21.33]
[44.61,29.11]
[52.04,30.03]
[56.81,21.17]
step
label "Collect_Basilisk_Brains"
Kill Redstone enemies around this area
|tip They look like basilisks.
|tip They share spawn locations with other enemies. |notinsticky
|tip If you can't find any at these locations, kill other enemies to get them to spawn. |notinsticky
collect 11 Basilisk Brain##8394 |goto 55.08,28.94 |q 2601
You can find more around: |notinsticky
[61.75,27.98]
[46.52,50.46]
[59.71,43.76]
step
label "Collect_Vulture_Gizzards"
kill Black Slayer##5982+
|tip Bonepickers will also drop the quest item.
|tip They look like vultures.
collect 14 Vulture Gizzard##8396 |goto 48.50,19.78 |q 2603
You can find more around: |notinsticky
[45.45,35.25]
[53.42,37.61]
[55.04,43.80]
[59.33,42.05]
[56.46,36.51]
[58.82,27.97]
[62.28,26.43]
step
talk Kum'isha the Collector##7363
|tip He walks around this area.
accept Everything Counts In Large Amounts##3501 |goto 51.80,35.64
|only if itemcount(10593) > 0
step
talk Kum'isha the Collector##7363
|tip He walks around this area.
turnin Everything Counts In Large Amounts##3501 |goto 51.80,35.64
|only if havequest(3501) or completedq(3501)
step
talk Bloodmage Lynnore##7506
turnin The Basilisk's Bite##2601 |goto 50.64,14.30
turnin Vulture's Vigor##2603 |goto 50.64,14.30
step
talk Bloodmage Drazial##7505
turnin Snickerfang Jowls##2581 |goto 50.55,14.21
turnin A Boar's Vitality##2583 |goto 50.55,14.21
turnin The Decisive Striker##2585 |goto 50.55,14.21
step
_Destroy or Sell These Items:_
|tip They are no longer needed.
trash Snickerfang Jowl##8391
trash Blasted Boar Lung##8392
trash Scorpok Pincer##8393
trash Basilisk Brain##8394
trash Vulture Gizzard##8396
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Azshara (52-52)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Azshara",
condition_suggested=function() return level == 52 and not completedq(5536) end,
next="Leveling Guides\\Classic (12-58)\\Felwood (52-53)",
},[[
step
Run up the ramp |goto Ashenvale 36.78,49.76 < 7 |only if walking
talk Innkeeper Kimlya##6738
|tip Inside the building.
home Astranaar |goto Ashenvale 36.99,49.22
step
talk Loh'atu##11548
accept Spiritual Unrest##5535 |goto Azshara 11.37,78.16
accept A Land Filled with Hatred##5536 |goto Azshara 11.37,78.16
stickystart "Kill_Highborne_Lichlings"
step
Follow the path up |goto 13.45,73.32 < 20 |only if walking
kill 6 Highborne Apparition##6116 |q 5535/1 |goto 14.66,72.47
You can find more around [17.21,68.82]
step
label "Kill_Highborne_Lichlings"
kill 6 Highborne Lichling##6117 |q 5535/2 |goto 17.21,68.82
You can find more around [14.66,72.47]
stickystart "Kill_Haldarr_Trickster"
stickystart "Kill_Haldarr_Felsworns"
step
Follow the path up |goto 19.36,62.52 < 20 |only if walking
kill 6 Haldarr Satyr##6125 |q 5536/1 |goto 19.82,61.38
step
label "Kill_Haldarr_Trickster"
kill 2 Haldarr Trickster##6126 |q 5536/2 |goto 19.82,61.38
step
label "Kill_Haldarr_Felsworns"
kill 2 Haldarr Felsworn##6127 |q 5536/3 |goto 19.82,61.38
step
Follow the road |goto 16.24,75.25 < 30 |only if walking
talk Loh'atu##11548
turnin Spiritual Unrest##5535 |goto 11.37,78.17
turnin A Land Filled with Hatred##5536 |goto 11.37,78.17
step
Follow the road |goto 16.05,75.48 < 30 |only if walking
Continue following the road |goto 31.23,57.55 < 30 |only if walking
Follow the path |goto 33.81,54.50 < 20 |only if walking
click Rune of Beth'Amara
collect Rubbing: Rune of Beth'Amara##10563 |q 3449/1 |goto 36.87,53.19
step
click Rune of Markri
collect Rubbing: Rune of Markri##10565 |q 3449/3 |goto 39.30,55.48
step
Follow the path |goto 39.07,60.03 < 30 |only if walking
click Rune of Sael'hai
collect Rubbing: Rune of Sael'hai##10566 |q 3449/4 |goto 42.34,64.13
step
Follow the path |goto 39.07,60.03 < 30 |only if walking
click Rune of Jin'yael
collect Rubbing: Rune of Jin'yael##10564 |q 3449/2 |goto 39.56,50.31
step
Follow the path down |goto 40.40,47.79 < 20 |only if walking
Follow the path |goto 42.56,48.20 < 30 |only if walking
Follow the path up |goto 46.89,41.50 < 15 |only if walking
Follow the path |goto 44.95,36.18 < 30 |only if walking
Follow the path up |goto 53.02,19.64 < 10 |only if walking
talk Kim'jael##8420
accept Kim'jael Indeed!##3601 |goto 53.45,21.82
step
Follow the path up |goto 55.26,28.01 < 15 |only if walking
click Kim'jael's Equipment
|tip They look like wooden boxes on the ground around this area.
|tip Some of them may be empty.
|tip They respawn, and can contain new items, so check them repeatedly.
collect Kim'Jael's Compass##10717 |q 3601/1 |goto 56.09,30.20
collect Kim'Jael's Scope##10715 |q 3601/2 |goto 56.09,30.20
collect Kim'Jael's Stuffed Chicken##10722 |q 3601/3 |goto 56.09,30.20
collect Kim'Jael's Wizzlegoober##10718 |q 3601/4 |goto 56.09,30.20
You can find more around: |notinsticky
[56.29,28.76]
[57.03,28.30]
[58.55,29.05]
[58.76,28.71]
[59.61,30.93]
step
Follow the path up |goto 54.29,21.21 < 10 |only if walking
talk Kim'jael##8420
turnin Kim'jael Indeed!##3601 |goto 53.45,21.82
accept Kim'jael's "Missing" Equipment##5534 |goto 53.45,21.82
step
Follow the path |goto 46.11,31.60 < 40 |only if walking
Follow the path down |goto 45.27,37.09 < 20 |only if walking
Kill Spitelash enemies around this area
collect Some Rune##13815 |q 5534/1 |goto 47.65,43.93
You can find more around: |notinsticky
[46.76,53.80]
[48.51,64.11]
step
Follow the path up |goto 46.89,41.50 < 15 |only if walking
Follow the path |goto 44.95,36.18 < 30 |only if walking
Follow the path up |goto 53.02,19.64 < 10 |only if walking
talk Kim'jael##8420
turnin Kim'jael's "Missing" Equipment##5534 |goto 53.45,21.82
step
Follow the path |goto 46.11,31.60 < 40 |only if walking
Follow the path down |goto 45.27,37.09 < 20 |only if walking
Follow the path |goto 48.76,65.18 < 50 |only if walking
Follow the water |goto 66.79,73.70 < 30 |only if walking
Continue following the water |goto 76.57,82.00 < 30 |only if walking
use the Standard Issue Flare Gun##10444
|tip Use it on the wooden platform.
talk Pilot Xiggs Fuselighter##8392
|tip He appears at this location.
|tip It takes a little while for him to show up.
turnin Arcane Runes##3449 |goto 77.81,91.41
accept Return to Tymor##3461 |goto 77.81,91.41
step
_Destroy This Item:_
|tip It is no longer needed.
trash Standard Issue Flare Gun##10444
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Felwood (52-53)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Felwood",
condition_suggested=function() return level >= 52 and level <= 53 and not completedq(8461) end,
next="Leveling Guides\\Classic (12-58)\\Un'Goro Crater (53-55)",
},[[
step
Follow the road |goto Ashenvale 38.30,57.67 < 30 |only if walking
Continue following the road |goto Ashenvale 59.86,62.19 < 30 |only if walking
Continue following the road |goto Ashenvale 55.82,31.72 < 30 |only if walking
talk Arathandris Silversky##9528
|tip She walks around this area.
accept Cleansing Felwood##4101 |goto Felwood 54.15,86.83
step
talk Grazle##11554
accept Timbermaw Ally##8460 |goto 50.93,85.01
stickystart "Kill_Deadwood_Pathfinders"
stickystart "Kill_Deadwood_Gardeners"
step
Follow the path |goto 49.02,89.29 < 30 |only if walking
kill 6 Deadwood Warrior##7153 |q 8460/1 |goto 48.32,92.99
You can find more around: |notinsticky
[46.51,88.13]
[48.77,89.62]
step
label "Kill_Deadwood_Pathfinders"
kill 6 Deadwood Pathfinder##7155 |q 8460/2 |goto 48.32,92.99
You can find more around: |notinsticky
[46.51,88.13]
[48.77,89.62]
step
label "Kill_Deadwood_Gardeners"
kill 6 Deadwood Gardener##7154 |q 8460/3 |goto 48.32,92.99
You can find more around: |notinsticky
[46.51,88.13]
[48.77,89.62]
step
Follow the path |goto 49.56,88.70 < 30 |only if walking
talk Grazle##11554
turnin Timbermaw Ally##8460 |goto 50.93,85.02
accept Speak to Nafien##8462 |goto 50.93,85.02
step
talk Greta Mosshoof##10922
|tip She walks around this area.
accept Forces of Jaedenar##5155 |goto 51.21,82.11
step
Enter the building |goto 51.27,81.69 < 7 |walk
talk Eridan Bluewind##9116
|tip Inside the building.
accept The Corruption of the Jadefire##4421 |goto 51.35,81.51
step
talk Taronn Redfeather##10921
|tip Inside the building.
accept Verifying the Corruption##5156 |goto 50.89,81.62
step
talk Gorrim##22931
fpath Emerald Sanctuary |goto 51.53,82.22
step
use the Package of Empty Ooze Containers##11912
collect 6 Empty Cursed Ooze Jar##11914 |q 4512
collect 6 Empty Tainted Ooze Jar##11948 |q 4512
step
Follow the road |goto 47.46,83.68 < 30 |only if walking
Follow the path |goto 42.09,72.25 < 20 |only if walking
kill Cursed Ooze##7086+
use the Empty Cursed Ooze Jar##11914+
|tip Use them on their corpses.
collect 6 Filled Cursed Ooze Jar##11947 |q 4512/1 |goto 41.22,71.29
You can find more around: |notinsticky
[38.97,72.26]
[40.06,67.15]
[41.93,67.38]
stickystart "Kill_Jadefire_Felsworns"
stickystart "Kill_Jadefire_Shadowstalkers"
stickystart "Kill_Jadefire_Rogues"
step
Follow the path up |goto 39.63,69.93 < 30 |only if walking
Continue following the path |goto 36.85,66.92 < 20 |only if walking
kill Xavathras##9454 |q 4421/4 |goto 32.24,67.10
step
label "Kill_Jadefire_Felsworns"
kill 11 Jadefire Felsworn##7109 |q 4421/1 |goto 32.90,66.62
You can find more around: |notinsticky
[37.36,67.64]
step
label "Kill_Jadefire_Shadowstalkers"
kill 9 Jadefire Shadowstalker##7110 |q 4421/2 |goto 32.90,66.62
|tip They are stealthed around this area.
You can find more around: |notinsticky
[37.36,67.64]
step
label "Kill_Jadefire_Rogues"
kill 9 Jadefire Rogue##7106 |q 4421/3 |goto 32.90,66.62
You can find more around: |notinsticky
[37.36,67.64]
step
Follow the road |goto 42.64,65.46 < 30 |only if walking
kill Tainted Ooze##7092+
use the Empty Tainted Ooze Jar##11948+
|tip Use them on their corpses.
collect 6 Filled Tainted Ooze Jar##11949 |q 4512/2 |goto 40.76,59.25
You can find more around [40.28,55.59]
stickystart "Kill_Jaedenar_Guardians"
stickystart "Kill_Jaedenar_Adepts"
stickystart "Kill_Jaedenar_Cultists"
step
kill 4 Jaedenar Hound##7125 |q 5155/1 |goto 38.87,58.49
|tip You can find more in the caves nearby in this area.
You can find more around: |notinsticky
[37.87,60.72]
[35.12,60.26]
step
label "Kill_Jaedenar_Guardians"
kill 4 Jaedenar Guardian##7113 |q 5155/2 |goto 38.87,58.49
|tip You can find more in the caves nearby in this area. |notinsticky
You can find more around: |notinsticky
[37.87,60.72]
[35.12,60.26]
step
label "Kill_Jaedenar_Adepts"
kill 6 Jaedenar Adept##7115 |q 5155/3 |goto 38.87,58.49
|tip You can find more in the caves nearby in this area. |notinsticky
You can find more around: |notinsticky
[37.87,60.72]
[35.12,60.26]
step
label "Kill_Jaedenar_Cultists"
kill 6 Jaedenar Cultist##7112 |q 5155/4 |goto 38.87,58.49
|tip You can find more in the caves nearby in this area. |notinsticky
You can find more around: |notinsticky
[37.87,60.72]
[35.12,60.26]
stickystart "Kill_Entropic_Beasts"
stickystart "Kill_Entropic_Horrors"
step
Follow the path |goto 39.23,58.26 < 30 |only if walking
Follow the road |goto 41.39,57.42 < 30 |only if walking
Follow the path |goto 39.96,45.01 < 30 |only if walking
Explore the Craters in Shatter Scar Vale |q 5156/3 |goto 41.54,42.98
step
label "Kill_Entropic_Beasts"
kill 2 Entropic Beast##9878 |q 5156/1 |goto 41.36,41.19
You can find more around [43.63,40.55]
step
label "Kill_Entropic_Horrors"
kill 2 Entropic Horror##9879 |q 5156/2 |goto 41.36,41.19
You can find more around [43.63,40.55]
step
Follow the road |goto 38.93,38.02 < 50 |only if walking
Follow the path |goto 49.95,14.87 < 30 |only if walking
Kill Warpwood enemies around this area
|tip Inside and outside the cave.
collect 15 Blood Amber##11503 |q 4101/1 |goto 55.78,16.85
step
Kill enemies around this area
|tip Inside and outside the cave.
Reach Level 53 |ding 53 |goto 55.78,16.85
step
Follow the road |goto 53.87,12.76 < 30 |only if walking
Follow the path |goto 61.80,16.20 < 50 |only if walking
Continue following the path |goto 62.98,23.00 < 30 |only if walking
talk Mishellena##12578
fpath Talonbranch Glade |goto 62.49,24.24
step
talk Greta Mosshoof##10922
|tip She walks around this area.
turnin Forces of Jaedenar##5155 |goto 51.21,82.11
accept Collection of the Corrupt Water##5157 |goto 51.21,82.11
step
Enter the building |goto 51.27,81.69 < 7 |walk
talk Eridan Bluewind##9116
|tip Inside the building.
turnin The Corruption of the Jadefire##4421 |goto 51.35,81.51
accept Further Corruption##4906 |goto 51.35,81.51
step
talk Taronn Redfeather##10921
|tip Inside the building.
turnin Verifying the Corruption##5156 |goto 50.89,81.62
step
talk Ivy Leafrunner##10924
|tip Inside the building.
accept To Winterspring!##5249 |goto 50.96,81.58
step
talk Arathandris Silversky##9528
|tip She walks around this area.
turnin Cleansing Felwood##4101 |goto 54.15,86.83
step
talk Arathandris Silversky##9528
|tip She walks around this area.
Tell her _"I need a Cenarion beacon."_
collect Cenarion Beacon##11511 |goto 54.15,86.83 |q 5882 |future
stickystart "Collect_Corrupted_Soul_Shards"
step
Follow the road |goto 50.03,83.92 < 30 |only if walking
Follow the path |goto 41.24,57.61 < 30 |only if walking
Continue following the path |goto 38.38,59.66 < 20 |only if walking
use the Empty Canteen##12922
collect Corrupt Moonwell Water##12907 |q 5157/1 |goto 35.20,59.87
step
label "Collect_Corrupted_Soul_Shards"
Kill enemies around this area
collect 6 Corrupted Soul Shard##11515 |goto 35.33,60.66 |q 5882 |future
You can find more around [38.15,60.35]
stickystart "Kill_Jadefire_Hellcallers"
stickystart "Kill_Jadefire_Betrayers"
stickystart "Kill_Jadefire_Tricksters"
step
Follow the path |goto 39.23,58.26 < 30 |only if walking
Follow the road |goto 41.39,57.42 < 30 |only if walking
Follow the path up |goto 43.08,21.37 < 15 |only if walking
Follow the path |goto 39.79,20.32 < 15 |only if walking
kill Xavaric##10648 |q 4906/4 |goto 39.07,22.35
collect Flute of Xavaric##11668 |goto 39.07,22.35 |q 939 |future
step
use the Flute of Xavaric##11668
accept Flute of Xavaric##939
step
Kill Jadefire enemies around this area
collect 5 Jadefire Felbind##11674 |q 939/1 |goto 40.73,19.72
You can find more around: |notinsticky
[42.87,15.21]
[39.10,21.69]
step
label "Kill_Jadefire_Hellcallers"
kill 8 Jadefire Hellcaller##7111 |q 4906/1 |goto 40.73,19.72
You can find more around: |notinsticky
[42.87,15.21]
[39.10,21.69]
step
label "Kill_Jadefire_Betrayers"
kill 8 Jadefire Betrayer##7108 |q 4906/2 |goto 40.73,19.72
You can find more around: |notinsticky
[42.87,15.21]
step
label "Kill_Jadefire_Tricksters"
kill 8 Jadefire Trickster##7107 |q 4906/3 |goto 40.73,19.72
You can find more around: |notinsticky
[42.87,15.21]
step
Follow the path down |goto 42.53,19.96 < 30 |only if walking
Follow the road |goto 43.99,22.97 < 30 |only if walking
Follow the path |goto 61.80,16.20 < 50 |only if walking
Continue following the path |goto 62.98,23.00 < 30 |only if walking
talk Greta Mosshoof##10922
|tip She walks around this area.
turnin Collection of the Corrupt Water##5157 |goto 51.21,82.11
accept Seeking Spiritual Aid##5158 |goto 51.21,82.11
step
Enter the building |goto 51.26,81.70 < 7 |walk
talk Eridan Bluewind##9116
|tip Inside the building.
turnin Flute of Xavaric##939 |goto 51.35,81.51
accept Felbound Ancients##4441 |goto 51.35,81.51
turnin Further Corruption##4906 |goto 51.35,81.51
step
talk Arathandris Silversky##9528
|tip She walks around this area.
accept Salve via Hunting##5882 |goto 54.15,86.83
step
_Destroy These Items:_
|tip They are no longer needed.
trash Cenarion Beacon##11511
trash Cenarion Plant Salve##11516
trash Corrupted Soul Shard##11515
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Un'Goro Crater (53-55)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Un'Goro Crater",
condition_suggested=function() return level >= 53 and level <= 55 and not completedq(3781) end,
next="Leveling Guides\\Classic (12-58)\\Burning Steppes (55-56)",
},[[
step
talk Erelas Ambersky##7916
|tip Inside the building.
accept Moontouched Wildkin##978 |goto Teldrassil/0 55.50,92.04
step
talk Garryeth##4209
|tip Collect these items from the bank
collect Insect Analysis Report##8594 |goto Darnassus 40.02,42.30 |q 162
collect Stone Circle##10556 |goto Darnassus 40.02,42.30 |q 3444
collect Prayer to Elune##10458 |goto Darnassus 40.02,42.30 |q 3378
step
Cross the bridge |goto 38.54,48.02 < 15 |only if walking
Enter the building |goto 39.04,76.77 < 7 |walk
use Eridan's Vial##11682
|tip Inside the building.
collect Vial of Blessed Water##5646 |q 4441/1 |goto 39.51,83.92
step
Run up the ramp |goto 40.48,91.67 < 7 |walk
talk Gracina Spiritmight##7740
|tip Upstairs inside the building.
turnin Rise of the Silithid##162 |goto 41.84,85.62
accept March of the Silithid##4493 |goto 41.84,85.62
step
talk Astarii Starseeker##4090
|tip Upstairs inside the building.
turnin Prayer to Elune##3378 |goto 38.33,80.96
step
Run up the ramp |goto 58.87,55.39 < 7 |only if walking
talk Auctioneer Golothas##8723
|tip Inside the building.
|tip Buy it from the Auction House.
|tip It is needed for a quest in Un'Goro Crater.
collect Mithril Casing##10561 |goto 56.25,54.04 |q 4244 |future
step
talk Alchemist Pestlezugg##5594
|tip Inside the building.
turnin March of the Silithid##4493 |goto Tanaris 50.89,26.96
accept Bungle in the Jungle##4496 |goto Tanaris 50.89,26.96
step
Follow the path |goto 51.55,29.03 < 10 |only if walking
talk Marvon Rivetseeker##7771
turnin The Stone Circle##3444 |goto 52.71,45.92
step
Avoid the Dunemaul Compound |goto 42.12,59.44 < 50 |only if walking
Follow the path down |goto 27.04,56.57 < 30 |only if walking
talk Torwa Pathfinder##9619
accept The Apes of Un'Goro##4289 |goto Un'Goro Crater 71.64,75.96
accept The Fare of Lar'korwi##4290 |goto Un'Goro Crater 71.64,75.96
stickystart "Collect_A_Mangled_Journal"
stickystart "Accept_Willidens_Journal"
stickystart "Collect_Power_Crystals"
stickystart "Collect_UnGoro_Soil"
step
click Fresh Threshadon Carcass
|tip Avoid the elite t-rex that sometimes walks near this location.
collect Piece of Threshadon Carcass##11504 |q 4290/1 |goto 68.75,56.66
step
talk Karna Remtravel##9618
accept Chasing A-Me 01##4243 |goto 46.38,13.45
stickystop "Collect_A_Mangled_Journal"
stickystop "Accept_Willidens_Journal"
stickystop "Collect_Power_Crystals"
stickystop "Collect_UnGoro_Soil"
step
Follow the path up |goto 45.72,13.15 < 10 |only if walking
talk Shizzle##9998
accept Shizzle's Flyer##4503 |goto 44.24,11.59
step
talk Muigin##9119
accept Muigin and Larion##4141 |goto 42.94,9.64
step
click Beware of Pterrordax
accept Beware of Pterrordax##4501 |goto 43.55,8.42
step
talk Spark Nilminer##9272
accept Roll the Bones##3882 |goto 43.50,7.42
step
talk Hol'anyee Marshal##9271
accept Alien Ecology##3883 |goto 43.89,7.24
step
talk Williden Marshal##9270
turnin Williden's Journal##3884 |goto 43.95,7.14 |only if havequest(3884) or completedq(3884)
accept Expedition Salvation##3881 |goto 43.95,7.14
step
talk Gryfe##10583
fpath Marshal's Refuge |goto 45.23,5.84
stickystart "Collect_Power_Crystals"
stickystart "Collect_UnGoro_Soil"
stickystart "Collect_A_Mangled_Journal"
stickystart "Accept_Willidens_Journal"
stickystart "Collect_Webbed_Pterrordax_Scales"
stickystart "Collect_Bloodpetals"
step
Follow the path down |goto 45.24,11.64 < 10 |only if walking
Follow the path |goto 50.36,18.06 < 30 |only if walking
Follow the path up |goto 54.83,13.49 < 10 |only if walking
kill 5 Pterrordax##9166 |q 4501/1 |goto 56.89,9.16 |count 5
|tip You will come back here later to kill more.
stickystop "Collect_Webbed_Pterrordax_Scales"
step
Kill Tar enemies around this area
collect 12 Super Sticky Tar##11834 |q 4504/1 |goto 59.96,30.56
You can find more around: |notinsticky
[59.75,24.49]
[63.54,23.41]
stickystop "Collect_Bloodpetals"
stickystart "Collect_UnGoro_Thunderer_Pelts"
stickystart "Collect_UnGoro_Stomper_Pelts"
step
kill Un'Goro Gorilla##6514+
|tip The gorillas share spawn points.
|tip If you can't find any more of these, kill the other types of gorillas to get them to spawn.
collect 2 Un'Goro Gorilla Pelt##11478 |q 4289/1 |goto 62.73,17.93
You can find more inside the cave at [63.95,16.44]
step
label "Collect_UnGoro_Stomper_Pelts"
kill Un'Goro Stomper##6513+
|tip The gorillas share spawn points. |notinsticky
|tip If you can't find any more of these, kill the other types of gorillas to get them to spawn. |notinsticky
collect 2 Un'Goro Stomper Pelt##11479 |q 4289/2 |goto 62.73,17.93
You can find more inside the cave at [63.95,16.44]
step
label "Collect_UnGoro_Thunderer_Pelts"
kill Un'Goro Thunderer##6516+
|tip The gorillas share spawn points. |notinsticky
|tip If you can't find any more of these, kill the other types of gorillas to get them to spawn. |notinsticky
collect 2 Un'Goro Thunderer Pelt##11480 |q 4289/3 |goto 62.73,17.93
You can find more inside the cave at [63.95,16.44]
step
Enter the cave |goto 63.88,16.44 < 10 |walk
Follow the path |goto 65.87,16.75 < 7 |walk
talk A-Me 01##9623
|tip Inside the cave.
|tip She offers an escort quest.
|tip If she's not here, someone may be escorting her.
|tip Wait until she respawns.
turnin Chasing A-Me 01##4243 |goto 67.65,16.76
accept Chasing A-Me 01##4244 |goto 67.65,16.76
step
talk A-Me 01##9623
|tip Inside the cave.
|tip This is an escort quest.
|tip If she's not here, someone may be escorting her.
|tip Wait until she respawns.
turnin Chasing A-Me 01##4244 |goto 67.65,16.76
accept Chasing A-Me 01##4245 |goto 67.65,16.76 |noautoaccept
stickystart "Collect_Bloodpetals"
step
Watch the dialogue
|tip Follow A-Me 01 and protect her as she walks.
|tip She eventually walks to this location.
Protect A-Me 01 Until You Reach Karna Remtravel |q 4245/1 |goto 46.32,13.68
step
talk Karna Remtravel##9618
turnin Chasing A-Me 01##4245 |goto 46.38,13.45
step
Kill enemies around this area
Reach Level 54 |ding 54 |goto 47.33,19.24
stickystart "Collect_Dinosaur_Bones"
stickystart "Collect_Webbed_Diemetradon_Scales"
step
click Crate of Foodstuffs
collect Crate of Foodstuffs##11113 |q 3881/1 |goto 68.51,36.54
step
talk Torwa Pathfinder##9619
turnin The Apes of Un'Goro##4289 |goto 71.64,75.97
turnin The Fare of Lar'korwi##4290 |goto 71.64,75.97
accept The Scent of Lar'korwi##4291 |goto 71.64,75.97
accept The Mighty U'cha##4301 |goto 71.64,75.97
step
kill Lar'korwi Mate##9683
|tip Stand on the pile of purple eggs to get it to appear.
collect 2 Ravasaur Pheromone Gland##11509 |q 4291/1 |goto 67.32,73.05
You can find more eggs at: |notinsticky
[62.87,80.48]
[60.92,72.23]
[66.60,66.73]
step
click A Wrecked Raft
accept It's a Secret to Everybody##3844 |goto 63.02,68.50
step
click A Small Pack
|tip Underwater.
turnin It's a Secret to Everybody##3844 |goto 63.12,69.02
accept It's a Secret to Everybody##3845 |goto 63.12,69.02
step
talk Torwa Pathfinder##9619
turnin The Scent of Lar'korwi##4291 |goto 71.63,75.97
accept The Bait for Lar'korwi##4292 |goto 71.63,75.97
step
Kill enemies around this area
Reach Level 52 |ding 52 |goto 67.32,73.05
You can find around: |notinsticky
[62.87,80.48]
[60.92,72.23]
[66.60,66.73]
stickystart "Collect_Webbed_Pterrordax_Scales"
step
Follow the path up |goto 57.94,85.67 < 20 |only if walking
kill 10 Pterrordax##9166 |q 4501/1 |goto 56.09,89.51
stickystop "Collect_Webbed_Pterrordax_Scales"
stickystart "Collect_Gorishi_Scent_Gland"
step
Enter the cave |goto 49.95,81.70 < 7 |walk
Follow the path down |goto 49.48,83.08 < 7 |walk
use the Unused Scraping Vial##11132
|tip Inside the cave.
collect Hive Wall Sample##11131 |q 3883/1 |goto 48.74,85.21
step
Follow the path up |goto 49.20,84.45 < 7 |walk
Continue up the path |goto 49.64,82.55 < 7 |walk
Leave the cave |goto 49.94,81.65 < 7 |c |q 4496
step
label "Collect_Gorishi_Scent_Gland"
Kill Gorishi enemies around this area
|tip You can find more inside the bug cave in the ground nearby.
collect Gorishi Scent Gland##11837 |q 4496/1 |goto 50.66,77.01
stickystart "Kill_Frenzied_Pterrordax"
stickystart "Collect_Webbed_Pterrordax_Scales"
step
click Research Equipment
collect Research Equipment##11112 |q 3881/2 |goto 38.47,66.11
step
talk Krakle##10302
accept Finding the Source##974 |goto 30.93,50.43
step
label "Kill_Frenzied_Pterrordax"
kill 15 Frenzied Pterrordax##9167 |q 4501/2 |goto 24.15,38.86
You can find more around: |notinsticky
[39.05,47.06]
[28.28,33.06]
[34.49,37.63]
[31.25,44.33]
step
label "Collect_Webbed_Pterrordax_Scales"
Kill Pterrordax enemies around this area
|tip They look like pterodactyls.
collect 8 Webbed Pterrordax Scale##11831 |q 4503/2 |goto 24.15,38.86
You can find more around: |notinsticky
[39.05,47.06]
[28.28,33.06]
[34.49,37.63]
[31.25,44.33]
step
label "Collect_Dinosaur_Bones"
Kill Diemetradon enemies around this area
collect 8 Dinosaur Bone##11114 |q 3882/1 |goto 59.18,53.99
You can find more around: |notinsticky
[56.74,63.47]
[49.24,61.78]
[50.79,67.25]
[45.26,68.91]
[41.52,56.95]
step
label "Collect_Webbed_Diemetradon_Scales"
Kill Diemetradon enemies around this area
collect 8 Webbed Diemetradon Scale##11830 |q 4503/1 |goto 59.18,53.99
You can find more around: |notinsticky
[56.74,63.47]
[49.24,61.78]
[50.79,67.25]
[45.26,68.91]
[41.52,56.95]
step
label "Collect_Bloodpetals"
Kill Bloodpetal enemies around this area
|tip They look like walking plants.
collect 15 Bloodpetal##11316 |q 4141/1 |goto 71.46,38.72
You can find more around: |notinsticky
[69.26,24.59]
[66.08,35.13]
[55.87,34.69]
[41.91,27.10]
step
label "Collect_UnGoro_Soil"
click Un'Goro Dirt Pile+
|tip They look like piles of dark brown dirt on the ground around this area.
|tip You can find them all over the entire zone.
Kill enemies around this area
|tip Any enemy in Un'Goro Crater can drop the quest item.
collect 20 Un'Goro Soil##11018 |q 3764 |future
|tip Be careful not to accidentally sell these to a vendor.
step
label "Collect_Power_Crystals"
click Power Crystal+
|tip They look clusters of red, yellow, green, or blue crystals on the ground around this area.
|tip They tend to be around the base of trees, or near the cliffs surrounding Un'Goro Crater.
|tip You can find them all over the entire zone.
collect 7 Red Power Crystal##11186 |q 4284 |future |only if itemcount(11186) < 7
collect 7 Yellow Power Crystal##11188 |q 4284 |future |only if itemcount(11188) < 7
collect 7 Green Power Crystal##11185 |q 4284 |future |only if itemcount(11185) < 7
collect 7 Blue Power Crystal##11184 |q 4284 |future |only if itemcount(11184) < 7
|only if (itemcount(11186) < 7) or (itemcount(11188) < 7) or (itemcount(11185) < 7) or (itemcount(11184) < 7)
step
label "Collect_A_Mangled_Journal"
Kill enemies around this area
|tip Any enemy in Un'Goro Crater can drop the quest item.
collect A Mangled Journal##11116 |q 3884 |future
step
label "Accept_Willidens_Journal"
use A Mangled Journal##11116
accept Williden's Journal##3884
|only if itemcount(11116) > 0
step
Follow the path up |goto 42.96,14.36 < 20 |only if walking
talk Shizzle##9998
turnin Shizzle's Flyer##4503 |goto 44.23,11.59
step
talk Muigin##9119
turnin Muigin and Larion##4141 |goto 42.94,9.64
step
talk Spraggle Frock##9997
turnin Beware of Pterrordax##4501 |goto 43.62,8.50
accept Lost!##4492 |goto 43.62,8.50
step
talk Spark Nilminer##9272
turnin Roll the Bones##3882 |goto 43.50,7.43
step
talk Hol'anyee Marshal##9271
turnin Alien Ecology##3883 |goto 43.89,7.24
step
talk Williden Marshal##9270
turnin Expedition Salvation##3881 |goto 43.95,7.14
turnin Williden's Journal##3884 |goto 43.95,7.14
step
Enter the cave |goto 43.47,6.81 < 10 |walk
Follow the path |goto 43.15,4.48 < 7 |walk
Continue following the path |goto 41.51,4.86 < 7 |walk
Continue following the path |goto 41.25,2.21 < 7 |walk
talk J.D. Collie##9117
|tip Inside the cave.
accept Crystals of Power##4284 |goto 41.92,2.70
step
talk J.D. Collie##9117
|tip Inside the cave.
turnin Crystals of Power##4284 |goto 41.92,2.70
accept The Northern Pylon##4285 |goto 41.92,2.70
accept The Eastern Pylon##4287 |goto 41.92,2.70
accept The Western Pylon##4288 |goto 41.92,2.70
step
_Destroy or Sell These Items:_
|tip They are no longer needed.
trash Red Power Crystal##11186
trash Yellow Power Crystal##11188
trash Green Power Crystal##11185
trash Blue Power Crystal##11184
step
use A Small Pack##11107
collect Large Compass##11104 |q 3845/1
collect Curled Map Parchment##11105 |q 3845/2
collect Lion-headed Key##11106 |q 3845/3
step
_Destroy This Item:_
|tip It is no longer needed.
trash Faded Photograph##11108
step
Follow the path |goto 40.98,3.26 < 10 |walk
Continue following the path |goto 41.87,5.00 < 7 |walk
Continue following the path |goto 43.29,4.65 < 7 |walk
Leave the cave |goto 43.47,6.81 < 10 |walk
talk Linken##8737
turnin It's a Secret to Everybody##3845 |goto 44.66,8.11
accept It's a Secret to Everybody##3908 |goto 44.66,8.11
stickystart "Collect_UnGoro_Ash"
step
Follow the path up |goto 52.84,42.05 < 15 |only if walking
Follow the path up |goto 52.33,45.52 < 7 |only if walking
Continue up the path |goto 51.18,47.35 < 7 |only if walking
use Krakle's Thermometer##12472
Find the Hottest Area of Fire Plume Ridge |q 974/1 |goto 49.70,45.74
step
label "Collect_UnGoro_Ash"
Kill enemies around this area
|tip They look like fire elementals on and around this volcano mountain.
|tip Avoid the elite enemy in the cave at the top of the mountain.
collect 9 Un'Goro Ash##11829 |q 4502/1 |goto 50.98,47.18
step
Enter the cave |goto 52.44,51.07 < 10 |walk
talk Ringo##9999
|tip Inside the cave.
|tip This is an escort quest.
|tip If he's not here, someone may be escorting him.
|tip Wait until he respawns.
turnin Lost!##4492 |goto 51.90,49.85
accept A Little Help From My Friends##4491 |goto 51.90,49.85 |noautoaccept
step
Leave the cave |goto 52.50,51.16 < 10 |walk
Follow the path down |goto 54.19,50.77 < 10 |only if walking
Follow the path |goto 56.72,43.18 < 30 |only if walking
Follow the path up |goto 46.04,13.45 < 10 |only if walking
Watch the dialogue
|tip Ringo will follow you, protect him as you walk.
|tip He will faint multiple times as he walks, so make sure he is with you at all times.
|tip You will see a message in your chat when he faints.
use Spraggle's Canteen##11804
|tip Use it on Ringo to revive him when he faints.
Escort Ringo to Spraggle Frock at Marshal's Refuge |q 4491/1 |goto 43.62,8.51
step
Watch the dialogue
talk Spraggle Frock##9997
turnin A Little Help From My Friends##4491 |goto 43.62,8.51
step
_Destroy This Item:_
|tip It is no longer needed.
trash Spraggle's Canteen##11804
step
Follow the path |goto 50.36,18.06 < 30 |only if walking
Follow the path up |goto 54.83,13.49 < 10 |only if walking
click Northern Crystal Pylon
Choose _"I want to examine this pylon."_
Discover and Examine the Northern Crystal Pylon |q 4285/1 |goto 56.48,12.45
step
Enter the cave |goto 63.94,16.39 < 10 |walk
Follow the path |goto 65.98,15.65 < 7 |walk
Continue following the path |goto 69.08,17.63 < 7 |walk
Continue following the path |goto 69.41,16.57 < 7 |walk
Continue following the path |goto 68.61,13.57 < 7 |walk
kill U'cha##9622
|tip Inside the cave.
collect U'cha's Pelt##11476 |q 4301/1 |goto 68.15,12.58
step
Follow the path |goto 67.12,15.31 < 7 |walk
Continue following the path |goto 64.94,16.63 < 7 |walk
Leave the cave |goto 63.88,16.43 < 10 |walk
Follow the path up |goto 76.66,48.69 < 10 |only if walking
click Eastern Crystal Pylon
Choose _"I want to examine this pylon."_
Discover and Examine the Eastern Crystal Pylon |q 4287/1 |goto 77.24,49.97
step
use Torwa's Pouch##11568
collect Preserved Threshadon Meat##11569 |q 4292
collect Preserved Pheromone Mixture##11570 |q 4292
step
use the Preserved Threshadon Meat##11569
|tip Use this first.
use the Preserved Pheromone Mixture##11570
|tip Use this second.
kill Lar'korwi##9684
collect Lar'korwi's Head##11510 |q 4292/1 |goto 79.92,49.90
step
talk Torwa Pathfinder##9619
turnin The Mighty U'cha##4301 |goto 71.63,75.96
turnin The Bait for Lar'korwi##4292 |goto 71.63,75.96
step
Follow the path up |goto 24.20,61.28 < 10 |only if walking
click Western Crystal Pylon
Choose _"I want to examine this pylon."_
Discover and Examine the Western Crystal Pylon |q 4288/1 |goto 23.79,59.19
step
talk Krakle##10302
turnin Finding the Source##974 |goto 30.93,50.44
accept The New Springs##980 |goto 30.93,50.44
step
Follow the path up |goto 43.01,14.27 < 15 |only if walking
Enter the cave |goto 43.47,6.81 < 10 |walk
Follow the path |goto 43.15,4.48 < 7 |walk
Continue following the path |goto 41.51,4.86 < 7 |walk
Continue following the path |goto 41.25,2.21 < 7 |walk
talk J.D. Collie##9117
|tip Inside the cave.
turnin The Northern Pylon##4285 |goto 41.92,2.70
turnin The Eastern Pylon##4287 |goto 41.92,2.70
turnin The Western Pylon##4288 |goto 41.92,2.70
accept Making Sense of It##4321 |goto 41.92,2.70
step
talk J.D. Collie##9117
|tip Inside the cave.
turnin Making Sense of It##4321 |goto 41.92,2.70
step
_Destroy This Item:_
|tip It is no longer needed.
trash Crystal Pylon User's Manual##11482
step
Follow the path |goto 40.98,3.26 < 7 |walk
Continue following the path |goto 41.87,5.00 < 7 |walk
Continue following the path |goto 43.29,4.65 < 7 |walk
Leave the cave |goto 43.47,6.81 < 10 |walk
Enter the building |goto Tanaris 52.21,28.57 < 7 |walk
talk Gimblethorn##7799
|tip Inside the building.
|tip Put these items in the bank.
bank Linken's Training Sword##11133 |goto Tanaris 52.30,28.91 |q 3908
step
talk Tran'rek##7876
turnin Super Sticky##4504 |goto 51.57,26.76
step
talk Alchemist Pestlezugg##5594
|tip Inside the building.
turnin Bungle in the Jungle##4496 |goto 50.89,26.96
step
Enter the building |goto The Barrens 62.52,38.58 < 7 |walk
talk Liv Rizzlefix##8496
|tip Inside the building.
turnin Volcanic Activity##4502 |goto The Barrens 62.45,38.74
step
talk Islen Waterseer##5901
turnin Seeking Spiritual Aid##5158 |goto 65.83,43.78
step
Watch the dialogue
talk Islen Waterseer##5901
accept Cleansed Water Returns to Felwood##5159 |goto 65.83,43.78
step
talk Greta Mosshoof##10922
|tip She walks around this area.
turnin Cleansed Water Returns to Felwood##5159 |goto Felwood 51.21,82.11
step
Enter the building |goto 51.26,81.70 < 7 |walk
talk Eridan Bluewind##9116
|tip Inside the building.
turnin Felbound Ancients##4441 |goto 51.35,81.51
step
Watch the dialogue
talk Eridan Bluewind##9116
|tip Inside the building.
accept Purified!##4442 |goto 51.35,81.51
step
talk Eridan Bluewind##9116
|tip Inside the building.
turnin Purified!##4442 |goto 51.35,81.51
step
_Destroy This Item:_
|tip It is no longer needed.
trash Flute of the Ancients##11445
step
map Darnassus
path	follow strict;	loop;	ants curved;	dist 20
path	36.00,41.30		38.50,47.91		40.25,73.62		49.94,80.49
path	54.88,74.47		57.42,82.41		67.68,57.45		62.02,52.75
path	61.79,40.59		43.80,41.10		36.79,14.21		39.17,20.89
path	49.77,18.95		52.37,18.62		54.33,10.03		57.70,7.66
path	65.06,16.66		60.60,22.94		61.80,32.53		61.54,40.48
talk Herald Moonstalker##10878
|tip She looks like a night elf that walks in a large path around Darnassus.
accept A Call to Arms: The Plaguelands!##5091
step
Enter the building |goto Darnassus 35.53,10.74 < 7 |walk
talk Arch Druid Fandral Staghelm##3516
|tip He walks around inside the building, at the top.
turnin Assisting Arch Druid Staghelm##3790 |goto Darnassus 34.80,9.25
accept Un'Goro Soil##3764 |goto Darnassus 34.80,9.25
step
Leave the building |goto 33.90,7.74 < 7 |walk
talk Jenal##9047
turnin Un'Goro Soil##3764 |goto 31.49,8.23
step
_Destroy or Sell These Items:_
|tip They are no longer needed.
trash Un'Goro Soil##11018
step
Enter the building |goto Darnassus 35.53,10.74 < 7 |walk
talk Arch Druid Fandral Staghelm##3516
|tip He walks around inside the building, at the top.
accept Morrowgrain Research##3781 |goto 34.80,9.25
step
talk Mathrengyl Bearwalker##4217
|tip Inside the tower, on the middle level.
turnin Morrowgrain Research##3781 |goto 35.37,8.40
step
_Destroy or Sell These Items:_
|tip They are no longer needed.
trash Packet of Tharlendris Seeds##11022
step
talk Garryeth##4209
|tip Collect these items from the bank.
collect Black Dragonflight Molt##10575 |goto 39.87,42.18 |q 4022 |future
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Burning Steppes (55-56)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Burning Steppes",
condition_suggested=function() return level >= 55 and level <= 56 and not completedq(4224) end,
next="Leveling Guides\\Classic (12-58)\\Western Plaguelands (56-57)",
},[[
step
Enter the building |goto Ironforge 44.60,49.53 < 7 |walk
talk Royal Historian Archesonus##8879
|tip Inside the building.
accept The Smoldering Ruins of Thaurissan##3702 |goto Ironforge 38.37,55.31
step
talk Royal Historian Archesonus##8879
|tip Inside the building.
Tell her _"I am ready, Historian Archesonus."_
Listen to the Story of Thaurissan |q 3702/1 |goto 38.37,55.31
step
talk Royal Historian Archesonus##8879
|tip Inside the building.
turnin The Smoldering Ruins of Thaurissan##3702 |goto 38.37,55.31
accept The Smoldering Ruins of Thaurissan##3701 |goto 38.37,55.31
step
Run up the stairs |goto 31.88,8.36 < 7 |only if walking
Enter the building |goto 32.00,5.50 < 5 |walk
talk Tymor##8507
|tip Inside the building.
turnin Return to Tymor##3461 |goto 30.97,4.82
step
talk Laris Geardawdle##9616
|tip Inside the building.
turnin A Little Slime Goes a Long Way##4512 |goto 75.77,23.38
step
talk Oralius##9177
accept Extinguish the Firegut##3823 |goto Burning Steppes 84.56,68.68
accept FIFTY! YEP!##4283 |goto Burning Steppes 84.56,68.68
step
Follow the path down |goto 84.58,66.96 < 7 |only if walking
Follow the path |goto 67.27,44.16 < 30 |only if walking
Follow the path up |goto 63.93,29.93 < 15 |only if walking
talk Tinkee Steamboil##10267
accept Broodling Essence##4726 |goto 65.24,24.00
step
talk Maxwort Uberglint##9536
accept Tablet of the Seven##4296 |goto 65.16,23.92
step
Enter the cave |goto 65.52,23.08 < 10 |walk
talk Yuka Screwspigot##9544
|tip Inside the cave.
turnin Yuka Screwspigot##4324 |goto 66.06,21.95
step
Leave the cave |goto 65.49,23.13 < 10 |walk
use the Draco-Incarcinatrix 900##12284
|tip Use it on Broodling enemies around this area.
|tip They look like small flying dragons.
Kill Broodling enemies around this area
click Broodling Essence+
|tip They look like red floating crystals that appear above their corpses after you kill them.
collect 8 Broodling Essence##12283 |q 4726/1 |goto 59.26,32.49
You can find more around: |notinsticky
[72.83,28.41]
[80.05,27.94]
[87.34,32.01]
[91.96,35.64]
step
Enter the cave |goto 94.11,31.92 < 10 |walk
talk Cyrus Therepentous##9459
|tip Inside the cave.
accept A Taste of Flame##4022 |goto 95.06,31.57
step
talk Cyrus Therepentous##9459
|tip Inside the cave.
Tell him _"I present you with proof of my deeds, Cyrus."_
Present the Proof |q 4022/2 |goto 95.06,31.57
step
talk Cyrus Therepentous##9459
|tip Inside the cave.
turnin A Taste of Flame##4022 |goto 95.06,31.57
stickystart "Kill_Firegut_Brutes"
stickystart "Kill_Firegut_Ogre_Mages"
step
kill 7 Firegut Ogre##7033 |q 3823/2 |goto 75.63,38.36
You can find more: |notinsticky
Inside the cave at [77.00,47.68]
Inside the cave at [82.80,38.85]
step
label "Kill_Firegut_Brutes"
kill 7 Firegut Brute##7035 |q 3823/3 |goto 75.63,38.36
You can find more: |notinsticky
Inside the cave at [77.00,47.68]
Inside the cave at [82.80,38.85]
step
label "Kill_Firegut_Ogre_Mages"
kill 15 Firegut Ogre Mage##7034 |q 3823/1 |goto 75.63,38.36
You can find more: |notinsticky
Inside the cave at [77.00,47.68]
Inside the cave at [82.80,38.85]
stickystart "Recover_Information"
step
click Tablet of the Seven
Choose _"Transcribe the tablet."_
collect Tablet Transcript##11470 |q 4296/1 |goto 54.09,40.73
step
label "Recover_Information"
click Thaurissan Relic+
|tip They look like cylindrical grey stones sitting upright on the ground around this area.
Recover #12# Information |q 3701/1 |goto 68.42,37.33
You can find more around: |notinsticky
[66.04,44.05]
[62.21,40.68]
[58.93,42.59]
[57.80,37.02]
[52.89,35.96]
step
Kill Blackrock enemies around this area
|tip They look like orcs and wolves.
|tip You can find more inside the buildings around this area.
collect 50 Blackrock Medallion##11467 |q 4283/1 |goto 39.31,55.42
You can find more around: |notinsticky
[43.90,56.18]
[49.30,55.43]
[52.98,53.87]
step
Follow the path up |goto 63.92,29.88 < 15 |only if walking
talk Tinkee Steamboil##10267
turnin Broodling Essence##4726 |goto 65.23,23.99
accept Felnok Steelspring##4808 |goto 65.23,23.99
step
talk Maxwort Uberglint##9536
turnin Tablet of the Seven##4296 |goto 65.15,23.91
step
Follow the path |goto 68.40,48.44 < 40 |only if walking
Follow the path up |goto 82.85,63.31 < 10 |only if walking
Follow the path |goto 84.60,66.98 < 7 |only if walking
talk Oralius##9177
turnin Extinguish the Firegut##3823 |goto 84.56,68.67
turnin FIFTY! YEP!##4283 |goto 84.56,68.67
step
_Destroy These Items:_
|tip They are no longer needed.
trash Blackrock Medallion##11467
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Western Plaguelands (56-57)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Western Plaguelands",
condition_suggested=function() return level >= 56 and level <= 57 and not completedq(5092) end,
next="Leveling Guides\\Classic (12-58)\\Felwood (57-57)",
},[[
step
Enter the building |goto Stormwind City/0 53.44,64.92 < 7 |walk
talk Innkeeper Allison##6740
|tip Inside the building.
home Stormwind City |goto Stormwind City/0 52.62,65.70
step
Enter the building |goto Ironforge 44.60,49.53 < 7 |walk
talk Royal Historian Archesonus##8879
|tip Inside the building.
turnin The Smoldering Ruins of Thaurissan##3701 |goto Ironforge 38.37,55.31
step
talk Commander Ashlam Valorfist##10838
turnin A Call to Arms: The Plaguelands!##5091 |goto Western Plaguelands 42.70,84.03
accept Clear the Way##5092 |goto Western Plaguelands 42.70,84.03
step
talk Argent Officer Pureheart##10840
accept Argent Dawn Commission##5401 |goto 42.97,83.55
step
Equip the Argent Dawn Commission
|tip Wearing it will allow Minion's Scourgestones to drop from undead enemies in Western and Eastern Plaguelands.
Gain the Argent Dawn Commission Buff |havebuff 133440 |q 5408 |future
stickystart "Kill_Slavering_Ghouls"
step
kill 10 Skeletal Flayer##1783 |q 5092/1 |goto 48.51,81.13
You can find more: |notinsticky
Around [50.64,77.01]
step
label "Kill_Slavering_Ghouls"
kill 10 Slavering Ghoul##1791 |q 5092/2 |goto 48.51,81.13
You can find more: |notinsticky
Around [50.64,77.01]
step
Follow the path |goto 46.64,81.31 < 30 |only if walking
talk Commander Ashlam Valorfist##10838
turnin Clear the Way##5092 |goto 42.70,84.03
accept The Scourge Cauldrons##5215 |goto 42.70,84.03
accept All Along the Watchtowers##5097 |goto 42.70,84.03
step
talk High Priestess MacDonnell##11053
turnin The Scourge Cauldrons##5215 |goto 42.97,84.50
accept Target: Felstone Field##5216 |goto 42.97,84.50
step
Follow the road |goto 42.62,80.61 < 30 |only if walking
Continue following the road |goto 36.73,74.47 < 30 |only if walking
use the Beacon Torch##12815
|tip Use it in front of the tower entrance.
Mark Tower One |q 5097/1 |goto 40.13,71.52
step
Avoid the big group of enemies in the center of town |goto 44.17,71.56 < 30 |only if walking
use the Beacon Torch##12815
|tip Use it in front of the tower entrance.
Mark Tower Four |q 5097/4 |goto 46.70,71.10
step
use the Beacon Torch##12815
|tip Use it in front of the tower entrance.
Mark Tower Three |q 5097/3 |goto 44.22,63.37
step
use the Beacon Torch##12815
|tip Use it in front of the tower entrance.
Mark Tower Two |q 5097/2 |goto 42.44,66.27
step
kill Cauldron Lord Bilemaw##11075
collect Felstone Field Cauldron Key##13194 |q 5216/1 |goto 37.03,57.11
step
click Scourge Cauldron
turnin Target: Felstone Field##5216 |goto 37.19,56.87
accept Return to Chillwind Camp##5217 |goto 37.19,56.87
step
Enter the building |goto 38.04,54.61 < 7 |walk
talk Janice Felstone##10778
|tip Upstairs inside the building.
accept Better Late Than Never##5021 |goto 38.40,54.05
step
Leave the building |goto 38.03,54.63 < 7 |walk
Enter the building |goto 38.52,55.33 < 7 |walk
click Janice's Parcel
|tip Inside the building.
turnin Better Late Than Never##5021 |goto 38.73,55.24
accept Better Late Than Never##5022 |goto 38.73,55.24
step
Follow the road |goto 37.84,72.58 < 30 |only if walking
talk High Priestess MacDonnell##11053
turnin Return to Chillwind Camp##5217 |goto 42.97,84.50
accept Target: Dalson's Tears##5219 |goto 42.97,84.50
step
talk Commander Ashlam Valorfist##10838
turnin All Along the Watchtowers##5097 |goto 42.70,84.03
step
_Destory This Item:_
|tip It is no longer needed.
trash Beacon Torch##12815
step
Follow the road |goto 42.62,80.61 < 30 |only if walking
Follow the path |goto 38.01,71.70 < 20 |only if walking
Follow the road |goto 38.59,60.30 < 50 |only if walking
kill Cauldron Lord Malvinious##11077
collect Dalson's Tears Cauldron Key##13195 |q 5219/1 |goto 46.18,52.38
step
click Scourge Cauldron
turnin Target: Dalson's Tears##5219 |goto 46.18,52.02
accept Return to Chillwind Camp##5220 |goto 46.18,52.02
step
Enter the building |goto 47.52,50.94 < 7 |walk
click Mrs. Dalson's Diary
|tip Inside the building.
accept Mrs. Dalson's Diary##5058 |goto 47.79,50.67
step
Leave the building |goto 47.52,50.94 < 7 |walk
kill Wandering Skeleton##10816
|tip It looks like a white skeleton that spawns here and walks around this area around the buildings nearby.
|tip You can wait here until it walks by here, or respawns, or you can search around the building.
collect Dalson Outhouse Key##12738 |goto 47.85,49.32 |q 5060 |future
step
click Outhouse
accept Locked Away##5059 |goto 48.11,49.71 |q 5060 |future
|tip Farmer Dalson will appear and attack you.
step
kill Farmer Dalson##10836
collect Dalson Cabinet Key##12739 |goto 48.11,49.71 |q 5060 |future
step
Enter the building |goto 47.14,50.19 < 7 |walk
click Locked Cabinet
|tip Upstairs inside the building.
accept Locked Away##5060 |goto 47.37,49.65
step
Enter the building |goto Stormwind City 47.79,31.24 < 7 |walk
talk Royal Factor Bathrilor##10782
|tip Upstairs inside the building.
turnin Better Late Than Never##5022 |goto Stormwind City 48.47,30.55
accept Good Natured Emma##5048 |goto Stormwind City 48.47,30.55
step
Leave the building |goto 47.80,31.23 < 7 |c |q 5048
step
map Stormwind City
path	follow strict;	loop;	ants curved;	dist 20
path	52.46,41.98		48.29,49.03		50.15,51.53		55.04,47.69
path	57.64,47.70		59.73,51.45		57.66,55.16		60.62,60.33
path	57.16,54.48		57.05,54.37		55.65,53.48		52.74,55.15
path	50.88,51.60		49.66,51.59		48.32,48.32
talk Ol' Emma##3520
|tip She looks like an old human woman that walks in a counter-clockwise path around Stormwind City.
|tip This step's path will take you clockwise to help you find her faster.
|tip She sometimes stands upstairs inside the house that this path leads you to the doorway of.
|tip Keep an eye on your minimap as you walk around, she will show up as a yellow dot.
turnin Good Natured Emma##5048
accept Good Luck Charm##5050
step
talk High Priestess MacDonnell##11053
turnin Return to Chillwind Camp##5220 |goto Western Plaguelands 42.97,84.50
accept Target: Writhing Haunt##5222 |goto Western Plaguelands 42.97,84.50
step
Follow the path |goto 46.61,81.32 < 30 |only if walking
Continue following the path |goto 50.63,76.95 < 30 |only if walking
Follow the path up |goto 51.46,71.39 < 7 |only if walking
kill Cauldron Lord Razarch##11076
collect Writhing Haunt Cauldron Key##13197 |q 5222/1 |goto 53.02,66.06
step
click Scourge Cauldron
turnin Target: Writhing Haunt##5222 |goto 53.02,65.72
accept Return to Chillwind Camp##5223 |goto 53.02,65.72
step
Enter the building |goto 53.60,64.79 < 7 |walk
talk Mulgris Deepriver##10739
|tip Inside the building.
accept The Wildlife Suffers Too##4984 |goto 53.72,64.67
step
Follow the road |goto 49.50,56.70 < 30 |only if walking
kill 8 Diseased Wolf##1817 |q 4984/1 |goto 42.74,54.83
|tip They share spawn points with Carrion Lurker spiders.
|tip Kill those as well, if you can't find any wolves.
You can find more around: |notinsticky
[45.96,48.00]
[46.92,39.81]
step
Enter the building |goto 38.04,54.61 < 7 |walk
talk Janice Felstone##10778
|tip Upstairs inside the building.
turnin Good Luck Charm##5050 |goto 38.40,54.05
accept Two Halves Become One##5051 |goto 38.40,54.05
step
Leave the building |goto 38.02,54.65 < 7 |walk
kill Jabbering Ghoul##10801
|tip It looks like a green ghoul holding a pitchfork.
|tip He can possibly spawn in multiple locations, and may walk around this area.
collect Good Luck Other-Half-Charm##12722 |goto 36.84,58.23 |q 5051
step
use the Good Luck Other-Half-Charm##12722
collect Good Luck Charm##12723 |q 5051/1
step
Enter the building |goto 38.04,54.61 < 7 |walk
talk Janice Felstone##10778
|tip Upstairs inside the building.
turnin Two Halves Become One##5051 |goto 38.40,54.05
step
Follow the path |goto 49.52,56.90 < 50 |only if walking
Enter the building |goto 53.60,64.79 < 7 |walk
talk Mulgris Deepriver##10739
|tip Inside the building.
turnin The Wildlife Suffers Too##4984 |goto 53.72,64.67
accept The Wildlife Suffers Too##4985 |goto 53.72,64.67
step
kill 8 Diseased Grizzly##1816 |q 4985/1 |goto 56.81,63.63
|tip They share spawn points with Plague Lurker spiders.
|tip Kill those as well, if you can't find any bears.
You can find more around: |notinsticky
[58.69,58.24]
[57.20,52.78]
[61.55,52.23]
step
Enter the building |goto 53.60,64.79 < 7 |walk
talk Mulgris Deepriver##10739
|tip Inside the building.
turnin The Wildlife Suffers Too##4985 |goto 53.72,64.67
accept Glyphed Oaken Branch##4986 |goto 53.72,64.67
step
Follow the path up |goto 50.64,72.24 < 10 |only if walking
talk High Priestess MacDonnell##11053
turnin Return to Chillwind Camp##5223 |goto 42.97,84.50
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Felwood (57-57)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Felwood",
condition_suggested=function() return level == 57 and not completedq(5165) end,
next="Leveling Guides\\Classic (12-58)\\Winterspring (57-58)",
},[[
step
Enter the building |goto Darnassus 35.52,10.70 < 7 |walk
talk Mathrengyl Bearwalker##4217
|tip Upstairs inside the building.
turnin Glyphed Oaken Branch##4986 |goto Darnassus 35.38,8.40
step
talk Garryeth##4209
|tip Collect these items from the bank.
collect Linken's Training Sword##11133 |goto 39.87,42.18 |q 3908
step
talk Greta Mosshoof##10922
|tip She walks around this area.
accept Dousing the Flames of Protection##5165 |goto Felwood 51.21,82.11
step
Follow the road |goto 50.03,83.91 < 30 |only if walking
Follow the path |goto 41.19,57.60 < 30 |only if walking
Continue following the path |goto 38.33,59.87 < 20 |only if walking
Enter the cave |goto 35.41,58.68 < 7 |walk
Follow the path down |goto 36.00,56.50 < 7 |walk
click Brazier of Pain
|tip Inside the cave.
Extinguish the Brazier of Pain |q 5165/1 |goto 36.25,56.27
step
Follow the path up |goto 36.70,55.74 < 7 |walk
click Brazier of Hatred
|tip Inside the cave.
Extinguish the Brazier of Hatred |q 5165/4 |goto 36.49,55.20
step
Follow the path |goto 36.80,54.89 < 7 |walk
Run around the hole in the floor and follow the path down |goto 38.20,54.07 < 10 |c |q 5165
step
Follow the path |goto 37.59,53.98 < 7 |walk
click Brazier of Suffering
|tip Inside the cave.
Extinguish the Brazier of Suffering |q 5165/3 |goto 36.74,53.29
step
click Brazier of Malice
|tip Inside the cave.
Extinguish the Brazier of Malice |q 5165/2 |goto 37.67,52.69
step
Follow the path |goto 37.18,53.99 < 7 |walk
Follow the path up |goto 38.13,54.62 < 7 |c |q 5165
step
Run around the hole in the ground and continue up the path |goto 37.54,54.75 < 7 |walk
Follow the path down |goto 36.58,55.19 < 7 |walk
Follow the path up |goto 35.89,55.98 < 7 |walk
Continue up the path |goto 35.45,58.11 < 7 |walk
Leave the cave |goto 35.42,58.83 < 7 |c |q 5165
step
Follow the path |goto 39.23,58.28 < 30 |only if walking
Follow the road |goto 41.38,57.67 < 30 |only if walking
Follow the path |goto 50.27,83.54 < 30 |only if walking
talk Greta Mosshoof##10922
|tip She walks around this area.
turnin Dousing the Flames of Protection##5165 |goto 51.21,82.11
step
Follow the road |goto 64.61,14.86 < 20 |only if walking
talk Nafien##15395
turnin Speak to Nafien##8462 |goto 64.77,8.13
accept Deadwood of the North##8461 |goto 64.77,8.13
stickystart "Kill_Deadwood_Avengers"
stickystart "Kill_Deadwood_Shamans"
step
kill 6 Deadwood Den Watcher##7156 |q 8461/1 |goto 63.08,8.82
You can find more around: |notinsticky
[60.37,8.40]
[60.18,6.14]
[62.67,12.48]
step
label "Kill_Deadwood_Avengers"
kill 6 Deadwood Avenger##7157 |q 8461/2 |goto 63.08,8.82
You can find more around: |notinsticky
[60.37,8.40]
[60.18,6.14]
[62.67,12.48]
step
label "Kill_Deadwood_Shamans"
kill 6 Deadwood Shaman##7158 |q 8461/3 |goto 63.08,8.82
You can find more around: |notinsticky
[60.37,8.40]
[60.18,6.14]
[62.67,12.48]
step
Follow the road |goto 64.18,15.20 < 30 |only if walking
talk Nafien##15395
turnin Deadwood of the North##8461 |goto 64.77,8.13
accept Speak to Salfa##8465 |goto 64.77,8.13
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Classic (12-58)\\Winterspring (57-58)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Winterspring",
condition_suggested=function() return level >= 57 and level <= 58 and not completedq(5158) end,
next="Leveling Guides\\The Burning Crusade (58-70)\\Hellfire Peninsula (58-61)",
},[[
step
Enter the tunnel |goto Felwood 65.13,8.01 < 7 |walk
Run down the stairs |goto Felwood 66.03,3.31 < 7 |walk
Follow the path |goto Felwood 65.36,2.34 < 7 |walk
Leave the tunnel |goto Moonglade 35.75,72.48 < 7 |walk
talk Sindrayl##10897
fpath Moonglade |goto Moonglade 48.10,67.34
step
Follow the road up |goto Moonglade 35.17,65.99 < 15 |only if walking
Enter the tunnel |goto Moonglade 35.74,72.49 < 7 |walk
Run up the stairs |goto Felwood 65.85,3.54 < 7 |walk
Follow the path |goto Felwood 66.26,2.90 < 7 |walk
Leave the tunnel |goto Felwood 68.40,5.84 < 7 |walk
talk Salfa##11556
turnin Speak to Salfa##8465 |goto Winterspring 27.74,34.50
accept Winterfall Activity##8464 |goto Winterspring 27.74,34.50
step
talk Donova Snowden##9298
turnin The New Springs##980 |goto 31.27,45.17
accept Strange Sources##4842 |goto 31.27,45.17
turnin It's a Secret to Everybody##3908 |goto 31.27,45.17
step
Watch the dialogue
talk Donova Snowden##9298
accept Threat of the Winterfall##5082 |goto 31.27,45.17
step
click Moontouched Feather+
|tip They look like large blue feathers on the ground around this area.
collect 10 Moontouched Feather##12383 |q 978/1 |goto 31.35,45.53
You can find more at: |notinsticky
[30.95,47.02]
[29.39,46.67]
[30.18,45.24]
[30.30,44.03]
[31.42,43.31]
[32.02,44.25]
[32.79,44.36]
[33.07,44.01]
[34.85,43.20]
step
Follow the road |goto 35.95,42.15 < 30 |only if walking
Continue following the road |goto 53.51,34.07 < 30 |only if walking
Follow the path up |goto 53.48,28.64 < 30 |only if walking
Enter the building |goto 51.39,29.82 < 10 |only if walking
talk Wynd Nightchaser##11079
|tip Inside the building.
turnin To Winterspring!##5249 |goto 51.97,30.39
accept The Ruins of Kel'Theril##5244 |goto 51.97,30.39
step
talk Jaron Stoneshaper##10301
|tip Inside the building.
turnin The Ruins of Kel'Theril##5244 |goto 52.14,30.43
accept Enraged Wildkin##4861 |goto 52.14,30.43
step
Follow the road |goto 54.28,34.54 < 30 |only if walking
Follow the path |goto 61.75,40.10 < 30 |only if walking
talk Maethrya##11138
fpath Everlook |goto 62.33,36.61
step
Follow the path |goto 60.55,38.20 < 7 |only if walking
talk Umi Rumplesnicker##10305
accept Are We There, Yeti?##3783 |goto 60.88,37.62
step
Enter the building |goto 61.32,38.72 < 7 |walk
talk Innkeeper Vizzie##11118
|tip Inside the building.
home Everlook |goto 61.36,38.83
step
talk Felnok Steelspring##10468
turnin Felnok Steelspring##4808 |goto 61.63,38.61
accept Chillwind Horns##4809 |goto 61.63,38.61
step
Follow the path |goto 60.55,38.20 < 7 |only if walking
Follow the road |goto 60.44,39.71 < 30 |only if walking
Kill Ice Thistle enemies around this area
collect 10 Thick Yeti Fur##12366 |q 3783/1 |goto 66.79,43.34
You can find more inside the cave at [67.65,41.75]
step
Follow the road |goto 64.08,43.36 < 30 |only if walking
Follow the path |goto 61.95,60.54 < 30 |only if walking
click Damaged Crate
turnin Enraged Wildkin##4861 |goto 59.00,59.78
accept Enraged Wildkin##4863 |goto 59.00,59.78
step
click Jaron's Wagon
turnin Enraged Wildkin##4863 |goto 61.41,60.68
accept Enraged Wildkin##4864 |goto 61.41,60.68
step
click Jaron's Supplies
collect Jaron's Supplies##12525 |q 4864/1 |goto 61.39,60.73
step
Follow the path up |goto 63.16,59.22 < 30 |only if walking
Kill Owlbeast enemies around this area
collect Blue-feathered Amulet##12524 |q 4864/2 |goto 65.42,60.38
step
Follow the road |goto 62.46,59.31 < 50 |only if walking
Cross the bridge |goto 62.42,67.44 < 30 |only if walking
Discover Darkwhisper Gorge |q 4842/1 |goto 59.84,74.12
step
talk Umi Rumplesnicker##10305
turnin Are We There, Yeti?##3783 |goto 60.88,37.62
accept Are We There, Yeti?##977 |goto 60.88,37.62
step
Follow the path |goto 60.55,38.20 < 7 |only if walking
Follow the road |goto 60.44,39.71 < 30 |only if walking
Follow the path up |goto 66.70,43.12 < 20 |only if walking
Kill Ice Thistle enemies around this area
|tip Inside and outside the cave.
|tip Only the Matriarchs or Patriarchs will drop the quest item.
collect 2 Pristine Yeti Horn##12367 |q 977/1 |goto 67.65,41.75
stickystart "Kill_Winterfall_Shamans"
stickystart "Kill_Winterfall_Den_Watchers"
step
Follow the path |goto 62.82,40.30 < 40 |only if walking
Follow the path up |goto 63.43,35.66 < 15 |only if walking
kill 8 Winterfall Ursa##7438 |q 8464/3 |goto 65.28,37.66
You can find more around: |notinsticky
[67.07,39.76]
[66.92,35.15]
[67.80,37.33]
step
label "Kill_Winterfall_Shamans"
kill 8 Winterfall Shaman##7439 |q 8464/1 |goto 66.92,35.15
You can find more around [67.80,37.33]
step
label "Kill_Winterfall_Den_Watchers"
kill 8 Winterfall Den Watcher##7440 |q 5082/2 |goto 66.92,35.15
kill 8 Winterfall Den Watcher##7440 |q 8464/2 |goto 66.92,35.15
step
kill Chillwind Ravager##7449+
|tip They look like chimeras.
|tip They share spawn points with the bears, so kill them too, if you can't find any.
collect 8 Uncracked Chillwind Horn##12444 |q 4809/1 |goto 66.10,31.61
You can find more around: |notinsticky
[65.74,27.23]
[60.12,21.49]
[55.23,22.20]
step
talk Felnok Steelspring##10468
turnin Chillwind Horns##4809 |goto 61.63,38.61
step
talk Umi Rumplesnicker##10305
turnin Are We There, Yeti?##977 |goto 60.88,37.62
step
Follow the path |goto 60.56,38.21 < 7 |only if walking
Follow the road |goto 58.91,38.87 < 30 |only if walking
Follow the path up |goto 53.48,28.64 < 30 |only if walking
Enter the building |goto 51.39,29.82 < 15 |only if walking
talk Jaron Stoneshaper##10301
|tip Inside the building.
turnin Enraged Wildkin##4864 |goto 52.14,30.43
stickystart "Kill_Winterfall_Pathfinders"
stickystart "Collect_Empty_Firewater_Flask"
stickystart "Accept_Winterfall_Firewater"
step
Follow the road |goto 53.22,34.69 < 30 |only if walking
Follow the path down |goto 44.68,40.13 < 30 |only if walking
kill 8 Winterfall Totemic##7441 |q 5082/3 |goto 41.78,43.14
You can find more around: |notinsticky
[39.46,43.70]
[30.57,37.17]
step
label "Kill_Winterfall_Pathfinders"
kill 8 Winterfall Pathfinder##7442 |q 5082/1 |goto 41.78,43.14
You can find more around: |notinsticky
[39.46,43.70]
[30.57,37.17]
step
label "Collect_Empty_Firewater_Flask"
Kill Winterfall enemies around this area
collect Empty Firewater Flask##12771 |goto 41.78,43.14 |q 5083 |future
You can find more around: |notinsticky
[39.46,43.70]
[30.57,37.17]
step
label "Accept_Winterfall_Firewater"
use the Empty Firewater Flask##12771
accept Winterfall Firewater##5083
|only if itemcount(12771) > 0
step
talk Donova Snowden##9298
turnin Strange Sources##4842 |goto 31.27,45.16
turnin Winterfall Firewater##5083 |goto 31.27,45.16
turnin Threat of the Winterfall##5082 |goto 31.27,45.16
step
talk Salfa##11556
turnin Winterfall Activity##8464 |goto 27.74,34.50
step
talk Erelas Ambersky##7916
|tip Inside the building.
turnin Moontouched Wildkin##978 |goto Teldrassil/0 55.50,92.04
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Ahn'Qiraj Gear\\Ruins of Ahn'Qiraj Cloak Quest",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Ruins of Ahn'Qiraj class-specific cloak.",
condition_end=function() return completedanyq(8692,8696,8691,8695,8689,8693,8690,8694,8557) end,
},[[
step
Reach Level 60 |ding 60
|tip Use the leveling guides to accomplish this.
step
talk Keyl Swiftclaw##15500
accept Cloak of Unending Life##8692 |goto Silithus 51.76,39.53 |only Druid
accept Cloak of the Unseen Path##8696 |goto 51.76,39.53 |only Hunter
accept Drape of Vaulted Secrets##8691 |goto 51.76,39.53 |only Mage
accept Cape of Eternal Justice##8695 |goto 51.76,39.53 |only Paladin
accept Shroud of Infinite Wisdom##8689 |goto 51.76,39.53 |only Priest
accept Cloak of Veiled Shadows##8693 |goto 51.76,39.53 |only Rogue
accept Cloak of the Gathering Storm##8690 |goto 51.76,39.53 |only Shaman
accept Shroud of Unspoken Names##8694 |goto 51.76,39.53 |only Warlock
accept Drape of Unyielding Strength##8557 |goto 51.76,39.53 |only Warrior
stickystart "Collect_Idols"
stickystart "Collect_First_Scarab_Set"
stickystart "Collect_Second_Scarab_Set"
stickystart "Reach_Revered_Reputation"
step
collect 1 Qiraji Regal Drape##20889 |q 8692/1 |only Druid
collect 1 Qiraji Regal Drape##20889 |q 8696/1 |only Hunter
collect 1 Qiraji Martial Drape##20885 |q 8691/1 |only Mage
collect 1 Qiraji Regal Drape##20889 |q 8695/1 |only Paladin
collect 1 Qiraji Martial Drape##20885 |q 8689/1 |only Priest
collect 1 Qiraji Martial Drape##20885 |q 8693/1 |only Rogue
collect 1 Qiraji Regal Drape##20889 |q 8690/1 |only Shaman
collect 1 Qiraji Regal Drape##20889 |q 8694/1 |only Warlock
collect 1 Qiraji Martial Drape##20885 |q 8557/1 |only Warrior
|tip This has a chance to drop from General Rajaxx, Kurinnaxx, Ayamiss the Hunter, and Buru the Gorger in the Ruins of Ahn'Qiraj raid.
step
label "Collect_Idols"
collect 2 Vermillion Idol##20872 |q 8692/2 |only Druid
collect 2 Lambent Idol##20868 |q 8696/2 |only Hunter
collect 2 Alabaster Idol##20873 |q 8691/2 |only Mage
collect 2 Obsidian Idol##20871 |q 8695/2 |only Paladin
collect 2 Jasper Idol##20870 |q 8689/2 |only Priest
collect 2 Azure Idol##20866 |q 8693/2 |only Rogue
collect 2 Obsidian Idol##20871 |q 8690/2 |only Shaman
collect 2 Amber Idol##20869 |q 8694/2 |only Warlock
collect 2 Onyx Idol##20867 |q 8557/2 |only Warrior
|tip These have a chance to drop from trash mobs and Scarab Coffers in the Ruins of Ahn'Qiraj raid.
step
label "Collect_First_Scarab_Set"
collect 5 Bone Scarab##20864 |q 8692/3 |only Druid
collect 5 Stone Scarab##20858 |q 8696/3 |only Hunter
collect 5 Stone Scarab##20858 |q 8691/3 |only Mage
collect 5 Gold Scarab##20859 |q 8695/3 |only Paladin
collect 5 Gold Scarab##20859 |q 8689/3 |only Priest
collect 5 Bronze Scarab##20861 |q 8693/3 |only Rogue
collect 5 Clay Scarab##20863 |q 8690/3 |only Shaman
collect 5 Bronze Scarab##20861 |q 8694/3 |only Warlock
collect 5 Bone Scarab##20864 |q 8557/3 |only Warrior
|tip These have a chance to drop from trash mobs in the Ruins of Ahn'Qiraj and Temple of Ahn'Qiraj raids.
step
label "Collect_Second_Scarab_Set"
collect 5 Silver Scarab##20860 |q 8692/4 |only Druid
collect 5 Crystal Scarab##20862 |q 8696/4 |only Hunter
collect 5 Crystal Scarab##20862 |q 8691/4 |only Mage
collect 5 Clay Scarab##20863 |q 8695/4 |only Paladin
collect 5 Clay Scarab##20863 |q 8689/4 |only Priest
collect 5 Ivory Scarab##20865 |q 8693/4 |only Rogue
collect 5 Gold Scarab##20859 |q 8690/4 |only Shaman
collect 5 Ivory Scarab##20865 |q 8694/4 |only Warlock
collect 5 Silver Scarab##20860 |q 8557/4 |only Warrior
|tip These have a chance to drop from trash mobs in the Ruins of Ahn'Qiraj and Temple of Ahn'Qiraj raids.
step
label "Reach_Revered_Reputation"
Reach Revered Reputation with the Cenarion Circle |condition rep("Cenarion Circle") >= Revered |or
'|condition completedanyq(8692,8696,8691,8695,8689,8693,8690,8694,8557) |or
step
talk Keyl Swiftclaw##15500
turnin Cloak of Unending Life##8692 |goto 51.76,39.53 |only Druid
turnin Cloak of the Unseen Path##8696 |goto 51.76,39.53 |only Hunter
turnin Drape of Vaulted Secrets##8691 |goto 51.76,39.53 |only Mage
turnin Cape of Eternal Justice##8695 |goto 51.76,39.53 |only Paladin
turnin Shroud of Infinite Wisdom##8689 |goto 51.76,39.53 |only Priest
turnin Cloak of Veiled Shadows##8693 |goto 51.76,39.53 |only Rogue
turnin Cloak of the Gathering Storm##8690 |goto 51.76,39.53 |only Shaman
turnin Shroud of Unspoken Names##8694 |goto 51.76,39.53 |only Warlock
turnin Drape of Unyielding Strength##8557 |goto 51.76,39.53 |only Warrior
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Ahn'Qiraj Gear\\Ruins of Ahn'Qiraj Ring Quest",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Ruins of Ahn'Qiraj class-specific ring.",
condition_end=function() return completedanyq(8700,8704,8699,8703,8697,8701,8698,8702,8556) end,
},[[
step
Reach Level 60 |ding 60
|tip Use the leveling guides to accomplish this.
step
talk Windcaller Yessendra##15498
accept Band of Unending Life##8700 |goto Silithus 52.04,38.15 |only Druid
accept Signet of the Unseen Path##8704 |goto 52.04,38.15 |only Hunter
accept Band of Vaulted Secrets##8699 |goto 52.04,38.15 |only Mage
accept Ring of Eternal Justice##8703 |goto 52.04,38.15 |only Paladin
accept Ring of Infinite Wisdom##8697 |goto 52.04,38.15 |only Priest
accept Band of Veiled Shadows##8701 |goto 52.04,38.15 |only Rogue
accept Ring of the Gathering Storm##8698 |goto 52.04,38.15 |only Shaman
accept Ring of Unspoken Names##8702 |goto 52.04,38.15 |only Warlock
accept Signet of Unyielding Strength##8556 |goto 52.04,38.15 |only Warrior
stickystart "Collect_Idols"
stickystart "Collect_First_Scarab_Set"
stickystart "Collect_Second_Scarab_Set"
stickystart "Reach_Honored_Reputation"
step
collect 1 Qiraji Magisterial Ring##20884 |q 8700/1 |only Druid
collect 1 Qiraji Ceremonial Ring##20888 |q 8704/1 |only Hunter
collect 1 Qiraji Magisterial Ring##20884 |q 8699/1 |only Mage
collect 1 Qiraji Magisterial Ring##20884 |q 8703/1 |only Paladin
collect 1 Qiraji Ceremonial Ring##20888 |q 8697/1 |only Priest
collect 1 Qiraji Ceremonial Ring##20888 |q 8701/1 |only Rogue
collect 1 Qiraji Magisterial Ring##20884 |q 8698/1 |only Shaman
collect 1 Qiraji Ceremonial Ring##20888 |q 8702/1 |only Warlock
collect 1 Qiraji Magisterial Ring##20884 |q 8556/1 |only Warrior
|tip This has a chance to drop from Ayamiss the Hunter, Buru the Gorger, Moam, General Rajax, Kurinnaxx, and Ossirian the Unscarred in the Ruins of Ahn'Qiraj raid.
step
label "Collect_Idols"
collect 2 Alabaster Idol##20873 |q 8700/2 |only Druid
collect 2 Amber Idol##20869 |q 8704/2 |only Hunter
collect 2 Azure Idol##20866 |q 8699/2 |only Mage
collect 2 Vermillion Idol##20872 |q 8703/2 |only Paladin
collect 2 Obsidian Idol##20871 |q 8697/2 |only Priest
collect 2 Onyx Idol##20867 |q 8701/2 |only Rogue
collect 2 Vermillion Idol##20872 |q 8698/2 |only Shaman
collect 2 Jasper Idol##20870 |q 8702/2 |only Warlock
collect 2 Lambent Idol##20868 |q 8556/2 |only Warrior
|tip These have a chance to drop from trash mobs and Scarab Coffers in the Ruins of Ahn'Qiraj raid.
step
label "Collect_First_Scarab_Set"
collect 5 Bronze Scarab##20861 |q 8700/3 |only Druid
collect 5 Gold Scarab##20859 |q 8704/3 |only Hunter
collect 5 Gold Scarab##20859 |q 8699/3 |only Mage
collect 5 Silver Scarab##20860 |q 8703/3 |only Paladin
collect 5 Silver Scarab##20860 |q 8697/3 |only Priest
collect 5 Stone Scarab##20858 |q 8701/3 |only Rogue
collect 5 Silver Scarab##20860 |q 8698/3 |only Shaman
collect 5 Stone Scarab##20858 |q 8702/3 |only Warlock
collect 5 Bronze Scarab##20861 |q 8556/3 |only Warrior
|tip These have a chance to drop from trash mobs in the Ruins of Ahn'Qiraj and Temple of Ahn'Qiraj raids.
step
label "Collect_Second_Scarab_Set"
collect 5 Ivory Scarab##20865 |q 8700/4 |only Druid
collect 5 Clay Scarab##20863 |q 8704/4 |only Hunter
collect 5 Clay Scarab##20863 |q 8699/4 |only Mage
collect 5 Bone Scarab##20864 |q 8703/4 |only Paladin
collect 5 Bone Scarab##20864 |q 8697/4 |only Priest
collect 5 Crystal Scarab##20862 |q 8701/4 |only Rogue
collect 5 Bronze Scarab##20861 |q 8698/4 |only Shaman
collect 5 Crystal Scarab##20862 |q 8702/4 |only Warlock
collect 5 Ivory Scarab##20865 |q 8556/4 |only Warrior
|tip These have a chance to drop from trash mobs in the Ruins of Ahn'Qiraj and Temple of Ahn'Qiraj raids.
step
label "Reach_Honored_Reputation"
Reach Honored Reputation with the Cenarion Circle |condition rep("Cenarion Circle") >= Honored |or
'|condition completedanyq(8700,8704,8699,8703,8697,8701,8698,8702,8556) |or
step
talk Windcaller Yessendra##15498
turnin Band of Unending Life##8700 |goto 52.04,38.15 |only Druid
turnin Signet of the Unseen Path##8704 |goto 52.04,38.15 |only Hunter
turnin Band of Vaulted Secrets##8699 |goto 52.04,38.15 |only Mage
turnin Ring of Eternal Justice##8703 |goto 52.04,38.15 |only Paladin
turnin Ring of Infinite Wisdom##8697 |goto 52.04,38.15 |only Priest
turnin Band of Veiled Shadows##8701 |goto 52.04,38.15 |only Rogue
turnin Ring of the Gathering Storm##8698 |goto 52.04,38.15 |only Shaman
turnin Ring of Unspoken Names##8702 |goto 52.04,38.15 |only Warlock
turnin Signet of Unyielding Strength##8556 |goto 52.04,38.15 |only Warrior
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Ahn'Qiraj Gear\\Ruins of Ahn'Qiraj Weapon Quest",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Ruins of Ahn'Qiraj class-specific cloak.",
condition_end=function() return completedanyq(8708,8712,8707,8711,8705,8709,8706,8710,8558) end,
},[[
step
Reach Level 60 |ding 60
|tip Use the leveling guides to accomplish this.
step
talk Warden Haro##15499
accept Mace of Unending Life##8708 |goto Silithus 51.14,38.95 |only Druid
accept Scythe of the Unseen Path##8712 |goto 51.14,38.95 |only Hunter
accept Blade of Vaulted Secrets##8707 |goto 51.14,38.95 |only Mage
accept Blade of Eternal Justice##8711 |goto 51.14,38.95 |only Paladin
accept Gavel of Infinite Wisdom##8705 |goto 51.14,38.95 |only Priest
accept Dagger of Veiled Shadows##8709 |goto 51.14,38.95 |only Rogue
accept Hammer of the Gathering Storm##8706 |goto 51.14,38.95 |only Shaman
accept Kris of Unspoken Names##8710 |goto 51.14,38.95 |only Warlock
accept Sickle of Unyielding Strength##8558 |goto 51.14,38.95 |only Warrior
stickystart "Collect_Idols"
stickystart "Collect_First_Scarab_Set"
stickystart "Collect_Second_Scarab_Set"
stickystart "Reach_Exalted_Reputation"
step
collect 1 Qiraji Ornate Hilt##20890 |q 8708/1 |only Druid
collect 1 Qiraji Spiked Hilt##20886 |q 8712/1 |only Hunter
collect 1 Qiraji Ornate Hilt##20890 |q 8707/1 |only Mage
collect 1 Qiraji Spiked Hilt##20886 |q 8711/1 |only Paladin
collect 1 Qiraji Ornate Hilt##20890 |q 8705/1 |only Priest
collect 1 Qiraji Spiked Hilt##20886 |q 8709/1 |only Rogue
collect 1 Qiraji Spiked Hilt##20886 |q 8706/1 |only Shaman
collect 1 Qiraji Ornate Hilt##20890 |q 8710/1 |only Warlock
collect 1 Qiraji Spiked Hilt##20886 |q 8558/1 |only Warrior
|tip This has a chance to drop from Ayamiss the Hunter, Buru the Gorger, Moam, General Rajax, Kurinnaxx, and Ossirian the Unscarred in the Ruins of Ahn'Qiraj raid.
step
label "Collect_Idols"
collect 2 Jasper Idol##20870 |q 8708/2 |only Druid
collect 2 Azure Idol##20866 |q 8712/2 |only Hunter
collect 2 Obsidian Idol##20871 |q 8707/2 |only Mage
collect 2 Amber Idol##20869 |q 8711/2 |only Paladin
collect 2 Lambent Idol##20868 |q 8705/2 |only Priest
collect 2 Vermillion Idol##20872 |q 8709/2 |only Rogue
collect 2 Amber Idol##20869 |q 8706/2 |only Shaman
collect 2 Onyx Idol##20867 |q 8710/2 |only Warlock
collect 2 Alabaster Idol##20873 |q 8558/2 |only Warrior
|tip These have a chance to drop from trash mobs and Scarab Coffers in the Ruins of Ahn'Qiraj raid.
step
label "Collect_First_Scarab_Set"
collect 5 Crystal Scarab##20862 |q 8708/3 |only Druid
collect 5 Silver Scarab##20860 |q 8712/3 |only Hunter
collect 5 Silver Scarab##20860 |q 8707/3 |only Mage
collect 5 Bronze Scarab##20861 |q 8711/3 |only Paladin
collect 5 Bronze Scarab##20861 |q 8705/3 |only Priest
collect 5 Gold Scarab##20859 |q 8709/3 |only Rogue
collect 5 Bronze Scarab##20861 |q 8706/3 |only Shaman
collect 5 Gold Scarab##20859 |q 8710/3 |only Warlock
collect 5 Crystal Scarab##20862 |q 8558/3 |only Warrior
|tip These have a chance to drop from trash mobs in the Ruins of Ahn'Qiraj and Temple of Ahn'Qiraj raids.
step
label "Collect_Second_Scarab_Set"
collect 5 Stone Scarab##20858 |q 8708/4 |only Druid
collect 5 Bone Scarab##20864 |q 8712/4 |only Hunter
collect 5 Bone Scarab##20864 |q 8707/4 |only Mage
collect 5 Ivory Scarab##20865 |q 8711/4 |only Paladin
collect 5 Ivory Scarab##20865 |q 8705/4 |only Priest
collect 5 Clay Scarab##20863 |q 8709/4 |only Rogue
collect 5 Ivory Scarab##20865 |q 8706/4 |only Shaman
collect 5 Clay Scarab##20863 |q 8710/4 |only Warlock
collect 5 Stone Scarab##20858 |q 8558/4 |only Warrior
|tip These have a chance to drop from trash mobs in the Ruins of Ahn'Qiraj and Temple of Ahn'Qiraj raids.
step
label "Reach_Exalted_Reputation"
Reach Exalted Reputation with the Cenarion Circle |condition rep("Cenarion Circle") >= Exalted |or
'|condition completedanyq(8708,8712,8707,8711,8705,8709,8706,8710,8558) |or
step
talk Warden Haro##15499
turnin Mace of Unending Life##8708 |goto 51.14,38.95 |only Druid
turnin Scythe of the Unseen Path##8712 |goto 51.14,38.95 |only Hunter
turnin Blade of Vaulted Secrets##8707 |goto 51.14,38.95 |only Mage
turnin Blade of Eternal Justice##8711 |goto 51.14,38.95 |only Paladin
turnin Gavel of Infinite Wisdom##8705 |goto 51.14,38.95 |only Priest
turnin Dagger of Veiled Shadows##8709 |goto 51.14,38.95 |only Rogue
turnin Hammer of the Gathering Storm##8706 |goto 51.14,38.95 |only Shaman
turnin Kris of Unspoken Names##8710 |goto 51.14,38.95 |only Warlock
turnin Sickle of Unyielding Strength##8558 |goto 51.14,38.95 |only Warrior
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Ahn'Qiraj Gear\\Temple of Ahn'Qiraj Shoulder Quest",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Temple of Ahn'Qiraj class-specific shoulders.",
condition_end=function() return completedanyq(8669,8659,8625,8630,8594,8641,8602,8664,8544) end,
},[[
step
Reach Level 60 |ding 60
|tip Use the leveling guides to accomplish this.
step
talk Andorgos##15502
|tip She is located inside the Temple of Ahn'Qiraj raid.
|tip After killing The Prophet Skeram, run up the stairs and into the left-side alcove inside the temple entrance.
accept Genesis Shoulderpads##8669 |only Druid
accept Striker's Pauldrons##8659 |only Hunter
accept Enigma Shoulderpads##8625 |only Mage
accept Avenger's Pauldrons##8630 |only Paladin
accept Mantle of the Oracle##8594 |only Priest
accept Deathdealer's Spaulders##8641 |only Rogue
accept Stormcaller's Pauldrons##8602 |only Shaman
accept Doomcaller's Mantle##8664 |only Warlock
accept Conqueror's Spaulders##8544 |only Warrior
stickystart "Collect_Idols"
stickystart "Collect_First_Scarab_Set"
stickystart "Collect_Second_Scarab_Set"
stickystart "Reach_Neutral_Reputation"
step
collect 1 Qiraji Bindings of Dominance##20932 |q 8669/1 |only Druid
collect 1 Qiraji Bindings of Command##20928 |q 8659/1 |only Hunter
collect 1 Qiraji Bindings of Dominance##20932 |q 8625/1 |only Mage
collect 1 Qiraji Bindings of Dominance##20932 |q 8630/1 |only Paladin
collect 1 Qiraji Bindings of Command##20928 |q 8594/1 |only Priest
collect 1 Qiraji Bindings of Command##20928 |q 8641/1 |only Rogue
collect 1 Qiraji Bindings of Dominance##20932 |q 8602/1 |only Shaman
collect 1 Qiraji Bindings of Dominance##20932 |q 8664/1 |only Warlock
collect 1 Qiraji Bindings of Command##20928 |q 8544/1 |only Warrior
|tip This has a chance to drop from Princess Huhuran and Viscidus in the Ruins of Ahn'Qiraj raid.
step
label "Collect_Idols"
collect 2 Idol of Strife##20881 |q 8669/2 |only Druid
collect 2 Idol of War##20882 |q 8659/2 |only Hunter
collect 2 Idol of Death##20876 |q 8625/2 |only Mage
collect 2 Idol of Life##20879 |q 8630/2 |only Paladin
collect 2 Idol of Rebirth##20878 |q 8594/2 |only Priest
collect 2 Idol of the Sun##20874 |q 8641/2 |only Rogue
collect 2 Idol of Life##20879 |q 8602/2 |only Shaman
collect 2 Idol of the Sage##20877 |q 8664/2 |only Warlock
collect 2 Idol of Night##20875 |q 8544/2 |only Warrior
|tip These have a chance to drop from trash mobs and Scarab Coffers in the Ruins of Ahn'Qiraj raid.
step
label "Collect_First_Scarab_Set"
collect 5 Gold Scarab##20859 |q 8669/3 |only Druid
collect 5 Crystal Scarab##20862 |q 8659/3 |only Hunter
collect 5 Stone Scarab##20858 |q 8625/3 |only Mage
collect 5 Gold Scarab##20859 |q 8630/3 |only Paladin
collect 5 Silver Scarab##20860 |q 8594/3 |only Priest
collect 5 Silver Scarab##20860 |q 8641/3 |only Rogue
collect 5 Gold Scarab##20859 |q 8602/3 |only Shaman
collect 5 Bronze Scarab##20861 |q 8664/3 |only Warlock
collect 5 Clay Scarab##20863 |q 8544/3 |only Warrior
|tip These have a chance to drop from trash mobs in the Ruins of Ahn'Qiraj and Temple of Ahn'Qiraj raids.
step
label "Collect_Second_Scarab_Set"
collect 5 Bone Scarab##20864 |q 8669/4 |only Druid
collect 5 Ivory Scarab##20865 |q 8659/4 |only Hunter
collect 5 Bronze Scarab##20861 |q 8625/4 |only Mage
collect 5 Crystal Scarab##20862 |q 8630/4 |only Paladin
collect 5 Ivory Scarab##20865 |q 8594/4 |only Priest
collect 5 Clay Scarab##20863 |q 8641/4 |only Rogue
collect 5 Crystal Scarab##20862 |q 8602/4 |only Shaman
collect 5 Bone Scarab##20864 |q 8664/4 |only Warlock
collect 5 Stone Scarab##20858 |q 8544/4 |only Warrior
|tip These have a chance to drop from trash mobs in the Ruins of Ahn'Qiraj and Temple of Ahn'Qiraj raids.
step
label "Reach_Neutral_Reputation"
Reach Neutral Reputation with the Brood of Nozdormu |condition rep("Brood of Nozdormu") >= Neutral |or
'|condition completedanyq(8669,8659,8625,8630,8594,8641,8602,8664,8544) |or
step
talk Andorgos##15502
|tip She is located inside the Temple of Ahn'Qiraj raid.
|tip After killing The Prophet Skeram, run up the stairs and into the left-side alcove inside the temple entrance.
turnin Genesis Shoulderpads##8669 |only Druid
turnin Striker's Pauldrons##8659 |only Hunter
turnin Enigma Shoulderpads##8625 |only Mage
turnin Avenger's Pauldrons##8630 |only Paladin
turnin Mantle of the Oracle##8594 |only Priest
turnin Deathdealer's Spaulders##8641 |only Rogue
turnin Stormcaller's Pauldrons##8602 |only Shaman
turnin Doomcaller's Mantle##8664 |only Warlock
turnin Conqueror's Spaulders##8544 |only Warrior
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Ahn'Qiraj Gear\\Temple of Ahn'Qiraj Boots Quest",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Temple of Ahn'Qiraj class-specific boots.",
condition_end=function() return completedanyq(8665,8626,8634,8655,8596,8637,8621,8660,8559) end,
},[[
step
Reach Level 60 |ding 60
|tip Use the leveling guides to accomplish this.
step
talk Kandrostrasz##15503
|tip He is located inside the Temple of Ahn'Qiraj raid.
|tip After killing The Prophet Skeram, run up the stairs and into the left-side alcove inside the temple entrance.
accept Genesis Boots##8665 |only Druid
accept Striker's Footguards##8626 |only Hunter
accept Enigma Boots##8634 |only Mage
accept Avenger's Greaves##8655 |only Paladin
accept Footwraps of the Oracle##8596 |only Priest
accept Deathdealer's Boots##8637 |only Rogue
accept Stormcaller's Footguards##8621 |only Shaman
accept Doomcaller's Footwraps##8660 |only Warlock
accept Conqueror's Greaves##8559 |only Warrior
stickystart "Collect_Idols"
stickystart "Collect_First_Scarab_Set"
stickystart "Collect_Second_Scarab_Set"
stickystart "Reach_Neutral_Reputation"
step
collect 1 Qiraji Bindings of Dominance##20932 |q 8665/1 |only Druid
collect 1 Qiraji Bindings of Command##20928 |q 8626/1 |only Hunter
collect 1 Qiraji Bindings of Dominance##20932 |q 8634/1 |only Mage
collect 1 Qiraji Bindings of Dominance##20932 |q 8655/1 |only Paladin
collect 1 Qiraji Bindings of Command##20928 |q 8596/1 |only Priest
collect 1 Qiraji Bindings of Command##20928 |q 8637/1 |only Rogue
collect 1 Qiraji Bindings of Dominance##20932 |q 8621/1 |only Shaman
collect 1 Qiraji Bindings of Dominance##20932 |q 8660/1 |only Warlock
collect 1 Qiraji Bindings of Command##20928 |q 8559/1 |only Warrior
|tip This has a chance to drop from Princess Huhuran and Viscidus in the Ruins of Ahn'Qiraj raid.
step
label "Collect_Idols"
collect 2 Idol of Rebirth##20878 |q 8665/2 |only Druid
collect 2 Idol of Life##20879 |q 8626/2 |only Hunter
collect 2 Idol of the Sun##20874 |q 8634/2 |only Mage
collect 2 Idol of the Sage##20877 |q 8655/2 |only Paladin
collect 2 Idol of Death##20876 |q 8596/2 |only Priest
collect 2 Idol of Strife##20881 |q 8637/2 |only Rogue
collect 2 Idol of the Sage##20877 |q 8621/2 |only Shaman
collect 2 Idol of Night##20875 |q 8660/2 |only Warlock
collect 2 Idol of War##20882 |q 8559/2 |only Warrior
|tip These have a chance to drop from trash mobs and Scarab Coffers in the Ruins of Ahn'Qiraj raid.
step
label "Collect_First_Scarab_Set"
collect 5 Stone Scarab##20858 |q 8665/3 |only Druid
collect 5 Stone Scarab##20858 |q 8626/3 |only Hunter
collect 5 Silver Scarab##20860 |q 8634/3 |only Mage
collect 5 Bronze Scarab##20861 |q 8655/3 |only Paladin
collect 5 Bronze Scarab##20861 |q 8596/3 |only Priest
collect 5 Crystal Scarab##20862 |q 8637/3 |only Rogue
collect 5 Bronze Scarab##20861 |q 8621/3 |only Shaman
collect 5 Clay Scarab##20863 |q 8660/3 |only Warlock
collect 5 Ivory Scarab##20865 |q 8559/3 |only Warrior
|tip These have a chance to drop from trash mobs in the Ruins of Ahn'Qiraj and Temple of Ahn'Qiraj raids.
step
label "Collect_Second_Scarab_Set"
collect 5 Silver Scarab##20860 |q 8665/4 |only Druid
collect 5 Bone Scarab##20864 |q 8626/4 |only Hunter
collect 5 Crystal Scarab##20862 |q 8634/4 |only Mage
collect 5 Clay Scarab##20863 |q 8655/4 |only Paladin
collect 5 Gold Scarab##20859 |q 8596/4 |only Priest
collect 5 Bone Scarab##20864 |q 8637/4 |only Rogue
collect 5 Clay Scarab##20863 |q 8621/4 |only Shaman
collect 5 Ivory Scarab##20865 |q 8660/4 |only Warlock
collect 5 Gold Scarab##20859 |q 8559/4 |only Warrior
|tip These have a chance to drop from trash mobs in the Ruins of Ahn'Qiraj and Temple of Ahn'Qiraj raids.
step
label "Reach_Neutral_Reputation"
Reach Neutral Reputation with the Brood of Nozdormu |condition rep("Brood of Nozdormu") >= Neutral |or
'|condition completedanyq(8665,8626,8634,8655,8596,8637,8621,8660,8559) |or
step
talk Kandrostrasz##15503
|tip He is located inside the Temple of Ahn'Qiraj raid.
|tip After killing The Prophet Skeram, run up the stairs and into the left-side alcove inside the temple entrance.
turnin Genesis Boots##8665 |only Druid
turnin Striker's Footguards##8626 |only Hunter
turnin Enigma Boots##8634 |only Mage
turnin Avenger's Greaves##8655 |only Paladin
turnin Footwraps of the Oracle##8596 |only Priest
turnin Deathdealer's Boots##8637 |only Rogue
turnin Stormcaller's Footguards##8621 |only Shaman
turnin Doomcaller's Footwraps##8660 |only Warlock
turnin Conqueror's Greaves##8559 |only Warrior
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Ahn'Qiraj Gear\\Temple of Ahn'Qiraj Helm Quest",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Temple of Ahn'Qiraj class-specific helm.",
condition_end=function() return completedanyq(8667,8657,8632,8628,8592,8639,8623,8662,8561) end,
},[[
step
Reach Level 60 |ding 60
|tip Use the leveling guides to accomplish this.
step
talk Andorgos##15502
|tip She is located inside the Temple of Ahn'Qiraj raid.
|tip After killing The Prophet Skeram, run up the stairs and into the left-side alcove inside the temple entrance.
accept Genesis Helm##8667 |only Druid
accept Striker's Diadem##8657 |only Hunter
accept Enigma Circlet##8632 |only Mage
accept Avenger's Crown##8628 |only Paladin
accept Tiara of the Oracle##8592 |only Priest
accept Deathdealer's Helm##8639 |only Rogue
accept Stormcaller's Diadem##8623 |only Shaman
accept Doomcaller's Circlet##8662 |only Warlock
accept Conqueror's Crown##8561 |only Warrior
stickystart "Collect_Idols"
stickystart "Collect_First_Scarab_Set"
stickystart "Collect_Second_Scarab_Set"
stickystart "Reach_Friendly_Reputation"
step
collect 1 Vek'lor's Diadem##20930 |q 8667/1 |only Druid
collect 1 Vek'lor's Diadem##20930 |q 8657/1 |only Hunter
collect 1 Vek'nilash's Circlet##20926 |q 8632/1 |only Mage
collect 1 Vek'lor's Diadem##20930 |q 8628/1 |only Paladin
collect 1 Vek'nilash's Circlet##20926 |q 8592/1 |only Priest
collect 1 Vek'lor's Diadem##20930 |q 8639/1 |only Rogue
collect 1 Vek'lor's Diadem##20930 |q 8623/1 |only Shaman
collect 1 Vek'nilash's Circlet##20926 |q 8662/1 |only Warlock
collect 1 Vek'nilash's Circlet##20926 |q 8561/1 |only Warrior
|tip This has a chance to drop from Emperor Vek'lor and Emperor Vek'nilash in the Ruins of Ahn'Qiraj raid.
step
label "Collect_Idols"
collect 2 Idol of Life##20879 |q 8667/2 |only Druid
collect 2 Idol of Strife##20881 |q 8657/2 |only Hunter
collect 2 Idol of Night##20875 |q 8632/2 |only Mage
collect 2 Idol of Rebirth##20878 |q 8628/2 |only Paladin
collect 2 Idol of the Sage##20877 |q 8592/2 |only Priest
collect 2 Idol of War##20882 |q 8639/2 |only Rogue
collect 2 Idol of Rebirth##20878 |q 8623/2 |only Shaman
collect 2 Idol of Death##20876 |q 8662/2 |only Warlock
collect 2 Idol of the Sun##20874 |q 8561/2 |only Warrior
|tip These have a chance to drop from trash mobs and Scarab Coffers in the Ruins of Ahn'Qiraj raid.
step
label "Collect_First_Scarab_Set"
collect 5 Gold Scarab##20859 |q 8667/3 |only Druid
collect 5 Bronze Scarab##20861 |q 8657/3 |only Hunter
collect 5 Bronze Scarab##20861 |q 8632/3 |only Mage
collect 5 Stone Scarab##20858 |q 8628/3 |only Paladin
collect 5 Silver Scarab##20860 |q 8592/3 |only Priest
collect 5 Clay Scarab##20863 |q 8639/3 |only Rogue
collect 5 Stone Scarab##20858 |q 8623/3 |only Shaman
collect 5 Silver Scarab##20860 |q 8662/3 |only Warlock
collect 5 Crystal Scarab##20862 |q 8561/3 |only Warrior
|tip These have a chance to drop from trash mobs in the Ruins of Ahn'Qiraj and Temple of Ahn'Qiraj raids.
step
label "Collect_Second_Scarab_Set"
collect 5 Clay Scarab##20863 |q 8667/4 |only Druid
collect 5 Ivory Scarab##20865 |q 8657/4 |only Hunter
collect 5 Ivory Scarab##20865 |q 8632/4 |only Mage
collect 5 Crystal Scarab##20862 |q 8628/4 |only Paladin
collect 5 Bone Scarab##20864 |q 8592/4 |only Priest
collect 5 Gold Scarab##20859 |q 8639/4 |only Rogue
collect 5 Crystal Scarab##20862 |q 8623/4 |only Shaman
collect 5 Bone Scarab##20864 |q 8662/4 |only Warlock
collect 5 Stone Scarab##20858 |q 8561/4 |only Warrior
|tip These have a chance to drop from trash mobs in the Ruins of Ahn'Qiraj and Temple of Ahn'Qiraj raids.
step
label "Reach_Friendly_Reputation"
Reach Friendly Reputation with the Brood of Nozdormu |condition rep("Brood of Nozdormu") >= Friendly |or
'|condition completedanyq(8667,8657,8632,8628,8592,8639,8623,8662,8561) |or
step
talk Andorgos##15502
|tip She is located inside the Temple of Ahn'Qiraj raid.
|tip After killing The Prophet Skeram, run up the stairs and into the left-side alcove inside the temple entrance.
turnin Genesis Helm##8667 |only Druid
turnin Striker's Diadem##8657 |only Hunter
turnin Enigma Circlet##8632 |only Mage
turnin Avenger's Crown##8628 |only Paladin
turnin Tiara of the Oracle##8592 |only Priest
turnin Deathdealer's Helm##8639 |only Rogue
turnin Stormcaller's Diadem##8623 |only Shaman
turnin Doomcaller's Circlet##8662 |only Warlock
turnin Conqueror's Crown##8561 |only Warrior
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Ahn'Qiraj Gear\\Temple of Ahn'Qiraj Legs Quest",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Temple of Ahn'Qiraj class-specific legs.",
condition_end=function() return completedanyq(8668,8658,8631,8629,8593,8640,8624,8663,8560) end,
},[[
step
Reach Level 60 |ding 60
|tip Use the leveling guides to accomplish this.
step
talk Kandrostrasz##15503
|tip He is located inside the Temple of Ahn'Qiraj raid.
|tip After killing The Prophet Skeram, run up the stairs and into the left-side alcove inside the temple entrance.
accept Genesis Trousers##8668 |only Druid
accept Striker's Leggings##8658 |only Hunter
accept Enigma Leggings##8631 |only Mage
accept Avenger's Legguards##8629 |only Paladin
accept Trousers of the Oracle##8593 |only Priest
accept Deathdealer's Leggings##8640 |only Rogue
accept Stormcaller's Leggings##8624 |only Shaman
accept Doomcaller's Trousers##8663 |only Warlock
accept Conqueror's Legguards##8560 |only Warrior
stickystart "Collect_Idols"
stickystart "Collect_First_Scarab_Set"
stickystart "Collect_Second_Scarab_Set"
stickystart "Reach_Friendly_Reputation"
step
collect 1 Skin of the Great Sandworm##20931 |q 8668/1 |only Druid
collect 1 Skin of the Great Sandworm##20931 |q 8658/1 |only Hunter
collect 1 Ouro's Intact Hide##20927 |q 8631/1 |only Mage
collect 1 Skin of the Great Sandworm##20931 |q 8629/1 |only Paladin
collect 1 Ouro's Intact Hide##20927 |q 8593/1 |only Priest
collect 1 Ouro's Intact Hide##20927 |q 8640/1 |only Rogue
collect 1 Skin of the Great Sandworm##20931 |q 8624/1 |only Shaman
collect 1 Skin of the Great Sandworm##20931 |q 8663/1 |only Warlock
collect 1 Ouro's Intact Hide##20927 |q 8560/1 |only Warrior
|tip This has a chance to drop from Ouro in the Ruins of Ahn'Qiraj raid.
step
label "Collect_Idols"
collect 2 Idol of War##20882 |q 8668/2 |only Druid
collect 2 Idol of the Sun##20874 |q 8658/2 |only Hunter
collect 2 Idol of the Sage##20877 |q 8631/2 |only Mage
collect 2 Idol of Strife##20881 |q 8629/2 |only Paladin
collect 2 Idol of Life##20879 |q 8593/2 |only Priest
collect 2 Idol of Night##20875 |q 8640/2 |only Rogue
collect 2 Idol of Strife##20881 |q 8624/2 |only Shaman
collect 2 Idol of Rebirth##20878 |q 8663/2 |only Warlock
collect 2 Idol of Death##20876 |q 8560/2 |only Warrior
|tip These have a chance to drop from trash mobs and Scarab Coffers in the Ruins of Ahn'Qiraj raid.
step
label "Collect_First_Scarab_Set"
collect 5 Stone Scarab##20858 |q 8668/3 |only Druid
collect 5 Silver Scarab##20860 |q 8658/3 |only Hunter
collect 5 Silver Scarab##20860 |q 8631/3 |only Mage
collect 5 Ivory Scarab##20865 |q 8629/3 |only Paladin
collect 5 Gold Scarab##20859 |q 8593/3 |only Priest
collect 5 Stone Scarab##20858 |q 8640/3 |only Rogue
collect 5 Ivory Scarab##20865 |q 8624/3 |only Shaman
collect 5 Gold Scarab##20859 |q 8663/3 |only Warlock
collect 5 Bronze Scarab##20861 |q 8560/3 |only Warrior
|tip These have a chance to drop from trash mobs in the Ruins of Ahn'Qiraj and Temple of Ahn'Qiraj raids.
step
label "Collect_Second_Scarab_Set"
collect 5 Crystal Scarab##20862 |q 8668/4 |only Druid
collect 5 Bone Scarab##20864 |q 8658/4 |only Hunter
collect 5 Bone Scarab##20864 |q 8631/4 |only Mage
collect 5 Bronze Scarab##20861 |q 8629/4 |only Paladin
collect 5 Clay Scarab##20863 |q 8593/4 |only Priest
collect 5 Crystal Scarab##20862 |q 8640/4 |only Rogue
collect 5 Bronze Scarab##20861 |q 8624/4 |only Shaman
collect 5 Clay Scarab##20863 |q 8663/4 |only Warlock
collect 5 Ivory Scarab##20865 |q 8560/4 |only Warrior
|tip These have a chance to drop from trash mobs in the Ruins of Ahn'Qiraj and Temple of Ahn'Qiraj raids.
step
label "Reach_Friendly_Reputation"
Reach Friendly Reputation with the Brood of Nozdormu |condition rep("Brood of Nozdormu") >= Friendly |or
'|condition completedanyq(8668,8658,8631,8629,8593,8640,8624,8663,8560) |or
step
talk Kandrostrasz##15503
|tip He is located inside the Temple of Ahn'Qiraj raid.
|tip After killing The Prophet Skeram, run up the stairs and into the left-side alcove inside the temple entrance.
turnin Genesis Trousers##8668 |only Druid
turnin Striker's Leggings##8658 |only Hunter
turnin Enigma Leggings##8631 |only Mage
turnin Avenger's Legguards##8629 |only Paladin
turnin Trousers of the Oracle##8593 |only Priest
turnin Deathdealer's Leggings##8640 |only Rogue
turnin Stormcaller's Leggings##8624 |only Shaman
turnin Doomcaller's Trousers##8663 |only Warlock
turnin Conqueror's Legguards##8560 |only Warrior
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Ahn'Qiraj Gear\\Temple of Ahn'Qiraj Chest Quest",{
author="support@zygorguides.com",
description="This guide will walk you through obtaining the Temple of Ahn'Qiraj class-specific chest.",
condition_end=function() return completedanyq(8666,8656,8633,8627,8603,8638,8622,8661,8562) end,
},[[
step
Reach Level 60 |ding 60
|tip Use the leveling guides to accomplish this.
step
talk Vethsera##15504
|tip She is located inside the Temple of Ahn'Qiraj raid.
|tip After killing The Prophet Skeram, run up the stairs and into the left-side alcove inside the temple entrance.
accept Genesis Vest##8666 |only Druid
accept Striker's Hauberk##8656 |only Hunter
accept Enigma Robes##8633 |only Mage
accept Avenger's Breastplate##8627 |only Paladin
accept Vestments of the Oracle##8603 |only Priest
accept Deathdealer's Vest##8638 |only Rogue
accept Stormcaller's Hauberk##8622 |only Shaman
accept Doomcaller's Robes##8661 |only Warlock
accept Conqueror's Breastplate##8562 |only Warrior
stickystart "Collect_Idols"
stickystart "Collect_First_Scarab_Set"
stickystart "Collect_Second_Scarab_Set"
stickystart "Reach_Honored_Reputation"
step
collect 1 Husk of the Old God##20933 |q 8666/1 |only Druid
collect 1 Carapace of the Old God##20929 |q 8656/1 |only Hunter
collect 1 Husk of the Old God##20933 |q 8633/1 |only Mage
collect 1 Carapace of the Old God##20929 |q 8627/1 |only Paladin
collect 1 Husk of the Old God##20933 |q 8603/1 |only Priest
collect 1 Carapace of the Old God##20929 |q 8638/1 |only Rogue
collect 1 Carapace of the Old God##20929 |q 8622/1 |only Shaman
collect 1 Husk of the Old God##20933 |q 8661/1 |only Warlock
collect 1 Carapace of the Old God##20929 |q 8562/1 |only Warrior
|tip This has a chance to drop from C'Thun in the Ruins of Ahn'Qiraj raid.
step
label "Collect_Idols"
collect 2 Idol of Rebirth##20878 |q 8666/2 |only Druid
collect 2 Idol of Life##20879 |q 8656/2 |only Hunter
collect 2 Idol of the Sun##20874 |q 8633/2 |only Mage
collect 2 Idol of the Sage##20877 |q 8627/2 |only Paladin
collect 2 Idol of Death##20876 |q 8603/2 |only Priest
collect 2 Idol of Strife##20881 |q 8638/2 |only Rogue
collect 2 Idol of the Sage##20877 |q 8622/2 |only Shaman
collect 2 Idol of Night##20875 |q 8661/2 |only Warlock
collect 2 Idol of War##20882 |q 8562/2 |only Warrior
|tip These have a chance to drop from trash mobs and Scarab Coffers in the Ruins of Ahn'Qiraj raid.
step
label "Collect_First_Scarab_Set"
collect 5 Bronze Scarab##20861 |q 8666/3 |only Druid
collect 5 Gold Scarab##20859 |q 8656/3 |only Hunter
collect 5 Gold Scarab##20859 |q 8633/3 |only Mage
collect 5 Silver Scarab##20860 |q 8627/3 |only Paladin
collect 5 Stone Scarab##20858 |q 8603/3 |only Priest
collect 5 Bronze Scarab##20861 |q 8638/3 |only Rogue
collect 5 Silver Scarab##20860 |q 8622/3 |only Shaman
collect 5 Crystal Scarab##20862 |q 8661/3 |only Warlock
collect 5 Silver Scarab##20860 |q 8562/3 |only Warrior
|tip These have a chance to drop from trash mobs in the Ruins of Ahn'Qiraj and Temple of Ahn'Qiraj raids.
step
label "Collect_Second_Scarab_Set"
collect 5 Ivory Scarab##20865 |q 8666/4 |only Druid
collect 5 Clay Scarab##20863 |q 8656/4 |only Hunter
collect 5 Clay Scarab##20863 |q 8633/4 |only Mage
collect 5 Bone Scarab##20864 |q 8627/4 |only Paladin
collect 5 Crystal Scarab##20862 |q 8603/4 |only Priest
collect 5 Ivory Scarab##20865 |q 8638/4 |only Rogue
collect 5 Bone Scarab##20864 |q 8622/4 |only Shaman
collect 5 Stone Scarab##20858 |q 8661/4 |only Warlock
collect 5 Bone Scarab##20864 |q 8562/4 |only Warrior
|tip These have a chance to drop from trash mobs in the Ruins of Ahn'Qiraj and Temple of Ahn'Qiraj raids.
step
label "Reach_Honored_Reputation"
Reach Honored Reputation with the Brood of Nozdormu |condition rep("Brood of Nozdormu") >= Honored |or
'|condition completedanyq(8666,8656,8633,8627,8603,8638,8622,8661,8562) |or
step
talk Vethsera##15504
|tip She is located inside the Temple of Ahn'Qiraj raid.
|tip After killing The Prophet Skeram, run up the stairs and into the left-side alcove inside the temple entrance.
accept Genesis Vest##8666 |only Druid
accept Striker's Hauberk##8656 |only Hunter
accept Enigma Robes##8633 |only Mage
accept Avenger's Breastplate##8627 |only Paladin
accept Vestments of the Oracle##8603 |only Priest
accept Deathdealer's Vest##8638 |only Rogue
accept Stormcaller's Hauberk##8622 |only Shaman
accept Doomcaller's Robes##8661 |only Warlock
accept Conqueror's Breastplate##8562 |only Warrior
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Scepter of the Shifting Sands",{
author="support@zygorguides.com",
description="This guide will walk you through completing the Scepter of the Shifting Sands questline.",
condition_end=function() return completedq(8745) end,
},[[
step
talk Baristolth of the Shifting Sands##15180
accept What Tomorrow Brings##8286 |goto Silithus 49.45,36.45
step
Follow the path |goto Tanaris 61.19,50.58 < 75 |only if walking
Discover the Brood of Nozdormu |q 8286/1 |goto 64.24,50.26
step
talk Baristolth of the Shifting Sands##15180
turnin What Tomorrow Brings##8286 |goto Silithus 49.45,36.45
accept Only One May Rise##8288 |goto 49.45,36.45
step
kill Broodlord Lashlayer##12017
|tip It's the third boss in the Blackwing Lair raid.
|tip You will need a raid group for this.
collect 1 Head of the Broodlord Lashlayer##20383 |q 8288/1
step
talk Baristolth of the Shifting Sands##15180
turnin Only One May Rise##8288 |goto 49.45,36.45
accept The Path of the Righteous##8301 |goto 49.45,36.45
stickystart "Reach_Neutral_With_Brood_Of_Nozdormu"
step
Kill Silithid enemies around this area
|tip They look like large bugs.
|tip These enemies are elite and may require a group to kill.
collect 200 Silithid Carapace Fragment##20384 |q 8301/1 |goto 45.22,26.25
You can find more around:
[25.15,59.22]
[57.64,81.91]
step
talk Baristolth of the Shifting Sands##15180
turnin The Path of the Righteous##8301 |goto 49.45,36.45
step
label "Accept_The_Hand_of_the_Righteous"
talk Baristolth of the Shifting Sands##15180
accept The Hand of the Righteous##8302 |goto 49.45,36.45 |or
'|condition rep("Brood of Nozdormu") >= Neutral |or
step
Kill Silithid enemies around this area
|tip They look like large bugs.
|tip These enemies are elite and may require a group to kill.
|tip You will repeat this quest until neutral with the Brood of Nozdormu faction.
|tip This requires around 41,400 carapace fragments, so it's best to find a group.
collect 200 Silithid Carapace Fragment##20384 |q 8302/1 |goto 45.22,26.25 |or
You can find more around:
[25.15,59.22]
[57.64,81.91]
'|condition rep("Brood of Nozdormu") >= Neutral |or
step
talk Baristolth of the Shifting Sands##15180
turnin The Hand of the Righteous##8302 |goto 49.45,36.45 |next "Accept_The_Hand_of_the_Righteous" |or
|tip Each time you turn in this quest you will receive a "Proxy of Nozdormu" item.
|tip Target a friend and use the item to deputize them so they can collect carapace fragments as well.
|tip You must use or destroy your previous "Proxy of Nozdormu" before you can complete this quest.
'|condition rep("Brood of Nozdormu") >= Neutral |or
step
label "Reach_Neutral_With_Brood_Of_Nozdormu"
Reach Neutral Reputation with the Brood of Nozdormu |condition rep("Brood of Nozdormu") >= Neutral
step
talk Baristolth of the Shifting Sands##15180
accept Anachronos##8303 |goto 49.45,36.45
step
talk Anachronos##15192
turnin Anachronos##8303 |goto Tanaris 65.27,50.03
accept Long Forgotten Memories##8305 |goto 65.27,50.03
step
click Crystalline Tear
|tip It's a small red crystal on the ground.
turnin Long Forgotten Memories##8305 |goto Silithus 28.67,89.14
accept A Pawn on the Eternal Board##8519 |goto 28.67,89.14
step
talk Anachronos##15192
turnin A Pawn on the Eternal Board##8519 |goto Tanaris 65.27,50.03
accept The Charge of the Dragonflights##8555 |goto 65.27,50.03
step
talk Anachronos##15192
turnin The Charge of the Dragonflights##8555 |goto 65.27,50.03
stickystart "Collect_Deeprock_Salt"
stickystart "Collect_Arcanite_Bar"
stickystart "Collect_Elementium_Ore"
stickystart "Collect_Azerothian_Diamond"
stickystart "Collect_Blue_Sapphire"
step
_Collect the Following Items:_
collect 20 Goblin Rocket Fuel##9061 |q 8586 |future
|tip These are required to complete the quest "Dirge's Kickin' Chimaerok Chops." |notinsticky
|tip You can create them with Alchemy or purchase them from the Auction House.
|tip Each one requires one Firebloom, one Volatile Rum, and one Leaded Vial to craft.
step
label "Collect_Deeprock_Salt"
_Collect the Following Items:_ |notinsticky
Kill Rock Elemental enemies around this area
collect 20 Deeprock Salt##8150 |goto Badlands 14.16,39.38 |q 8586 |future
|tip You can also purchase these from the Auction House.
|tip These are required to complete the quest "Dirge's Kickin' Chimaerok Chops." |notinsticky
step
label "Collect_Arcanite_Bar"
_Collect the Following Items:_ |notinsticky
collect 20 Arcanite Bar##12360 |q 8728 |future
|tip These are required to complete the quest "The Good News and The Bad News." |notinsticky
|tip You can create them with Alchemy or purchase them from the Auction House.
|tip Each one requires one Arcane Crystal and one Thorium Bar to craft.
step
label "Collect_Elementium_Ore"
_Collect the Following Items:_ |notinsticky
kill Blackwing Technician##13996+
|tip These spawn and flee from Vaelastrasz the Corrupt's room in Blackwing Lair.
|tip You must kill them quickly before they flee to safety.
collect 10 Elementium Ore##18562 |q 8728 |future
|tip These are required to complete the quest "The Good News and The Bad News." |notinsticky
|tip You can also purchase these from the Auction House.
step
label "Collect_Azerothian_Diamond"
_Collect the Following Items:_ |notinsticky
collect 10 Azerothian Diamond##12800 |q 8728 |future
|tip These are required to complete the quest "The Good News and The Bad News." |notinsticky
|tip These can be mined from any type of Thorium Vein.
|tip They can also be contained inside Gray Sacks of Gems dropped by Onyxia, Nefarian, and the various World Bosses.
step
label "Collect_Blue_Sapphire"
_Collect the Following Items:_ |notinsticky
collect 10 Blue Sapphire##12361 |q 8728 |future
|tip These are required to complete the quest "The Good News and The Bad News." |notinsticky
|tip These can be mined from any type of Thorium Vein.
|tip They can also be contained inside Gray Sacks of Gems dropped by Onyxia, Nefarian, and the various World Bosses.
step
talk Spirit of Azuregos##15481
|tip He walks all over the area.
|tip You will need to search around.
|tip Make sure you talk to the spirit version.
Tell him _"How did you know? I mean, yes... Yes I am looking for that shard. Do you have it?"_
collect 1 Magical Ledger##20949 |goto Azshara 55.58,79.77
step
use the Magical Ledger##20949
accept Azuregos's Magical Ledger##8575
step
talk Narain Soothfancy##11811
|tip Inside the building.
turnin Azuregos's Magical Ledger##8575 |goto Tanaris 65.24,18.58
step
talk Narain Soothfancy##11811
|tip Inside the building.
accept Translating the Ledger##8576 |goto 65.24,18.58
step
talk Narain Soothfancy##11811
|tip Inside the building.
turnin Translating the Ledger##8576 |goto 65.24,18.58
step
talk Narain Soothfancy##11811
|tip Inside the building.
accept Stewvul, Ex-B.F.F.##8577 |goto 65.24,18.58
accept Never Ask Me About My Business##8584 |goto 65.24,18.58
accept Draconic for Dummies##8597 |goto 65.24,18.58
step
talk Meridith the Mermaiden##15526
|tip Underwater.
accept Love Song for Narain##8599 |goto 59.43,96.04
step
talk Narain Soothfancy##11811
|tip Inside the building.
turnin Love Song for Narain##8599 |goto 65.24,18.58
step
talk Meridith the Mermaiden##15526
|tip Underwater.
Tell her _"That would be wonderful! Thank you, Merideth."_
Gain the "Siren's Song" Buff |havebuff spell:25678 |goto 59.43,96.04 |q 8597
step
click Freshly Dug Dirt
|tip Quickly swim southeast to the pair of secret islands.
|tip The buff will expire in three minutes.
|tip On the island south of the metal rig.
turnin Draconic for Dummies##8597
accept rAnS0m##8598
step
talk Narain Soothfancy##11811
|tip Inside the building.
turnin rAnS0m##8598 |goto Tanaris 65.24,18.58
accept Decoy!##8606 |goto 65.24,18.58
step
talk Dirge Quikcleave##8125
|tip Inside the building.
turnin Never Ask Me About My Business##8584 |goto 52.63,28.12
accept The Isle of Dread!##8585 |goto 52.63,28.12
stickystart "Kill_Number_Two"
step
Cross the bridge |goto Winterspring 61.24,74.20 < 50 |only if walking
Follow the path |goto 63.43,72.69 < 40 |only if walking
Follow the path up |goto 66.02,72.69 < 40 |only if walking
use Narain's Special Kit##21042
Open Narain's Special Kit |condition itemcount(21042) == 0 |goto 67.55,72.84 |q 8606
step
use Narain's Turban##21039
Transform into Narain Soothfancy |havebuff spell:25688 |goto 67.55,72.84 |q 8606
step
use the Bag of Gold##21041
Place the Bag of Loot |condition itemcount(21041) == 0 |goto 67.55,72.84 |q 8606
|tip Placing the Bag of Loot will summon Number Two.
step
label "Kill_Number_Two"
Watch the dialogue |notinsticky
kill Number Two##15554 |q 8606/1 |goto 67.23,72.60
|tip You will need a group of at least three people to kill it.
stickystart "Collect_Chimaerok_Tenderloin"
step
Follow the path up |goto Feralas 34.14,77.78 < 50 |only if walking
kill Lord Lakmaeran##12803
|tip You will need a group for this, preferrably at least ten people.
collect 1 Lakmaeran's Carcass##21027 |q 8585/1 |goto 29.34,72.63
step
label "Collect_Chimaerok_Tenderloin"
Kill Chimaerok enemies around this area
|tip You will need a group for this, preferrably at least ten people. |notinsticky
collect 20 Chimaerok Tenderloin##21024 |q 8585/2 |goto 28.51,74.88
step
talk Dirge Quikcleave##8125
|tip Inside the building.
turnin The Isle of Dread!##8585 |goto Tanaris 52.63,28.12
accept Dirge's Kickin' Chimaerok Chops##8586 |goto 52.63,28.12
step
talk Narain Soothfancy##11811
|tip Inside the building.
turnin Decoy!##8606 |goto 65.24,18.58
accept The Only Prescription##8620 |goto 65.24,18.58
step
Enter the building |goto Duswallow Marsh 77.25,17.41
kill Doctor Weavil##15552
|tip Upstairs inside the building.
|tip You will need a sizeable group to kill him.
collect 1 Draconic for Dummies##21103 |goto 77.85,17.12 |q 8620
step
kill Onyxia##10184
|tip Inside Onxyia's Lair.
collect 2 Draconic for Dummies##21103 |goto Kalimdor 56.58,71.55 |q 8620
step
Cross the bridge |goto Winterspring 62.43,67.46 < 50 |only if walking
Kill enemies around this area
collect 3 Draconic for Dummies##21103 |goto 60.59,78.67 |q 8620
|tip Any elite demon in Darkwhisper Gorge can drop this.
step
click Draconic for Dummies
|tip You will need a group or stealth to survive the opposing faction's city. |only Alliance
collect 8 Draconic for Dummies##21103 |goto Undercity 77.05,38.93 |q 8620
step
click Inconspicuous Crate
turnin Stewvul, Ex-B.F.F.##8577 |goto Silverpine Forest 46.19,86.67
accept Scrying Goggles? No Problem!##8578 |goto 46.19,86.67
step
Kill Rock Elemental enemies around this area
collect 20 Deeprock Salt##8150 |q 8586/2 |goto Badlands 14.16,39.38
|tip You can also purchase these from the Auction House.
step
kill Ebonroc##14601
|tip It is the fifth boss of the Blackwing Lair raid.
collect 6 Draconic for Dummies##21103 |q 8620
stickystart "Collect_Draconic_Scrying_Goggles"
step
kill Ragnaros##11502
|tip He is the final boss of the Molten Core raid.
collect 5 Draconic for Dummies##21103 |q 8620
step
label "Collect_Draconic_Scrying_Goggles"
Kill enemies inside Molten Core
collect 1 Narain's Scrying Goggles##20951 |q 8578/1
|tip These goggles have a chance to drop from trash mobs inside the Molten Core raid.
step
Enter Stormwind Keep |goto Stormwind City 69.37,28.39 < 20 |only if walking
click Draconic for Dummies
|tip You will need a group or stealth to survive the opposing faction's city. |only Horde
|tip It's the open book on the corner of the statue.
Choose _<Take this book for the good of Azeroth!>_
collect 7 Draconic for Dummies##21103 |goto Stormwind City 71.97,6.88 |q 8620
step
Watch the dialogue
talk Malfurion Stormrage##15362
|tip Inside the Sunken Temple dungeon.
|tip He will appear in front of Shade of Eranikus when you walk near.
accept Eranikus, Tyrant of the Dream##8733
step
Kill enemies around this area
collect 4 Draconic for Dummies##21103 |goto Blasted Lands 44.40,56.63 |q 8620
|tip Any elite demon in The Tainted Scar can drop this.
step
talk Forest Wisp##15624
turnin Eranikus, Tyrant of the Dream##8733 |goto Teldrassil 37.56,47.93
accept Tyrande and Remulos##8734 |goto 37.56,47.93
step
talk Keeper Remulos##11832
turnin Tyrande and Remulos##8734 |goto Moonglade 36.19,41.81
accept The Nightmare's Corruption##8735 |goto 36.19,41.81
step
Follow the path |goto Ashenvale 89.00,41.02 < 50 |only if walking
Kill Emeraldon enemies around this area
|tip You will need a group for this.
collect 1 Fragment of the Nightmare's Corruption##21147 |goto 93.61,39.65 |q 8735/1
step
Kill Jademir enemies around this area
|tip You will need a group for this.
collect 1 Fragment of the Nightmare's Corruption##21148 |goto Feralas 50.70,12.50 |q 8735/3
step
Follow the path up |goto Duskwood 47.36,61.77 < 40 |only if walking
Enter the Twilight Grove |goto 46.49,55.22 < 30 |only if walking
kill Twilight Corrupter##15625
|tip You will need a group for this.
collect 1 Fragment of the Nightmare's Corruption##21149 |goto 48.98,34.39 |q 8735/2
step
Cross the bridge |goto The Hinterlands 60.64,38.41 < 20 |only if walking
Kill Verdantine enemies around this area
|tip You will need a group for this.
collect 1 Fragment of the Nightmare's Corruption##21146 |goto 62.91,30.32 |q 8735/4
step
talk Keeper Remulos##11832
turnin The Nightmare's Corruption##8735 |goto Moonglade 36.19,41.81
accept The Nightmare Manifests##8736 |goto 36.19,41.81
step
Defend Nighthaven from Eranikus |q 8736/1 |goto 48.04,34.31
|tip You will need a raid to accomplish this.
|tip You cannot let Keeper Remulos die or kill Eranikus.
step
talk Keeper Remulos##11832
turnin The Nightmare Manifests##8736 |goto 36.19,41.81
accept The Champion Returns##8741 |goto 36.19,41.81
step
collect 20 Goblin Rocket Fuel##9061 |q 8586/1
|tip You can create them with Alchemy or purchase them from the Auction House.
|tip Each one requires one Firebloom, one Volatile Rum, and one Leaded Vial to craft.
step
talk Dirge Quikcleave##8125
|tip Inside the building.
turnin Dirge's Kickin' Chimaerok Chops##8586 |goto Tanaris 52.63,28.12
accept Return to Narain##8587 |goto 52.63,28.12
step
use the Magical Book Binding##21112
collect 1 Draconic For Dummies: Volume II##21111 |q 8620/1
step
talk Narain Soothfancy##11811
|tip Inside the building.
turnin Scrying Goggles? No Problem!##8578 |goto 65.24,18.58
turnin Return to Narain##8587 |goto 65.24,18.58
turnin The Only Prescription##8620 |goto  65.24,18.58
step
talk Anachronos##15192
turnin The Champion Returns##8741 |goto 65.27,50.03
step
talk Vaelastrasz the Corrupt##13020
|tip The second boss inside the Blackwing Lair raid.
accept Nefarius's Corruption##8730
|tip You will only have five hours to kill Nefarian, collect the Red Scepter Shard, and turn in this quest.
step
kill Nefarian##11583
|tip He is the final boss inside the Blackwing Lair raid.
|tip You must kill him and turn in this quest within the five hour time limit.
collect 1 Red Scepter Shard##21138
|tip Only one person in the raid can loot this item per reset.
step
talk Anachronos##15192
turnin Nefarius's Corruption##8730 |goto 65.27,50.03
|tip You must turn in this quest within the five hour time limit.
step
talk Narain Soothfancy##11811
|tip Inside the building.
accept The Good News and The Bad News##8728 |goto 65.24,18.58
stickystart "Collect_Elementium_Ores"
stickystart "Collect_Azerothian_Diamonds"
stickystart "Collect_Blue_Sapphires"
step
_Collect the Following Items:_ |notinsticky
collect 20 Arcanite Bar##12360 |q 8728/1
|tip These are required to complete the quest "The Good News and The Bad News." |notinsticky
|tip You can create them with Alchemy or purchase them from the Auction House.
|tip Each one requires one Arcane Crystal and one Thorium Bar to craft.
step
label "Collect_Elementium_Ores"
_Collect the Following Items:_ |notinsticky
kill Blackwing Technician##13996+
|tip These spawn and flee from Vaelastrasz the Corrupt's room in Blackwing Lair.
|tip You must kill them quickly before they flee to safety.
collect 10 Elementium Ore##18562 |q 8728/2
|tip These are required to complete the quest "The Good News and The Bad News." |notinsticky
|tip You can also purchase these from the Auction House.
step
label "Collect_Azerothian_Diamonds"
_Collect the Following Items:_ |notinsticky
collect 10 Azerothian Diamond##12800 |q 8728/3
|tip These are required to complete the quest "The Good News and The Bad News." |notinsticky
|tip These can be mined from any type of Thorium Vein.
|tip They can also be contained inside Gray Sacks of Gems dropped by Onyxia, Nefarian, and the various World Bosses.
step
label "Collect_Blue_Sapphires"
_Collect the Following Items:_ |notinsticky
collect 10 Blue Sapphire##12361 |q 8728/4
|tip These are required to complete the quest "The Good News and The Bad News." |notinsticky
|tip These can be mined from any type of Thorium Vein.
|tip They can also be contained inside Gray Sacks of Gems dropped by Onyxia, Nefarian, and the various World Bosses.
step
talk Narain Soothfancy##11811
|tip Inside the building.
turnin The Good News and The Bad News##8728 |goto 65.24,18.58
accept The Wrath of Neptulon##8729 |goto 65.24,18.58
step
use the Arcanite Buoy##21136
kill Maws##15571
|tip Using the buoy will summon it.
|tip You will need a raid to defeat it.
collect 1 Blue Scepter Shard##21137 |goto Azshara 65.88,54.05
step
talk Anachronos##15192
turnin The Wrath of Neptulon##8729 |goto Tanaris 65.27,50.03
step
talk Anachronos##15192
accept The Might of Kalimdor##8742 |goto 65.27,50.03
step
click The Scarab Gong##180717
accept Bang a Gong!##8743 |goto Silithus 25.71,90.86
step
click The Scarab Gong##180717
turnin Bang a Gong!##8743 |goto 25.71,90.86
step
talk Jonathan the Revelator##15693
accept Treasure of the Timeless One##8745 |goto 25.94,90.96
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Ahn'Qiraj Gear\\Signet Ring of the Bronze Dragonflight",{
author="support@zygorguides.com",
description="This guide will walk you through acquiring and upgrading a Signet Ring of the Bronze Dragonflight.",
condition_end=function() return completedanyq(8761,8751,8756,8765,8764,8766) end,
},[[
step
Reach Neutral Reputation with the Brood of Nozdormu |condition rep("Brood of Nozdormu") >= Neutral |or
|tip Killing trash and bosses inside the "Temple of Ahn'Qiraj" and "Ruins of Ahn'Qiraj" raids grants reputation.
|tip Completing the repeatable quest "The Hand of the Righteous" in Cenarion Hold also grants reputation.
|tip You can gain reputation by completing Ahn'Qiraj raid quests and the Scepter of the Shifting Sands questline too.
'|condition completedanyq(8757,8747,8752) |or
step
_Choose a path:_
|tip Accepting one of these quests will lock you into that questline until you complete it.
|tip You can switch to a different ring after you complete your first questline.
talk Anachronos##15192
accept The Path of the Invoker##8757 |goto Tanaris 65.27,50.03 |noautoaccept |or
|tip This quest grants an intellect-based caster ring.
accept The Path of the Protector##8747 |goto 65.27,50.03 |noautoaccept |or
|tip This quest grants a strength-based defensive ring.
accept The Path of the Conqueror##8752 |goto 65.27,50.03 |noautoaccept |or
|tip This quest grants an agility-based offensive ring.
step
Reach Friendly Reputation with the Brood of Nozdormu |condition rep("Brood of Nozdormu") >= Friendly |or
|tip Killing trash and bosses inside the "Temple of Ahn'Qiraj" and "Ruins of Ahn'Qiraj" raids grants reputation.
|tip Completing the repeatable quest "The Hand of the Righteous" in Cenarion Hold also grants reputation.
|tip You can gain reputation by completing Ahn'Qiraj raid quests and the Scepter of the Shifting Sands questline too.
'|condition completedanyq(8758,8748,8753) |or
step
talk Anachronos##15192
accept The Path of the Invoker##8758 |goto 65.27,50.03 |only if completedq(8757)
accept The Path of the Protector##8748 |goto 65.27,50.03 |only if completedq(8747)
accept The Path of the Conqueror##8753 |goto 65.27,50.03 |only if completedq(8752)
step
Reach Honored Reputation with the Brood of Nozdormu |condition rep("Brood of Nozdormu") >= Honored |or
|tip Killing trash and bosses inside the "Temple of Ahn'Qiraj" and "Ruins of Ahn'Qiraj" raids grants reputation.
|tip Completing the repeatable quest "The Hand of the Righteous" in Cenarion Hold also grants reputation.
|tip You can gain reputation by completing Ahn'Qiraj raid quests and the Scepter of the Shifting Sands questline too.
'|condition completedanyq(8759,8749,8754) |or
step
talk Anachronos##15192
accept The Path of the Invoker##8759 |goto 65.27,50.03 |only if completedq(8757)
accept The Path of the Protector##8749 |goto 65.27,50.03 |only if completedq(8747)
accept The Path of the Conqueror##8754 |goto 65.27,50.03 |only if completedq(8752)
step
Reach Revered Reputation with the Brood of Nozdormu |condition rep("Brood of Nozdormu") >= Revered |or
|tip Killing trash and bosses inside the "Temple of Ahn'Qiraj" and "Ruins of Ahn'Qiraj" raids grants reputation.
|tip Completing the repeatable quest "The Hand of the Righteous" in Cenarion Hold also grants reputation.
|tip You can gain reputation by completing Ahn'Qiraj raid quests and the Scepter of the Shifting Sands questline too.
'|condition completedanyq(8760,8750,8755) |or
step
talk Anachronos##15192
accept The Path of the Invoker##8760 |goto 65.27,50.03 |only if completedq(8757)
accept The Path of the Protector##8750 |goto 65.27,50.03 |only if completedq(8747)
accept The Path of the Conqueror##8755 |goto 65.27,50.03 |only if completedq(8752)
step
Reach Exalted Reputation with the Brood of Nozdormu |condition rep("Brood of Nozdormu") >= Exalted |or
|tip Killing trash and bosses inside the "Temple of Ahn'Qiraj" and "Ruins of Ahn'Qiraj" raids grants reputation.
|tip Completing the repeatable quest "The Hand of the Righteous" in Cenarion Hold also grants reputation.
|tip You can gain reputation by completing Ahn'Qiraj raid quests and the Scepter of the Shifting Sands questline too.
'|condition completedanyq(8761,8751,8756) |or
step
talk Anachronos##15192
accept The Grand Invoker##8761 |goto 65.27,50.03 |only if completedq(8757)
accept The Protector of Kalimdor##8751 |goto 65.27,50.03 |only if completedq(8747)
accept The Qiraji Conqueror##8756 |goto 65.27,50.03 |only if completedq(8752)
step
Click Here to Change Paths |confirm
|tip You will need to provide 15 Bronze Scarabs, 15 Crystal Scarabs, and 15 Clay Scarabs in addition to your ring. |only if completedq(8761)
|tip You will need to provide 15 Stone Scarabs, 15 Gold Scarabs, and 15 Silver Scarabs in addition to your ring. |only if completedq(8751)
|tip You will need to provide 15 Bone Scarabs, 15 Ivory Scarabs, and 15 Stone Scarabs in addition to your ring. |only if completedq(8756)
stickystart "Collect_Crystal_Scarabs"
stickystart "Collect_Clay_Scarabs"
stickystart "Collect_Stone_Scarabs_8764"
stickystart "Collect_Gold_Scarabs"
stickystart "Collect_Silver_Scarabs"
stickystart "Collect_Bone_Scarabs"
stickystart "Collect_Ivory_Scarabs"
stickystart "Collect_Stone_Scarabs_8766"
step
collect 15 Bronze Scarab##20861 |q 8765 |future
step
label "Collect_Crystal_Scarabs"
collect 15 Crystal Scarab##20862 |q 8765 |future
step
label "Collect_Clay_Scarabs"
collect 15 Clay Scarab##20863 |q 8765 |future
step
label "Collect_Stone_Scarabs_8764"
collect 15 Stone Scarab##20858 |q 8764 |future
step
label "Collect_Gold_Scarabs"
collect 15 Gold Scarab##20859 |q 8764 |future
step
label "Collect_Silver_Scarabs"
collect 15 Silver Scarab##20860 |q 8764 |future
step
label "Collect_Bone_Scarabs"
collect 15 Bone Scarab##20864 |q 8766 |future
step
label "Collect_Ivory_Scarabs"
collect 15 Ivory Scarab##20865 |q 8766 |future
step
label "Collect_Stone_Scarabs_8766"
collect 15 Stone Scarab##20858 |q 8766 |future
step
talk Anachronos##15192
accept The Changing of Paths - Invoker No More##8765 |only if completedq(8761)
accept The Changing of Paths - Protector No More##8764 |only if completedq(8751)
accept The Changing of Paths - Conqueror No More##8766 |only if completedq(8756)
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Cenarion Battlegear",{
author="support@zygorguides.com",
description="This guide will walk you through acquiring and the four pieces of Cenarion Battlegear.",
condition_end=function() return completedanyq(8548,8572,8573,8574) end,
},[[
step
talk Windcaller Kaldon##15540
accept Cenarion Battlegear##8800 |goto Silithus 49.98,36.36
step
talk Vargus##15176
turnin Cenarion Battlegear##8800 |goto 51.22,38.85
step
talk Vargus##15176
accept Volunteer's Battlegear##8548 |goto 51.22,38.85
stickystart "Collect_Cenarion_Logistics_Badge_8548"
stickystart "Collect_Cenarion_Tactical_Badge_8548"
stickystart "Reach_Friendly_Reputation"
step
collect 5 Cenarion Combat Badge##20802 |q 8548/1
|tip Use the "Cenarion Field Duty Combat Assignments" leveling guide to collect these.
step
label "Collect_Cenarion_Logistics_Badge_8548"
collect 3 Cenarion Logistics Badge##20800 |q 8548/2
|tip Use the "Cenarion Field Duty Logistics Assignments" leveling guide to collect these.
step
label "Collect_Cenarion_Tactical_Badge_8548"
collect 7 Cenarion Tactical Badge##20801 |q 8548/3
|tip Use the "Cenarion Field Duty Tactical Assignments" leveling guide to collect these.
step
label "Reach_Friendly_Reputation"
Reach Friendly Reputation with the Cenarion Circle |condition rep("Cenarion Circle") >= Friendly
|tip Killing Twilight enemies in Silithus grants 1 reputation each until Honored.
|tip Killing Twilight Flamereavers in Silithus grants 1 reputation each until Revered.
|tip Killing mobs and bosses in the "Ruins of Ahn'Qiraj" and "Temple of Ahn'Qiraj" raids grants various levels of reputation until Exalted.
|tip Completing the repeatable quests "Field Duty" and "Encrypted Twilight Texts" in Cenarion Hold also grants reputation.
step
talk Vargus##15176
turnin Volunteer's Battlegear##8548 |goto 51.22,38.85
step
talk Vargus##15176
accept Veteran's Battlegear##8572 |goto 51.22,38.85
stickystart "Collect_Cenarion_Logistics_Badge_8572"
stickystart "Collect_Cenarion_Tactical_Badge_8572"
stickystart "Reach_Honored_Reputation"
step
collect 7 Cenarion Combat Badge##20802 |q 8572/1
|tip Use the "Cenarion Field Duty Combat Assignments" leveling guide to collect these.
step
label "Collect_Cenarion_Logistics_Badge_8572"
collect 4 Cenarion Logistics Badge##20800 |q 8572/2
|tip Use the "Cenarion Field Duty Logistics Assignments" leveling guide to collect these.
step
label "Collect_Cenarion_Tactical_Badge_8572"
collect 4 Cenarion Tactical Badge##20801 |q 8572/3
|tip Use the "Cenarion Field Duty Tactical Assignments" leveling guide to collect these.
step
label "Reach_Honored_Reputation"
Reach Honored Reputation with the Cenarion Circle |condition rep("Cenarion Circle") >= Honored
|tip Killing Twilight enemies in Silithus grants 1 reputation each until Honored.
|tip Killing Twilight Flamereavers in Silithus grants 1 reputation each until Revered.
|tip Killing mobs and bosses in the "Ruins of Ahn'Qiraj" and "Temple of Ahn'Qiraj" raids grants various levels of reputation until Exalted.
|tip Completing the repeatable quests "Field Duty" and "Encrypted Twilight Texts" in Cenarion Hold also grants reputation.
step
talk Vargus##15176
turnin Veteran's Battlegear##8572 |goto 51.22,38.85
step
talk Vargus##15176
accept Champion's Battlegear##8573 |goto 51.22,38.85
stickystart "Collect_Cenarion_Logistics_Badge_8573"
stickystart "Collect_Cenarion_Tactical_Badge_8573"
stickystart "Collect_Mark_of_Cenarius_8573"
stickystart "Reach_Honored_Reputation"
step
collect 15 Cenarion Combat Badge##20802 |q 8573/1
|tip Use the "Cenarion Field Duty Combat Assignments" leveling guide to collect these.
step
label "Collect_Cenarion_Logistics_Badge_8573"
collect 20 Cenarion Logistics Badge##20800 |q 8573/2
|tip Use the "Cenarion Field Duty Logistics Assignments" leveling guide to collect these.
step
label "Collect_Cenarion_Tactical_Badge_8573"
collect 20 Cenarion Tactical Badge##20801 |q 8573/3
|tip Use the "Cenarion Field Duty Tactical Assignments" leveling guide to collect these.
step
label "Collect_Mark_of_Cenarius_8573"
collect 1 Mark of Cenarius##21508 |q 8573/4
|tip Use the "Cenarion Field Duty Tactical Assignments" leveling guide to collect these.
|tip This item is a reward exclusive to the followup tactical assignment quest "The Four Dukes."
step
label "Reach_Revered_Reputation"
Reach Revered Reputation with the Cenarion Circle |condition rep("Cenarion Circle") >= Revered
|tip Killing Twilight enemies in Silithus grants 1 reputation each until Honored.
|tip Killing Twilight Flamereavers in Silithus grants 1 reputation each until Revered.
|tip Killing mobs and bosses in the "Ruins of Ahn'Qiraj" and "Temple of Ahn'Qiraj" raids grants various levels of reputation until Exalted.
|tip Completing the repeatable quests "Field Duty" and "Encrypted Twilight Texts" in Cenarion Hold also grants reputation.
step
talk Vargus##15176
turnin Champion's Battlegear##8573 |goto 51.22,38.85
step
talk Vargus##15176
accept Stalwart's Battlegear##8574 |goto 51.22,38.85
stickystart "Collect_Cenarion_Logistics_Badge_8574"
stickystart "Collect_Cenarion_Tactical_Badge_8574"
stickystart "Collect_Mark_of_Remulos_8574"
stickystart "Reach_Honored_Reputation"
step
collect 15 Cenarion Combat Badge##20802 |q 8574/1
|tip Use the "Cenarion Field Duty Combat Assignments" leveling guide to collect these.
step
label "Collect_Cenarion_Logistics_Badge_8574"
collect 20 Cenarion Logistics Badge##20800 |q 8574/2
|tip Use the "Cenarion Field Duty Logistics Assignments" leveling guide to collect these.
step
label "Collect_Cenarion_Tactical_Badge_8574"
collect 17 Cenarion Tactical Badge##20801 |q 8574/3
|tip Use the "Cenarion Field Duty Tactical Assignments" leveling guide to collect these.
step
label "Collect_Mark_of_Remulos_8574"
collect 1 Mark of Remulos##21515 |q 8574/4
|tip Use the "Cenarion Field Duty Logistics Assignments" leveling guide to collect these.
|tip This item is a reward exclusive to the followup logistics assignment quest "The Ultimate Deception."
step
label "Reach_Exalted_Reputation"
Reach Exalted Reputation with the Cenarion Circle |condition rep("Cenarion Circle") >= Exalted
|tip Killing Twilight enemies in Silithus grants 1 reputation each until Honored.
|tip Killing Twilight Flamereavers in Silithus grants 1 reputation each until Revered.
|tip Killing mobs and bosses in the "Ruins of Ahn'Qiraj" and "Temple of Ahn'Qiraj" raids grants various levels of reputation until Exalted.
|tip Completing the repeatable quests "Field Duty" and "Encrypted Twilight Texts" in Cenarion Hold also grants reputation.
step
talk Vargus##15176
turnin Stalwart's Battlegear##8574 |goto 51.22,38.85
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Cenarion Field Duty Combat Assignments",{
author="support@zygorguides.com",
description="This guide will walk you through completing various combat assignments for the Cenarion Circle.",
},[[
step
label "Accept_Field_Duty"
talk Windcaller Kaldon##15540
accept Field Duty##8507 |goto Silithus 49.98,36.34
step
use the Unsigned Field Duty Papers##21143
collect 1 Prepared Field Duty Papers##23024 |q 8507
step
talk Captain Blackanvil##15440
accept Field Duty Papers##8508 |goto 32.96,52.08
step
collect 1 Signed Field Duty Papers##20810 |q 8507/1
step
talk Windcaller Kaldon##15540
|tip Choose a combat assignment.
|tip Combat Assignments require you to kill various elite silithid in Silithus hives.
turnin Field Duty##8507 |goto 49.98,36.34
step
label "Begin_Combat_Assignment"
use the Combat Assignment##20808
Open the Combat Assignment |condition itemcount(20808) == 0
step
use the Hive'Zora Dossier##22650 |only if itemcount(22650) >= 0
use the Hive'Ashi Dossier##22648 |only if itemcount(22648) >= 0
use the Hive'Regal Dossier##22649 |only if itemcount(22649) >= 0
Open the Dossier |condition itemcount(22650) == 0 and itemcount(22648) == 0 and itemcount(22649) == 0
step
use the Combat Task Briefing I##21749
accept Target: Hive'Ashi Defenders##8770
|only if itemcount(21749) >= 1 or havequest(8770)
step
use the Combat Task Briefing II##21750
accept Target: Hive'Ashi Sandstalkers##8771
|only if itemcount(21750) >= 1 or havequest(8771)
step
use the Combat Task Briefing III##20942
accept Target: Hive'Ashi Workers##8502
|only if itemcount(20942) >= 1 or havequest(8502)
step
use the Combat Task Briefing IV##21248
accept Target: Hive'Zora Reavers##8773
|only if itemcount(21248) >= 1 or havequest(8773)
step
use the Combat Task Briefing V##21249
accept Target: Hive'Zora Hive Sisters##8539
|only if itemcount(21249) >= 1 or havequest(8539)
step
use the Combat Task Briefing VI##21250
accept Target: Hive'Zora Waywatchers##8772
|only if itemcount(21250) >= 1 or havequest(8772)
step
use the Combat Task Briefing VII##21251
accept Target: Hive'Zora Tunnelers##8687
|only if itemcount(21251) >= 1 or havequest(8687)
step
use the Combat Task Briefing VIII##21252
accept Target: Hive'Regal Ambushers##8774
|only if itemcount(21252) >= 1 or havequest(8774)
step
use the Combat Task Briefing IX##21253
accept Target: Hive'Regal Spitfires##8775
|only if itemcount(21253) >= 1 or havequest(8775)
step
use the Combat Task Briefing X##21255
accept Target: Hive'Regal Slavemakers##8776
|only if itemcount(21255) >= 1 or havequest(8776)
step
use the Combat Task Briefing XI##21256
accept Target: Hive'Regal Burrowers##8777
|only if itemcount(21256) >= 1 or havequest(8777)
step
use the Combat Task Briefing XII##20941
accept Target: Hive'Ashi Stingers##8501
|only if itemcount(20941) >= 1 or havequest(8501)
stickystart "Kill_30_Hive'Ashi_Sandstalkers"
stickystart "Kill_30_Hive'Ashi_Workers"
stickystart "Kill_30_Hive'Zora_Reavers"
stickystart "Kill_30_Hive'Zora_Hive_Sisters"
stickystart "Kill_30_Hive'Zora_Waywatchers"
stickystart "Kill_30_Hive'Zora_Tunnelers"
stickystart "Kill_30_Hive'Regal_Ambushers"
stickystart "Kill_30_Hive'Regal_Spitfires"
stickystart "Kill_30_Hive'Regal_Slavemakers"
stickystart "Kill_30_Hive'Regal_Burrowers"
stickystart "Kill_30_Hive'Ashi_Stingers"
step
kill 30 Hive'Ashi Defender##11722 |q 8770/1 |goto 45.06,25.78
|tip These enemies are elite and may require a group to kill.
|only if havequest(8770)
step
label "Kill_30_Hive'Ashi_Sandstalkers"
kill 30 Hive'Ashi Sandstalker##11723 |q 8771/1  |goto 45.06,25.78
|tip These enemies are elite and may require a group to kill. |notinsticky
|tip They are stealthed all over the hive.
|only if havequest(8771)
step
label "Kill_30_Hive'Ashi_Workers"
kill 30 Hive'Ashi Worker##11721 |q 8502/1 |goto 45.06,25.78
|tip These enemies are elite and may require a group to kill. |notinsticky
|only if havequest(8502)
step
label "Kill_30_Hive'Zora_Reavers"
kill 30 Hive'Zora Reaver##11728 |q 8773/1 |goto 25.15,59.72
|tip These enemies are elite and may require a group to kill. |notinsticky
|only if havequest(8773)
step
label "Kill_30_Hive'Zora_Hive_Sisters"
kill 30 Hive'Zora Hive Sister##11729 |q 8539/1 |goto 25.15,59.72
|tip These enemies are elite and may require a group to kill. |notinsticky
|only if havequest(8539)
step
label "Kill_30_Hive'Zora_Waywatchers"
kill 30 Hive'Zora Waywatcher##11725 |q 8772/1 |goto 25.15,59.72
|tip These enemies are elite and may require a group to kill. |notinsticky
|only if havequest(8772)
step
label "Kill_30_Hive'Zora_Tunnelers"
kill 30 Hive'Zora Tunneler##11726 |q 8687/1 |goto 25.20,55.37
|tip These enemies are elite and may require a group to kill. |notinsticky
|tip They only spawn inside the hive.
|only if havequest(8687)
step
label "Kill_30_Hive'Regal_Ambushers"
kill 30 Hive'Regal Ambusher##11730 |q 8774/1 |goto 57.57,80.69
|tip These enemies are elite and may require a group to kill. |notinsticky
|tip They are stealthed all over the hive.
|only if havequest(8774)
step
label "Kill_30_Hive'Regal_Spitfires"
kill 30 Hive'Regal Spitfire##11732 |q 8775/1 |goto 57.57,80.69
|tip These enemies are elite and may require a group to kill. |notinsticky
|only if havequest(8775)
step
label "Kill_30_Hive'Regal_Slavemakers"
kill 30 Hive'Regal Slavemaker##11733 |q 8776/1 |goto 57.57,80.69
|tip These enemies are elite and may require a group to kill. |notinsticky
|only if havequest(8776)
step
label "Kill_30_Hive'Regal_Burrowers"
kill 30 Hive'Regal Burrower##11731 |q 8777/1 |goto 62.05,80.40
|tip These enemies are elite and may require a group to kill. |notinsticky
|tip They only spawn inside the hive.
|only if havequest(8777)
step
label "Kill_30_Hive'Ashi_Stingers"
kill 30 Hive'Ashi Stinger##11698 |q 8501/1 |goto 47.91,26.31
|tip These enemies are elite and may require a group to kill. |notinsticky
|tip They only spawn inside the hive.
|only if havequest(8501)
step
talk Commander Mar'alith##15181
turnin Target: Hive'Ashi Defenders##8770 |goto 49.20,34.19 |only if havequest(8770)
turnin Target: Hive'Ashi Sandstalkers##8771 |goto 49.20,34.19 |only if havequest(8771)
turnin Target: Hive'Ashi Workers##8502 |goto 49.20,34.19 |only if havequest(8502)
turnin Target: Hive'Zora Reavers##8773 |goto 49.20,34.19 |only if havequest(8773)
turnin Target: Hive'Zora Hive Sisters##8539 |goto 49.20,34.19 |only if havequest(8539)
turnin Target: Hive'Zora Waywatchers##8772 |goto 49.20,34.19 |only if havequest(8772)
turnin Target: Hive'Zora Tunnelers##8687 |goto 49.20,34.19 |only if havequest(8687)
turnin Target: Hive'Regal Ambushers##8774 |goto 49.20,34.19 |only if havequest(8774)
turnin Target: Hive'Regal Spitfires##8775 |goto 49.20,34.19 |only if havequest(8775)
turnin Target: Hive'Regal Slavemakers##8776 |goto 49.20,34.19 |only if havequest(8776)
turnin Target: Hive'Regal Burrowers##8777 |goto 49.20,34.19 |only if havequest(8777)
turnin Target: Hive'Ashi Stingers##8501 |goto 49.20,34.19 |only if havequest(8501)
'|condition not haveanyquest(8770,8771,8502,8773,8539,8772,8687,8774,8775,8776,8777,8501) |next "Accept_Field_Duty"
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Cenarion Field Duty Tactical Assignments",{
author="support@zygorguides.com",
description="This guide will walk you through completing various tactical assignments for the Cenarion Circle.",
},[[
step
label "Accept_Field_Duty"
talk Windcaller Kaldon##15540
accept Field Duty##8507 |goto Silithus 49.98,36.34
step
use the Unsigned Field Duty Papers##21143
collect 1 Prepared Field Duty Papers##23024 |q 8507
step
talk Captain Blackanvil##15440
accept Field Duty Papers##8508 |goto 32.96,52.08
step
collect 1 Signed Field Duty Papers##20810 |q 8507/1
step
talk Windcaller Kaldon##15540
|tip Choose a tactical assignment.
|tip Tactical Assignments require you to fight Twilight Hammer elementals or collect reports from Silithus hives.
turnin Field Duty##8507 |goto 49.98,36.34
step
label "Begin_Tactical_Assignment"
use the Tactical Assignment##20809
Open the Tactical Assignment |condition itemcount(20809) == 0
step
use the Tactical Task Briefing I##21245
accept Azure Templar##8737
|only if itemcount(21245) >= 1 or havequest(8737)
step
use the Tactical Task Briefing III##21751
accept Earthen Templar##8536
|only if itemcount(21751) >= 1 or havequest(8536)
step
use the Tactical Task Briefing VI##21165
accept Hive'Zora Scout Report##8534
|only if itemcount(21165) >= 1 or havequest(8534)
step
use the Tactical Task Briefing VII##21166
accept Hive'Regal Scout Report##8738
|only if itemcount(21166) >= 1 or havequest(8738)
step
use the Tactical Task Briefing IX##20944
accept Twilight Marauders##8740
|only if itemcount(20944) >= 1 or havequest(8740)
step
kill Azure Templar##15211 |q 8737/1 |goto 38.29,46.46
|tip Kill Twilight enemies around the area until you collect a Twilight Cultist robe, cowl, and mantle.
|tip Equip all three pieces and interact with the Lesser Wind Stone to summon a Templar.
|tip The Templar is random, so you may need to do this more than one time.
|only if havequest(8737)
step
kill Earthen Templar##15307 |q 8536/1 |goto 38.29,46.46
|tip Kill Twilight enemies around the area until you collect a Twilight Cultist robe, cowl, and mantle.
|tip Equip all three pieces and interact with the Lesser Wind Stone to summon a Templar.
|tip The Templar is random, so you may need to do this more than one time.
|only if havequest(8536)
step
Enter the cave |goto 25.37,55.22 < 20 |walk
Follow the path |goto 26.51,56.73 < 10 |walk
Follow the path down |goto 25.56,61.87 < 10 |walk
talk Cenarion Scout Azenel##15610
Tell her _"I'm here to retrieve your report."_
collect Hive'Zora Scout Report##21158 |q 8534/1 |goto 23.63,62.43
|only if havequest(8534)
step
Enter the cave |goto 54.88,88.05 < 20 |walk
Follow the path down |goto 53.57,88.96 < 10 |walk
Follow the path down |goto 53.12,93.24 < 10 |walk
talk Cenarion Scout Landion##15609
Tell him _"I'm here to retrieve your report."_
collect Hive'Regal Scout Report##21160 |q 8738/1 |goto 53.71,97.48
|only if havequest(8738)
stickystart "Kill_Twilight_Marauders"
step
kill Twilight Marauder Morna##15541 |q 8740/1
She can also spawn at:
[38.81,78.19]
[23.63,45.32]
|only if havequest(8740)
step
label "Kill_Twilight_Marauders"
kill 5 Twilight Marauder##15542 |q 8740/2 |goto 68.76,35.99
|tip They spawn with Twilight Marauder Morna.
They can also spawn at: |notinsticky
[38.81,78.19] |notinsticky
[23.63,45.32] |notinsticky
|only if havequest(8740)
step
talk Bor Wildmane##15306
turnin Azure Templar##8737 |goto 48.57,37.78 |only if havequest(8737) |next "Open_Followup_Tactical_Assignment"
turnin Earthen Templar##8536 |goto 48.57,37.78 |only if havequest(8536) |next "Open_Followup_Tactical_Assignment"
|only if haveanyquest(8737,8536)
step
talk Windcaller Proudhorn##15191
turnin Hive'Zora Scout Report##8534 |goto 51.15,38.29 |only if havequest(8534) |next "Open_Followup_Tactical_Assignment"
turnin Hive'Regal Scout Report##8738 |goto 51.15,38.29 |only if havequest(8738) |next "Open_Followup_Tactical_Assignment"
turnin Twilight Marauders##8740 |goto 51.15,38.29 |only if havequest(8740) |next "Open_Followup_Tactical_Assignment"
|only if haveanyquest(8534,8738,8740)
step
label "Open_Followup_Tactical_Assignment"
use the Followup Tactical Assignment##21133
Open the Followup Tactical Assignment |condition itemcount(21133) == 0
step
use the Tactical Task Briefing II##20945
accept Crimson Templar##8537
|only if itemcount(20945) >= 1 or havequest(8537)
step
use the Tactical Task Briefing IV##20947
accept Hoary Templar##8535
|only if itemcount(20947) >= 1 or havequest(8535)
step
use the Tactical Task Briefing V##20948
accept The Four Dukes##8538
|only if itemcount(20948) >= 1 or havequest(8538)
step
use the Tactical Task Briefing VIII##21167
accept Hive'Ashi Scout Report##8739
|only if itemcount(21167) >= 1 or havequest(8739)
step
use the Tactical Task Briefing X##20943
accept Twilight Battle Orders##8498
|only if itemcount(20943) >= 1 or havequest(8498)
step
kill Crimson Templar##15209 |q 8537/1 |goto 38.29,46.46
|tip Kill Twilight enemies around the area until you collect a Twilight Cultist robe, cowl, and mantle.
|tip Equip all three pieces and interact with the Lesser Wind Stone to summon a Templar.
|tip The Templar is random, so you may need to do this more than one time.
|only if havequest(8537)
step
kill Hoary Templar##15212 |q 8535/1 |goto 38.29,46.46
|tip Kill Twilight enemies around the area until you collect a Twilight Cultist robe, cowl, and mantle.
|tip Equip all three pieces and interact with the Lesser Wind Stone to summon a Templar.
|tip The Templar is random, so you may need to do this more than one time.
|only if havequest(8535)
stickystart "Kill_The_Duke_of_Fathoms"
stickystart "Kill_The_Duke_of_Zephyrs"
stickystart "Kill_The_Duke_of_Shards"
step
kill The Duke of Cynders##15206 |q 8538/1 |goto 37.63,44.80
|tip Dukes are level 62 elites and will require a group.
|tip Kill Twilight enemies around the area until you collect a Twilight Cultist robe, cowl, and mantle.
|tip Equip all three pieces along with a Medallion of Station and interact with the Wind Stone to summon a Duke.
|tip You can acquire a Medalion of Station by bringing 3 Abyssal Crests and 1 Large Brilliant Shard to Aurel Goldleaf next to the mailbox in Cenarion Hold.
|tip Abyssal Crests are dropped by templars summoned with a Twilight Cultist set at a Lesser Windstone.
|tip The duke is random, so you may need to do this more than one time.
|only if havequest(8538)
step
label "Kill_The_Duke_of_Fathoms"
kill The Duke of Fathoms##15207 |q 8538/2 |goto 37.63,44.80
|tip Dukes are level 62 elites and will require a group. |notinsticky
|tip Kill Twilight enemies around the area until you collect a Twilight Cultist robe, cowl, and mantle. |notinsticky
|tip Equip all three pieces along with a Medallion of Station and interact with the Wind Stone to summon a Duke. |notinsticky
|tip You can acquire a Medalion of Station by bringing 3 Abyssal Crests and 1 Large Brilliant Shard to Aurel Goldleaf next to the mailbox in Cenarion Hold. |notinsticky
|tip Abyssal Crests are dropped by templars summoned with a Twilight Cultist set at a Lesser Windstone. |notinsticky
|tip The duke is random, so you may need to do this more than one time. |notinsticky
|only if havequest(8538)
step
label "Kill_The_Duke_of_Zephyrs"
kill The Duke of Zephyrs##15220 |q 8538/3 |goto 37.63,44.80
|tip Dukes are level 62 elites and will require a group. |notinsticky
|tip Kill Twilight enemies around the area until you collect a Twilight Cultist robe, cowl, and mantle. |notinsticky
|tip Equip all three pieces along with a Medallion of Station and interact with the Wind Stone to summon a Duke. |notinsticky
|tip You can acquire a Medalion of Station by bringing 3 Abyssal Crests and 1 Large Brilliant Shard to Aurel Goldleaf next to the mailbox in Cenarion Hold. |notinsticky
|tip Abyssal Crests are dropped by templars summoned with a Twilight Cultist set at a Lesser Windstone. |notinsticky
|tip The duke is random, so you may need to do this more than one time. |notinsticky
|only if havequest(8538)
step
label "Kill_The_Duke_of_Shards"
kill The Duke of Shards##15208 |q 8538/4 |goto 37.63,44.80
|tip Dukes are level 62 elites and will require a group. |notinsticky
|tip Kill Twilight enemies around the area until you collect a Twilight Cultist robe, cowl, and mantle. |notinsticky
|tip Equip all three pieces along with a Medallion of Station and interact with the Wind Stone to summon a Duke. |notinsticky
|tip You can acquire a Medalion of Station by bringing 3 Abyssal Crests and 1 Large Brilliant Shard to Aurel Goldleaf next to the mailbox in Cenarion Hold. |notinsticky
|tip Abyssal Crests are dropped by templars summoned with a Twilight Cultist set at a Lesser Windstone. |notinsticky
|tip The duke is random, so you may need to do this more than one time. |notinsticky
|only if havequest(8538)
step
Enter the cave |goto 43.95,16.03 < 20 |walk
talk Cenarion Scout Jalia##15611
|tip She is stealthed.
Tell her _"I'm here to retrieve your report."_
collect Hive'Ashi Scout Report##21161 |q 8739/1 |goto 43.94,13.81
|only if havequest(8739)
step
kill Twilight Prophet##15308
|tip She patrols in and between the points indicated with a group of bodyguards.
|tip You may need to search around for her, especially during peak hours.
|tip She is elite, so you may need a group.
collect Twilight Battle Orders##20803 |q 8498/1 |goto 39.29,42.97
You can also find her here:
[25.95,34.98]
[19.15,83.78]
|only if havequest(8498)
step
talk Bor Wildmane##15306
turnin Crimson Templar##8537 |goto 48.57,37.78 |only if havequest(8537)
turnin Hoary Templar##8535 |goto 48.57,37.78 |only if havequest(8535)
|only if haveanyquest(8537,8535)
step
talk Commander Mar'alith##15181
turnin The Four Dukes##8538 |goto 49.20,34.19 |only if havequest(8538)
turnin Twilight Battle Orders##8498 |goto 49.20,34.19 |only if havequest(8498)
|only if haveanyquest(8538,8498)
step
talk Windcaller Proudhorn##15191
turnin Hive'Ashi Scout Report##8739 |goto 51.15,38.29
|only if havequest(8739)
step
collect 1 Tactical Assignment##20809 |next "Begin_Tactical_Assignment"
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Cenarion Field Duty Logistics Assignments",{
author="support@zygorguides.com",
description="This guide will walk you through completing various logistics assignments for the Cenarion Circle.",
},[[
step
label "Accept_Field_Duty"
talk Windcaller Kaldon##15540
accept Field Duty##8507 |goto Silithus 49.98,36.34
step
use the Unsigned Field Duty Papers##21143
collect 1 Prepared Field Duty Papers##23024 |q 8507
step
talk Captain Blackanvil##15440
accept Field Duty Papers##8508 |goto 32.96,52.08
step
collect 1 Signed Field Duty Papers##20810 |q 8507/1
step
talk Windcaller Kaldon##15540
|tip Choose a logistics assignment.
|tip Logistics Assignments require you to donate various materials to the Cenarion effort.
turnin Field Duty##8507 |goto 49.98,36.34
step
label "Begin_Logistics_Assignment"
use the Logistics Assignment##21132
Open the Logistics Assignment |condition itemcount(21132) == 0
step
use the Logistics Task Briefing IV##21257
accept The Ironforge Brigade Needs Explosives!##8778
|only if itemcount(21257) >= 1 or havequest(8778)
step
use the Logistics Task Briefing V##21259
accept Scrying Materials##8779
|only if itemcount(21259) >= 1 or havequest(8779)
step
use the Logistics Task Briefing VI##21260
accept Arms for the Field##8781
|only if itemcount(21260) >= 1 or havequest(8781)
step
use the Logistics Task Briefing VII##21263
accept Armor Kits for the Field##8780
|only if itemcount(21263) >= 1 or havequest(8780)
step
use the Logistics Task Briefing X##20806
accept Bandages for the Field##8496
|only if itemcount(20806) >= 1 or havequest(8496)
stickystart "Collect_5_Goblin_Rocket_Fuel"
stickystart "Collect_10_Dense_Blasting_Powder"
step
collect 6 Oil of Immolation##8956 |q 8778/1
|tip Craft them with Alchemy or purchase them from the Auction House.
|tip Each one requires 1 Firebloom, 1 Goldthorn, and 1 Crystal Vial to create.
|only if havequest(8778)
step
label "Collect_5_Goblin_Rocket_Fuel"
collect 5 Goblin Rocket Fuel##9061 |q 8778/2
|tip Craft them with Alchemy or purchase them from the Auction House.
|tip Each one requires 1 Firebloom, 1 Volatile Rum, and 1 Leaded Vial to create.
|only if havequest(8778)
step
label "Collect_10_Dense_Blasting_Powder"
collect 10 Dense Blasting Powder##15992 |q 8778/3
|tip Craft them with Engineering or purchase them from the Auction House.
|tip Each one requires 2 Dense Stone to create.
|only if havequest(8778)
stickystart "Collect_1_Large_Radiant_Shard"
stickystart "Collect_1_Huge_Emerald"
step
collect 1 Large Brilliant Shard##14344 |q 8779/1
|tip Disenchant item level 56-65 rare items or purchase it from the Auction House.
|tip Blackrock Depths and Dire Maul are good sources for these items.
|only if havequest(8779)
step
label "Collect_1_Large_Radiant_Shard"
collect 1 Large Radiant Shard##11178 |q 8779/2
|tip Disenchant item level 46-50 rare items or purchase it from the Auction House.
|tip Zul'Farrak, Dire Maul, and Stratholme are good sources for these items.
|only if havequest(8779)
step
label "Collect_1_Huge_Emerald"
collect 1 Huge Emerald##12364 |q 8779/3
|tip Gather it with Mining or purchase it from the Auction House.
|tip It can be mined from any type of Thorium vein.
|only if havequest(8779)
step
collect 2 Moonsteel Broadsword##3853 |q 8781/1
|tip Craft them with Blacksmithing or purchase them from the Auction House.
|tip Each one requires 8 Steel Bars, 2 Strong Flux, 2 Heavy Grinding Stones, 3 Moonstone, and 3 Heavy Leather to create.
|only if havequest(8781)
stickystart "Collect_8_Heavy_Armor_Kits"
step
collect 8 Rugged Armor Kit##15564 |q 8780/1
|tip Craft them with Leatherworking or purchase them from the Auction House.
|tip Each one requires 5 Rugged Leather to create.
|only if havequest(8780)
step
label "Collect_8_Heavy_Armor_Kits"
collect 8 Heavy Armor Kit##4265 |q 8780/2
|tip Craft them with Leatherworking or purchase them from the Auction House.
|tip Each one requires 5 Heavy Leather and 1 Fine Thread to create.
|only if havequest(8780)
stickystart "Collect_30_Heavy_Mageweave_Bandage"
stickystart "Collect_30_Heavy_Silk_Bandage"
step
collect 30 Heavy Runecloth Bandage##14530 |q 8496/1
|tip Craft them with First Aid or purchase them from the Auction House.
|tip Each one requires 2 Runecloth to create.
|only if havequest(8496)
step
label "Collect_30_Heavy_Mageweave_Bandage"
collect 30 Heavy Mageweave Bandage##8545 |q 8496/2
|tip Craft them with First Aid or purchase them from the Auction House.
|tip Each one requires 2 Mageweave Cloth to create.
|only if havequest(8496)
step
label "Collect_30_Heavy_Silk_Bandage"
collect 30 Heavy Silk Bandage##6451 |q 8496/3
|tip Craft them with First Aid or purchase them from the Auction House.
|tip Each one requires 2 Silk Cloth to create.
|only if havequest(8496)
step
talk Geologist Larksbane##15183
turnin Scrying Materials##8779 |goto 49.67,37.35 |next "Open_Followup_Logistics_Assignment"
|only if havequest(8779)
step
talk Windcaller Proudhorn##15191
turnin Bandages for the Field##8496 |goto 51.15,38.29 |next "Open_Followup_Logistics_Assignment"
|only if havequest(8496)
step
talk Arcanist Nozzlespring##15444
turnin The Ironforge Brigade Needs Explosives!##8778 |goto 32.54,52.03 |next "Open_Followup_Logistics_Assignment"
|only if havequest(8778)
step
talk Janela Stouthammer##15443
turnin Arms for the Field##8781 |goto 32.88,52.53 |next "Open_Followup_Logistics_Assignment" |only if havequest(8781)
turnin Armor Kits for the Field##8780 |goto 32.88,52.53 |next "Open_Followup_Logistics_Assignment" |only if havequest(8780)
|only if haveanyquest(8781,8780)
step
label "Open_Followup_Logistics_Assignment"
use the Followup Logistics Assignment##20805
Open the Followup Logistics Assignment |condition itemcount(20805) == 0
step
use the Logistics Task Briefing I##20807
accept Desert Survival Kits##8497
|only if itemcount(20807) >= 1 or havequest(8497)
step
use the Logistics Task Briefing II##20939
accept Boots for the Guard##8805
|only if itemcount(20939) >= 1 or havequest(8805)
step
use the Logistics Task Briefing III##20940
accept Grinding Stones for the Guard##8541
|only if itemcount(20940) >= 1 or havequest(8541)
step
use the Logistics Task Briefing VIII##21262
accept Uniform Supplies##8782
|only if itemcount(21262) >= 1 or havequest(8782)
step
use the Logistics Task Briefing IX##21265
accept Extraordinary Materials##8783
|only if itemcount(21265) >= 1 or havequest(8783)
step
use the Logistics Task Briefing XI##21514
accept The Ultimate Deception##8829
|only if itemcount(21514) >= 1 or havequest(8829)
stickystart "Collect_Powerful_Anti-Venom"
stickystart "Collect_Smoked_Desert_Dumplings"
step
kill Toxic Horror##7132+
collect 4 Globe of Water##7079 |q 8497/1 |goto Felwood 48.75,24.16
|tip You can also purchase these from the Auction House.
|only if havequest(8497)
step
label "Collect_Powerful_Anti-Venom"
collect 4 Powerful Anti-Venom##19440 |q 8497/2
|tip Craft them with First Aid or purchase them from the Auction House.
|tip Each one requires 1 Huge Venom Sac to create.
|only if havequest(8497)
step
label "Collect_Smoked_Desert_Dumplings"
collect 4 Smoked Desert Dumplings##20452 |q 8497/3
|tip Craft them with Cooking or purchase them from the Auction House.
|tip Each one requires 1 Sandworm Meat and 1 Soothing Spices to create.
|only if havequest(8497)
step
collect 3 Ornate Mithril Boots##7936 |q 8805/1
|tip Craft them with Blacksmithing or purchase them from the Auction House.
|tip Each one requires 14 Mithril Bars, 2 Truesilver Bars, 4 Thick Leather, 1 Solid Grinding Stone, and 1 Aquamarine to create.
|only if havequest(8805)
stickystart "Collect_Solid_Grinding_Stone"
stickystart "Collect_Heavy_Grinding_Stone"
step
collect 10 Dense Grinding Stone##12644 |q 8541/1
|tip Craft them with Blacksmithing or purchase them from the Auction House.
|tip Each one requires 4 Dense Stone to create.
|only if havequest(8541)
step
label "Collect_Solid_Grinding_Stone"
collect 10 Solid Grinding Stone##7966 |q 8541/2
|tip Craft them with Blacksmithing or purchase them from the Auction House.
|tip Each one requires 4 Solid Stone to create.
|only if havequest(8541)
step
label "Collect_Heavy_Grinding_Stone"
collect 10 Heavy Grinding Stone##3486 |q 8541/3
|tip Craft them with Blacksmithing or purchase them from the Auction House.
|tip Each one requires 3 Heavy Stone to create.
|only if havequest(8541)
stickystart "Collect_Bolt_of_Runecloth"
stickystart "Collect_Ironweb_Spider_Silk"
step
collect 1 Mooncloth##14342 |q 8782/1
|tip Craft it with Tailoring or purchase it from the Auction House.
|tip It requires 2 Felcloth and a daily Tailoring cooldown to create.
|only if havequest(8782)
step
label "Collect_Bolt_of_Runecloth"
collect 2 Bolt of Runecloth##14048 |q 8782/2
|tip Craft them with Tailoring or purchase them from the Auction House.
|tip Each one requires 5 Runecloth to create.
|only if havequest(8782)
step
label "Collect_Ironweb_Spider_Silk"
kill Plague Lurker##1824+
collect 1 Ironweb Spider Silk##14227 |q 8782/3 |goto Western Plaguelands 62.20,49.48
|tip You can also purchase it from the Auction House.
|only if havequest(8782)
stickystart "Collect_Enchanted_Leather"
step
collect 10 Enchanted Thorium Bar##12655 |q 8783/1
|tip Craft them with Enchanting or purchase them from the Auction House.
|tip Each one requires 1 Thorium Bar and 3 Dream Dust to create.
|only if havequest(8783)
step
label "Collect_Enchanted_Leather"
collect 10 Solid Grinding Stone##12810 |q 8783/2
|tip Craft them with Enchanting or purchase them from the Auction House.
|tip Each one requires 1 Rugged Leather and 1 Lesser Eternal Essence to create.
|only if havequest(8783)
stickystart "Collect_Frayed_Abomination_Stitching"
stickystart "Collect_Twilight_Cultist_Robe"
step
collect 1 Skin of Shadow##12753 |q 8829/1
|tip This has a chance to drop from Risen Bonewarders and Risen Constructs in the Scholomance dungeon.
|only if havequest(8829)
step
label "Collect_Frayed_Abomination_Stitching"
collect 3 Frayed Abomination Stitching##12735 |q 8829/2
|tip These drop from Abomination enemies as well as Ramstein the Gorger in the Undead Stratholme dungeon.
|only if havequest(8829)
step
label "Collect_Twilight_Cultist_Robe"
Kill Twilight enemies around this area
collect 1 Twilight Cultist Robe##20407 |q 8829/3 |goto Silithus 38.64,44.97
|tip You can also purchase it from the Auction House.
|only if havequest(8829)
step
talk Calandrath##15174
|tip Inside the building.
turnin Desert Survival Kits##8497 |goto  51.87,39.14
|only if havequest(8497)
step
talk Vish Kozus##15182
|tip At the top of the tower.
turnin Grinding Stones for the Guard##8541 |goto 50.75,33.65 |only if havequest(8541)
turnin Boots for the Guard##8805 |goto  50.75,33.65 |only if havequest(8805)
|only if haveanyquest(8541,8805)
step
talk Windcaller Proudhorn##15191
turnin Uniform Supplies##8782 |goto 51.15,38.29
|only if havequest(8782)
step
talk Vargus##15176
turnin Extraordinary Materials##8783 |goto 51.23,38.86
|only if havequest(8783)
step
talk Aurel Goldleaf##15282
turnin The Ultimate Deception##8829 |goto 51.96,38.15
|only if havequest(8829)
step
collect 1 Logistics Assignment##21132 |next "Begin_Logistics_Assignment"
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Extra Zones\\Westfall",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Westfall",
condition_suggested=function() return level >= 15 and level <= 21 and not completedq(155) end,
},[[
step
talk Farmer Furlbrow##237
accept The Forgotten Heirloom##64 |goto Westfall 59.96,19.36
step
talk Verna Furlbrow##238
accept Westfall Stew##36 |goto 59.92,19.42
accept Poor Old Blanchy##151 |goto 59.92,19.42
stickystart "Collect_Handfuls_Of_Oats"
step
talk Farmer Saldean##233
accept The Killing Fields##9 |goto 56.04,31.23
step
Enter the building |goto 56.15,31.04 < 7 |walk
talk Salma Saldean##235
|tip Inside the building.
turnin Westfall Stew##36 |goto 56.42,30.52
accept Goretusk Liver Pie##22 |goto 56.42,30.52
accept Westfall Stew##38 |goto 56.42,30.52
stickystart "Collect_Goretusk_Livers"
stickystart "Collect_Goretusk_Snouts"
stickystart "Collect_Stringy_Vulture_Meat"
step
Leave the building |goto 56.15,31.04 < 7 |walk
talk Thor##523
fpath Sentinel Hill |goto 56.55,52.64
step
talk Scout Galiaan##878
accept Red Leather Bandanas##153 |goto 53.98,52.98
step
talk Gryan Stoutmantle##234
turnin Report to Gryan Stoutmantle##109 |goto 56.33,47.52
accept The People's Militia##12 |goto 56.33,47.52
step
talk Captain Danuvin##821
accept Patrolling Westfall##102 |goto 56.43,47.62
stickystart "Kill_Defias_Trappers"
stickystart "Kill_Defias_Smugglers"
step
Kill Defias enemies around this area
collect 15 Red Leather Bandana |q 153/1 |goto 49.35,47.19
You can find more around: |notinsticky
[50.73,40.31]
[46.51,38.74]
step
label "Kill_Defias_Trappers"
kill 15 Defias Trapper##504 |q 12/1 |goto 49.35,47.19
You can find more around: |notinsticky
[50.73,40.31]
[46.51,38.74]
step
label "Kill_Defias_Smugglers"
kill 15 Defias Smuggler##95 |q 12/2 |goto 49.35,47.19
You can find more around: |notinsticky
[50.73,40.31]
[46.51,38.74]
step
talk Gryan Stoutmantle##234
turnin The People's Militia##12 |goto Westfall 56.33,47.52
accept The People's Militia##13 |goto Westfall 56.33,47.52
step
talk Scout Galiaan##878
turnin Red Leather Bandanas##153 |goto 53.99,52.98
step
Enter the building |goto 56.53,47.39 < 7 |walk
talk Quartermaster Lewis##491
|tip Inside the building.
accept A Swift Message##6181 |goto 57.00,47.17
|only if Human
step
Leave the building |goto 56.53,47.39 < 10 |walk
talk Thor##523
turnin A Swift Message##6181 |goto 56.56,52.64
accept Continue to Stormwind##6281 |goto 56.56,52.64
|only if Human
step
Enter the building |goto Stormwind City 73.68,47.66 < 10 |walk
talk Osric Strang##1323
|tip Inside the building.
turnin Continue to Stormwind##6281 |goto Stormwind City 74.32,47.24
accept Dungar Longdrink##6261 |goto Stormwind City 74.32,47.24
|only if Human
step
Leave the building |goto 73.68,47.66 < 7 |walk
Run up the ramp |goto 62.46,62.32 < 15 |only if walking
talk Dungar Longdrink##352
turnin Dungar Longdrink##6261 |goto 66.27,62.13
accept Return to Lewis##6285 |goto 66.27,62.13
|only if Human
step
Enter the building |goto Westfall 56.51,47.40 < 10 |walk
talk Quartermaster Lewis##491
|tip Inside the building.
turnin Return to Lewis##6285 |goto Westfall 57.00,47.17
|only if Human
step
Leave the building |goto 56.51,47.40 < 10 |c |q 22
|only if Human
stickystart "Collect_Goretusk_Snouts"
stickystart "Collect_Stringy_Vulture_Meat"
stickystart "Collect_Handfuls_Of_Oats"
step
label "Collect_Goretusk_Livers"
Kill Goretusk enemies around this area
|tip They look like boars.
collect 8 Goretusk Liver##723 |q 22/1 |goto 53.55,41.12
You can find more around: |notinsticky
[60.81,45.54]
[60.01,29.16]
step
label "Collect_Goretusk_Snouts"
Kill Goretusk enemies around this area
|tip They look like boars.
collect 3 Goretusk Snout##731 |q 38/3 |goto 53.55,41.12
You can find more around: |notinsticky
[60.81,45.54]
[60.01,29.16]
step
label "Collect_Stringy_Vulture_Meat"
Kill Fleshripper enemies around this area
|tip They look like vultures.
collect 3 Stringy Vulture Meat##729 |q 38/1 |goto 53.55,41.12
You can find more around: |notinsticky
[60.81,45.54]
[60.01,29.16]
[49.44,27.31]
step
Enter the building |goto 49.53,19.39 < 10 |walk
click Furlbrow's Wardrobe
|tip Inside the building.
collect Furlbrow's Pocket Watch##841 |q 64/1 |goto 49.36,19.24
step
Leave the building |goto 49.53,19.39 < 7 |walk
Kill Riverpaw enemies around this area
collect 8 Gnoll Paw##725 |q 102/1 |goto 52.06,14.98
You can find more around: |notinsticky
[56.88,13.69]
[44.90,13.81]
step
Kill Murloc enemies around this area
collect 3 Murloc Eye##730 |q 38/2 |goto 54.65,10.94
step
Follow the path up |goto 54.63,14.26 < 30 |c |q 151
step
label "Collect_Handfuls_Of_Oats"
click Sack of Oats+
|tip They look like tan grain bags on the ground around this area.
|tip They are spread out around Westfall, usually concentrated near and around farm areas.
|tip Keep an eye out for these as you run around completing other quests.
collect 8 Handful of Oats##1528 |q 151/1 |goto 50.51,20.69
You can find more around: |notinsticky
[57.38,18.41]
step
talk Farmer Furlbrow##237
turnin The Forgotten Heirloom##64 |goto 59.96,19.36
step
talk Verna Furlbrow##238
turnin Poor Old Blanchy##151 |goto 59.92,19.42
stickystart "Collect_Flasks_Of_Oil"
stickystart "Kill_Harvest_Watchers"
step
kill Harvest Watcher##114+
collect 3 Okra##732 |q 38/4 |goto 53.89,32.26
|tip Make sure not to sell these to a vendor.
You can find more around [51.03,22.94]
step
label "Collect_Flasks_Of_Oil"
kill Harvest Watcher##114+
collect 5 Flask of Oil##814 |goto 53.89,32.26 |q 103 |future
|tip Make sure not to sell these to a vendor.
You can find more around [51.03,22.94]
step
label "Kill_Harvest_Watchers"
kill 20 Harvest Watcher##114 |q 9/1 |goto 53.89,32.26
You can find more around [51.03,22.94]
step
talk Farmer Saldean##233
turnin The Killing Fields##9 |goto 56.04,31.23
step
Enter the building |goto 56.15,31.05 < 7 |walk
talk Salma Saldean##235
|tip Inside the building.
turnin Goretusk Liver Pie##22 |goto 56.42,30.52
turnin Westfall Stew##38 |goto 56.42,30.52
step
Leave the building |goto 56.15,31.05 < 7 |walk
talk Captain Danuvin##821
turnin Patrolling Westfall##102 |goto 56.42,47.62
stickystart "Kill_Defias_Looters"
step
kill 15 Defias Pillager##589 |q 13/1 |goto 44.91,69.38
step
label "Kill_Defias_Looters"
kill 15 Defias Looter##590 |q 13/2 |goto 44.91,69.38
step
talk Gryan Stoutmantle##234
turnin The People's Militia##13 |goto 56.33,47.52
accept The People's Militia##14 |goto 56.33,47.52
accept The Defias Brotherhood##65 |goto 56.33,47.52
step
Enter the building |goto 53.00,53.36 < 7 |walk
talk Innkeeper Heather##8931
|tip Inside the building.
home Sentinel Hill |goto 52.86,53.71
stickystart "Kill_Defias_Knuckledusters"
stickystart "Kill_Defias_Highwaymen"
step
Leave the building |goto 53.00,53.36 < 7 |walk
kill 5 Defias Pathstalker##121 |q 14/2 |goto 52.23,73.48
You can find more around: |notinsticky
[52.53,78.60]
[46.39,79.07]
step
label "Kill_Defias_Knuckledusters"
kill 5 Defias Knuckleduster##449 |q 14/3 |goto 52.23,73.48
You can find more around: |notinsticky
[52.53,78.60]
[46.39,79.07]
step
label "Kill_Defias_Highwaymen"
kill 15 Defias Highwayman##122 |q 14/1 |goto 52.23,73.48
You can find more around: |notinsticky
[52.53,78.60]
[46.39,79.07]
step
Leave the building |goto 53.00,53.36 < 7 |walk
talk Gryan Stoutmantle##234
turnin The People's Militia##14 |goto 56.33,47.52
step
Enter the building |goto Redridge Mountains 26.61,46.41 < 7 |walk
talk Wiley the Black##266
|tip Upstairs inside the building.
turnin The Defias Brotherhood##65 |goto Redridge Mountains 26.48,45.35
accept The Defias Brotherhood##132 |goto Redridge Mountains 26.48,45.35
step
Leave the building |goto 26.61,46.41 < 7 |walk
talk Gryan Stoutmantle##234
turnin The Defias Brotherhood##132 |goto Westfall 56.33,47.52
accept The Defias Brotherhood##135 |goto Westfall 56.33,47.52
step
Follow the path |goto Stormwind City 74.69,53.64 < 7 |walk
Enter the building |goto Stormwind City/0 77.14,58.04 < 7 |walk
talk Master Mathias Shaw##332
|tip Upstairs inside the building.
turnin The Defias Brotherhood##135 |goto Stormwind City 75.78,59.84
accept The Defias Brotherhood##141 |goto Stormwind City 75.78,59.84
step
Leave the building |goto 77.14,58.04 < 7 |walk
Follow the path |goto 74.69,53.64 < 7 |walk
Run up the ramp |goto 62.44,62.33 < 7 |only if walking
talk Gryan Stoutmantle##234
turnin The Defias Brotherhood##141 |goto Westfall 56.33,47.52
accept The Defias Brotherhood##142 |goto Westfall 56.33,47.52
step
kill Defias Messenger##550
|tip He walks along the road between Jangolode Mine and Moonbrook.
|tip He walks into Gold Coast Quarry before traveling to either Jangolode Mine or Moonbrook.
|tip Run on the road while looking for him.
|tip He spawns around this location, so it may be easier to kill enemies around this area, waiting for him to either spawn or walk here.
collect A Mysterious Message##1381 |q 142/1 |goto 45.86,67.81
Also check around:
[37.79,44.43]
[30.42,42.34]
[44.44,25.91]
step
talk Gryan Stoutmantle##234
turnin The Defias Brotherhood##142 |goto 56.33,47.52
step
talk The Defias Traitor##467
|tip This is an escort quest.
|tip If he's not here, someone may be escorting him.
|tip Wait until he respawns.
accept The Defias Brotherhood##155 |goto 55.68,47.50 |noautoaccept
step
Watch the dialogue
|tip Follow the Defias Traitor and protect him as he walks.
|tip He eventually walks to this location.
Escort The Defias Traitor to Discover Where VanCleef is Hiding |q 155/1 |goto 42.54,71.69
step
talk Captain Grayson##392
accept Keeper of the Flame##103 |goto 30.02,86.02
step
talk Captain Grayson##392
turnin Keeper of the Flame##103 |goto 30.02,86.02
accept The Coastal Menace##104 |goto 30.02,86.02
step
kill Old Murk-Eye##391
|tip He walks along the beach around this area.
collect Scale of Old Murk-Eye |q 104/1 |goto 26.61,66.94
Also check around [34.95,84.87]
step
talk Captain Grayson##392
turnin The Coastal Menace##104 |goto 30.02,86.02
step
Leave the building |goto 53.00,53.36 < 7 |walk
talk Gryan Stoutmantle##234
turnin The Defias Brotherhood##155 |goto 56.33,47.52
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\The Burning Crusade (58-70)\\Hellfire Peninsula (58-61)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Hellfire",
condition_suggested=function() return level >= 58 and level <= 61 and not completedq(5225) end,
next="Leveling Guides\\The Burning Crusade (58-70)\\Zangarmarsh (61-63)",
},[[
step
Enter the building |goto Blasted Lands/0 64.16,17.12 < 10 |walk
talk Bernie Heisten##3546
|tip Inside the building.
buy Nethergarde Bitter##23848 |goto Blasted Lands/0 63.51,17.01 |q 9563 |future
step
Leave the building |goto 64.22,16.82 < 10 |walk
Follow the path |goto 62.95,19.73 < 15 |only if walking
Follow the road |goto 55.05,37.21 < 50 |only if walking
Follow the path down |goto 57.25,47.03 < 20 |only if walking
talk Watch Commander Relthorn Netherwane##16841
accept Through the Dark Portal##10119 |goto 58.32,55.90
step
talk Commander Duron##19229
turnin Through the Dark Portal##10119 |goto Hellfire Peninsula/0 87.34,50.75
accept Arrival in Outland##10288 |goto Hellfire Peninsula/0 87.34,50.75
step
talk Amish Wildhammer##18931
turnin Arrival in Outland##10288 |goto 87.36,52.42
accept Journey to Honor Hold##10140 |goto 87.36,52.42
step
talk Amish Wildhammer##18931
Tell him _"Send me to Honor Hold!"_
Begin Flying to Honor Hold |ontaxi |goto 87.36,52.42 |q 10140
step
Fly to Honor Hold |offtaxi |goto 54.66,62.67 |q 10140 |notravel
step
talk Marshal Isildor##19308
|tip He walks around this area.
turnin Journey to Honor Hold##10140 |goto 54.62,62.79
accept Force Commander Danath##10254 |goto 54.62,62.79
step
Enter the building |goto 54.91,63.62 < 7 |walk
talk Sid Limbardi##16826
|tip Inside the building.
home Honor Hold |goto 54.22,63.60
step
Enter the building |goto 56.21,65.61 < 10 |walk
talk Force Commander Danath Trollbane##16819
|tip Upstairs inside the building.
turnin Force Commander Danath##10254 |goto 56.64,66.70
accept The Legion Reborn##10141 |goto 56.64,66.70
accept Know your Enemy##10160 |goto 56.64,66.70
step
Follow the path |goto 54.04,60.95 < 20 |only if walking
Enter the building |goto 51.23,60.17 < 7 |only if walking
talk Dumphry##21209
|tip Inside the building.
accept Waste Not, Want Not##10055 |goto 51.12,60.30
step
talk Lieutenant Amadi##16820
|tip Inside the building.
turnin Know your Enemy##10160 |goto 50.91,60.19
accept Fel Orc Scavengers##10482 |goto 50.91,60.19
stickystart "Collect_Salvageable_Wood"
stickystart "Slay_Bonechewer_Orcs"
step
click Salvageable Metal+
|tip They look like various shaped metal parts on the ground around this area.
collect 8 Salvaged Metal##25912 |q 10055/1 |goto 54.64,54.15
You can find more around:
[57.39,53.14]
[60.17,52.13]
step
label "Collect_Salvageable_Wood"
click Salvageable Wood+
|tip They look like planks of wood on the ground around this area.
collect 8 Salvaged Wood##25911 |q 10055/2 |goto 54.64,54.15
You can find more around: |notinsticky
[57.39,53.14] |notinsticky
[60.17,52.13] |notinsticky
step
label "Slay_Bonechewer_Orcs"
Kill Bonechewer enemies around this area
|tip They look like red orcs.
Slay #20# Bonechewer Orcs |q 10482/1 |goto 54.64,54.15
You can find more around: |notinsticky
[57.39,53.14] |notinsticky
[60.17,52.13] |notinsticky
step
Enter the building |goto 51.23,60.17 < 7 |only if walking
talk Dumphry##21209
|tip Inside the building.
turnin Waste Not, Want Not##10055 |goto 51.12,60.30
accept Laying Waste to the Unwanted##10078 |goto 51.12,60.30
step
talk Lieutenant Amadi##16820
|tip Inside the building.
turnin Fel Orc Scavengers##10482 |goto 50.91,60.19
accept Ill Omens##10483 |goto 50.91,60.19
step
talk Sergeant Altumus##19309
turnin The Legion Reborn##10141 |goto 61.70,60.91
accept The Path of Anguish##10142 |goto 61.70,60.91
stickystart "Kill_Flamewalker_Imps"
stickystart "Kill_Infernal_Warbringers"
step
kill Dreadcaller##19434 |q 10142/1 |goto 67.28,55.67
|tip Be careful to avoid the giant Fel Reaver that sometimes walks around this area.
You can find more around [68.56,59.78]
step
label "Kill_Flamewalker_Imps"
kill 4 Flamewaker Imp##19136 |q 10142/2 |goto 67.28,55.67
|tip Be careful to avoid the giant Fel Reaver that sometimes walks around this area. |notinsticky
You can find more around [68.56,59.78] |notinsticky
step
label "Kill_Infernal_Warbringers"
kill 6 Infernal Warbringer##19261 |q 10142/3 |goto 67.28,55.67
|tip Be careful to avoid the giant Fel Reaver that sometimes walks around this area. |notinsticky
You can find more around [68.56,59.78] |notinsticky
step
Follow the path |goto 64.91,47.53 < 30 |only if walking
use the Flaming Torch##26002
Burn the Eastern Thrower |q 10078/1 |goto 58.74,46.97
step
use the Flaming Torch##26002
Burn the Central Eastern Thrower |q 10078/2 |goto 56.02,46.49
step
use the Flaming Torch##26002
Burn the Central Western Thrower |q 10078/3 |goto 53.53,47.08
step
use the Flaming Torch##26002
Burn the Western Thrower |q 10078/4 |goto 52.83,47.15
step
Follow the path |goto 62.74,48.11 < 30 |only if walking
talk Sergeant Altumus##19309
turnin The Path of Anguish##10142 |goto 61.70,60.91
accept Expedition Point##10143 |goto 61.70,60.91
step
Enter the building |goto 51.23,60.17 < 7 |only if walking
talk Dumphry##21209
|tip Inside the building.
turnin Laying Waste to the Unwanted##10078 |goto 51.12,60.30
step
Kill enemies around this area
|tip Being a level higher will make the next few quests easier.
|tip Be careful to avoid the giant Fel Reaver that sometimes walks around this area.
Reach Level 59 |ding 59 |goto 67.28,55.67
You can find more around [68.56,59.78]
step
Follow the path |goto 64.23,62.10 < 70 |only if walking
Kill Bleeding Hollow enemies around this area
|tip They look like red orcs.
collect Cursed Talisman##30157 |q 10483/1 |goto 68.17,69.78
step
talk Corporal Ironridge##21133
turnin Ill Omens##10483 |goto 70.96,63.37
accept Cursed Talismans##10484 |goto 70.96,63.37
step
talk Forward Commander Kingston##19310
turnin Expedition Point##10143 |goto 71.34,62.77
accept Disrupt Their Reinforcements##10144 |goto 71.34,62.77
step
talk Wing Commander Dabir'ee##19409
accept Zeth'Gor Must Burn!##10895 |goto 71.40,62.48
stickystart "Collect_Cursed_Talismans"
step
use the Smoke Beacon##31739
Mark the Northern Tower |q 10895/1 |goto 68.05,66.84
step
use the Smoke Beacon##31739
Mark the Forge Tower |q 10895/3 |goto 70.09,69.05
step
use the Smoke Beacon##31739
Mark the Foothill Tower |q 10895/4 |goto 70.87,71.37
step
use the Smoke Beacon##31739
Mark the Southern Tower |q 10895/2 |goto 66.44,76.51
step
label "Collect_Cursed_Talismans"
Kill Bleeding Hollow enemies around this area
|tip They look like red orcs.
collect 12 Cursed Talisman##30157 |q 10484/1 |goto 68.01,72.27
step
talk Corporal Ironridge##21133
turnin Cursed Talismans##10484 |goto 70.96,63.37
accept Warlord of the Bleeding Hollow##10485 |goto 70.96,63.37
step
talk Wing Commander Dabir'ee##19409
turnin Zeth'Gor Must Burn!##10895 |goto 71.40,62.48
step
Follow the path |goto 70.67,68.51 < 30 |only if walking
Enter the building |goto 69.44,76.28 < 10 |walk
kill Warlord Morkh##16964
|tip Inside the building.
collect Morkh's Shattered Armor##30158 |q 10485/1 |goto 70.08,77.09
step
Leave the building |goto 69.44,76.28 < 7 |walk
talk Corporal Ironridge##21133
turnin Warlord of the Bleeding Hollow##10485 |goto 70.96,63.37
accept Return to Honor Hold##10903 |goto 70.96,63.37
step
Kill enemies around this area
collect 4 Demonic Rune Stone##28513+ |n
click Portal Kaalez
|tip Stand inside of it.
Disrupt Portal Kaalez |q 10144/2 |goto 72.72,58.94
step
Kill enemies around this area
collect 4 Demonic Rune Stone##28513+ |n
click Portal Kaalez
|tip Stand inside of it.
Disrupt Portal Grimh |q 10144/1 |goto 71.44,55.17
step
talk Forward Commander Kingston##19310
turnin Disrupt Their Reinforcements##10144 |goto 71.34,62.77
accept Mission: The Murketh and Shaadraz Gateways##10146 |goto 71.34,62.77
step
talk Wing Commander Dabir'ee##19409
Tell him _"I'm on a bombing mission for Forward Commander Kingston. I need a gryphon destroyer!"_
Begin the Bombing Mission |ontaxi |goto 71.40,62.48 |q 10146
step
use the Seaforium PU-36 Explosive Nether Modulator##28038
|tip Use it on the demon building on the ground as you fly.
Destroy Gateway Shaadraz |q 10146/2 |goto 77.72,51.82
step
use the Seaforium PU-36 Explosive Nether Modulator##28038
|tip Use it on the demon building on the ground as you fly.
Destroy Gateway Murketh |q 10146/1 |goto 78.00,47.20
step
Return to Expedition Point |offtaxi |goto 71.28,62.56 |q 10146 |notravel
step
talk Forward Commander Kingston##19310
turnin Mission: The Murketh and Shaadraz Gateways##10146 |goto 71.34,62.77
accept Shatter Point##10340 |goto 71.34,62.77
step
talk Wing Commander Dabir'ee##19409
Tell him _"Send me to Shatter Point!"_
Begin Flying to Shatter Point |ontaxi |goto 71.40,62.48 |q 10340
step
Fly to Shatter Point |offtaxi |goto 78.51,35.05 |q 10340 |notravel
step
talk Runetog Wildhammer##20234
fpath Shatter Point |goto 78.42,34.90
step
talk Runetog Wildhammer##20234
turnin Shatter Point##10340 |goto 78.42,34.90
accept Wing Commander Gryphongar##10344 |goto 78.42,34.90
step
Enter the building |goto 79.20,34.09 < 7 |only if walking
talk Wing Commander Gryphongar##20232
|tip Inside the building.
turnin Wing Commander Gryphongar##10344 |goto 79.34,33.86
accept Mission: The Abyssal Shelf##10163 |goto 79.34,33.86
step
talk Wing Commander Gryphongar##20232
|tip Inside the building.
collect Area 52 Special##28132 |goto 79.34,33.86 |q 10163 |future
|tip If you don't have this item, abandon the "Mission: The Abyssal Shelf" quest.
|tip Then, accept the quest again from this NPC to get the item again.
step
talk Gryphoneer Windbellow##20235
Tell her _"Send me to the Abyssal Shelf!"_
Begin Flying to the Abyssal Shelf |ontaxi |goto 78.25,34.46 |q 10163
stickystart "Destroy_Fel_Cannons"
stickystart "Slay_Ganarg_Peons"
step
use the Area 52 Special##28132
|tip Use it on the enemies on the ground as you fly.
|tip If you don't complete this in the first run, you can try again by talking to the same NPC.
kill 5 Mo'arg Overseer|q 10163/2 |goto 72.62,20.81
|tip They look like enemies with a drill hand.
step
label "Destroy_Fel_Cannons"
use the Area 52 Special##28132 |notinsticky
|tip Use it on the enemies on the ground as you fly. |notinsticky
|tip If you don't complete this in the first run, you can try again by talking to the same NPC. |notinsticky
Destroy #5# Fel Cannons |q 10163/3 |goto 72.62,20.81
|tip They look like brown and green metal demon cannons on the ground around this area as you fly.
step
label "Slay_Ganarg_Peons"
use the Area 52 Special##28132 |notinsticky
|tip Use it on the enemies on the ground as you fly. |notinsticky
|tip If you don't complete this in the first run, you can try again by talking to the same NPC. |notinsticky
kill 20 Gan'arg Peon|q 10163/1 |goto 72.62,20.81
step
Return to Shatter Point |offtaxi |goto 78.25,34.46 |q 10163 |notravel
step
Enter the building |goto 79.20,34.09 < 7 |only if walking
talk Wing Commander Gryphongar##20232
|tip Inside the building.
turnin Mission: The Abyssal Shelf##10163 |goto 79.34,33.86
accept Go to the Front##10382 |goto 79.34,33.86
step
talk Supply Officer Pestle##20231
|tip Clear your bags and repair your items.
|tip Stock up on ammo. |only if Hunter
Click Here to Continue |confirm |goto 78.52,34.00 |q 10382
step
talk Gryphoneer Windbellow
Tell her _"Send me to Honor Point!"_
Begin Flying to Honor Point |ontaxi |goto 78.25,34.46 |q 10382
step
Fly to Honor Point |offtaxi |goto 68.72,28.22 |q 10382 |notravel
step
talk Field Marshal Brock##20793
turnin Go to the Front##10382 |goto 68.29,28.55
accept Disruption - Forge Camp: Mageddon##10394 |goto 68.29,28.55
stickystart "Kill_Ganarg_Servants"
step
kill Razorsaw##20798 |q 10394/2 |goto 64.82,31.91
|tip He looks like a large enemy with metal arms and a spinning saw blade for a hand, that walks around this area.
step
label "Kill_Ganarg_Servants"
kill 10 Gan'arg Servant##16947 |q 10394/1 |goto 64.82,31.91
step
talk Field Marshal Brock##20793
turnin Disruption - Forge Camp: Mageddon##10394 |goto 68.29,28.55
accept Enemy of my Enemy...##10396 |goto 68.29,28.55
step
kill 3 Fel Cannon MKI##22461 |q 10396/1 |goto 63.53,31.03
You can find more at:
[63.42,32.48]
[64.09,33.46]
[64.53,33.19]
[65.46,33.50]
[66.59,32.00]
step
talk Field Marshal Brock##20793
turnin Enemy of my Enemy...##10396 |goto 68.29,28.55
accept Invasion Point: Annihilator##10397 |goto 68.29,28.55
step
Follow the path |goto 60.51,30.57 < 20 |only if walking
kill Warbringer Arix'Amal##19298 |q 10397/1 |goto 53.09,26.47
step
kill Warbringer Arix'Amal##19298 |notinsticky
collect Burning Legion Gate Key##29795 |q 10397/3 |goto 53.09,26.47
step
kill Warbringer Arix'Amal##19298 |notinsticky
collect Burning Legion Missive##29588 |n
use the Burning Legion Missive##29588
accept The Dark Missive ##10395 |goto 53.09,26.47
step
click Forge Camp: Portal Glyph
|tip It looks like a floating rune inside the demon structure.
Close the Burning Legion Gate |q 10397/2 |goto 53.04,27.71
step
Follow the path |goto 60.19,30.59 < 30 |only if walking
talk Field Marshal Brock##20793
turnin Invasion Point: Annihilator##10397 |goto 68.29,28.55
step
Follow the path |goto 60.07,34.18 < 30 |only if walking
Continue following the path |goto 55.40,32.56 < 10 |only if walking
Jump down carefully here and avoid Thrallmar |goto 53.76,32.93 < 7 |only if walking
talk Foreman Razelcraz##16915
accept Outland Sucks!##10236 |goto 51.37,30.52
stickystart "Collect_Shredder_Spare_Parts"
step
kill Crust Burster##16844+
|tip They are under the jumping piles of rocks, they come up to fight when you get close.
collect Eroded Leather Case##23338 |n
use the Eroded Leather Case##23338
accept Missing Missive##9373 |goto 48.83,37.27
You can find more around [47.51,42.94]
step
label "Collect_Shredder_Spare_Parts"
click Shredder Parts##235310+
|tip They look like wooden crates on the ground around this area.
collect 6 Shredder Spare Parts##28554 |q 10236/1 |goto 48.83,37.27
You can find more around [47.51,42.94]
step
talk Foreman Razelcraz##16915
turnin Outland Sucks!##10236 |goto 51.37,30.52
accept How to Serve Goblins##10238 |goto 51.37,30.52
step
click Manni's Cage
Save Manni |q 10238/1 |goto 45.12,41.06
step
click Moh's Cage
Save Moh |q 10238/2 |goto 46.46,45.15
step
click Jakk's Cage
Save Jakk|q 10238/3 |goto 47.49,46.60
step
talk Foreman Razelcraz##16915
turnin How to Serve Goblins##10238 |goto 51.37,30.52
accept Shizz Work##10629 |goto 51.37,30.52
step
use the Felhound Whistle##30803
|tip This will summon a Fel Guard Hound next to you.
Click Here After Summoning the Hound |confirm |goto 51.37,30.52 |q 10629
step
kill Deranged Helboar##16863+
|tip The Fel Guard Hound will eat their corpses.
click Felhound Poo+
|tip Small piles of poop will appear on the ground.
collect Shredder Keys##30794 |q 10629/1 |goto 48.69,30.65
step
talk Foreman Razelcraz##16915
turnin Shizz Work##10629 |goto 51.37,30.52
accept Beneath Thrallmar##10630 |goto 51.37,30.52
step
Enter the mine |goto 51.57,31.75 < 7 |walk
Follow the path |goto 52.59,30.57 < 7 |walk
kill Urga'zz##18976 |q 10630/1 |goto 54.39,31.57
|tip Inside the mine.
step
Follow the path |goto 53.14,31.64 < 7 |walk
Continue following the path |goto 52.47,30.53 < 7 |walk
Leave the mine |goto 51.58,31.74 < 7 |walk
talk Foreman Razelcraz##16915
turnin Beneath Thrallmar##10630 |goto 51.37,30.52
step
Kill enemies around this area
|tip You need to be at least level 60 to be able to accept the next quests.
Reach Level 60 |ding 60 |goto 48.69,30.65
step
talk Sid Limbardi##16826
|tip Inside the building.
accept The Longbeards##9558 |goto 54.22,63.60
step
talk Father Malgor Devidicus##16825
|tip Inside the building.
accept An Old Gift##10058 |goto 54.29,63.58
step
talk Assistant Klatu##22430
|tip Upstairs inside the building.
turnin Return to Honor Hold##10903 |goto 54.32,63.65
accept Fel Spirits##10909 |goto 54.32,63.65
accept Digging for Prayer Beads##10916 |goto 54.32,63.65
step
click Fei Fei's Cache
|tip On the ground, outside the building.
collect Draenei Prayer Beads##31795 |q 10916/1 |goto 54.01,63.29
step
Enter the building |goto 54.91,63.62 < 7 |walk
talk Assistant Klatu##22430
|tip Upstairs inside the building.
turnin Digging for Prayer Beads##10916 |goto 54.32,63.65
step
Enter the building |goto 56.24,65.69 < 10 |walk
talk Warp-Scryer Kryv##16839
|tip Upstairs inside the building.
turnin The Dark Missive ##10395 |goto 56.69,66.52
accept The Heart of Darkness##10399 |goto 56.69,66.52
accept The Path of Glory##10047 |goto 56.69,66.52
step
Follow the path |goto 57.24,61.74 < 20 |only if walking
click Trampled Skeleton+
|tip They look like small brown pieces of skeleton on the ground around this area on the bone path.
|tip Be careful to avoid the giant Fel Reaver that sometimes walks around this area.
Cleanse #8# Trampled Skeletons |q 10047/1 |goto 63.47,49.34
You can find more around [67.72,49.00]
step
Follow the path |goto 57.24,61.74 < 20 |only if walking
Enter the building |goto 56.24,65.69 < 10 |walk
talk Warp-Scryer Kryv##16839
|tip Upstairs inside the building.
turnin The Path of Glory##10047 |goto 56.69,66.52
accept The Temple of Telhamat##10093 |goto 56.69,66.52
step
Follow the path |goto 54.02,60.93 < 20 |only if walking
Enter the building |goto 51.23,60.17 < 7 |only if walking
talk Honor Guard Wesilow##16827
|tip Inside the building.
accept Unyielding Souls##10050 |goto 50.88,60.35
step
talk Foreman Biggums##16837
accept A Job for an Intelligent Man##9355 |goto 52.02,62.57
accept When This Mine's a-Rockin'##10079 |goto 52.02,62.57
step
kill 12 Gan'arg Sapper##18827 |q 10079 |goto 52.26,62.33
|tip Inside the mine.
step
Leave the mine |goto 52.25,62.33 < 7 |walk
talk Foreman Biggums##16837
turnin When This Mine's a-Rockin'##10079 |goto 52.02,62.57
accept The Mastermind##10099 |goto 52.02,62.57
step
Enter the mine |goto 52.24,62.33 < 7 |walk
Follow the path down |goto 54.01,62.73 < 7 |walk
Continue down the path |goto 54.25,64.66 < 7 |walk
kill Z'kral##18974 |q 10099/1 |goto 56.15,61.58
|tip He walks around this area downstairs inside the mine.
step
Follow the path up |goto 54.11,64.24 < 7 |walk
Continue up the path |goto 53.90,62.65 < 7 |walk
Leave the mine |goto 52.25,62.33 < 7 |walk
talk Foreman Biggums##16837
turnin The Mastermind##10099 |goto 52.02,62.57
step
kill 15 Marauding Crust Burster##16857 |q 9355/1 |goto 48.24,64.29
|tip They look like clusters of bouncing rocks moving along the ground around this area. |notinsticky
You can find more around: |notinsticky
[46.44,63.27] |notinsticky
[44.89,67.44] |notinsticky
[48.76,68.83] |notinsticky
step
talk Foreman Biggums##16837
turnin A Job for an Intelligent Man##9355 |goto 52.02,62.57
step
use the Anchorite Relic##31772
kill Shattered Hand Berserker##16878+
|tip Kill them near the Anchorite Relic.
kill Fel Spirit##22454+
|tip They appear after you kill the Shattered Hand Berserkers next to the Anchorite Relic.
Avenge Jules #10# Times |q 10909/1 |goto 45.00,75.19
step
talk "Screaming" Screed Luckheed##19367
accept In Case of Emergency...##10161 |goto 49.15,74.86
step
talk Legassi##19344
accept Ravager Egg Roundup##9349 |goto 49.24,74.84
step
Follow the path |goto 44.95,80.65 < 40 |only if walking
kill Razorfang Ravager##16933+
|tip The Razorfang Hatchlings will not drop the quest item.
click Ravager Egg+
|tip They look like large white eggs on the ground around this area.
collect 12 Ravager Egg##23217 |q 9349/1 |goto 40.90,85.11
You can find more around [36.30,90.18]
step
Follow the path |goto 35.65,90.23 < 30 |only if walking
Follow the road |goto Terokkar Forest/0 54.37,20.55 < 30 |only if walking
Continue following the road |goto Terokkar Forest/0 47.22,27.06 < 30 |only if walking
Cross the bridge |goto Shattrath City/0 78.05,56.78 < 20 |only if walking
talk Nutral##18940
fpath Shattrath |goto Shattrath City/0 64.07,41.11
step
Cross the bridge |goto 66.93,51.13 < 20 |only if walking
Follow the road |goto Terokkar Forest/0 38.68,26.61 < 30 |only if walking
Continue following the road |goto Terokkar Forest/0 47.53,26.91 < 30 |only if walking
Continue following the road |goto Terokkar Forest/0 53.21,22.18 < 30 |only if walking
Follow the path |goto Hellfire Peninsula/0 36.53,90.02 < 30 |only if walking
Follow the path |goto Hellfire Peninsula/0 44.69,81.04 < 40 |only if walking
talk Legassi##19344
turnin Ravager Egg Roundup##9349 |goto Hellfire Peninsula/0 49.24,74.84
accept Helboar, the Other White Meat##9361 |goto Hellfire Peninsula/0 49.24,74.84
stickystart "Collect_Zeppelin_Debris"
step
kill Deranged Helboar##16863+
collect Tainted Helboar Meat##23270+ |n
use the Purification Mixture##23268
|tip Use it when you have Tainted Helboar Meat.
|tip They won't all become Purified.
collect 8 Purified Helboar Meat##23248 |q 9361/1 |goto 51.15,77.96
You can find more around:
[50.50,70.03]
[54.69,70.85]
step
talk Legassi##19344
turnin Helboar, the Other White Meat##9361 |goto 49.24,74.84
accept Smooth as Butter##9356 |goto 49.24,74.84
stickystop "Collect_Zeppelin_Debris"
stickystart "Kill_Unyielding_Knights"
stickystart "Kill_Unyielding_Sorcerers"
stickystart "Kill_Unyielding_Footmen"
step
Follow the path |goto 52.35,83.35 < 50 |only if walking
click Mysteries of the Light
collect Mysteries of the Light##25938 |q 10058/1 |goto 54.96,86.81
step
label "Kill_Unyielding_Knights"
kill 8 Unyielding Knight##16906 |q 10050/2 |goto 54.45,85.49
You can find more around: |notinsticky
[55.58,77.08]
[52.35,78.08]
step
label "Kill_Unyielding_Sorcerers"
kill 6 Unyielding Sorcerer##16905 |q 10050/2 |goto 55.10,80.50
|tip You can find a few more on the outside of the walls around this area, but they are mostly concentrated in this area.
step
label "Kill_Unyielding_Footmen"
kill 12 Unyielding Footman##16904 |q 10050/1 |goto 57.68,75.69
You can find more around: |notinsticky
[54.99,77.48]
[51.70,79.11]
[54.26,85.48]
stickystart "Collect_Zeppelin_Debris"
step
kill Bonestripper Buzzard##16972+
collect 12 Plump Buzzard Wing##23239 |q 9356/1 |goto 57.40,72.19
You can find more around:
[59.09,69.04]
[62.96,67.81]
[64.53,64.36]
step
label "Collect_Zeppelin_Debris"
click Zeppelin Debris+
|tip They look like grey and tan varisouly shaped metal objects on the ground all around this area.
collect 30 Zeppelin Debris##28116 |q 10161/1 |goto 65.30,65.93
You can find more around: |notinsticky
[61.75,68.94]
[61.00,75.45]
[59.08,70.25]
[56.49,72.87]
step
talk Legassi##19344
turnin Smooth as Butter##9356 |goto 49.24,74.84
step
talk "Screaming" Screed Luckheed##19367
turnin In Case of Emergency...##10161 |goto 49.15,74.86
accept Voidwalkers Gone Wild##9351 |goto 49.15,74.86
step
talk Father Malgor Devidicus##16825
|tip Inside the building.
turnin An Old Gift##10058 |goto 54.29,63.58
step
talk Assistant Klatu##22430
|tip Upstairs inside the building.
turnin Fel Spirits##10909 |goto 54.32,63.64
accept The Exorcism of Colonel Jules##10935 |goto 54.32,63.64
step
talk Anchorite Barada##22431
|tip Upstairs inside the building.
Tell him _"I am ready, Anchorite. Let us begin the exorcism."_
Click Here After Talking to Him |confirm |goto 53.93,63.55 |q 10935
step
Watch the dialogue
|tip Upstairs inside the building.
Kill the enemies that attack in waves
use the Ritual Prayer Beads##31828
|tip Use them on enemies are in the room.
|tip Enemies build up over time, and the cooldown is 15 seconds, so try to kill 2-3 enemies each time you use the item.
|tip This will clear the room of enemies.
talk Colonel Jules##22432
|tip Talk to him on the bed after the exorcism is complete.
Save Colonel Jules |q 10935/1 |goto 53.93,63.64
step
talk Assistant Klatu##22430
|tip Upstairs inside the building.
turnin The Exorcism of Colonel Jules##10935 |goto 54.32,63.64
accept Trollbane is Looking for You##10936 |goto 54.32,63.64
step
Enter the building |goto 56.31,65.86 < 10 |walk
talk Force Commander Danath Trollbane##16819
|tip Upstairs inside the building.
turnin Trollbane is Looking for You##10936 |goto 56.65,66.69
step
Enter the building |goto 51.23,60.17 < 7 |walk
talk Honor Guard Wesilow##16827
turnin Unyielding Souls##10050 |goto 50.88,60.35
accept Looking to the Leadership##10057 |goto 50.88,60.35
step
Follow the path |goto 51.26,64.95 < 50 |only if walking
kill Arch Mage Xintor##16977 |q 10057/1 |goto 53.67,81.10
step
kill Lieutenant Commander Thalvos##16978 |q 10057/2 |goto 54.80,83.73
|tip He walks around this area.
step
Kill enemies around this area
|tip You need to be at least level 61 to be able to accept the next quests.
Reach Level 61 |ding 61 |goto 54.65,78.92
step
Follow the path |goto 51.26,64.95 < 50 |only if walking
Enter the building |goto 51.23,60.17 < 7 |walk
talk Honor Guard Wesilow##16827
turnin Looking to the Leadership##10057 |goto 50.88,60.35
step
Follow the road |goto 45.53,59.88 < 70 |only if walking
talk Anchorite Obadei##16834
accept In Search of Sedai##9390 |goto 23.01,40.38
step
talk Ikan##16799
accept Cruel Taskmasters##9399 |goto 23.09,40.23
step
talk Scout Vanura##16797
|tip She walks up and down the stairs around this area.
accept Deadly Predators##9398 |goto 23.37,38.91
step
Enter the building |goto 23.34,37.21 < 10 |walk
talk Amaan the Wise##16796
|tip Inside the building.
turnin The Temple of Telhamat##10093 |goto 23.42,36.55
accept The Pools of Aggonar##9426 |goto 23.42,36.55
accept Helping the Cenarion Post##10443 |goto 23.42,36.55
step
talk Elsaana##17006
|tip Inside the building.
accept An Ambitious Plan##9383 |goto 23.21,36.66
step
talk Kuma##18785
fpath Temple of Telhamat |goto 25.19,37.23
step
clicknpc Sedai's Corpse##16852
turnin In Search of Sedai##9390 |goto 26.89,37.43
accept Return to Obadei##9423 |goto 26.89,37.43
step
Run up the stairs |goto 23.39,41.15 < 20 |only if walking
talk Anchorite Obadei##16834
turnin Return to Obadei##9423 |goto 23.00,40.38
step
talk Makuru##16833
accept Makuru's Vengeance##9424 |goto 23.14,40.17
step
Follow the path |goto 28.95,39.83 < 50 |only if walking
Follow the path up |goto 29.91,34.62 < 20 |only if walking
Kill Mag'har enemies around this area
collect 10 Mag'har Ancestral Beads##23589 |q 9424/1 |goto 35.44,32.39
stickystart "Kill_Terrorfiends"
stickystart "Kill_Blistering_Rots"
stickystart "Kill_Terrorfiends_10399"
step
label "Kill_Terrorfiends"
kill 6 Terrorfiend##16951 |q 9426/1 |goto 40.52,32.52
step
label "Kill_Blistering_Rots"
kill 6 Blistering Rot##16901 |q 9426/2 |goto 40.52,32.52
step
label "Kill_Terrorfiends_10399"
kill 10 Terrorfiend##16951 |q 10399/1 |goto 40.52,32.52
step
Follow the road |goto 37.88,44.41 < 40 |only if walking
Run up the stairs |goto 23.39,41.15 < 20 |only if walking
talk Makuru##16833
turnin Makuru's Vengeance##9424 |goto 23.14,40.17
step
Watch the dialogue
talk Anchorite Obadei##16834
accept Atonement##9543 |goto 23.00,40.38
step
Enter the building |goto 23.35,37.17 < 10 |walk
talk Amaan the Wise##16796
|tip Inside the building.
turnin The Pools of Aggonar##9426 |goto 23.42,36.55
accept Cleansing the Waters##9427 |goto 23.42,36.55
turnin Atonement##9543 |goto 23.42,36.55
accept Sha'naar Relics##9430 |goto 23.42,36.55
step
talk Caregiver Ophera Windfury##18906
|tip Inside the building.
home Temple of Telhamat |goto 23.35,36.36 |q 9423 |future
step
Follow the road |goto 34.40,46.16 < 50 |only if walking
Follow the path |goto 37.98,43.71 < 30 |only if walking
use the Cleansing Vial##23361
Watch the dialogue
kill Aggonis##17000
Cleanse Aggonar's Presence |q 9427/1 |goto 40.14,30.77
step
talk Amaan the Wise##16796
|tip Inside the building.
turnin Cleansing the Waters##9427 |goto 23.42,36.55
step
Follow the path |goto 22.70,47.29 < 50 |only if walking
talk Thiah Redmane##16991
turnin Missing Missive##9373 |goto 15.70,52.09
turnin Helping the Cenarion Post##10443 |goto 15.70,52.09
accept Demonic Contamination##9372 |goto 15.70,52.09
step
talk Mahuram Stouthoof##16888
|tip He walks around this area.
accept Keep Thornfang Hill Clear!##10159 |goto 15.68,52.16
step
talk Amythiel Mistwalker##16885
accept The Cenarion Expedition##9912 |goto 16.03,52.15
stickystart "Kill_Thornfang_Venomspitters"
step
kill 8 Thornfang Ravager##19349 |q 10159/1 |goto 10.10,50.68
step
label "Kill_Thornfang_Venomspitters"
kill 8 Thornfang Venomspitter##19350 |q 10159/2 |goto 10.10,50.68
step
talk Mahuram Stouthoof##16888
|tip He walks around this area.
turnin Keep Thornfang Hill Clear!##10159 |goto 15.68,52.16
step
kill Hulking Helboar##16880+
collect 6 Helboar Blood Sample##23336 |q 9372/1 |goto 22.82,55.58
You can find more around: |notinsticky
[18.96,55.46]
[23.82,60.38]
step
talk Thiah Redmane##16991
turnin Demonic Contamination##9372 |goto 15.70,52.09
accept Testing the Antidote##10255 |goto 15.70,52.09
step
use the Cenarion Antidote##23337
|tip Use it on a Hulking Helboar around this area.
kill Dreadtusk
Administer the Antidote |q 10255/1 |goto 22.82,55.58
step
talk Thiah Redmane##16991
turnin Testing the Antidote##10255 |goto 15.70,52.09
stickystart "Kill_Illidari_Taskmasters"
stickystart "Collect_Shanaar_Relics"
step
Enter the building |goto 15.44,58.79 < 7 |walk
talk Akoru the Firecaller##20678
|tip Inside the building.
accept Naladu##10403 |goto 15.59,58.75
step
Run up the stairs |goto 14.30,61.14 < 20 |only if walking
Enter the building |goto 16.18,64.76 < 7 |walk
talk Naladu##19361
|tip Inside the building.
turnin Naladu##10403 |goto 16.27,65.08
accept A Traitor Among Us##10367 |goto 16.27,65.08
step
Enter the building |goto 14.37,62.66 < 7 |walk
click Metal Coffer##184466
|tip Inside the building.
|tip Wait for Arzeth the Merciless, an elite enemy who walks around nearby, to walk down the stairs before trying to enter the building.
collect Sha'naar Key##29501 |q 10367/1 |goto 14.34,63.49
step
Enter the building |goto 16.18,64.76 < 7 |walk
talk Naladu##19361
|tip Inside the building.
turnin A Traitor Among Us##10367 |goto 16.27,65.08
accept The Dreghood Elders##10368 |goto 16.27,65.08
step
Enter the building |goto 15.44,58.79 < 7 |walk
talk Akoru the Firecaller##20678
|tip Inside the building.
Tell him _"Walk free, elder. Bring the spirits back to your tribe."_
Free Akoru |q 10368/2 |goto 15.59,58.75
step
Enter the building |goto 13.03,58.64 < 7 |walk
talk Aylaan the Waterwaker##20679
|tip Inside the building.
Tell him _"Walk free, elder. Bring the spirits back to your tribe."_
Free Aylaan |q 10368/3 |goto 13.00,58.43
step
Enter the building |goto 13.29,60.77 < 7 |walk
talk Morod the Windstirrer##20677
|tip Inside the building.
Tell him _"Walk free, elder. Bring the spirits back to your tribe."_
Free Morod |q 10368/1 |goto 13.13,61.04
step
Enter the building |goto 16.18,64.76 < 7 |walk
talk Naladu##19361
|tip Inside the building.
turnin The Dreghood Elders##10368 |goto 16.27,65.08
accept Arzeth's Demise##10369 |goto 16.27,65.08
step
use the Staff of the Dreghood Elders##29513
|tip Use it on Arzeth the Merciless.
|tip He will become weakened and easier to kill.
|tip He spawns at this location, but walks around this area.
kill Arzeth the Powerless##20680 |q 10369/1 |goto 14.33,62.17
step
Enter the building |goto 16.18,64.76 < 7 |walk
talk Naladu##19361
|tip Inside the building.
turnin Arzeth's Demise##10369 |goto 16.27,65.081
step
label "Kill_Illidari_Taskmasters"
kill 4 Illidari Taskmaster##17058 |q 9399/1 |goto 14.91,58.72
|tip Kill the Illidari Taskmasters, and ignore their helpers.
|tip They will stop attacking you after you kill the taskmasters.
step
label "Collect_Shanaar_Relics"
click Sha'naar Relic##181637+
|tip They look like blue vases on the ground around this area.
collect 10 Sha'naar Relic##23642 |q 9430/1 |goto 14.91,58.72
step
Follow the path |goto 17.42,56.77 < 40 |only if walking
Continue following the path |goto 21.79,57.89 < 40 |only if walking
talk Gremni Longbeard##16850
turnin The Longbeards##9558 |goto 23.89,72.17
accept The Arakkoa Threat##9417 |goto 23.89,72.17
accept Rampaging Ravagers##9385 |goto 23.89,72.17
step
talk Mirren Longbeard##16851
accept Gaining Mirren's Trust##9563 |goto 23.97,72.35
step
talk Mirren Longbeard##16851
turnin Gaining Mirren's Trust##9563 |goto 23.97,72.35
accept The Finest Down##9420 |goto 23.97,72.35
step
Kill enemies around this area
Slay #10# Quillfang Ravagers |q 9385/1 |goto 22.70,67.85
step
talk Gremni Longbeard##16850
turnin Rampaging Ravagers##9385 |goto 23.89,72.17
stickystart "Kill_Haaleshi_Windwalkers"
stickystart "Kill_Haaleshi_Talonguards"
stickystart "Collect_Kaliri_Feathers"
step
Follow the path |goto 26.20,71.39 < 20 |only if walking
Follow the path up |goto 26.04,77.31 < 7 |only if walking
kill Avruu##17084
|tip He walks along this ledge around this area.
collect Avruu's Orb##23580 |n
use Avruu's Orb##23580
accept Avruu's Orb##9418 |goto 25.66,76.40
step
click Haal'eshi Altar##181606
Choose _"Place Avruu's Orb on the Altar."_
kill Aeranas##17085
|tip He will eventually surrender.
talk Aeranas##17085
turnin Avruu's Orb##9418 |goto 28.92,81.46
step
label "Kill_Haaleshi_Windwalkers"
kill 4 Haal'eshi Windwalker##16966 |q 9417/1 |goto 25.88,75.23
step
label "Kill_Haaleshi_Talonguards"
kill 6 Haal'eshi Talonguard##16967  |q 9417/2 |goto 25.88,75.23
step
label "Collect_Kaliri_Feathers"
Kill Kaliri enemies around this area
click Kaliri Nest##181582+
|tip They look like bird nests with pink eggs in them on the ground around this area.
|tip Either a male or female hatchling will appear.
|tip Kill the hatchlings.
collect 8 Kaliri Feather##23588 |q 9420/1 |goto 25.88,75.23
step
Follow the path |goto 26.09,72.32 < 20 |only if walking
talk Mirren Longbeard##16851
turnin The Finest Down##9420 |goto 23.97,72.35
step
talk Gremni Longbeard##16850
turnin The Arakkoa Threat##9417 |goto 23.89,72.17
stickystart "Kill_Stonescythe_Whelps"
step
Follow the path |goto 31.62,62.11 < 70 |only if walking
kill 4 Stonescythe Alpha##16929 |q 9398/1 |goto 34.16,63.05
|tip There are a few inside this cave.
|tip You can find more outside the cave, but they are more rare and spread out.
|tip Be careful of the elite enemy inside the cave.
step
label "Kill_Stonescythe_Whelps"
kill 8 Stonescythe Whelp##16927 |q 9398/2 |goto 34.26,61.82
step
talk Amaan the Wise##16796
|tip Inside the building.
turnin Sha'naar Relics##9430 |goto 23.42,36.55
accept The Seer's Relic##9545 |goto 23.42,36.55
step
talk Scout Vanura##16797
|tip She walks up and down the stairs around this area.
turnin Deadly Predators##9398 |goto 23.37,39.27
step
talk Ikan##16799
turnin Cruel Taskmasters##9399 |goto 23.09,40.22
step
use the Seer's Relic##23645
Watch the dialogue
Grant the Vision |q 9545/1 |goto 26.90,37.44
step
Run up the stairs |goto 23.39,41.13 < 20 |only if walking
Enter the building |goto 23.34,37.16 < 10 |walk
talk Amaan the Wise##16796
|tip Inside the building.
turnin The Seer's Relic##9545 |goto 23.42,36.55
step
Enter the building |goto 56.31,65.85 < 10 |walk
talk Warp-Scryer Kryv##16839
|tip Upstairs inside the building.
turnin The Heart of Darkness##10399 |goto 56.69,66.52
stickystart "Collect_Condensed_Voidwalker_Essences"
step
Follow the path down |goto 55.31,66.91 < 20 |only if walking
kill Uncontrolled Voidwalker##16975
|tip Don't kill it, just get it to low health.
use the Sanctified Crystal##23417
|tip Use it on an Uncontrolled Voidwalker when it's at low health.
click Glowing Crystal##181574
|tip It will appear above the Uncontrolled Voidwalker's corpse after you use the Sanctified Crystal.
collect Glowing Sanctified Crystal##23442 |q 9383/1 |goto 46.31,83.29
You can find more around [46.31,83.29]
step
label "Collect_Condensed_Voidwalker_Essences"
Kill Voidwalker enemies around this area
collect 10 Condensed Voidwalker Essence##23218 |q 9351/1 |goto 46.31,83.29
You can find more around [46.31,83.29]
step
talk "Screaming" Screed Luckheed##19367
turnin Voidwalkers Gone Wild##9351 |goto 49.15,74.86
step
Follow the path up |goto 53.63,68.61 < 15 |only if walking
Enter the building |goto 23.34,37.13 < 10 |walk
talk Elsaana##17006
|tip Inside the building.
turnin An Ambitious Plan##9383 |goto 23.21,36.66
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\The Burning Crusade (58-70)\\Zangarmarsh (61-63)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Zangarmarsh",
next="Leveling Guides\\The Burning Crusade (58-70)\\Terokkar Forest (63-65)",
condition_suggested=function() return level >= 61 and level <= 63 and not completedq(9732) end,
},[[
step
Follow the road |goto Hellfire Peninsula/0 21.90,48.70 < 70 |only if walking
talk Ikeyen##17956
accept The Umbrafen Tribe##9747 |goto Zangarmarsh/0 80.40,64.15
step
talk Lauranna Thar'well##17909
accept Plants of Zangarmarsh##9802 |goto 80.32,64.17
step
talk Warden Hamoot##17858
|tip At the top of the tower.
accept A Warm Welcome##9728 |goto 79.09,65.27
step
Enter the building |goto 78.69,63.34 < 7 |walk
talk Lethyn Moonfire##17834
|tip Inside the building.
accept The Dying Balance##9895 |goto 78.53,63.15
step
talk Innkeeper Coryth Stoktron##18907
|tip Inside the building.
home Cenarion Refuge |goto 78.49,62.94 |q 9785 |future
step
talk Ysiel Windsinger##17841
|tip Outside on the balcony of the building.
turnin The Cenarion Expedition##9912 |goto 78.40,62.02
accept Disturbance at Umbrafen Lake##9716 |goto 78.40,62.02
accept Warden Hamoot##9778 |goto 78.40,62.02
step
Enter the building |goto 79.14,65.21 < 5 |only if walking
talk Warden Hamoot##17858
|tip Upstairs at the top of the tower.
turnin Warden Hamoot##9778 |goto 79.08,65.27
accept A Warm Welcome##9728 |goto 79.08,65.27
step
Run up the stairs |goto 69.76,49.29 < 15 |only if walking
Ride the elevator up |goto 70.69,49.19 < 15 |only if walking
talk Vindicator Idaar##18004
accept The Dead Mire##9782 |goto 68.34,50.07
step
talk Munci##18788
|tip Up on the big Telredor mushroom.
fpath Telredor |goto 67.83,51.46
step
talk Anchorite Ahuurn##18003
accept The Boha'mu Ruins##9786 |goto 68.20,49.38
step
talk Prospector Conall##18295
accept Unfinished Business##9901 |goto 68.56,49.37
step
talk Ruam##18007
accept Fulgor Spores##9777 |goto 68.63,48.73
step
talk Haalrun##18005
accept Too Many Mouths to Feed##9781 |goto 67.81,47.92
step
talk Noraani##18006
accept Menacing Marshfangs##9791 |goto 67.64,47.87
stickystart "Kill_Marshfang_Rippers"
step
Ride the elevator down |goto 70.69,49.19 < 15 |only if walking
click Fulgor Spore##182116+
|tip They look like small glowing green mushrooms on the ground around this area.
|tip They are spread out all around this area.
collect 6 Fulgor Spore##24383 |q 9777/1 |goto 69.05,47.23
step
label "Kill_Marshfang_Rippers"
kill 10 Marshfang Ripper##18130 |q 9791/1 |goto 72.21,47.21
You can find more around: |notinsticky
[76.64,49.21]
[85.18,49.64]
step
kill Sporewing##18280 |q 9901/1 |goto 77.2,45.9
|tip He looks like a larger brown sporebat flies low to the ground around this area.
stickystart "Accept_Withered_Basidium"
step
click Dead Mire Soil##182119
collect Dead Mire Soil Sample##24400 |q 9782/1 |goto 80.66,43.45
step
label "Accept_Withered_Basidium"
kill Withered Giant##18124+
collect Withered Basidium##24483 |n
use the Withered Basidium##24483
accept Withered Basidium##9827 |goto 81.11,41.33
step
Run up the stairs |goto 69.76,49.29 < 15 |only if walking
Ride the elevator up |goto 70.69,49.19 < 15 |only if walking
talk Vindicator Idaar##18004
turnin The Dead Mire##9782 |goto 68.34,50.07
accept An Unnatural Drought##9783 |goto 68.34,50.07
step
talk Prospector Conall##18295
turnin Unfinished Business##9901 |goto 68.56,49.37
accept Blacksting's Bane##9896 |goto 68.56,49.37
step
talk Ruam##18007
turnin Fulgor Spores##9777 |goto 68.63,48.73
turnin Withered Basidium##9827 |goto 68.63,48.73
accept Withered Flesh##10355 |goto 68.63,48.73
step
talk Noraani##18006
turnin Menacing Marshfangs##9791 |goto 67.64,47.87
accept Umbrafen Eel Filets##9780 |goto 67.64,47.87
stickystart "Collect_Withered_Bog_Lord_Samples"
stickystart "Collect_Bog_Lord_Tendrils"
stickystart "Kill_Withered_Giants"
step
Ride the elevator down |goto 70.69,49.19 < 15 |only if walking
kill Parched Hydra##20324+
collect 5 Parched Hydra Sample##29480 |q 10355/1 |goto 82.25,40.14
step
label "Collect_Withered_Bog_Lord_Samples"
kill Withered Bog Lord##19402+
collect 5 Withered Bog Lord Sample##29481 |q 10355/2 |goto 81.11,41.33
step
label "Collect_Bog_Lord_Tendrils"
kill Withered Bog Lord##19402+
collect 6 Bog Lord Tendril##24291 |goto 81.11,41.33 |q 9743 |future
|tip Save these, you will need them for a later quest.
|tip Be careful to not accidenatally sell these to a vendor.
step
label "Kill_Withered_Giants"
kill 12 Withered Giant##18124 |q 9783/1 |goto 80.31,41.06
step
Run up the stairs |goto 69.76,49.29 < 15 |only if walking
Ride the elevator up |goto 70.69,49.19 < 15 |only if walking
talk Vindicator Idaar##18004
turnin An Unnatural Drought##9783 |goto 68.34,50.07
step
talk Ruam##18007
turnin Withered Flesh##10355 |goto 68.63,48.73
step
talk Anchorite Ahuurn##18003
accept The Orebor Harborage##9776 |goto 68.20,49.38
step
Ride the elevator down |goto 70.69,49.19 < 15 |only if walking
use the Potion of Water Breathing##25539
|tip Use it next to the lake around this area.
|tip You will be killing enemies underwater in the lake in the next step.
Gain Greater Water Breathing |havebuff 134716 |goto 73.67,61.43 |q 9781
stickystart "Kill_Mire_Hydras"
step
kill Umbrafen Eel##18138+
|tip Underwater in the whole lake around this area.
collect 8 Eel Filet##24374 |q 9780/1 |goto 75.09,73.78
step
label "Kill_Mire_Hydras"
kill 10 Mire Hydra##18213 |q 9781/1 |goto 73.67,61.43
|tip Along the edge of the lake around this area.
You can find more around [77.41,74.42]
stickystart "Collect_Unidentified_Plant_Parts"
stickystart "Collect_Naga_Claws"
step
Investigate Umbrafen Lake |q 9716/1 |goto 71.15,81.89
|tip Outside the cave.
step
label "Collect_Unidentified_Plant_Parts"
Kill enemies around this area
collect 10 Unidentified Plant Parts##24401 |q 9802/1 |goto 71.65,76.32
You can find more around: |notinsticky
[70.31,72.95]
[70.23,81.82]
step
label "Collect_Naga_Claws"
Kill Darkcrest enemies around this area
collect 30 Naga Claws##24280 |q 9728/1 |goto 71.65,76.32
You can find more around: |notinsticky
[70.31,72.95]
[70.23,81.82]
step
kill Boglash##18281 |q 9895/1 |goto 81.68,72.37
|tip He walks around this area in the water.
|tip He spawns near this location.
|tip He's elite, but you should be able to solo him fairly easily.
|tip If you find it too difficult, try to find someone to help you, or skip it.
Also check around [83.50,77.87]
stickystart "Kill_Umbrafen_Oracles"
stickystart "Kill_Umbrafen_Seers"
stickystart "Kill_Umbrafen_Witchdoctors"
step
Enter the building |goto 84.94,90.15 < 10 |only if walking
kill Kataru##18080 |q 9747/1 |goto 85.29,90.93
|tip At the top of the tower.
step
label "Kill_Umbrafen_Oracles"
kill 6 Umbrafen Oracle##18077 |q 9747/2 |goto 84.66,86.90
step
label "Kill_Umbrafen_Seers"
kill 8 Umbrafen Seer##18079 |q 9747/3 |goto 84.66,86.90
step
label "Kill_Umbrafen_Witchdoctors"
kill 6 Umbrafen Witchdoctor##20115 |q 9747/4 |goto 84.66,86.90
step
talk Kayra Longmane##17969
|tip Inside the building.
|tip If she's not there, someone else may be escorting her.
|tip Wait for her to respawn.
accept Escape from Umbrafen##9752 |goto 83.37,85.54
step
Watch the dialogue
|tip Follow Kayra Longmane and protect her as she walks.
|tip She eventually walks to this location.
Escort Kayra Longmane |q 9752/1 |goto 79.83,71.20
step
talk Ikeyen##17956
turnin The Umbrafen Tribe##9747 |goto 80.39,64.15
accept A Damp, Dark Place##9788 |goto 80.39,64.15
step
talk Lauranna Thar'well##17909
turnin Plants of Zangarmarsh##9802 |goto 80.32,64.17
accept Saving the Sporeloks##10096 |goto 80.32,64.17
step
talk Windcaller Blackhoof##18070
accept Safeguarding the Watchers##9894 |goto 80.37,64.72
step
talk Warden Hamoot##17858
|tip At the top of the tower.
turnin A Warm Welcome##9728 |goto 79.09,65.27
step
Enter the building |goto 78.69,63.34 < 7 |walk
talk Lethyn Moonfire##17834
|tip Inside the building.
turnin The Dying Balance##9895 |goto 78.53,63.15
accept Watcher Leesa'oh##9697 |goto 78.53,63.15 |only if (rep('Cenarion Expedition') >= Friendly) and not completedq(9709)
accept What's Wrong at Cenarion Thicket?##9957 |goto 78.53,63.15 |only if (rep('Cenarion Expedition') >= Friendly) and not completedq(9968)
step
talk Ysiel Windsinger##17841
|tip On the balcony of the building.
turnin Disturbance at Umbrafen Lake##9716 |goto 78.40,62.02
accept As the Crow Flies##9718 |goto 78.40,62.02
turnin Escape from Umbrafen##9752 |goto 78.40,62.02
step
use the Stormcrow Amulet##25465
Watch the dialogue
Explore the Lakes of Zangarmarsh |q 9718/1 |goto 78.40,62.02
step
talk Ysiel Windsinger##17841
|tip Outside on the balcony of the building.
turnin As the Crow Flies##9718 |goto 78.40,62.02
accept Balance Must Be Preserved##9720 |goto 78.40,62.02
stickystart "Kill_Marsh_Lurkers"
stickystart "Kill_Marsh_Dredgers"
step
Follow the path up |goto 75.10,89.17 < 10 |only if walking
Enter the cave |goto 74.45,92.05 < 15 |walk
Follow the path |goto 71.85,93.00 < 10 |walk
click Ikeyen's Belongings##182122
|tip Inside the cave.
collect Ikeyen's Belongings##24411 |q 9788/1 |goto 70.53,97.90
step
Follow the path |goto 72.25,96.81 < 10 |walk
kill Lord Klaq##18282 |q 9894/1 |goto 72.50,94.03
|tip He walks around this area.
|tip Downstairs inside the cave.
|tip If you find it too difficult, try to find someone to help you, or skip it.
step
label "Kill_Marsh_Lurkers"
kill 10 Marsh Lurker##18136 |q 10096/2 |goto 74.45,92.05
|tip Inside and outside the cave. |notinsticky
|tip This location is the entrance of the cave. |notinsticky
|tip Try to stay close to the entrance of the cave, if inside it, you will leave the cave soon. |notinsticky
step
label "Kill_Marsh_Dredgers"
kill 10 Marsh Dredger##18137 |q 10096/1 |goto 74.45,92.05
|tip Inside and outside the cave. |notinsticky
|tip This location is the entrance of the cave. |notinsticky
|tip Try to stay close to the entrance of the cave, if inside it, you will leave the cave soon. |notinsticky
stickystart "Accept_Drain_Schematics"
step
use the Ironvine Seeds##24355
|tip You will be attacked.
Disable the Umbrafen Lake Pump Controls |q 9720/1 |goto 70.59,80.31
step
use the Ironvine Seeds##24355
|tip An enemy will appear.
Disable the Lagoon Pump Controls |q 9720/4 |goto 63.13,64.12
step
Run up the stairs |goto 69.76,49.29 < 15 |only if walking
Ride the elevator up |goto 70.69,49.19 < 15 |only if walking
talk Haalrun##18005
turnin Too Many Mouths to Feed##9781 |goto 67.81,47.92
accept Diaphanous Wings##9790 |goto 67.81,47.92
step
talk Noraani##18006
turnin Umbrafen Eel Filets##9780 |goto  67.64,47.87
step
Ride the elevator down |goto 70.69,49.19 < 15 |only if walking
use the Ironvine Seeds##24355
|tip You will be attacked.
Disable the Serpent Lake Controls |q 9720/3 |goto 61.99,40.83
step
label "Accept_Drain_Schematics"
Kill Bloodscale enemies around this area
collect Drain Schematics##24330 |n
use the Drain Schematics##24330
accept Drain Schematics##9731 |goto 60.65,37.90
step
Locate the Drain |q 9731/1 |goto 50.38,40.87
|tip Underwater.
|tip Swim straight down at this location.
step
_Note:_
|tip While completing the many quests coming up, keep an eye out for Glowcaps.
|tip They look like small orange glowing mushrooms on the ground.
|tip You will need 10 of them for a later quest, so just collect them as you walk around.
|tip You will be reminded to get them later, also.
Click Here to Continue |confirm |q 9808 |future
step
Run up the stairs |goto 41.71,29.92 < 20 |only if walking
talk Halu##22485
fpath Orebor Harborage |goto 41.28,29.00
step
talk Timothy Daniels##18019
accept Secrets of the Daggerfen##9848 |goto 41.21,28.67
step
click Wanted Poster##184945
accept Wanted: Chieftain Mummaki##10116 |goto 41.74,27.26
step
talk Ikuti##18008
turnin The Orebor Harborage##9776 |goto 41.95,27.19
accept Ango'rosh Encroachment##9835 |goto 41.95,27.19
accept Daggerfen Deviance##10115 |goto 41.95,27.19
stickystart "Kill_Angorosh_Ogres"
step
kill 5 Ango'rosh Shaman##18118 |q 9835/1 |goto 33.62,31.78
step
label "Kill_Angorosh_Ogres"
kill 10 Ango'rosh Ogre##18117 |q 9835/2 |goto 33.62,31.78
stickystart "Kill_Daggerfen_Assassins"
stickystart "Kill_Daggerfen_Muckdwellers"
step
click Daggerfen Poison Vial##182185
collect Daggerfen Poison Vial##24500 |q 9848/2 |goto 26.41,22.84
step
click Daggerfen Poison Manual##182184
|tip At the top of the tower.
|tip Be careful to avoid Chieftain Mummaki nearby.
collect Daggerfen Poison Manual##24499 |q 9848/1 |goto 24.40,27.00
step
kill Chieftain Mummaki##19174
|tip At the top of the tower.
collect Chieftain Mummaki's Totem##27943 |q 10116/1 |goto 23.78,26.75
step
label "Kill_Daggerfen_Assassins"
kill 3 Daggerfen Assassin##18116 |q 10115/1 |goto 25.41,24.35
step
label "Kill_Daggerfen_Muckdwellers"
kill 15 Daggerfen Muckdweller##18115 |q 10115/2 |goto 25.41,24.35
step
Run up the stairs |goto 39.98,27.60 < 20 |only if walking
talk Timothy Daniels##18019
turnin Secrets of the Daggerfen##9848 |goto 41.21,28.67
step
talk Ikuti##18008
turnin Ango'rosh Encroachment##9835 |goto 41.94,27.19
accept Overlord Gorefist##9839 |goto 41.94,27.19
turnin Wanted: Chieftain Mummaki##10116 |goto 41.94,27.19
turnin Daggerfen Deviance##10115 |goto 41.94,27.19
step
talk Maktu##18010
accept Natural Armor##9834 |goto 41.61,27.29
step
Enter the building |goto 41.01,28.46 < 10 |walk
talk Puluu##18009
|tip Inside the building.
accept Stinger Venom##9830 |goto 40.85,28.65
accept Lines of Communication##9833 |goto 40.85,28.65
accept The Terror of Marshlight Lake##9902 |goto 40.85,28.65
step
Ride the elevator down |goto 70.69,49.19 < 15 |only if walking
kill Umbraglow Stinger##18132+
collect 8 Diaphanous Wing##24372 |q 9790/1 |goto 70.70,60.30
You can find more around [79.41,73.25]
step
talk Lauranna Thar'well##17909
turnin Saving the Sporeloks##10096 |goto 80.32,64.17
step
talk Ikeyen##17956
turnin A Damp, Dark Place##9788 |goto 80.39,64.16
step
talk Windcaller Blackhoof##18070
turnin Safeguarding the Watchers##9894 |goto 80.37,64.72
accept Blessings of the Ancients##9785 |goto 80.37,64.72
step
talk Ashyen##17900
|tip It looks like a large tree that walks around this area.
Tell him _"Grant me your mark, wise ancient."_
Receive the Mark of Lore |q 9785/1 |goto 81.09,63.91
step
talk Keleth##17901
|tip It looks like a large tree that walks around this area.
Tell him _"Grant me your mark, mighty ancient."_
Receive the Mark of War |q 9785/2 |goto 78.98,67.42
step
talk Windcaller Blackhoof##18070
turnin Blessings of the Ancients##9785 |goto 80.37,64.72
step
Enter the building |goto 78.68,63.32 < 7 |only if walking
talk Ysiel Windsinger##17841
|tip Outside on the balcony of the building.
turnin Balance Must Be Preserved##9720 |goto 78.40,62.01
turnin Drain Schematics##9731 |goto 78.40,62.01
accept Warning the Cenarion Circle##9724 |goto 78.40,62.01
step
talk Amythiel Mistwalker##16885
turnin Warning the Cenarion Circle##9724 |goto Hellfire Peninsula/0 16.04,52.15
accept Return to the Marsh##9732 |goto Hellfire Peninsula/0 16.04,52.15
step
Enter the building |goto Zangarmarsh/0 78.68,63.32 < 7 |only if walking
talk Ysiel Windsinger##17841
|tip Outside on the balcony of the building.
turnin Return to the Marsh##9732 |goto Zangarmarsh/0 78.40,62.01
step
Run up the stairs |goto 69.76,49.29 < 15 |only if walking
Ride the elevator up |goto 70.69,49.19 < 15 |only if walking
talk Haalrun##18005
turnin Diaphanous Wings##9790 |goto 67.81,47.92
step
Follow the path |goto 41.52,30.37 < 50 |only if walking
use the Potion of Water Breathing##25539
|tip Use it next to the lake.
Gain Greater Water Breathing |havebuff spell:22807 |goto 42.91,36.06 |q 9834
step
kill Fenclaw Thrasher##18214+
|tip Underwater around this area.
collect 8 Fenclaw Hide##24486 |q 9834/1 |goto 49.10,38.94
step
kill Blacksting##18283
|tip He flies low to the ground around this area.
collect Blacksting's Stinger##25448 |q 9896/1 |goto 49.69,59.67
step
Run up the stairs |goto 44.44,66.19 < 30 |only if walking
Explore the Boha'mu Ruins |q 9786/1 |goto 44.13,68.93
|tip In the doorway of the building.
stickystart "Kill_Marshfang_Slicers"
stickystart "Collect_Fertile_Spores"
step
kill "Count" Ungula##18285
|tip He flies low to the ground around this area.
collect "Count" Ungula's Mandible##25459 |n
use "Count" Ungula's Mandible##25459
accept The Count of the Marshes##9911 |goto 32.90,59.52
step
label "Kill_Marshfang_Slicers"
kill 12 Marshfang Slicer##18131 |q 9833/1 |goto 35.90,58.70
You can find more around [25.34,57.53]
step
label "Collect_Fertile_Spores"
Kill enemies around this area
|tip Only Sporebats and Marsh Walkers will drop these.
collect 6 Fertile Spores##24449 |goto 37.02,58.64 |q 9806 |future
|tip Save these, you will need them for a later quest.
step
Follow the road |goto 29.69,56.20 < 50 |only if walking
talk Watcher Leesa'oh##17831
turnin The Count of the Marshes##9911 |goto 23.32,66.21
turnin Watcher Leesa'oh##9697 |goto 23.32,66.21 |only if havequest(9697) or completedq(9697)
accept Observing the Sporelings##9701 |goto 23.32,66.21
step
talk Fahssn##17923
|tip He walks around this area.
accept The Sporelings' Plight##9739 |goto 19.07,63.86
accept Natural Enemies##9743 |goto 19.07,63.86
step
talk Fahssn##17923
|tip He walks around this area.
turnin Natural Enemies##9743 |goto 19.07,63.86
stickystart "Collect_Mature_Spore_Sacs"
step
Investigate the Spawning Glen |q 9701/1 |goto 14.89,61.18
step
label "Collect_Mature_Spore_Sacs"
click Mature Spore Sac##182069+
|tip They look like pink balls swaying on the ground around this area.
collect 10 Mature Spore Sac##24290 |q 9739/1 |goto 14.10,60.87
step
talk Fahssn##17923
|tip He walks around this area.
turnin The Sporelings' Plight##9739 |goto 19.07,63.86
step
click Mature Spore Sac##182069+
|tip They look like pink balls swaying on the ground around this area.
collect 10 Mature Spore Sac##24290 |n
_And_
Kill enemies around this area
collect 6 Bog Lord Tendril##24291 |n
|tip Once you've collected either of these, turn them in to Fahssn.
Reach Neutral Reputation with the Sporeggar |q 50131/1 |goto 14.10,60.87
Talk to Fahssn around [19.07,63.86]
|tip He walks around this area.
|tip Repeatedly complete the "More Spore Sacs" and "More Tendrils!" quests until you reach Neutral reputation with Sporeggar.
step
talk Fahssn##17923
|tip He walks around this area.
accept Sporeggar##9919 |goto 19.07,63.86
step
talk Watcher Leesa'oh##17831
turnin Observing the Sporelings##9701 |goto 23.32,66.21
accept A Question of Gluttony##9702 |goto 23.32,66.21
step
click Discarded Nutriment##182256+
|tip They look like small green-glowing dark colored mushrooms on the ground around this area.
collect 10 Discarded Nutriment##24233 |q 9702/1 |goto 30.03,62.90
step
talk Watcher Leesa'oh##17831
turnin A Question of Gluttony##9702 |goto 23.32,66.21
accept Familiar Fungi##9708 |goto 23.32,66.21
step
Enter the building |goto 19.54,51.83 < 7 |walk
talk Msshi'fn##17924
|tip Inside the building.
turnin Sporeggar##9919 |goto 19.68,52.06
accept Glowcap Mushrooms##9808 |goto 19.68,52.06
step
Enter the building |goto 19.23,49.72 < 7 |walk
talk Gshaff##17925
|tip Inside the building.
accept Fertile Spores##9806 |goto 19.15,49.39
step
talk Gshaff##17925
|tip Inside the building.
turnin Fertile Spores##9806 |goto 19.15,49.39
step
kill Terrorclaw##20477 |q 9902/1 |goto 22.33,45.86
|tip He walks around this area.
step
use the Ironvine Seeds##24355
|tip You will be attacked.
Disable the Marshlight Lake Pump Controls |q 9720/2 |goto 25.42,42.87
step
kill Marshlight Bleeder##18133+
|tip Fenglow Stingers will also drop the quest item.
collect 6 Marshlight Bleeder Venom##24485 |q 9830/1 |goto 15.81,41.93
You can find more around [21.01,31.65]
stickystart "Collect_Glowcap_Mushrooms"
step
Kill Ango'rosh enemies around this area
collect 15 Mushroom Sample##24238 |q 9708/1 |goto 32.97,32.57
step
label "Collect_Glowcap_Mushrooms"
click Glowcap##182053+
|tip They look like small orange glowing mushrooms on the ground around this area.
collect 10 Glowcap Mushroom##24245 |q 9808/1 |goto 32.71,36.34
step
Run up the stairs |goto 39.98,27.57 < 20 |only if walking
Enter the building |goto 41.01,28.46 < 10 |walk
talk Puluu##18009
|tip Inside the building.
turnin Stinger Venom##9830 |goto 40.85,28.65
turnin Lines of Communication##9833 |goto 40.85,28.65
turnin The Terror of Marshlight Lake##9902 |goto 40.85,28.65
step
talk Maktu##18010
turnin Natural Armor##9834 |goto 41.61,27.29
accept Maktu's Revenge##9905 |goto 41.61,27.29
step
talk Anchorite Ahuurn##18003
turnin The Boha'mu Ruins##9786 |goto 68.20,49.37
accept Idols of the Feralfen##9787 |goto 68.20,49.37
step
talk Prospector Conall##18295
turnin Blacksting's Bane##9896 |goto 68.55,49.37
step
Enter the building |goto 42.10,26.66 < 10 |walk
talk Innkeeper Kerp##18908
|tip Inside the building.
home Orebor Harborage |goto 41.86,26.23 |q 9801 |future
step
kill Mragesh##18286 |q 9905/1 |goto 42.21,41.43
|tip Underwater.
step
click Feralfen Idol##182139+
|tip They look like small stone birds on the ground around this area.
collect 6 Feralfen Idol##24422 |q 9787/1 |goto 46.92,61.81
step
Follow the road |goto 30.26,56.01 < 50 |only if walking
talk Watcher Leesa'oh##17831
turnin Familiar Fungi##9708 |goto 23.32,66.20
accept Stealing Back the Mushrooms##9709 |goto 23.32,66.20
step
Enter the building |goto 19.54,51.83 < 7 |walk
talk Msshi'fn##17924
|tip Inside the building.
turnin Glowcap Mushrooms##9808 |goto 19.68,52.06
stickystart "Collect_Boxes_Of_Mushrooms"
stickystart "Kill_Angorosh_Maulers"
step
Cross the bridge |goto 17.08,13.01 < 15 |only if walking
Follow the path up |goto 17.77,9.83 < 10 |only if walking
Enter the building |goto 18.69,7.80 < 10 |walk
kill Overlord Gorefist##18160 |q 9839/1 |goto 18.40,7.79
|tip Inside the building.
step
label "Collect_Boxes_Of_Mushrooms"
Kill Ango'rosh enemies around this area
click Box of Mushrooms##182050+
|tip They look like small wooden boxes on the ground around this area.
|tip An enemy will spawn and attack you.
collect 10 Box of Mushrooms##24240 |q 9709/1 |goto 19.91,5.41
step
label "Kill_Angorosh_Maulers"
kill 10 Ango'rosh Mauler##18120 |q 9839/2 |goto 19.91,5.41
step
talk Ikuti##18008
turnin Overlord Gorefist##9839 |goto 41.94,27.19
step
talk Maktu##18010
turnin Maktu's Revenge##9905 |goto 41.61,27.29
step
talk Anchorite Ahuurn##18003
turnin Idols of the Feralfen##9787 |goto 68.20,49.37
accept Gathering the Reagents##9801 |goto 68.20,49.37
stickystart "Collect_Fen_Strider_Tentacles"
step
Ride the elevator down |goto 70.69,49.19 < 15 |only if walking
Kill Sporebat enemies around this area
collect 4 Sporebat Eye##24426 |q 9801/1 |goto 71.64,40.25
You can find more around [63.79,52.74]
step
label "Collect_Fen_Strider_Tentacles"
kill Fen Strider##18134+
|tip They look like tall aliens around this area.
|tip You can find them walking in the water all around this whole area.
collect 4 Fen Strider Tentacle##24427 |q 9801/2 |goto 71.64,40.25
You can find more around [63.79,52.74]
step
Follow the road |goto 30.26,56.01 < 50 |only if walking
talk Watcher Leesa'oh##17831
turnin Stealing Back the Mushrooms##9709 |goto 23.32,66.20
step
Follow the road |goto 27.80,56.26 < 70 |only if walking
Continue following the road |goto 52.00,56.35 < 70 |only if walking
Run up the stairs |goto 69.76,49.29 < 15 |only if walking
Ride the elevator up |goto 70.69,49.19 < 15 |only if walking
talk Anchorite Ahuurn##18003
turnin Gathering the Reagents##9801 |goto 68.20,49.37
accept Messenger to the Feralfen##9803 |goto 68.20,49.37
step
Ride the elevator down |goto 70.69,49.19 < 15 |only if walking
use Ahuurn's Elixir##24428
Wear the Bird Spirit Illusion |havebuff spell:32038 |goto 44.37,66.47 |q 9803
step
Enter the building |goto 44.15,68.58 < 10 |walk
talk Elder Kuruti##18197
|tip Inside the building.
Tell him _"Greetings, elder. It is time for your people to end their hostility toward the draenei and their allies."_
Receive Elder Kuruti's Response |q 9803/1 |goto 44.11,69.49
step
Run up the stairs |goto 69.76,49.29 < 15 |only if walking
Ride the elevator up |goto 70.69,49.19 < 15 |only if walking
talk Anchorite Ahuurn##18003
turnin Messenger to the Feralfen##9803 |goto 68.20,49.37
step
talk Vindicator Idaar##18004
accept The Fate of Tuurem##9793 |goto 68.34,50.08
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\The Burning Crusade (58-70)\\Terokkar Forest (63-65)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Terokkar",
next="Leveling Guides\\The Burning Crusade (58-70)\\Nagrand (65-67)",
condition_suggested=function() return level >= 63 and level <= 65 and not completedq(10898) end,
},[[
step
talk Haggard War Veteran##19684
|tip He walks along the bridge around this area.
accept A'dal##10210 |goto Shattrath City/0 60.41,16.08
step
talk Nutral##18940
fpath Shattrath |goto 64.07,41.12
step
talk Seth##18653
|tip In the doorway of the building.
|tip He may walk around this area.
accept Rather Be Fishin'##10037 |goto 63.95,15.53
step
Enter the building |goto 51.55,37.39 < 10 |walk
talk A'dal##18481
|tip Inside the building.
turnin A'dal##10210 |goto 53.98,44.71
step
talk Khadgar##18166
|tip Inside the building.
accept City of Light##10211 |goto 54.75,44.32
step
Watch the dialogue
|tip Follow Khadgar's Servant as he walks.
|tip He eventually walks to this location.
|tip This is a long escort quest.
Tour the City of Light |q 10211/1 |goto 50.36,42.98
step
talk Archmage Khadgar##18166
|tip Inside the building.
turnin City of Light##10211 |goto 54.75,44.32
step
talk Archmage Khadgar##18166
|tip Inside the building.
|tip You will only be able to complete one of these quests.
accept Allegiance to the Aldor##10551 |goto 54.75,44.32 |or |noautoaccept
|tip You will become aligned with the Aldor faction by completing this quest.
accept Allegiance to the Scryers##10552 |goto 54.75,44.32 |or |noautoaccept
|tip You will become aligned with the Scryers faction by completing this quest.
step
_Detecting the Faction You Chose:_
The Aldor |condition rep ('The Aldor') >= Neutral	|or	|next "Aldor_Allegiance"
The Scryers |condition rep ('The Scryers') >= Neutral	|or	|next "Scryers_Allegiance"
step
label "Aldor_Allegiance"
talk Archmage Khadgar##18166
|tip Inside the building.
accept Ishanah##10554 |goto Shattrath City/0  54.75,44.32
step
Ride the elevator up |goto 41.68,38.61 < 10 |only if walking
talk Adyen the Lightwarden##18537
accept Marks of Kil'jaeden##10325 |goto 30.76,34.63
step
Enter the building |goto 25.41,30.48 < 10 |walk
talk Ishanah##18538
|tip Inside the building.
turnin Ishanah##10554 |goto 23.96,29.72
accept Restoring the Light##10021 |goto 23.96,29.72
step
Enter the building |goto 28.25,48.09 < 10 |walk
talk Minalei##19046
|tip Inside the building.
home Shattrath City |goto 28.29,49.36 |q 10553 |future
|next "Aldor_Scryers_Merge"
step
label "Scryers_Allegiance"
talk Archmage Khadgar##18166
|tip Inside the building.
accept Voren'thal the Seer##10553 |goto Shattrath City/0 54.75,44.32
step
Ride the elevator up |goto 49.96,62.94 < 10 |only if walking
talk Voren'thal the Seer##18530
|tip Upstairs inside the building.
turnin Voren'thal the Seer##10553 |goto 42.80,91.70
step
talk Magistrix Fyalenn##18531
accept Firewing Signets##10412 |goto 45.20,81.46
step
Enter the building |goto 55.80,80.54 < 10 |walk
talk Innkeeper Haelthol##19232
|tip Inside the building.
home Shattrath City |goto 56.34,81.56 |q 9793 |future
|next "Aldor_Scryers_Merge"
step
label "Aldor_Scryers_Merge"
Cross the bridge |goto Shattrath City/0 58.35,25.41 < 20 |only if walking
kill Shimmerscale Eel##18750+
|tip Underwater around this area.
collect 8 Pristine Shimmerscale Eel##25891 |q 10037/1 |goto Terokkar Forest/0 39.54,10.61
step
talk Earthbinder Tavgren##18446
turnin What's Wrong at Cenarion Thicket?##9957 |goto 44.33,26.31
accept Strange Energy##9968 |goto 44.33,26.31
accept Clues in the Thicket##9971 |goto 44.33,26.31
stickystart "Collect_Vicious_Teromoth_Samples"
step
talk Warden Treelos##18424
|tip He walks around this area.
accept It's Watching You!##9951 |goto 44.11,23.37
step
Enter the building |goto 44.58,21.78 < 15 |only if walking
click Strange Object##183789
|tip Inside the building.
Examine the Strange Object |q 9971/1 |goto 45.12,21.78
step
Enter the building |goto 43.47,22.25 < 7 |only if walking
kill Naphthal'ar##18438 |q 9951/1 |goto 43.39,22.10
|tip At the top of the tower.
step
talk Warden Treelos##18424
|tip He walks around this area.
turnin It's Watching You!##9951 |goto 44.11,23.37
step
label "Collect_Vicious_Teromoth_Samples"
kill Vicious Teromoth##18437+
collect 4 Vicious Teromoth Sample##24279 |q 9968/2 |goto 44.28,23.46
step
talk Earthbinder Tavgren##18446
turnin Clues in the Thicket##9971 |goto 44.33,26.31
step
kill Teromoth##18468+
collect 4 Teromoth Sample##25672 |q 9968/1 |goto 45.8,29.8
step
talk Earthbinder Tavgren##18446
turnin Strange Energy##9968 |goto 44.33,26.31
accept By Any Means Necessary##9978 |goto 44.33,26.31
step
talk Empoor##18482
|tip He walks along the road between Shattrath City and Tuurem.
Tell him _"Empoor, you're going to tell me what I want to know, or else!"_
kill Empoor##18482
|tip He will eventually surrender.
turnin By Any Means Necessary##9978 |goto 47.46,27.17
accept Wind Trader Lathrai##9979 |goto 47.46,27.17
step
Avoid Tuurem |goto 50.38,32.48 < 50 |only if walking
Follow the road |goto 54.77,40.66 < 50 |only if walking
click Wanted Poster##184945
accept Wanted: Bonelashers Dead!##10033 |goto 57.59,54.71
step
Enter the building |goto 57.44,55.09 < 7 |walk
talk Ros'eleth##18390
|tip Inside the building.
accept Olemba Seeds##9992 |goto 57.40,55.44
step
talk Lieutenant Gravelhammer##18713
|tip He walks around this area.
|tip Inside the building.
accept Speak with Private Weeks##10038 |goto 57.50,55.78
accept Thin the Flock##10869 |goto 57.50,55.78
step
talk Lady Dena Kennedy##15991
|tip Inside the building.
accept Secrets of the Arakkoa##10863 |goto 57.78,56.02
step
talk Thander##18389
accept Stymying the Arakkoa##9986 |goto 57.82,54.26
step
talk Bertelm##18387
accept Unruly Neighbors##9998 |goto 58.30,54.76
accept Timber Worg Tails##10016 |goto 58.30,54.76
step
Enter the building |goto 58.37,53.64 < 7 |walk
talk Andarl##18252
|tip Inside the building.
turnin The Fate of Tuurem##9793 |goto 58.53,53.56
accept Magical Disturbances##10026 |goto 58.53,53.56
step
talk Furnan Skysoar##18809
fpath Allerian Stronghold |goto 59.45,55.43
step
talk Seth##18653
|tip In the doorway of the building.
turnin Rather Be Fishin'##10037 |goto Shattrath City/0 63.95,15.53
step
talk Wind Trader Lathrai##18484
turnin Wind Trader Lathrai##9979 |goto 72.23,30.73
accept A Personal Favor##10112 |goto 72.23,30.73
step
Run up the ramp |goto 56.45,16.27 < 7 |only if walking
talk Vekax##22429
|tip He walks around this area.
|tip Up on this wooden platform.
accept The Outcast's Plight##10917 |goto 52.01,18.10
step
talk Rilak the Redeemed##22292
turnin Secrets of the Arakkoa##10863 |goto 52.57,21.00
accept The Eyes of Skettis##10847 |goto 52.57,21.00
step
Cross the bridge |goto 66.81,50.96 < 20 |only if walking
Follow the path |goto Terokkar Forest/0 46.39,26.38 < 70 |c |q 10847
stickystart "Kill_Shienor_Talonites"
stickystart "Kill_Shienor_Sorcerers"
step
click Eastern Altar##182565
Purify the Eastern Altar |q 10021/2 |goto 49.22,20.33
|only if havequest(10021) or completedq(10021)
step
click Northern Altar##182563
Purify the Northern Altar |q 10021/1 |goto 50.65,16.59
|only if havequest(10021) or completedq(10021)
step
click Western Altar##182566
Purify the Western Altar |q 10021/3 |goto 48.13,14.49
|only if havequest(10021) or completedq(10021)
step
Run up the ramp |goto 49.86,16.56 < 7 |only if walking
kill Ashkaz##18539 |q 9986/1 |goto 49.1,16.9
|tip Up on the wooden platform.
step
click Eye of Veil Reskk##185200
|tip Up on the wooden platform.
collect Eye of Veil Reskk##25638 |q 10847/1 |goto 50.13,19.40
step
Follow the path |goto 50.10,24.39 < 50 |only if walking
Enter the building |goto 59.34,23.68 < 7 |walk
kill Ayit##18540|q 9986/2 |goto 59.42,23.50
|tip Inside the building.
step
Enter the tree and follow the path up |goto 59.74,25.34 < 7 |only if walking
click Eye of Veil Shienor##185201
|tip Up on the wooden platform.
collect Eye of Veil Shienor##25642 |q 10847/2 |goto 57.87,23.15
step
label "Kill_Shienor_Talonites"
kill 14 Shienor Talonite##18449 |q 10869/1 |goto 58.77,25.44
step
label "Kill_Shienor_Sorcerers"
kill 6 Shienor Sorcerer##18450 |q 10869/2 |goto 58.77,25.44
|tip They are usually near or inside arakkoa buildings and structures around this area.
stickystart "Collect_Olemba_Seeds"
stickystart "Collect_Timber_Worg_Tails"
step
kill 10 Warp Stalker##18464 |q 10026/1 |goto 56.44,35.90
|tip They look like white lizards that sometimes stealth.
You can find more around: |notinsticky
[57.81,40.85]
[59.89,47.31]
step
label "Collect_Olemba_Seeds"
click Olemba Cone##182541+
|tip They look like small shiny white-blue pine cones on the ground near trees around this area.
collect 30 Olemba Seed##25745 |q 9992/1 |goto 56.44,35.90
You can find more around: |notinsticky
[57.81,40.85]
[59.89,47.31]
step
label "Collect_Timber_Worg_Tails"
Kill Timber Worg enemies around this area
|tip They look like wolves.
collect 12 Timber Worg Tail##25807 |q 10016/1 |goto 56.44,35.90
You can find more around: |notinsticky
[57.81,40.85]
[59.89,47.31]
step
Enter the building |goto 58.37,53.65 < 7 |walk
talk Andarl##18252
|tip Inside the building.
turnin Magical Disturbances##10027 |goto 58.53,53.56
step
talk Bertelm##18387
turnin Timber Worg Tails##10016 |goto 58.30,54.75
accept The Elusive Ironjaw##10022 |goto 58.30,54.75
step
Enter the building |goto 57.44,55.08 < 7 |walk
talk Ros'eleth##18390
|tip Inside the building.
turnin Olemba Seeds##9992 |goto 57.40,55.44
accept Vessels of Power##10028 |goto 57.40,55.44
step
talk Lieutenant Gravelhammer##18713
|tip Inside the building.
turnin Thin the Flock##10869 |goto 57.50,55.77
step
Enter the building |goto Shattrath City/0 25.47,30.53 < 10 |walk
talk Ishanah##18538
|tip Inside the building.
turnin Restoring the Light##10021 |goto Shattrath City/0 23.97,29.71
|only if havequest(10021) or completedq(10021)
step
talk Rilak the Redeemed##22292
turnin The Eyes of Skettis##10847 |goto 52.52,21.01
accept Seek Out Kirrik##10849 |goto 52.52,21.01
step
Cross the bridge |goto 66.81,50.96 < 20 |only if walking
talk Private Weeks##18715
turnin Speak with Private Weeks##10038 |goto Terokkar Forest/0 40.46,36.16
accept Who Are They?##10040 |goto Terokkar Forest/0 40.46,36.16
step
Gain the Shadowy Disguise |havebuff spell:32756 |goto 40.46,36.16 |q 10040
|tip You cannot get the disguise if you are mounted.
stickystart "Keep_Disguise"
step
Follow the path up |goto 41.23,38.34 < 20 |only if walking
Enter the building |goto 39.69,39.69 < 7 |walk
talk Shadowy Advisor##18719
|tip Inside the building.
Ask her _"Advisor, what's the latest news?"_
Speak to the Shadowy Advisor |q 10040/3 |goto 40.32,39.04
step
talk Shadowy Initiate##18716
Ask him _"What are you doing there?"_
Speak to the Shadowy Initiate |q 10040/1 |goto 39.03,39.67
step
talk Shadowy Laborer##18717
|tip He walks around this area.
Ask him _"Why are you fixing all of this up?"_
Speak to the Shadowy Laborer |q 10040/2 |goto 38.08,41.10
He can also be around [41.00,40.65]
step
label "Keep_Disguise"
_Be Careful to Not Lose the Shadowy Disguise_
|tip Shadowy Hunters can see through the disguise and will attack you.
|tip If you mount after getting the disguise, you will lose it.
|tip If you lose your disguise, you can talk to Private Weeks again to get another one.
step
talk Private Weeks##18715
turnin Who Are They?##10040 |goto 40.46,36.16
accept Kill the Shadow Council!##10042 |goto 40.46,36.16
stickystart "Kill_Shadowy_Executioners"
stickystart "Kill_Shadowy_Summoners"
step
Follow the path up |goto 41.23,38.34 < 20 |only if walking
Enter the building |goto 39.68,39.69 < 7 |walk
kill Shadowmaster Grieve##18720|q 10042/3 |goto 40.37,39.13
|tip Inside the building.
step
label "Kill_Shadowy_Executioners"
kill 10 Shadowy Executioner##16519 |q 10042/1 |goto 39.75,40.89
step
label "Kill_Shadowy_Summoners"
kill 10 Shadowy Summoner##17088 |q 10042/2 |goto 39.75,40.89
step
talk Kirrik the Awakened##22272
|tip He walks around this area.
turnin Seek Out Kirrik##10849 |goto 37.26,51.22
accept Veil Skith: Darkstone of Terokk##10839 |goto 37.26,51.22
step
talk Ethan##22365
accept Missing Friends##10852 |goto 37.73,51.34
step
talk Lakotae##22420
accept The Infested Protectors##10896 |goto 37.86,51.69
step
talk Mekeda##22370
|tip He walks around this area.
accept Before Darkness Falls##10878 |goto 37.44,51.31
step
Kill enemies around this area
kill 25 Wood Mite##22419+ |q 10896/1 |goto 39.68,47.32
|tip They appear after you kill Infested Root-walkers or Rotting Forest-Ragers.
You can find more around [46.39,50.87]
stickystart "Collect_Lathrais_Stolen_Goods"
stickystart "Rescue_Children"
stickystart "Collect_Arakkoa_Feathers"
step
use the Rod of Purification##31610
Attempt to Purify the Darkstone of Terokk |q 10839/1 |goto 30.82,42.07
step
Run up the ramp |goto 29.92,42.99 < 7 |only if walking
kill Urdak##18541|q 9986/3 |goto 31.4,42.5
|tip He walks around this area.
|tip Up on this wooden platform.
step
label "Collect_Lathrais_Stolen_Goods"
Kill Skithian enemies around this area
collect 5 Lathrai's Stolen Goods##27861 |q 10112/1 |goto 30.87,42.43
step
label "Rescue_Children"
Kill Skithian enemies around this area
collect Veil Skith Prison Key##31655+ |n
click Veil Skith Cage##1787+
|tip They look like yellow cages on the ground and up on the wooden platforms around this area.
Rescue #12# Children |q 10852/1 |goto 30.87,42.43
step
label "Collect_Arakkoa_Feathers"
Kill Skithian enemies around this area
collect 30 Arakkoa Feather##25719 |q 10917/1 |goto 30.38,42.31
|tip Be careful not to accidentally sell these to a vendor.
step
talk Kirrik the Awakened##22272
|tip He walks around this area.
turnin Veil Skith: Darkstone of Terokk##10839 |goto 37.26,51.22
accept Veil Rhaze: Unliving Evil##10848 |goto 37.26,51.22
step
talk Ethan##22365
turnin Missing Friends##10852 |goto 37.73,51.34
step
talk Lakotae##22420
turnin The Infested Protectors##10896 |goto 37.86,51.69
step
talk High Priest Orglum##22278
accept The Tomb of Lights##10840 |goto 37.45,50.76
accept Vengeful Souls##10842 |goto 37.45,50.76
stickystart "Collect_Marks_Of_Kiljaeden"
stickystart "Kill_Cabal_Skirmishers"
stickystart "Kill_Cabal_Spellweavers"
stickystart "Kill_Cabal_Initiates"
step
Kill Cabal enemies around this area
collect Cabal Orders##31707 |n
use the Cabal Orders##31707
accept Cabal Orders##10880 |goto 39.61,55.95
step
label "Collect_Marks_Of_Kiljaeden"
Kill Cabal enemies around this area
collect 10 Mark of Kil'jaeden##29425 |q 10325/1 |goto 39.61,55.95
|only if havequest(10325) or completedq(10325)
step
label "Kill_Cabal_Skirmishers"
kill 8 Cabal Skirmisher##21661 |q 10878/1 |goto 39.61,55.95
step
label "Kill_Cabal_Spellweavers"
kill 4 Cabal Spell-weaver##21902 |q 10878/2 |goto 39.61,55.95
step
label "Kill_Cabal_Initiates"
kill 2 Cabal Initiate##21907 |q 10878/3 |goto 39.61,55.95
step
kill 10 Bonelasher##18470 |q 10033/1 |goto 43.88,51.84 |count 10
|tip You will come back to kill more.
stickystart "Kill_Ethereal_Nethermancers"
stickystart "Kill_Ethereal_Plunderers"
step
Enter the tomb |goto 47.00,55.32 < 7 |walk
kill 5 Vengeful Draenei##21636 |q 10842/1 |goto 49.15,54.80
|tip Inside the tomb. |notinsticky
step
label "Kill_Ethereal_Nethermancers"
kill 10 Ethereal Nethermancer##21370 |q 10840/1 |goto 47.00,55.30
|tip Inside and outside the tomb. |notinsticky
step
label "Kill_Ethereal_Plunderers"
kill 10 Ethereal Plunderer##21368 |q 10840/2 |goto 47.00,55.30
|tip Inside and outside the tomb. |notinsticky
step
kill 20 Bonelasher##18470 |q 10033/1 |goto 43.88,51.84
|tip Leave the tomb, if you ended up in there in the previous guide step.
step
talk Mekeda##22370
|tip He walks around this area.
turnin Before Darkness Falls##10878 |goto 37.44,51.31
turnin Cabal Orders##10880 |goto 37.44,51.31
accept The Shadow Tomb##10881 |goto 37.44,51.31
step
talk High Priest Orglum##22278
turnin The Tomb of Lights##10840 |goto 37.45,50.76
turnin Vengeful Souls##10842 |goto 37.45,50.76
step
talk Soolaveen##18675
accept Recover the Bones##10030 |goto 37.06,49.53
step
talk Adyen the Lightwarden##18537
turnin Marks of Kil'jaeden##10325 |goto Shattrath City/0 30.73,34.62
|only if havequest(10325) or completedq(10325)
step
Run up the ramp |goto 56.37,16.27 < 7 |only if walking
talk Vekax##22429
|tip He walks around this area.
|tip Up on the wooden platform.
turnin The Outcast's Plight##10917 |goto 52.01,18.10
step
talk Wind Trader Lathrai##18484
turnin A Personal Favor##10112 |goto 72.23,30.76
accept Investigate Tuurem##9990 |goto 72.23,30.76
step
talk Taela Everstride##18704
turnin Wanted: Bonelashers Dead!##10033 |goto Terokkar Forest/0 58.11,53.42
step
talk Thander##18389
turnin Stymying the Arakkoa##9986 |goto 57.82,54.25
step
Enter the building |goto 57.44,55.09 < 7 |walk
talk Lieutenant Gravelhammer##18713
|tip He walks around this area.
|tip Inside the building.
turnin Kill the Shadow Council!##10042 |goto 57.50,55.77
step
Follow the path |goto 57.49,52.58 < 30 |only if walking
kill 12 Warped Peon##18595 |q 9998/1 |goto 66.30,51.51
step
talk Theloria Shadecloak##18565
turnin Unruly Neighbors##9998 |goto 69.74,44.24
accept The Firewing Liaison##10002 |goto 69.74,44.24
accept Thinning the Ranks##10007 |goto 69.74,44.24
stickystart "Kill_Bonechewer_Devastators"
stickystart "Kill_Bonechewer_Backbreakers"
step
Enter the building |goto 67.12,54.41 < 7 |walk
kill Lisaile Fireweaver##18583 |q 10002/1 |goto 67.85,53.28
|tip Inside the building.
step
click Fel Orc Plans##182549
|tip Inside the building.
accept Fel Orc Plans##10012 |goto 67.92,53.56
step
label "Kill_Bonechewer_Devastators"
kill 10 Bonechewer Devastator##16772 |q 10007/1 |goto 66.3,55.0
step
label "Kill_Bonechewer_Backbreakers"
kill 6 Bonechewer Backbreaker##16810 |q 10007/2 |goto 66.3,55.0
step
talk Theloria Shadecloak##18565
turnin The Firewing Liaison##10002 |goto 69.74,44.24
turnin Thinning the Ranks##10007 |goto 69.74,44.24
step
kill Ironjaw##18670
|tip He looks like a darker brown wolf that walks around this area.
collect Ironjaw's Pelt##25837 |q 10022/1 |goto 66.52,35.09
stickystart "Collect_Draenei_Vessels"
step
click Sealed Box##182542
|tip Inside the building.
collect Sealed Box##25727 |q 9990/1 |goto 54.00,29.99
step
label "Collect_Draenei_Vessels"
click Draenei Vessel##182583+
|tip They look like small lanterns on the ground and inside buildings around this area.
|tip They may not all contain the quest item.
collect 8 Draenei Vessel##25841 |q 10028/1 |goto 53.94,31.98
step
talk Earthbinder Tavgren##18446
turnin Investigate Tuurem##9990 |goto 44.33,26.31
accept What Are These Things?##9994 |goto 44.33,26.31
step
Follow the road |goto 54.54,39.98 < 50 |only if walking
talk Jenai Starwhisper##18459
turnin What Are These Things?##9994 |goto 57.01,53.49
accept Report to the Allerian Post##10444 |goto 57.01,53.49
step
Enter the building |goto 57.44,55.09 < 7 |walk
talk Ros'eleth##18390
|tip Inside the building.
turnin Vessels of Power##10028 |goto 57.41,55.44
step
talk Bertelm##18387
turnin Fel Orc Plans##10012 |goto 58.30,54.76
turnin The Elusive Ironjaw##10022 |goto 58.30,54.76
step
talk Lieutenant Meridian##21006
|tip He walks around this area.
turnin Report to the Allerian Post##10444 |goto 69.66,44.18
accept Attack on Firewing Point##9996 |goto 69.66,44.18
stickystart "Kill_Firewing_Bloodwarders"
stickystart "Kill_Firewing_Warlocks"
stickystart "Collect_Firewing_Signets"
step
kill 10 Firewing Defender##5355 |q 9996/1 |goto 71.76,37.07
step
label "Kill_Firewing_Bloodwarders"
kill 10 Firewing Bloodwarder##1410 |q 9996/2 |goto 71.76,37.07
step
label "Kill_Firewing_Warlocks"
kill 10 Firewing Warlock##16769 |q 9996/3 |goto 71.76,37.07
step
label "Collect_Firewing_Signets"
Kill Firewing enemies around this area
collect 10 Firewing Signet##29426 |q 10412/1 |goto 71.76,37.07
|only if havequest(10412) or completedq(10412)
step
talk Lieutenant Meridian##21006
|tip He walks around this area.
turnin Attack on Firewing Point##9996 |goto 69.66,44.18
accept The Final Code##10446 |goto 69.66,44.18
step
Enter the building |goto 73.44,36.20 < 7 |only if walking
kill Sharth Voldoun##18554
|tip At the top of the tower.
|tip Click the Orb of Translocation on the balcony of the building to teleport to the top of the tower.
collect The Final Code##29912 |goto 73.92,35.80 |q 10446
step
click Orb of Translocation |goto 74.17,36.47
|tip At the top of the tower.
Return to the Ground |goto 73.33,36.32 < 10 |noway |c |q 10446
step
click Mana Bomb##184725
Activate the Mana Bomb |q 10446/1 |goto 71.31,37.35
step
talk Jenai Starwhisper##18459
turnin The Final Code##10446 |goto 57.01,53.49
accept Letting Earthbinder Tavgren Know##10005 |goto 57.01,53.49
step
talk Magistrix Fyalenn##18531
turnin Firewing Signets##10412 |goto Shattrath City/0 45.20,81.46
|only if havequest(10412) or completedq(10412)
step
Cross the bridge |goto 66.81,50.96 < 20 |only if walking
talk Earthbinder Tavgren##18446
turnin Letting Earthbinder Tavgren Know##10005 |goto Terokkar Forest/0 44.34,26.31
stickystart "Kill_Screeching_Spirits"
stickystart "Kill_Spirit_Ravens"
stickystart "Collect_Restless_Bones"
step
Follow the road |goto 35.86,34.38 < 50 |only if walking
Follow the path |goto 36.34,44.57 < 50 |only if walking
kill 4 Deathtalon Spirit##21198 |q 10848/1 |goto 27.64,54.66
step
label "Kill_Screeching_Spirits"
kill 4 Screeching Spirit##21200 |q 10848/2 |goto 27.04,56.76
step
label "Kill_Spirit_Ravens"
kill 2 Spirit Raven##21324 |q 10848/3 |goto 27.04,56.76
step
Enter the tomb |goto 31.23,52.68 < 7 |walk
click Cabal Chest##185226
|tip Inside the tomb.
collect Gavel of K'alen##31710 |q 10881/2 |goto 29.67,51.69
step
click Cabal Chest##185226
|tip Inside the tomb.
collect Drape of Arunen##31709 |q 10881/1 |goto 32.08,51.19
step
click Cabal Chest##185226
|tip Inside the tomb.
collect Scroll of Atalor##31708 |q 10881/3 |goto 31.16,46.69
step
talk Akuno##22377
|tip Inside the tomb.
accept Escaping the Tomb##10887 |goto 30.62,49.06
step
Watch the dialogue
|tip Follow Akuno and protect him as he walks.
|tip He eventually walks to this location.
Escort Akuno |q 10887/1 |goto 33.77,51.61
step
talk Kirrik the Awakened##22272
|tip He walks around this area.
turnin Veil Rhaze: Unliving Evil##10848 |goto 37.26,51.22
accept Veil Lithic: Preemptive Strike##10861 |goto 37.26,51.22
step
talk Mekeda##22370
|tip He walks around this area.
turnin Escaping the Tomb##10887 |goto 37.44,51.31
turnin The Shadow Tomb##10881 |goto 37.44,51.31
stickystop "Collect_Restless_Bones"
stickystart "Kill_Malevolent_Hatchlings"
step
Follow the path |goto 26.06,64.47 < 40 |only if walking
click Cursed Egg##185211+
|tip They look like brown spiked eggs on the ground around this area.
|tip Not every hatchling will be redeemed, some will attack you.
Redeem #3# Hatchlings |q 10861/1 |goto 24.00,72.47
step
label "Kill_Malevolent_Hatchlings"
click Cursed Egg##185211+ |notinsticky
|tip They look like brown spiked eggs on the ground around this area. |notinsticky
|tip Not every hatchling will be malevolent, some will be redeemed. |notinsticky
kill 3 Malevolent Hatchling##22337 |q 10861/2 |goto 24.00,72.47
stickystart "Collect_Restless_Bones"
step
Follow the path |goto 28.29,73.37 < 70 |only if walking
talk Commander Ra'vaj##22446
accept An Improper Burial##10913 |goto 31.00,76.11
step
talk Chief Archaeologist Letoll##22458
accept Digging Through Bones##10922 |goto 31.10,76.14
step
Watch the dialogue
|tip Follow Chief Archaeologist Letoll, and the group, and protect them as they walk.
|tip They eventually walk to this location.
kill Bone Sifter##22466
Protect the Explorers |q 10922/1 |goto 30.15,70.86
step
talk Scout Navrin##22364
accept Taken in the Night##10873 |goto 31.44,75.66
step
talk Dwarfowitz##22481
turnin Digging Through Bones##10922 |goto 30.98,76.18
step
talk Oakun##22456
accept The Dread Relic##10877 |goto 31.06,76.53
stickystart "Burn_Slain_Auchenai_Warrior_Corpses"
step
use the Sha'tari Torch##31769
|tip Use it next to Slain Sha'tar Vindicators.
|tip They look like armored draenei corpses on the ground around this area.
Burn #8# Slain Sha'tar Vindicator Corpses |q 10913/1 |goto 34.33,74.75
You can find more around [37.23,76.30]
step
label "Burn_Slain_Auchenai_Warrior_Corpses"
use the Sha'tari Torch##31769
|tip Use it next to Slain Auchenai Warriors.
|tip They look like robed draenei corpses on the ground around this area.
Burn #8# Slain Auchenai Warrior Corpses |q 10913/2 |goto 34.33,74.75
You can find more around [37.23,76.30]
step
talk Commander Ra'vaj##22446
turnin An Improper Burial##10913 |goto 31.00,76.11
accept A Hero Is Needed##10914 |goto 31.00,76.11
stickystart "Kill_Auchenai_Doomsayers"
step
kill 12 Auchenai Initiate##21284 |q 10914/1 |goto 33.92,72.14
step
label "Kill_Auchenai_Doomsayers"
kill 5 Auchenai Doomsayer##21285 |q 10914/2 |goto 33.92,72.14
step
label "Collect_Restless_Bones"
click Restless Bones##182584+
|tip They look like small white-glowing piles of bones on the ground around this area.
collect 10 Restless Bones##25842 |q 10030/1 |goto 33.92,72.14
step
click Massive Treasure Chest##185220
|tip A lot of enemies will appear.
|tip Immediately run away to the next step in the guide.
collect Dread Relic##31697 |q 10877/1 |goto 43.94,76.44
step
Enter the building |goto 44.10,72.28 < 15 |only if walking
Follow the path down |goto 41.87,71.13 < 10 |only if walking
Enter the building |goto 37.26,65.61 < 15 |walk
talk Ha'lei##19697
|tip Inside the building.
accept I See Dead Draenei##10227 |goto 35.09,65.09
step
talk Ramdor the Mad##19417
|tip Inside the building.
turnin Recover the Bones##10030 |goto 35.14,66.27
accept Helping the Lost Find Their Way##10031 |goto 35.14,66.27
turnin I See Dead Draenei##10227 |goto 35.14,66.27
accept Ezekiel##10228 |goto 35.14,66.27
step
Leave the building |goto 37.30,65.61 < 15 |walk
Enter the building |goto 40.78,71.01 < 10 |only if walking
Follow the path up |goto 42.88,71.72 < 10 |only if walking
Leave the building |goto 44.14,72.39 < 15 |only if walking
talk Vindicator Haylen##22462
accept For the Fallen##10920 |goto 49.71,76.18
stickystart "Kill_Dreadfang_Widows"
step
kill Netherweb Victim##22355+
|tip They look like white cocoons squirming on the ground around this area.
|tip They may not all contain Sha'tar Warriors.
Free #6# Sha'tar Warriors |q 10873/1 |goto 52.17,79.09
step
label "Kill_Dreadfang_Widows"
kill 20 Dreadfang Widow##18467 |q 10920/1 |goto 52.17,79.09
step
talk Vindicator Haylen##22462
turnin For the Fallen##10920 |goto 49.71,76.18
stickystart "Kill_Broken_Skeletons"
step
kill 10 Lost Spirit##18460 |q 10031/1 |goto 38.37,78.24
step
label "Kill_Broken_Skeletons"
kill 10 Broken Skeleton##16805 |q 10031/2 |goto 38.37,78.24
step
talk Scout Navrin##22364
turnin Taken in the Night##10873 |goto 31.44,75.64
step
talk Commander Ra'vaj##22446
turnin A Hero Is Needed##10914 |goto 31.00,76.11
accept The Fallen Exarch##10915 |goto 31.00,76.11
step
talk Oakun##22456
turnin The Dread Relic##10877 |goto 31.06,76.53
step
Follow the path |goto 33.96,68.11 < 30 |only if walking
click Auchenai Coffin##184999
Watch the dialogue
kill Reanimated Exarch##22452
Destroy the Contents of the Auchenai Coffin |q 10915/1 |goto 35.81,65.61
step
talk Commander Ra'vaj##22446
turnin The Fallen Exarch##10915 |goto 31.00,76.11
step
Follow the path |goto 32.55,60.15 < 100 |only if walking
talk Kirrik the Awakened##22272
|tip He walks around this area.
turnin Veil Lithic: Preemptive Strike##10861 |goto 37.26,51.22
step
talk Soolaveen##18675
turnin Helping the Lost Find Their Way##10031 |goto 37.05,49.54
step
talk Ezekiel##19715
|tip He walks clockwise around this whole area surrounding the center of Shattrath City.
turnin Ezekiel##10228 |goto Shattrath City/0 61.62,40.74
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\The Burning Crusade (58-70)\\Nagrand (65-67)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Nagrand",
next="Leveling Guides\\The Burning Crusade (58-70)\\Blade's Edge Mountains (67-68)",
condition_suggested=function() return level >= 65 and level <= 67 and not completedq(9977) end,
},[[
step
_Detecting Kurenai Reputation:
Unfriendly or Less	|condition rep ('Kurenai') <= Unfriendly	|or	|next "Get_Kurenai_Rep_To_Neutral"
Neutral or Higher	|condition rep ('Kurenai') >= Neutral		|or	|next "Start_Nagrand"
step
label "Get_Kurenai_Rep_To_Neutral"
talk Haggard War Veteran##19684
|tip He walks along the bridge around this area.
accept A'dal##10210 |goto Shattrath City/0 60.41,16.08
step
Enter the building |goto 51.55,37.39 < 10 |walk
talk A'dal##18481
|tip Inside the building.
turnin A'dal##10210 |goto 53.98,44.71
step
talk Archmage Khadgar##18166
|tip Inside the building.
accept City of Light##10211 |goto 54.73,44.32
step
Watch the dialogue
|tip Follow Khadgar's Servant as he walks.
|tip He eventually walks to this location.
|tip This is a long escort quest.
Tour the City of Light |q 10211/1 |goto 50.36,42.98
step
talk Archmage Khadgar##18166
|tip Inside the building.
turnin City of Light##10211 |goto 54.73,44.32
step
talk Archmage Khadgar##18166
|tip Inside the building.
|tip You will only be able to complete one of these quests.
accept Allegiance to the Aldor##10551 |goto 54.76,44.32 |or
|tip You will become aligned with the Aldor faction by completing this quest.
accept Allegiance to the Scryers##10552 |goto 54.76,44.32 |or
|tip You will become aligned with the Scryers faction by completing this quest.
step
talk Timothy Daniels##18019
accept Secrets of the Daggerfen##9848 |goto Zangarmarsh/0 41.21,28.67
step
click Wanted Poster##184945
accept Wanted: Chieftain Mummaki##10116 |goto 41.74,27.26
step
talk Ikuti##18008
accept Ango'rosh Encroachment##9835 |goto 41.95,27.19
accept Daggerfen Deviance##10115 |goto 41.95,27.19
stickystart "Kill_Angorosh_Ogres"
step
kill 5 Ango'rosh Shaman##18118 |q 9835/1 |goto 33.62,31.78
step
label "Kill_Angorosh_Ogres"
kill 10 Ango'rosh Ogre##18117 |q 9835/2 |goto 33.62,31.78
stickystart "Kill_Daggerfen_Assassins"
stickystart "Kill_Daggerfen_Muckdwellers"
step
click Daggerfen Poison Vial##182185
collect Daggerfen Poison Vial##24500 |q 9848/2 |goto 26.41,22.84
step
click Daggerfen Poison Manual##182184
|tip At the top of the tower.
collect Daggerfen Poison Manual##24499 |q 9848/1 |goto 24.40,27.00
step
kill Chieftain Mummaki##19174
|tip At the top of the tower.
collect Chieftain Mummaki's Totem##27943 |q 10116/1 |goto 23.78,26.75
step
label "Kill_Daggerfen_Assassins"
kill 3 Daggerfen Assassin##18116 |q 10115/1 |goto 25.41,24.35
step
label "Kill_Daggerfen_Muckdwellers"
kill 15 Daggerfen Muckdweller##18115 |q 10115/2 |goto 25.41,24.35
step
talk Timothy Daniels##18019
turnin Secrets of the Daggerfen##9848 |goto 41.21,28.67
step
talk Ikuti##18008
turnin Ango'rosh Encroachment##9835 |goto 41.94,27.19
turnin Wanted: Chieftain Mummaki##10116 |goto 41.94,27.19
turnin Daggerfen Deviance##10115 |goto 41.94,27.19
step
label "Start_Nagrand"
talk Ikuti##18008
accept A Message to Telaar##9792 |goto Zangarmarsh/0 41.94,27.19
step
talk Shado 'Fitz' Farstrider##18200
accept Windroc Mastery##9854 |goto Nagrand/0 71.57,40.52
step
talk Hemet Nesingwary##18180
|tip He walks around this area.
accept Clefthoof Mastery##9789 |goto 71.52,40.82
step
talk Harold Lane##18218
accept Talbuk Mastery##9857 |goto 71.38,40.62
stickystart "Collect_Pairs_Of_Ivory_Tusks"
stickystart "Kill_Talbuk_Stags"
stickystart "Kill_Clefthoofs"
stickystart "Kill_Windrocs"
step
kill Dust Howler##17158+
|tip They look like tornado enemies.
|tip They are usually pretty spread out.
collect Howling Wind##24504 |n
use the Howling Wind##24504
accept The Howling Wind##9861 |goto 71.57,44.82
You can find more around [65.37,47.19]
step
label "Collect_Pairs_Of_Ivory_Tusks"
kill Wild Elekk##18334+
|tip They look like elephants.
collect 3 Pair of Ivory Tusks##25463 |goto 71.29,47.09 |q 9914 |future
|tip Be careful not to accidentally sell these to a vendor.
You can find more around [65.37,47.19]
step
label "Kill_Talbuk_Stags"
kill 30 Talbuk Stag##17130 |q 9857/1 |goto 71.29,47.09
You can find more around [65.37,47.19]
step
label "Kill_Clefthoofs"
kill 30 Clefthoof##18205 |q 9789/1 |goto 71.29,47.09
You can find more around [65.37,47.19]
step
label "Kill_Windrocs"
kill 30 Windroc##17128 |q 9854/1 |goto 71.29,47.09
You can find more around [65.37,47.19]
step
talk Shado 'Fitz' Farstrider##18200
turnin Windroc Mastery##9854 |goto 71.57,40.52
accept Windroc Mastery##9855 |goto 71.57,40.52
step
talk Hemet Nesingwary##18180
|tip He walks around this area.
turnin Clefthoof Mastery##9789 |goto 71.52,40.82
accept Clefthoof Mastery##9850 |goto 71.52,40.82
step
talk Harold Lane##18218
turnin Talbuk Mastery##9857 |goto 71.38,40.62
accept Talbuk Mastery##9858 |goto 71.38,40.62
step
Follow the path |goto 62.19,35.02 < 40 |only if walking
talk Elementalist Morgh##18074
turnin The Howling Wind##9861 |goto 60.51,22.37
accept Murkblood Corrupters##9862 |goto 60.51,22.37
step
talk Elementalist Untrag##18071
accept The Underneath##9818 |goto 60.66,22.66
step
talk Elementalist Lo'ap##18073
accept A Rare Bean##9800 |goto 60.80,22.38
accept Muck Diving##9815 |goto 60.80,22.38
step
talk Gordawg##18099
|tip He walks around this area.
turnin The Underneath##9818 |goto 61.26,22.26
accept The Tortured Earth##9819 |goto 61.26,22.26
stickystart "Kill_Talbuk_Thorngrazers"
step
click Dung##182128+
|tip They look like piles of poop on the ground around this area.
collect 15 Digested Caracoli##24419 |q 9800/1 |goto 53.11,23.73
step
label "Kill_Talbuk_Thorngrazers"
kill 30 Talbuk Thorngrazer##17131 |q 9858/1 |goto 53.11,23.73
step
kill 30 Clefthoof Bull##17132 |q 9850/1 |goto 50.80,30.21
You can find more around [45.17,28.74]
step
talk Consortium Recruiter##18335
|tip Be careful to avoid the Horde guards nearby.
accept The Consortium Needs You!##9913 |goto 51.94,34.78
step
kill Murkblood Invader##18238+
|tip They look like a group of three NPCs riding on elephants.
|tip They walk back and forth along this road.
|tip They to kite one away from the others, if you can't kill them all at once.
|tip They should all drop the quest item.
collect Murkblood Invasion Plans##24559 |n
use the Murkblood Invasion Plans##24559
accept Murkblood Invaders##9871 |goto 47.30,34.82
Also check around: |notinsticky
[41.10,26.87]
[35.36,27.29]
[33.74,34.05]
step
Follow the path down |goto 36.00,37.26 < 20 |only if walking
kill Muck Spawn##17154+
collect 5 Muck-ridden Core##24469 |q 9815/1 |goto 41.58,39.33
step
Follow the path up |goto 38.10,37.85 < 15 |only if walking
kill 8 Murkblood Putrifier##18202 |q 9862/1 |goto 32.20,43.26
step
Follow the road |goto 28.20,43.42 < 30 |only if walking
talk Zerid##18276
accept Gava'xi##9900 |goto 30.78,58.14
accept Matters of Security##9925 |goto 30.78,58.14
step
talk Gezhe##18265
turnin The Consortium Needs You!##9913 |goto 31.36,57.80
accept Stealing from Thieves##9882 |goto 31.36,57.80 |only if rep ('The Consortium') < Friendly
step
talk Shadrek##18333
accept A Head Full of Ivory##9914 |goto 31.77,56.78
step
talk Shadrek##18333
turnin A Head Full of Ivory##9914 |goto 31.77,56.78
stickystart "Kill_Voidspawns"
step
click Oshu'gun Crystal Fragment##182258+
|tip They look like green and white crystals on the ground around this area.
collect 10 Oshu'gun Crystal Fragment##25416 |q 9882/1 |goto 35.03,65.00
You can find more around [41.21,70.42]
|only if havequest(9882) or completedq(9882)
step
label "Kill_Voidspawns"
kill 12 Voidspawn##17981 |q 9925/1 |goto 39.98,74.63
|tip They look like voidwalkers.
|tip You can find them all around the huge stone mountain.
step
kill Gava'xi##18298 |q 9900/1 |goto 42.40,73.49
|tip He looks like an ethereal.
|tip He spawns here and walks around this area.
step
kill 30 Ravenous Windroc##18220 |q 9855/1 |goto 48.40,61.50
step
talk Zerid##18276
turnin Gava'xi##9900 |goto 30.78,58.14
turnin Matters of Security##9925 |goto 30.78,58.14
step
talk Gezhe##18265
turnin Stealing from Thieves##9882 |goto 31.36,57.80
|only if havequest(9882) or completedq(9882)
step
Cross the bridge |goto 51.24,71.01 < 15 |only if walking
talk Otonbu the Sage##18222
accept Stopping the Spread##9874 |goto 54.48,72.08
step
talk Poli'lukluk the Wiser##18224
accept Solving the Problem##9878 |goto 54.46,72.30
step
Enter the building |goto 54.95,69.79 < 15 |only if walking
talk Elementalist Ioki##18233
accept The Throne of the Elements##9869 |goto 55.51,68.78
step
talk Huntress Bintook##18353
accept Do My Eyes Deceive Me##9917 |goto 55.05,70.54
step
click Telaar Bulletin Board##182393
accept Wanted: Giselda the Crone##9936 |goto 54.68,70.73
accept Wanted: Zorbo the Advisor##9940 |goto 54.68,70.73
step
talk Warden Moi'bff Jill##18408
|tip He walks around this area.
accept Fierce Enemies##10476 |goto 54.74,70.88
step
talk Nahuud##18097
turnin A Message to Telaar##9792 |goto 54.76,71.02
step
talk Huntress Kima##18416
|tip She walks around this area.
accept The Ravaged Caravan##9956 |goto 54.15,69.52
step
Enter the building |goto 54.36,74.42 < 10 |walk
talk Caregiver Isel##18914
|tip Inside the building.
home Telaar |goto 54.21,76.10
step
Follow the path up |goto 53.32,75.17 < 10 |only if walking
talk Furgu##18789
|tip On top of the building.
fpath Telaar |goto 54.17,75.06
step
Cross the bridge |goto 55.82,71.11 < 15 |only if walking
talk Wazat##19035
|tip He walks around this area.
accept I Must Have Them!##10109 |goto 61.68,67.11
step
kill Boulderfist Hunter##18352+
collect Boulderfist Plans##25468 |q 9917/1 |goto 62.35,72.14
step
kill 15 Tortured Earth Spirit##17156 |q 9819/1 |goto 64.66,71.01
You can find more around [57.62,61.64]
stickystart "Slay_Kilsorrow_Agents"
step
Follow the path up |goto 69.98,76.51 < 20 |only if walking
Enter the building |goto 70.93,81.27 < 7 |walk
kill Giselda the Crone##18391 |q 9936/1 |goto 71.16,82.35
|tip Inside the building.
step
label "Slay_Kilsorrow_Agents"
Kill Kil'sorrow enemies around this area
Slay #15# Kil'sorrow Agents |q 9936/2 |goto 70.57,79.65
stickystart "Collect_Obsidian_Warbeads"
step
talk Corki##18369
accept HELP!##9923 |goto 72.56,70.70
step
Kill Boulderfist enemies around this area
collect Boulderfist Key##25490 |goto 73.73,70.02 |q 9923
step
click Corki's Prison##1787
Free Corki |q 9923/1 |goto 72.56,70.70
step
label "Collect_Obsidian_Warbeads"
Kill Boulderfist enemies around this area
collect 10 Obsidian Warbeads##25433 |q 10476/1 |goto 73.73,70.02
|tip Be careful not to accidentally sell these to a vendor.
You can find more around [75.30,63.65]
step
kill Dust Howler##17158+
|tip They look like tornado enemies.
|tip They are usually pretty spread out.
collect 3 Air Elemental Gas##27807|q 10109/1 |goto 70.18,56.60
You can find more around:
[65.09,47.82]
[69.70,44.70]
step
talk Harold Lane##18218
turnin Talbuk Mastery##9858 |goto 71.38,40.62
step
talk Hemet Nesingwary##18180
|tip He walks around this area.
turnin Clefthoof Mastery##9850 |goto 71.52,40.82
step
talk Shado 'Fitz' Farstrider##18200
turnin Windroc Mastery##9855 |goto 71.57,40.52
step
Follow the path |goto 62.19,35.02 < 40 |only if walking
talk Gordawg##18099
|tip He walks around this area.
turnin The Tortured Earth##9819 |goto 61.80,24.40
accept Eating Damnation##9821 |goto 61.80,24.40
step
talk Elementalist Lo'ap##18073
turnin A Rare Bean##9800 |goto 60.80,22.38
accept Agitated Spirits of Skysong##9804 |goto 60.80,22.38
turnin Muck Diving##9815 |goto 60.80,22.38
step
talk Elementalist Sharvak##18072
turnin The Throne of the Elements##9869 |goto 60.66,22.10
step
talk Elementalist Morgh##18074
turnin Murkblood Corrupters##9862 |goto 60.51,22.37
step
kill 12 Lake Spirit##17153 |q 9804/1 |goto 59.70,27.30
|tip Underwater around this area.
step
talk Elementalist Lo'ap##18073
turnin Agitated Spirits of Skysong##9804 |goto 60.80,22.38
accept Blessing of Incineratus##9805 |goto 60.80,22.38
step
kill Enraged Crusher##18062+
|tip Along this cliffside.
collect 15 Enraged Crusher Core##24473 |q 9821/1 |goto 52,20.2
step
talk Gordawg##18099
|tip He walks around this area.
turnin Eating Damnation##9821 |goto 61.80,24.40
accept Shattering the Veil##9849 |goto 61.8,24.4
stickystart "Kill_Warmaul_Shamans"
stickystart "Kill_Warmaul_Reavers"
step
Follow the path up |goto 45.69,21.73 < 15 |only if walking
Enter the cave |goto 46.24,18.78 < 10 |walk
kill Zorbo the Advisor##18413 |q 9940/1 |goto 46.48,18.20
|tip Inside the cave.
step
label "Kill_Warmaul_Shamans"
kill 10 Warmaul Shaman##18064 |q 9940/2 |goto 45.37,22.12
step
label "Kill_Warmaul_Reavers"
kill 10 Warmaul Reaver##17138 |q 9940/3 |goto 45.37,22.12
step
Follow the path up |goto 29.15,31.69 < 15 |only if walking
click Telaar Supply Crate##182520+
|tip They look like grey metal boxes on the ground around this area.
collect 20 Telaar Supply Crate##25647 |q 9956/1 |goto 25.70,27.61
step
Follow the path down |goto 27.09,30.21 < 20 |only if walking
use the Torch of Liquid Fire##24560
|tip Use it next to Sunspring Villagers.
|tip They look like corpses floating underwater around this area.
Burn #10# Sunspring Villager Corpses |q 9874/1 |goto 33.58,48.00
stickystart "Kill_Murkblood_Raiders"
step
kill 20 Murkblood Scavenger##18207 |q 9878/1 |goto 32.38,42.78
step
label "Kill_Murkblood_Raiders"
kill 10 Murkblood Raider##18203 |q 9878/2 |goto 32.38,42.78
step
Follow the road |goto 28.26,43.26 < 30 |only if walking
kill Shattered Rumbler##17157+
use Gordawg's Boulder##24501
|tip Use it on Shattered Rumblers around this area.
kill 30 Minion of Gurok##18181 |q 9849/1 |goto 28.91,68.55
|tip They appear after you kill Shattered Rumblers.
You can find more around [29.86,78.76]
step
talk Huntress Kima##18416
|tip She walks around this area.
turnin The Ravaged Caravan##9956 |goto 54.15,69.52
step
talk Poli'lukluk the Wiser##18224
turnin Solving the Problem##9878 |goto 54.47,72.31
step
talk Otonbu the Sage##18222
turnin Stopping the Spread##9874 |goto 54.48,72.09
step
talk Warden Moi'bff Jill##18408
|tip He walks around this area.
turnin Fierce Enemies##10476 |goto 54.74,70.87
turnin Wanted: Giselda the Crone##9936 |goto 54.74,70.87
turnin Wanted: Zorbo the Advisor##9940 |goto 54.74,70.87
step
talk Huntress Bintook##18353
turnin Do My Eyes Deceive Me##9917 |goto 55.05,70.53
accept Not On My Watch!##9918 |goto 55.05,70.53
step
Enter the building |goto 54.94,69.80 < 15 |only if walking
talk Arechron##18183
turnin HELP!##9923 |goto 55.48,68.71
accept Corki's Gone Missing Again!##9924 |goto 55.48,68.71
turnin Murkblood Invaders##9871 |goto 55.48,68.71
accept Ortor My Old Friend...##9873 |goto 55.48,68.71
step
Cross the bridge |goto 55.79,71.11 < 15 |only if walking
talk Wazat##19035
|tip He walks around this area.
turnin I Must Have Them!##10109 |goto 61.68,67.11
step
kill Lump##18351
|tip He will eventually surrender.
talk Lump##18351
Tell him _"I need answers, ogre!"_
Interrogate Lump |q 9918/1 |goto 62.74,71.49
step
Cross the bridge |goto 57.07,70.24 < 15 |only if walking
talk Huntress Bintook##18353
turnin Not On My Watch!##9918 |goto 55.05,70.53
accept Mo'mor the Breaker##9920 |goto 55.05,70.53
step
talk Mo'mor the Breaker##18223
turnin Mo'mor the Breaker##9920 |goto 54.61,72.21
accept The Ruins of Burning Blade##9921 |goto 54.61,72.21
stickystart "Kill_Boulderfist_Mystics"
step
Cross the bridge |goto 55.79,71.11 < 15 |only if walking
kill 15 Boulderfist Crusher##17134 |q 9921/1 |goto 72.9,69.8
You can find more around [74.82,64.19]
step
label "Kill_Boulderfist_Mystics"
kill 15 Boulderfist Mystic##17135 |q 9921/2 |goto 72.9,69.8
You can find more around [74.82,64.19]
step
Cross the bridge |goto 57.07,70.24 < 15 |only if walking
talk Mo'mor the Breaker##18223
turnin The Ruins of Burning Blade##9921 |goto 54.61,72.21
accept The Twin Clefts of Nagrand##9922 |goto 54.61,72.21
step
Cross the bridge |goto 55.79,71.11 < 15 |only if walking
Follow the road |goto 71.33,66.54 < 50 |only if walking
use the Living Fire##24467
|tip Use it inside the hut.
Destroy the Eastern Hut |q 9805/4 |goto 72.75,54.70
step
use the Living Fire##24467
|tip Use it inside the hut.
Destroy the Southern Hut |q 9805/3 |goto 71.22,53.26
step
use the Living Fire##24467
|tip Use it inside the hut.
Destroy the Western Hut |q 9805/2 |goto 70.76,51.13
step
use the Living Fire##24467
|tip Use it inside the hut.
Destroy the Large Hut |q 9805/1 |goto 72.40,50.36
step
Follow the path |goto 62.23,34.67 < 50 |only if walking
talk Gordawg##18099
|tip He walks around this area.
turnin Shattering the Veil##9849 |goto 61.80,24.40
step
talk Elementalist Lo'ap##18073
turnin Blessing of Incineratus##9805 |goto 60.80,22.38
accept The Spirit Polluted##9810 |goto 60.80,22.38
stickystart "Kill_Boulderfist_Warriors"
stickystart "Kill_Boulderfist_Mages"
step
Follow the path down |goto 44.37,34.91 < 20 |only if walking
Follow the path |goto 41.84,36.87 < 30 |only if walking
Kill Boulderfist enemies around this area
|tip Inside and outside the cave.
collect Northwind Cleft Key##25509 |goto 40.76,31.46 |q 9924
step
Enter the cave |goto 40.76,31.44 < 10 |walk
click Corki's Prison##1787
|tip Inside the cave.
Free Corki Again |q 9924/1 |goto 39.26,27.46
step
label "Kill_Boulderfist_Warriors"
kill 25 Boulderfist Warrior##17136 |q 9922/1 |goto 40.77,31.36
|tip Inside and outside the cave. |notinsticky
step
label "Kill_Boulderfist_Mages"
kill 25 Boulderfist Mage##17137 |q 9922/2 |goto 40.77,31.36
|tip Inside and outside the cave. |notinsticky
stickystart "Kill_Lake_Surgers"
step
Follow the path up |goto 38.18,37.85 < 15 |only if walking
kill Watoosun's Polluted Essence##18145 |q 9810/1 |goto 33.03,50.88
|tip Underwater.
step
label "Kill_Lake_Surgers"
kill 10 Lake Surger##17155 |q 9810/2 |goto 33.80,48.90
|tip Underwater around this area.
step
Enter the building |goto 31.44,42.47 < 15 |walk
kill Ortor of Murkblood##18204 |q 9873/1 |goto 30.84,42.36
|tip Inside the building.
step
Follow the road |goto 34.18,31.08 < 50 |only if walking
Cross the bridge |goto 38.54,27.34 < 15 |only if walking
Follow the path |goto 50.17,26.26 < 30 |only if walking
talk Elementalist Lo'ap##18073
turnin The Spirit Polluted##9810 |goto 60.80,22.38
step
talk Mo'mor the Breaker##18223
turnin The Twin Clefts of Nagrand##9922 |goto 54.61,72.21
accept Diplomatic Measures##10108 |goto 54.61,72.21
step
Enter the building |goto 54.94,69.80 < 15 |only if walking
talk Arechron##18183
turnin Corki's Gone Missing Again!##9924 |goto 55.48,68.71
turnin Ortor My Old Friend...##9873 |goto 55.48,68.71
step
Cross the bridge |goto 55.78,71.12 < 15 |only if walking
Follow the path up |goto 73.05,69.36 < 15 |only if walking
Continue up the path |goto 74.27,67.78 < 20 |only if walking
talk Lantresor of the Blade##18261
Tell him _"I have killed many of your ogres, Lantresor. I have no fear."_
Hear the Tale of the Blademaster |q 10108/1 |goto 73.81,62.60
step
talk Lantresor of the Blade##18261
turnin Diplomatic Measures##10108 |goto 73.81,62.60
accept Armaments for Deception##9928 |goto 73.81,62.60
accept Ruthless Cunning##9927 |goto 73.81,62.60
stickystart "Collect_Kilsorrow_Armaments"
step
Follow the path down |goto 75.49,67.57 < 15 |only if walking
Follow the path |goto 69.97,76.51 < 15 |only if walking
Kill Kil'sorrow enemies around this area
use the Warmaul Ogre Banner##25552
|tip Use it near their corpses.
Plant #20# Warmaul Ogre Banners |q 9927/1 |goto 70.45,79.23
step
label "Collect_Kilsorrow_Armaments"
click Kil'sorrow Armament##182355+
|tip They look like wooden boxes with red axes on them on the ground and inside buildings around this area.
collect 20 Kil'sorrow Armaments##25554 |q 9928/1 |goto 70.45,79.23
step
Follow the path up |goto 73.05,69.36 < 15 |only if walking
Continue up the path |goto 74.27,67.78 < 20 |only if walking
talk Lantresor of the Blade##18261
turnin Armaments for Deception##9928 |goto 73.81,62.60
turnin Ruthless Cunning##9927 |goto 73.81,62.60
accept Returning the Favor##9931 |goto 73.81,62.60
accept Body of Evidence##9932 |goto 73.81,62.60
stickystart "Plant_Kilsorrow_Banners"
step
Follow the path down |goto 75.49,67.57 < 15 |only if walking
Follow the road |goto 71.34,67.97 < 50 |only if walking
Follow the path |goto 67.68,52.49 < 50 |only if walking
Continue following the path |goto 55.96,48.14 < 50 |only if walking
use the Damp Woolen Blanket##25658
|tip Use it next to the Blazing Warmaul Pyre.
|tip Two Boulderfist Saboteurs will appear nearby.
Watch the dialogue
|tip Follow and protect the two Boulderfist Saboteurs as they plant the bodies around this area.
Plant the Kil'sorrow Bodies |q 9932/1 |goto 46.66,24.32
step
label "Plant_Kilsorrow_Banners"
Kill enemies around this area
use the Kil'sorrow Banner##25555
|tip Use it near their corpses.
Plant #20# Kil'sorrow Banners |q 9931/1 |goto 46.97,23.51
step
Follow the path |goto 50.48,38.17 < 70 |only if walking
Follow the road |goto 68.51,53.29 < 50 |only if walking
Follow the path up |goto 73.05,69.36 < 15 |only if walking
Continue up the path |goto 74.27,67.78 < 20 |only if walking
talk Lantresor of the Blade##18261
turnin Returning the Favor##9931 |goto 73.81,62.60
turnin Body of Evidence##9932 |goto 73.81,62.60
accept Message to Telaar##9933 |goto 73.81,62.60
step
Follow the path down |goto 75.49,67.57 < 15 |only if walking
Cross the bridge |goto 57.02,70.27 < 15 |only if walking
Enter the building |goto 54.95,69.79 < 15 |only if walking
talk Arechron##18183
turnin Message to Telaar##9933 |goto 55.48,68.71
step
_Do You Want to Do the Ring of Blood?_
|tip You can now do the optional Ring of Blood group quests.
|tip These quests require a 5-man group, but will give a lot of experience quickly, if you can find a group easily.
|tip In total, the quests can be done quickly, in one location, and give roughly 100,000 experience total.
Yes - Complete the Ring of Blood with a Group	|confirm	|next "Start_Ring_of_Blood_Quests"
No - Move on to Blade's Edge Mountains		|confirm	|next "Leveling Guides\\The Burning Crusade (58-70)\\Blade's Edge Mountains (67-68)"
|only if not completedq(9977)
step
label "Start_Ring_of_Blood_Quests"
talk Gurgthock##18471
accept The Ring of Blood: Brokentoe##9962 |goto 42.78,20.73
|tip This is a group quest.
step
Watch the dialogue
kill Brokentoe##18398
Defeat Brokentoe |q 9962/1 |goto 43.43,20.57
step
talk Wodin the Troll-Servant##22893
turnin The Ring of Blood: Brokentoe##9962 |goto 42.78,20.68
step
talk Gurgthock##18471
accept The Ring of Blood: The Blue Brothers##9967 |goto 42.78,20.73
|tip This is a group quest.
step
Watch the dialogue
kill Murkblood Twin##18399+
Defeat The Blue Brothers |q 9967/1 |goto 43.43,20.57
step
talk Wodin the Troll-Servant##22893
turnin The Ring of Blood: The Blue Brothers##9967 |goto 42.78,20.68
step
talk Gurgthock##18471
accept The Ring of Blood: Rokdar the Sundered Lord##9970 |goto 42.78,20.73
|tip This is a group quest.
step
Watch the dialogue
kill Rokdar the Sundered Lord##18400
Defeat Rokdar the Sundered Lord |q 9970/1 |goto 43.43,20.57
step
talk Wodin the Troll-Servant##22893
turnin The Ring of Blood: Rokdar the Sundered Lord##9970 |goto 42.78,20.68
step
talk Gurgthock##18471
accept The Ring of Blood: Skra'gath##9972 |goto 42.78,20.73
|tip This is a group quest.
step
Watch the dialogue
kill Skra'gath##18401
Defeat Skra'gath |q 9972/1 |goto 43.43,20.57
step
talk Wodin the Troll-Servant##22893
turnin The Ring of Blood: Skra'gath##9972 |goto 42.78,20.68
step
talk Gurgthock##18471
accept The Ring of Blood: The Warmaul Champion##9973 |goto 42.78,20.73
|tip This is a group quest.
step
Watch the dialogue
kill Warmaul Champion##18402
Defeat the Warmaul Champion |q 9973/1 |goto 43.43,20.57
step
talk Wodin the Troll-Servant##22893
turnin The Ring of Blood: The Warmaul Champion##9973 |goto 42.78,20.68
step
talk Gurgthock##18471
accept The Ring of Blood: The Final Challenge##9977 |goto 42.78,20.73
|tip This is a group quest.
step
Watch the dialogue
kill Mogor##18069
|tip You will have to kill him twice.
Defeat Mogor, Hero of the Warmaul |q 9977/1 |goto 43.43,20.57
step
talk Wodin the Troll-Servant##22893
turnin The Ring of Blood: The Final Challenge##9977 |goto 42.78,20.68
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\The Burning Crusade (58-70)\\Blade's Edge Mountains (67-68)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\BladesEdge",
next="Leveling Guides\\The Burning Crusade (58-70)\\Netherstorm (68-70)",
condition_suggested=function() return level >= 67 and level <= 68 and not completedq(11091) end,
},[[
step
talk Timothy Daniels##18019
accept No Time for Curiosity##9794 |goto Zangarmarsh/0 41.21,28.67
step
Follow the path up |goto Blade's Edge Mountains/0 30.97,93.73 < 30 |only if walking
talk Sentinel Moonwhisper##22488
accept Killing the Crawlers##10927 |goto Blade's Edge Mountains/0 32.20,91.11
step
kill 6 Cavern Crawler##22044 |q 10927/1 |goto 35.13,85.18
|tip Inside the tunnel.
step
Leave the tunnel |goto 37.13,81.39 < 20 |walk
talk Kialon Nightblade##18098
|tip He walks around this area and into the nearby small house.
turnin No Time for Curiosity##9794 |goto 36.61,67.35
step
click Wanted Poster##184945
accept The Den Mother##10690 |goto 36.62,67.31
step
talk Rina Moonspring##21066
accept The Encroaching Wilderness##10455 |goto 36.21,67.12
step
talk Commander Skyshadow##21158
|tip He walks around this area.
turnin Killing the Crawlers##10927 |goto 36.28,66.24
accept The Bloodmaul Ogres##10502 |goto 36.28,66.24
step
talk Daranelle##21469
accept Malaise##10555 |goto 37.07,65.62
step
Enter the building |goto 37.26,64.87 < 10 |walk
talk Bronwyn Stouthammer##21197
|tip Inside the building.
accept Into the Draenethyst Mine##10510 |goto 37.41,65.04
step
talk Borgrim Stouthammer##21151
|tip Inside the building.
accept Strange Brew##10511 |goto 37.40,64.66
step
talk Innkeeper Shaunessy##19495
|tip Inside the building.
home Sylvanaar |goto 35.80,63.88
step
talk Amerun Leafshade##18937
fpath Sylvanaar |goto 37.82,61.39
step
kill 12 Grovestalker Lynx##21022 |q 10455/1 |goto 38.68,69.16
step
Kill enemies around this area
collect 18 Plucked Lashh'an Feather##30529 |q 10555/1 |goto 35.77,75.08
step
Run up the ramp |goto 34.80,76.57 < 7 |only if walking
click Lashh'an Tome##184825
|tip Up on the wooden platform.
turnin Malaise##10555 |goto 34.30,77.39
accept Scratches##10556 |goto 34.30,77.39
step
_WARNING:_
|tip In the next step, you will use an item to gain a buff.
|tip DO NOT MOUNT after receiving the buff, or you will lose the buff.
|tip You will have to run back to town without losing the buff.
Click Here to Continue |confirm |q 10556
step
use the Fistful of Feathers##30530
Channel the Lashh'an |havebuff spell:36904 |goto 35.22,77.31 |q 10556
step
talk Daranelle##21469
|tip DO NOT MOUNT, or you will lose the buff.
Have Daranelle Analyze the Kaliri Aura |q 10556/1 |goto 37.07,65.62 |notravel
step
talk Daranelle##21469
|tip DO NOT MOUNT, or you will lose the buff.
turnin Scratches##10556 |goto 37.07,65.62
|tip After turning in this quest, you can mount again.
step
talk Rina Moonspring##21066
turnin The Encroaching Wilderness##10455 |goto 36.22,67.13
accept Marauding Wolves##10456 |goto 36.22,67.13
stickystart "Collect_Bloodmaul_Brutebane_Brew"
stickystart "Kill_Bloodmaul_Ogres"
step
Follow the path down |goto 38.71,73.64 < 30 |only if walking
click Draenethyst Mine Crystal##184689
|tip They look like huge colorful crystals on the ground around this area.
|tip Inside the cave.
collect 5 Draenethyst Mine Crystal##30315 |q 10510/1 |goto 42.48,83.51
step
label "Collect_Bloodmaul_Brutebane_Brew"
kill Bloodmaul Brewmaster##19957+
click Bloodmaul Brew Keg##184504+
|tip They look like brown barrels on the ground and inside buildings around this area.
collect 11 Bloodmaul Brutebane Brew##29443 |q 10511/1 |goto 46.05,78.13
You can find more around [43.15,80.63]
step
label "Kill_Bloodmaul_Ogres"
Kill Bloodmaul enemies around this area
Kill #30# Bloodmaul Ogres |q 10502/1 |goto 46.05,78.13
You can find more around [43.15,80.63]
step
Enter the building |goto 37.26,64.87 < 10 |walk
talk Bronwyn Stouthammer##21197
|tip Inside the building.
turnin Into the Draenethyst Mine##10510 |goto 37.41,65.04
step
talk Borgrim Stouthammer##21151
|tip Inside the building.
turnin Strange Brew##10511 |goto 37.40,64.66
accept Getting the Bladespire Tanked##10512 |goto 37.40,64.66
step
talk Commander Skyshadow##21158
|tip He walks around this area.
turnin The Bloodmaul Ogres##10502 |goto 36.28,66.23
accept The Bladespire Ogres##10504 |goto 36.28,66.23
stickystart "Collect_Thunderlord_Dire_Wolf_Tails"
step
Cross the bridge |goto 42.17,65.66 < 30 |only if walking
Follow the path |goto 49.42,66.60 < 30 |only if walking
kill Rema##21956 |q 10690/1 |goto 51.62,74.96
step
label "Collect_Thunderlord_Dire_Wolf_Tails"
kill Thunderlord Dire Wolf##20748+
collect 4 Thunderlord Dire Wolf Tail##30184 |q 10456/1 |goto 52.24,67.47
step
Cross the bridge |goto 48.15,65.84 < 30 |only if walking
talk Rina Moonspring##21066
turnin Marauding Wolves##10456 |goto 36.21,67.13
accept Protecting Our Own##10457 |goto 36.21,67.13
step
talk Commander Skyshadow##21158
|tip He walks around this area.
turnin The Den Mother##10690 |goto 36.28,66.23
step
click Grove Seedling##184631+
|tip They look like ball plants on the ground around this area.
Summon #5# Living Grove Defenders |q 10457/1 |goto 38.30,70.10
step
talk Rina Moonspring##21066
turnin Protecting Our Own##10457 |goto 36.21,67.13
accept A Dire Situation##10506 |goto 36.21,67.13
step
Follow the path down |goto 38.71,73.64 < 30 |only if walking
use Rina's Diminution Powder##30251
|tip Use it on Bloodmaul Dire Wolves around this area.
Weaken #5# Bloodmaul Dire Wolves |q 10506/1 |goto 43.06,80.75
You can find more around [45.01,73.52]
stickystart "Get_Bladespire_Ogres_Drunk"
stickystart "Kill_Bladespire_Ogres"
step
Follow the path |goto 45.41,62.47 < 50 |only if walking
talk Vindicator Vuuleen##21277
accept The Trappings of a Vindicator##10516 |goto 44.03,51.88
step
use the Bloodmaul Brutebane Keg##30353
|tip Pull the 2 non-elite guards one at a time and kill them first.
|tip Kill any non-elite ogres near the doorway before using the Bloodmaul Brutebane Keg.
|tip This will pull Droggam outside the building without his elite guards.
kill Droggam##20731
|tip Inside the building.
collect Vindicator Vuuleen's Blade##30413 |q 10516/1 |goto 39.05,52.76
step
Enter the building |goto 41.99,57.33 < 15 |walk
use the Bloodmaul Brutebane Keg##30353
|tip Pull the 2 non-elite guards one at a time and kill them first.
|tip Kill any non-elite ogres near the doorway before using the Bloodmaul Brutebane Keg.
|tip This will pull Mugdorg outside the building without his elite guards.
|tip When he starts running to the brew, run outside of the building so that he doesn't start attacking you too early.
|tip He is a ranged enemy, so if he attacks too early and he's close to his guards, they will attack as well.
kill Mugdorg##20726
|tip Inside the building.
collect Vindicator Vuuleen's Shield##30415 |q 10516/2 |goto 42.39,58.74
step
label "Get_Bladespire_Ogres_Drunk"
use the Bloodmaul Brutebane Keg##30353
|tip Use it near Bladespire enemies around this area.
Get #5# Bladespire Ogres Drunk |q 10512/1 |goto 41.73,54.84
step
label "Kill_Bladespire_Ogres"
Kill Bladespire enemies around this area
Kill #30# Bladespire Ogres |q 10504/1 |goto 41.73,54.84
step
talk Vindicator Vuuleen##21277
turnin The Trappings of a Vindicator##10516 |goto 44.03,51.88
accept Gorr'Dim, Your Time Has Come...##10517 |goto 44.03,51.88
step
Enter the building |goto 40.12,49.79 < 20 |walk
use the Bloodmaul Brutebane Keg##30353
|tip Pull the 2 non-elite guards one at a time and kill them first.
|tip Kill any non-elite ogres near the doorway before using the Bloodmaul Brutebane Keg.
|tip This will pull Gorr'dim outside the building without his elite guards.
|tip When he starts running to the brew, run outside of the building so that he doesn't start attacking you too early.
|tip He is a ranged enemy, so if he attacks too early and he's close to his guards, they will attack as well.
kill Gorr'dim##20732 |q 10517/1 |goto 39.46,49.14
|tip Inside the building.
step
talk Vindicator Vuuleen##21277
turnin Gorr'Dim, Your Time Has Come...##10517 |goto 44.03,51.88
accept Planting the Banner##10518 |goto 44.03,51.88
step
Follow the path |goto 41.26,49.75 < 30 |only if walking
Enter the building |goto 41.35,47.13 < 10 |walk
kill Bladespire Champion##21296
|tip Inside the building.
collect Bladespire Clan Banner##30416 |q 10518/1 |goto 41.29,46.72
step
Follow the path |goto 44.83,54.26 < 50 |only if walking
Follow the path |goto 45.74,76.52 < 30 |only if walking
Run up the ramp |goto 46.79,74.32 < 10 |only if walking
use the Bladespire Clan Banner##30416
|tip At the top of the tower.
|tip Don't place the banner if another player's banner is already present, or you will need to restart the quest.
Kill the enemies that attack in waves
kill Gurn Grubnosh##20116
collect Helm of Gurn Grubnosh##30417 |q 10518/2 |goto 46.56,74.71
step
Follow the path up |goto 41.95,78.97 < 30 |only if walking
talk Rina Moonspring##21066
turnin A Dire Situation##10506 |goto 36.21,67.13
step
talk Commander Skyshadow##21158
|tip He walks around this area.
turnin The Bladespire Ogres##10504 |goto 36.28,66.23
turnin Planting the Banner##10518 |goto 36.28,66.23
accept Where Did Those Darn Gnomes Go?##10580 |goto 36.28,66.23
step
Enter the building |goto 37.28,64.87 < 10 |walk
talk Borgrim Stouthammer##21151
|tip Inside the building.
turnin Getting the Bladespire Tanked##10512 |goto 37.40,64.66
step
Cross the bridge |goto 42.14,65.60 < 30 |only if walking
talk R-3D0##21690
turnin Where Did Those Darn Gnomes Go?##10580 |goto 55.10,72.79
accept Follow the Breadcrumbs##10581 |goto 55.10,72.79
step
talk Nickwinkle the Metro-Gnome##21755
accept Crystal Clear##10608 |goto 60.23,68.95
step
talk Toshley##21691
turnin Follow the Breadcrumbs##10581 |goto 60.53,68.97
accept Picking Up Some Power Converters##10584 |goto 60.53,68.97
step
talk Rip Pedalslam##21107
fpath Toshley's Station |goto 61.15,70.44
step
Enter the building |goto 60.83,68.25 < 7 |walk
talk Fizit "Doc" Clocktock##21110
|tip Inside the building.
accept What Came First, the Drake or the Egg?##10609 |goto 60.98,68.11
step
talk Fizit "Doc" Clocktock##21110
|tip Inside the building.
home Toshley's Station |goto 60.98,68.11 |q 10674 |future
step
talk Tally Zapnabber##21460
accept Test Flight: The Zephyrium Capacitorium##10557 |goto 60.28,68.38
step
talk Rally Zapnabber##21461
Tell him _"I'm ready for my test flight!"_
Watch the dialogue
Test the Zephyrium Capacitorium |q 10557/1 |goto 60.18,68.79
step
talk Tally Zapnabber##21460
turnin Test Flight: The Zephyrium Capacitorium##10557 |goto 60.28,68.38
accept Test Flight: The Singing Ridge##10710 |goto 60.28,68.38
step
click Power Converter##184906+
|tip They look like small metal objects with electricty inside them on the ground around this area.
|tip Electromentals will appear.
use the Protovoltaic Magneto Collector##30656
|tip Use it on the Electromentals that spawn.
kill Electromental##21729+
Collect #5# Electromentals |q 10584/1 |goto 57.67,57.77
step
talk Toshley##21691
turnin Picking Up Some Power Converters##10584 |goto 60.53,68.96
accept Ride the Lightning##10657 |goto 60.53,68.96
step
talk Dizzy Dina##21824
accept Ridgespine Menace##10620 |goto 60.40,68.76
step
talk Razak Ironsides##21118
|tip He walks around this area.
accept Cutting Your Teeth##10632 |goto 60.37,68.10
step
use Tally's Waiver (Unsigned)##30540
collect Tally's Waiver (Signed)##30539 |q 10710
step
talk Rally Zapnabber##21461
Tell him _"Take me to Singing Ridge."_
Watch the dialogue
Throw Caution to the Wind |q 10710/1 |goto 60.18,68.79
step
Fly to Singing Ridge |goto 67.78,73.13 < 150 |c |notravel |q 10710
stickystart "Absorb_Lightning_Strikes"
step
kill Scalewing Serpent##20749+
collect 5 Scalewing Lightning Gland##30849 |q 10657/2 |goto 68.27,69.34
step
label "Absorb_Lightning_Strikes"
use the Repolarized Magneto Sphere##30818
|tip Use it when fighting Scalewing Serpents around this area.
|tip Allow them to use their Lightning Strike ability on you.
|tip Put your pet on passive, if you have one, to make this go faster.
Absorb #25# Lightning Strikes |q 10657/1 |goto 68.27,69.34
step
Remove the Repolarized Magneto Sphere Buff |nobuff spell:37830 |q 10657
|tip Right-click the "Repolarized Magneto Sphere" buff near your minimap to remove it.
stickystart "Kill_Ridgespine_Stalkers"
step
kill Daggermaw Lashtail##20751+
collect 5 Extra Sharp Daggermaw Tooth##30798 |q 10632/1 |goto 66.17,56.94
step
label "Kill_Ridgespine_Stalkers"
kill 10 Ridgespine Stalker##20714 |q 10620/1 |goto 66.17,56.94
|tip They look like large stealthed spiders.
|tip They are usually stealthed near the spiked rocks around this area.
stickystart "Collect_Adolescent_Nether_Drake_Essences"
stickystart "Collect_Mature_Nether_Drake_Essences"
stickystart "Kill_Crystal_Flayers"
step
click Nether Drake Egg##184867
|tip They look like big blue eggs with white crystals on them on the ground around this area.
use the Temporal Phase Modulator##30742
|tip Use it on the Nether Whelps that spawn.
|tip You can use the Temporal Phase Modulator repeatedly on the same enemy.
|tip This allows you to keep changing the type of drake it is to suit what you need.
kill Proto-Nether Drake##21821+
collect 3 Proto-Nether Drake Essence##30743 |q 10609/1 |goto 63.04,76.84
You can find more around [60.78,75.95]
step
label "Collect_Adolescent_Nether_Drake_Essences"
click Nether Drake Egg##184867 |notinsticky
|tip They look like big blue eggs with white crystals on them on the ground around this area. |notinsticky
use the Temporal Phase Modulator##30742 |notinsticky
|tip Use it on the Nether Whelps that spawn. |notinsticky
|tip You can use the Temporal Phase Modulator repeatedly on the same enemy. |notinsticky
|tip This allows you to keep changing the type of drake it is to suit what you need. |notinsticky
kill Adolescent Nether Drake##21817+
collect 3 Adolescent Nether Drake Essence##30782 |q 10609/2 |goto 63.04,76.84
You can find more around [60.78,75.95]
step
label "Collect_Mature_Nether_Drake_Essences"
click Nether Drake Egg##184867 |notinsticky
|tip They look like big blue eggs with white crystals on them on the ground around this area. |notinsticky
use the Temporal Phase Modulator##30742 |notinsticky
|tip Use it on the Nether Whelps that spawn. |notinsticky
|tip You can use the Temporal Phase Modulator repeatedly on the same enemy. |notinsticky
|tip This allows you to keep changing the type of drake it is to suit what you need. |notinsticky
kill Mature Nether Drake##21820+
collect 3 Mature Nether Drake Essence##30783 |q 10609/3 |goto 63.04,76.84
You can find more around [60.78,75.95]
step
label "Kill_Crystal_Flayers"
kill 10 Crystal Flayer##21189 |q 10608/1 |goto 63.04,76.84
You can find more around [60.78,75.95]
step
Follow the path |goto 60.79,75.39 < 40 |only if walking
talk Fizit "Doc" Clocktock##21110
|tip Inside the building.
turnin What Came First, the Drake or the Egg?##10609 |goto 60.98,68.11
step
talk Razak Ironsides##21118
|tip He walks around this area.
turnin Cutting Your Teeth##10632 |goto 60.37,68.10
step
talk Tally Zapnabber##21460
turnin Test Flight: The Singing Ridge##10710 |goto 60.28,68.38
step
talk Toshley##21691
turnin Ride the Lightning##10657 |goto 60.53,68.97
accept Trapping the Light Fantastic##10674 |goto 60.53,68.97
step
talk Dizzy Dina##21824
turnin Ridgespine Menace##10620 |goto 60.40,68.76
accept More than a Pound of Flesh##10671 |goto 60.40,68.76
step
talk Nickwinkle the Metro-Gnome##21755
turnin Crystal Clear##10608 |goto 60.22,68.94
accept Gauging the Resonant Frequency##10594 |goto 60.22,68.94
step
talk Tally Zapnabber##21460
accept Test Flight: Razaan's Landing##10711 |goto 60.28,68.39
step
use the Oscillating Frequency Scanners##30701
|tip Use it multiple times.
|tip Try to place them a little far apart, and so that the lines overlap each other a lot.
|tip Stand in the middle of the design you made.
Gauge the Singing Crystal Resonant Frequency |q 10594/1 |goto 61.20,76.10
step
talk Nickwinkle the Metro-Gnome##21755
turnin Gauging the Resonant Frequency##10594 |goto 60.23,68.94
step
talk Rally Zapnabber##21461
Tell him _"Send me to Razaan's Landing!"_
Watch the dialogue
Reach the Sky's Limit |q 10711/1 |goto 60.18,68.79
step
Fly to Razaan's Landing |nobuff spell:36812 |q 10711 |notravel
stickystart "Collect_Ether_Energized_Flesh"
step
use the Multi-Spectrum Light Trap##30852
|tip Use it repeatedly.
|tip You want to capture the small pink orbs of light that appear.
Trap #15# Razaani Light Orbs |q 10674/1 |goto 65.56,46.50
step
label "Collect_Ether_Energized_Flesh"
kill Fiendling Flesh Beast##20668+
collect 5 Ether-Energized Flesh##30840 |q 10671/1 |goto 66.97,44.23
step
talk Tally Zapnabber##21460
turnin Test Flight: Razaan's Landing##10711 |goto 60.28,68.39
step
talk Toshley##21691
turnin Trapping the Light Fantastic##10674 |goto 60.53,68.96
accept Show Them Gnome Mercy!##10675 |goto 60.53,68.96
step
talk Dizzy Dina##21824
turnin More than a Pound of Flesh##10671 |goto 60.40,68.76
step
talk Rally Zapnabber##21461
Tell him _"I want to fly to an old location!"_
Tell him _"Send me to Razaan's Landing!"_
Watch the dialogue
Begin Flying to Razaan's Landing |havebuff spell:36812 |goto 60.18,68.79 |q 10675
step
Fly to Razaan's Landing |nobuff spell:36812 |q 10675
step
Kill Razaani enemies around this area
|tip When they die, yellow orbs will float into this portal.
|tip Keep an eye on this portal, Nexus-Prince Razaan will eventually emerge from it.
|tip You will see him yell in your chat when he appears.
kill Nexus-Prince Razaan##21057
click Collection of Souls##185033
|tip It appears above Nexus-Prince Razaan's corpse.
collect Collection of Souls##30890 |q 10675/1 |goto 66.40,44.09
step
Follow the road |goto 66.25,50.38 < 50 |only if walking
Continue following the road |goto 59.43,57.49 < 50 |only if walking
talk Toshley##21691
turnin Show Them Gnome Mercy!##10675 |goto 60.53,68.97
step
talk Tally Zapnabber##21460
accept Test Flight: Ruuan Weald##10712 |goto 60.28,68.39
step
talk Rally Zapnabber##21461
Tell him _"Take me to Ruuan."_
Watch the dialogue
Launch to Ruuan Weald |q 10712/2 |goto 60.18,68.79
step
_While Flying to Ruuan Weald:_
use the Nether-Weather Vane##31124
collect Spinning Nether-weather Vane##31123 |q 10712/1
step
Fly to Ruuan Weald |nobuff spell:36812 |q 10712
step
talk Tree Warden Chawn##22007
accept A Time for Negotiation...##10682 |goto 61.98,39.48
step
talk Fhyn Leafshadow##22216
fpath Evergrove |goto 61.68,39.61
step
talk Mosswood the Ancient##22053
accept Little Embers##10770 |goto 61.25,38.47
accept From the Ashes##10771 |goto 61.25,38.47
step
talk Timeon##21782
accept Creating the Pendant##10567 |goto 62.16,39.11
step
talk Commander Haephus Stonewall##22149
accept A Date with Dorgok##10795 |goto 61.99,37.99
step
talk Lieutenant Fairweather##22150
accept Crush the Bloodmaul Camp!##10796 |goto 61.99,37.94
step
talk Faradrella##22133
|tip She walks around this area.
accept Culling the Wild##10753 |goto 62.59,38.28
step
talk O'Mally Zapnabber##22020
turnin Test Flight: Ruuan Weald##10712 |goto 62.65,40.38
stickystart "Kill_Felsworn_Scalewings"
stickystart "Kill_Felsworn_Daggermaws"
stickystart "Kill_Fel_Corrupters"
step
Follow the path up |goto 65.35,39.94 < 20 |only if walking
kill Fel Corrupter##21300+
collect Damaged Mask##31384 |n
use the Damaged Mask##31384
accept Damaged Mask##10810 |goto 71.02,30.90
step
label "Kill_Felsworn_Scalewings"
kill 4 Felsworn Scalewing##21123 |q 10753/1 |goto 71.02,30.90
step
label "Kill_Felsworn_Daggermaws"
kill 4 Felsworn Daggermaw##21124 |q 10753/2 |goto 71.02,30.90
step
label "Kill_Fel_Corrupters"
kill 2 Fel Corrupter##21300 |q 10753/3 |goto 71.02,30.90
stickystart "Kill_Scorch_Imps"
step
click Fertile Volcanic Soil##185148
Plant in the Southern Volcanic Soil |q 10771/1 |goto 71.66,22.39
step
click Fertile Volcanic Soil##185148
Plant in the Central Volcanic Soil |q 10771/2 |goto 71.60,20.33
step
click Fertile Volcanic Soil##185148
Plant in the Northern Volcanic Soil |q 10771/3 |goto 71.59,18.51
step
label "Kill_Scorch_Imps"
kill 8 Scorch Imp##21021+ |q 10770/1 |goto 71.46,20.95
step
Follow the path down |goto 67.19,38.16 < 20 |only if walking
talk O'Mally Zapnabber##22020
turnin Damaged Mask##10810 |goto 62.65,40.38
accept Mystery Mask##10812 |goto 62.65,40.38
step
talk Wildlord Antelarion##22127
|tip He walks around this area.
turnin Mystery Mask##10812 |goto 62.54,39.91
accept Felsworn Gas Mask##10819 |goto 62.54,39.91
step
talk Mosswood the Ancient##22053
turnin Little Embers##10770 |goto 61.26,38.48
turnin From the Ashes##10771 |goto 61.26,38.48
step
talk Faradrella##22133
|tip She walks around this area.
turnin Culling the Wild##10753 |goto 62.59,38.28
step
Kill Ruuan'ok enemies around this area
collect 6 Ruuan'ok Claw##30704 |goto 65.04,31.57 |q 10567
step
use the Ruuan'ok Claw##30704+
Watch the dialogue
kill Harbinger of the Raven##21767
|tip It flies down to you.
collect Harbinger's Pendant##30706 |q 10567/1 |goto 64.47,33.11
step
talk Timeon##21782
turnin Creating the Pendant##10567 |goto 62.16,39.11
accept Whispers of the Raven God##10607 |goto 62.16,39.11
step
talk Overseer Nuaar##21981
|tip He looks like a neutral Draenei that walks around this large area.
Tell him _"Overseer, I am here to negotiate on behalf of the Cenarion Expedition."_
Negotiate with Overseer Nuaar |q 10682/1 |goto 59.37,37.97
You can also find him around [62.83,27.89]
step
talk Tree Warden Chawn##22007
turnin A Time for Negotiation...##10682 |goto 61.99,39.48
accept ...and a Time for Action##10713 |goto 61.99,39.48
step
talk Samia Inkling##21983
accept Poaching from Poachers##10717 |goto 61.94,39.45
stickystart "Kill_Wyrmcult_Hewers"
stickystart "Collect_Wyrmcult_Nets"
step
Kill Wyrmcult enemies around this area
collect Meeting Note##31120 |n
use the Meeting Note##31120
accept Did You Get The Note?##10719 |goto 59.37,37.97
You can find more around [62.83,27.89]
step
label "Kill_Wyrmcult_Hewers"
kill 10 Wyrmcult Hewer##21810 |q 10713/1 |goto 59.37,37.97
You can find more around [62.83,27.89]
step
label "Collect_Wyrmcult_Nets"
kill Wyrmcult Poacher##21809
collect 5 Wyrmcult Net##31119 |q 10717/1 |goto 59.37,37.97
You can find more around [62.83,27.89]
step
talk Samia Inkling##21983
turnin Poaching from Poachers##10717 |goto 61.94,39.45
accept Whelps of the Wyrmcult##10747 |goto 61.94,39.45
step
talk Tree Warden Chawn##22007
turnin ...and a Time for Action##10713 |goto 61.99,39.48
turnin Did You Get The Note?##10719 |goto 61.99,39.48
accept Wyrmskull Watcher##10894 |goto 61.99,39.48
step
talk Wildlord Antelarion##22127
|tip He walks around this area.
Ask him _"The Felsworn Gas Mask was destroyed, do you have another one?"_
collect Felsworn Gas Mask##31366 |goto 62.54,39.91 |q 10819
step
Follow the path up |goto 65.35,39.94 < 20 |only if walking
Equip the Felsworn Gas Mask |equipped Felsworn Gas Mask##31366 |goto 73.25,40.03 |q 10819
|tip Equip it at this location.
step
click Legion Communicator##244441
turnin Felsworn Gas Mask##10819 |goto 73.25,40.03
accept Deceive thy Enemy##10820 |goto 73.25,40.03
step
Equip your Regular Head Armor
Click After You Equip Your Head Armor |confirm |q 10820
stickystart "Kill_Doomforge_Engineers"
step
kill 4 Doomforge Attendant##19961 |q 10820/1 |goto 74.92,40.16
step
label "Kill_Doomforge_Engineers"
kill 4 Doomforge Engineer##19960 |q 10820/2 |goto 74.92,40.16
step
Equip the Felsworn Gas Mask |equipped Felsworn Gas Mask##31366 |goto 73.25,40.03 |q 10820
step
click Legion Communicator##244441
turnin Deceive thy Enemy##10820 |goto 73.25,40.03
stickystart "Kill_Bloodmaul_Maulers"
stickystart "Kill_Bloodmaul_Warlocks"
step
Follow the path down |goto 66.96,38.31 < 20 |only if walking
Follow the path down |goto 61.57,29.73 < 30 |only if walking
Run up the ramp |goto 55.34,25.11 < 10 |only if walking
Enter the building |goto 54.87,24.58 < 10 |walk
kill Dorgok##20753 |q 10795/1 |goto 55.14,24.05
collect Gorgrom's Favor##31363 |goto 55.14,24.05 |q 10797 |future
|tip Upstairs inside the building.
step
use Gorgrom's Favor##31363
accept Favor of the Gronn##10797
step
label "Kill_Bloodmaul_Maulers"
kill 10 Bloodmaul Mauler##19993 |q 10796/1 |goto 56.2,26.7
You can find more around [55.08,32.71]
step
label "Kill_Bloodmaul_Warlocks"
kill 5 Bloodmaul Warlock##19994 |q 10796/2 |goto 56.2,26.7
You can find more around [55.08,32.71]
step
Follow the path up |goto 58.60,30.77 < 20 |only if walking
talk Lieutenant Fairweather##22150
turnin Crush the Bloodmaul Camp!##10796 |goto 61.98,37.94
step
talk Commander Haephus Stonewall##22149
turnin A Date with Dorgok##10795 |goto 61.99,37.99
turnin Favor of the Gronn##10797 |goto 61.99,37.99
accept Pay the Baron a Visit##10798 |goto 61.99,37.99
step
Follow the path down |goto 59.47,42.12 < 20 |only if walking
Follow the path |goto 55.39,47.60 < 30 |only if walking
Continue following the path |goto 50.89,43.42 < 30 |only if walking
talk Baron Sablemane##22103
turnin Pay the Baron a Visit##10798 |goto 53.25,41.17
accept Into the Churning Gulch##10799 |goto 53.25,41.17
step
Kill Crust Burster enemies around this area
collect 7 Crust Burster Venom Gland##31132 |q 10799/1 |goto 46.88,44.68
step
talk Baron Sablemane##22103
turnin Into the Churning Gulch##10799 |goto 53.25,41.17
accept Goodnight, Gronn##10800 |goto 53.25,41.17
step
Follow the path |goto 50.92,44.27 < 30 |only if walking
use Sablemane's Sleeping Powder##31403
|tip Use it on Grulloc.
|tip You will be running in quickly to loot Grulloc's Sack, on the ground next to Grulloc.
|tip He won't stay asleep for long, so run away quickly after completing the next step.
Click Here After Putting Grulloc to Sleep |confirm |goto 60.93,47.60 |q 10800
step
click Grulloc's Sack##185152
collect Grulloc's Sack##31349 |q 10800/1 |goto 60.85,47.78
step
Follow the path |goto 50.89,43.42 < 30 |only if walking
talk Baron Sablemane##22103
turnin Goodnight, Gronn##10800 |goto 53.25,41.17
accept It's a Trap!##10801 |goto 53.25,41.17
step
Follow the path |goto 50.92,44.27 < 30 |only if walking
Follow the path up |goto 58.42,46.20 < 15 |only if walking
talk Commander Haephus Stonewall##22149
turnin It's a Trap!##10801 |goto 61.99,37.99
accept Gorgrom the Dragon-Eater##10802 |goto 61.99,37.99
step
talk Lieutenant Fairweather##22150
accept Slaughter at Boulder'mok##10803 |goto 61.98,37.94
step
Enter the building |goto 62.72,38.45 < 7 |walk
talk Innkeeper Aelerya##22922
|tip Inside the building.
home Evergrove |goto 62.86,38.31 |q 11091 |future
step
Cross the bridge |goto 56.07,39.95 < 30 |only if walking
talk Watcher Moonshade##22386
|tip He walks around this area.
turnin Wyrmskull Watcher##10894 |goto 50.25,36.15
accept Longtail is the Lynchpin##10893 |goto 50.25,36.15
step
Enter the tunnel |goto 49.94,35.96 < 15 |walk
kill Draaca Longtail##22396 |q 10893/1 |goto 45.63,32.86
|tip She walks along this path inside the tunnel.
step
Leave the tunnel |goto 49.94,35.96 < 15 |walk
talk Watcher Moonshade##22386
|tip He walks around this area.
turnin Longtail is the Lynchpin##10893 |goto 50.25,36.15
accept Meeting at the Blackwing Coven##10722 |goto 50.25,36.15
stickystart "Accept_The_Truth_Unorbed"
step
Enter the tunnel |goto 49.94,35.96 < 15 |walk
Leave the tunnel |goto 43.21,30.14 < 20 |only if walking
Kill Grishna enemies around this area
|tip You must be within melee range of killing an enemy to receive the buff.
|tip Anytime the buff wears off while in this area, kill Grishna enemies to get it again.
Gain the Understanding of Ravenspeech |havebuff 132188 |goto 41.26,21.01 |q 10747 |future
step
Receive the Third Prophecy |q 10607/3 |goto 40.67,18.66
|tip You must have the Understanding Ravenspeech buff.
|tip Kill Grishna enemies around this area to get the buff again.
|tip You must be within melee range of killing an enemy to receive the buff.
step
Receive the First Prophecy |q 10607/1 |goto 39.03,17.23
|tip Up on the wooden platform.
|tip You must have the Understanding Ravenspeech buff.
|tip Kill Grishna enemies around this area to get the buff again.
|tip You must be within melee range of killing an enemy to receive the buff.
step
Receive the Second Prophecy |q 10607/2 |goto 42.46,21.63
|tip Up on the wooden platform.
|tip You must have the Understanding Ravenspeech buff.
|tip Kill Grishna enemies around this area to get the buff again.
|tip You must be within melee range of killing an enemy to receive the buff.
step
Receive the Fourth Prophecy |q 10607/4 |goto 40.19,23.02
|tip You must have the Understanding Ravenspeech buff.
|tip Kill Grishna enemies around this area to get the buff again.
|tip You must be within melee range of killing an enemy to receive the buff.
step
label "Accept_The_Truth_Unorbed"
Kill Grishna enemies around this area
collect Orb of the Grishna##31489 |n
use the Orb of the Grishna##31489
accept The Truth Unorbed##10825 |goto 41.26,21.01
stickystart "Kill_Bouldermok_Brutes"
stickystart "Kill_Bouldermok_Shamans"
step
Kill Boulder'mok enemies around this area
collect 3 Grisly Totem##31754 |goto 30.59,22.20 |q 10803
step
click Gorgrom's Altar##185234
Watch the dialogue
|tip Gorgrom will appear and die.
use the Grisly Totem##31754+
|tip Use them on his corpse.
Plant #3# Grisly Totems |q 10802/1 |goto 30.59,22.20
step
label "Kill_Bouldermok_Brutes"
kill 5 Boulder'mok Brute##21046 |q 10803/1 |goto 30.59,22.20
step
label "Kill_Bouldermok_Shamans"
kill 3 Boulder'mok Shaman##21047 |q 10803/2 |goto 30.59,22.20
stickystart "Capture_Wyrmcult_Blackwhelps"
step
Kill Wyrmcult enemies around this area
|tip Inside and outside the cave.
collect 5 Costume Scrbaps##31121 |goto 32.04,33.85 |q 10722
step
use the Costume Scraps##31121+
collect Overseer Disguise##31122 |q 10722
step
label "Capture_Wyrmcult_Blackwhelps"
use the Blackwhelp Net##31129
|tip Use it on Wyrmcult Blackwhelps.
|tip Walk next to the brown spiked eggs to spawn more Wyrmcult Blackwhelps.
|tip Inside the cave.
Capture #10# Wyrmcult Blackwhelps |q 10747/1 |goto 32.75,34.88
step
use the Overseer Disguise##31122
|tip Wait to use it at this location.
|tip Inside the cave.
Wear the Overseer Disguise |havebuff 132760 |goto 32.05,37.36 |q 10722
step
talk Kolphis Darkscale##22019
|tip Inside the cave.
Tell him _"I'm fine, thank you. You asked for me?"_
Attend the Meeting with Kolphis Darkscale |q 10722/1 |goto 32.64,37.49
step
talk Lieutenant Fairweather##22150
turnin Slaughter at Boulder'mok##10803 |goto 61.99,37.94
step
talk Commander Haephus Stonewall##22149
turnin Gorgrom the Dragon-Eater##10802 |goto 61.99,37.99
step
talk Timeon##21782
turnin Whispers of the Raven God##10607 |goto 62.16,39.10
step
talk Samia Inkling##21983
turnin Whelps of the Wyrmcult##10747 |goto 61.94,39.45
step
talk Tree Warden Chawn##22007
turnin Meeting at the Blackwing Coven##10722 |goto 61.98,39.47
turnin The Truth Unorbed##10825 |goto 61.98,39.47
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\The Burning Crusade (58-70)\\Netherstorm (68-70)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Netherstorm",
next="Leveling Guides\\The Burning Crusade (58-70)\\Shadowmoon Valley (70-70)",
condition_suggested=function() return level >= 68 and level <= 70 and not completedq(10257) end,
},[[
step
talk Haggard War Veteran##19684
|tip He walks along the bridge around this area.
accept A'dal##10210 |goto Shattrath City/0 60.41,16.08
step
Enter the building |goto 51.55,37.39 < 10 |walk
talk A'dal##18481
|tip Inside the building.
turnin A'dal##10210 |goto 53.98,44.71
step
talk Archmage Khadgar##18166
|tip Inside the building.
accept City of Light##10211 |goto 54.73,44.32
step
Watch the dialogue
|tip Follow Khadgar's Servant as he walks.
|tip He eventually walks to this location.
|tip This is a long escort quest.
Tour the City of Light |q 10211/1 |goto 50.36,42.98
step
talk Archmage Khadgar##18166
|tip Inside the building.
turnin City of Light##10211 |goto 54.73,44.32
step
talk Archmage Khadgar##18166
|tip Inside the building.
|tip You will only be able to complete one of these quests.
accept Allegiance to the Aldor##10551 |goto 54.75,44.32 |or |noautoaccept
|tip You will become aligned with the Aldor faction by completing this quest.
accept Allegiance to the Scryers##10552 |goto 54.75,44.32 |or |noautoaccept
|tip You will become aligned with the Scryers faction by completing this quest.
step
Follow the path up |goto Blade's Edge Mountains/0 65.30,39.96 < 20 |only if walking
Follow the road |goto Blade's Edge Mountains/0 74.52,23.06 < 50 |only if walking
Cross the bridge |goto Netherstorm/0 82.56,28.69 < 30 |only if walking
talk Netherologist Coppernickels##19569
|tip He walks around this area.
accept Off To Area 52##10183 |goto Netherstorm/0 21.05,55.86
step
talk Bot-Specialist Alley##19578
accept Recharging the Batteries##10190 |goto 31.52,56.59
step
kill Phase Hunter##18879+
|tip Don't kill them, just weaken them.
use the Battery Recharging Blaster##28369
|tip Use it on weakened Phase Hunters around this area.
|tip Kill them after you weaken them.
Charge #10# Battery Levels |q 10190/1 |goto 28.90,51.28
step
talk Bot-Specialist Alley##19578
turnin Recharging the Batteries##10190 |goto 31.52,56.59
step
talk Boots##19617
accept Securing the Shaleskin Shale##10342 |goto 32.27,63.92
step
talk Rocket-Chief Fuselage##19570
turnin Off To Area 52##10183 |goto 32.68,64.41
accept You're Hired!##10186 |goto 32.68,64.41
step
Enter the building |goto 32.11,64.52 < 7 |walk
talk Innkeeper Remi Dodoso##19571
|tip Inside the building.
home Area 52 |goto 31.95,64.42 |q 10280 |future
step
talk Spymaster Thalodien##19468
|tip Inside the building.
accept Manaforge B'naar##10189 |goto 32.00,64.07
|only if rep('The Scryers') >= Neutral
step
talk Exarch Orelis##19466
|tip Inside the building.
accept Distraction at Manaforge B'naar##10241 |goto 32.07,64.17
|only if rep('The Aldor') >= Neutral
step
talk Ravandwyr##19217
accept The Archmage's Staff##10173 |goto 31.36,66.15
step
Follow the path |goto 33.59,64.90 < 10 |only if walking
talk Krexcil##18938
fpath Area 52 |goto 33.75,63.99
step
talk Maxx A. Million Mk. V##19589
|tip If he's not there, someone else may be escorting him.
|tip Wait for him to respawn.
|tip The quest is a group quest, but you should be able to solo it fairly easily.
|tip If you find it too difficult, try to find someone to help you, or skip it.
accept Mark V is Alive!##10191 |goto 31.58,56.62
stickystart "Collect_Etherlithium_Matrix_Crystals"
step
Watch the dialogue
|tip Follow Maxx A. Million Mk. V and protect him as he walks.
|tip He eventually walks to this location.
Escort Maxx A. Million Mk. V Safely Through the Ruins of Enkaat |q 10191/1 |goto 31.59,56.63
step
talk Bot-Specialist Alley##19578
turnin Mark V is Alive!##10191 |goto 31.52,56.59
step
label "Collect_Etherlithium_Matrix_Crystals"
click Etherlithium Matrix Crystal##183767+
|tip They look like small red crystals on the ground around this area.
collect 10 Etherlithium Matrix Crystal##28364 |q 10186/1 |goto 33.85,54.31
step
kill Shaleskin Flayer##20210+
collect 5 Shaleskin Shale##29464 |q 10342/1 |goto 32.88,60.73
You can find more around [27.73,59.34]
step
Follow the path |goto 32.21,63.00 < 10 |only if walking
talk Boots##19617
turnin Securing the Shaleskin Shale##10342 |goto 32.27,63.92
accept That Little Extra Kick##10199 |goto 32.27,63.92
step
talk Rocket-Chief Fuselage##19570
turnin You're Hired!##10186 |goto 32.68,64.41
accept Invaluable Asset Zapping##10203 |goto 32.68,64.41
accept Report to Engineering##10225 |goto 32.68,64.41
step
talk Chief Engineer Trep##19709
|tip He walks around this area.
turnin Report to Engineering##10225 |goto 32.46,66.78
accept Essence for the Engines##10224 |goto 32.46,66.78
step
kill Mana Wraith##18864+
collect 7 Mana Wraith Essence##28527 |q 10224/1 |goto 34.71,58.42
step
talk Chief Engineer Trep##19709
|tip He walks around this area.
turnin Essence for the Engines##10224 |goto 32.46,66.78
accept Elemental Power Extraction##10226 |goto 32.46,66.78
step
Follow the road |goto 29.09,64.56 < 50 |only if walking
kill Captain Arathyn##19635
|tip He walks on a purple bird around this area.
collect B'naar Personnel Roster##28376 |q 10189/1 |goto 27.54,65.25
|only if rep ('The Scryers') >= Neutral
stickystart "Kill_Sunfury_Bloodwarders"
step
Follow the road |goto 29.09,64.56 < 50 |only if walking
kill 8 Sunfury Magister##18855+ |q 10241/1 |goto 25.63,67.22
|only if rep ('The Aldor') >= Neutral
step
label "Kill_Sunfury_Bloodwarders"
kill 8 Sunfury Bloodwarder##18853+ |q 10241/2 |goto 27.47,72.06
|only if rep ('The Aldor') >= Neutral
step
Follow the path |goto 26.14,73.27 < 30 |only if walking
use the Elemental Power Extractor##28547
|tip Use it on on Sundered Rumblers and Warp Aberrations around this area.
Kill enemies around this area
click Elemental Power##183933+
|tip They look like small blue crystals that appear above their corpses after you kill Sundered Rumblers and Warp Aberrations.
collect 5 Elemental Power##28548 |q 10226/1 |goto 22.17,77.52
step
talk Exarch Orelis##19466
|tip Inside the building.
turnin Distraction at Manaforge B'naar##10241 |goto 32.07,64.18
accept Measuring Warp Energies##10313 |goto 32.07,64.18
|only if rep ('The Aldor') >= Neutral
step
talk Anchorite Karja##19467
|tip Inside the building.
accept Naaru Technology##10243 |goto 32.03,64.18
accept Assisting the Consortium##10263 |goto 32.03,64.18
|only if rep ('The Aldor') >= Neutral
step
talk Spymaster Thalodien##19468
|tip Inside the building.
turnin Manaforge B'naar##10189 |goto 32.00,64.07
accept High Value Targets##10193 |goto 32.00,64.07
only if rep ('The Scryers') >= Neutral
step
talk Magistrix Larynna##19469
|tip Inside the building.
accept Bloodgem Crystals##10204 |goto 32.05,64.00
|only if rep ('The Scryers') >= Neutral
step
talk Nether-Stalker Khay'ji##19880
turnin Assisting the Consortium##10263 |goto 32.44,64.20
accept Consortium Crystal Collection##10265 |goto 32.44,64.20
step
click Multi-Spectrum Terrain Analyzer##183807
Retrieve the Multi-Spectrum Terrain Analyzer |q 10203/3 |goto 40.29,72.92
step
click Hyper Rotational Dig-A-Matic##183805
Retrieve the Hyper Rotational Dig-A-Matic |q 10203/1 |goto 41.04,73.67
step
kill Pentatharon##20215
collect Arklon Crystal Artifact##28829 |q 10265/1 |goto 42.46,72.75
step
click Big Wagon Full of Explosives##183808
Retrieve the Big Wagon Full of Explosives |q 10203/4 |goto 42.48,72.22
step
click Servo-Pneumatic Dredging Claw##183806
Retrieve the Servo-Pneumatic Dredging Claw |q 10203/2 |goto 41.44,71.85
step
use the Conjuring Powder##29207
kill Ekkorash the Inquisitor##19493
collect Archmage Vargoth's Staff##28292 |q 10173/1 |goto 40.90,72.56
step
kill Nether Ray##18880+
collect 5 Nether Ray Stinger##28417 |q 10199/1 |goto 44.88,70.68
step
Follow the road |goto 41.78,75.83 < 30 |only if walking
talk Lead Sapper Blastfizzle##19634
turnin Invaluable Asset Zapping##10203 |goto 34.19,68.15
accept Dr. Boom!##10221 |goto 34.19,68.15
step
Follow the path |goto 34.47,66.54 < 20 |only if walking
talk Nether-Stalker Khay'ji##19880
turnin Consortium Crystal Collection##10265 |goto 32.44,64.20
accept A Heap of Ethereals##10262 |goto 32.44,64.20
step
talk Boots##19617
turnin That Little Extra Kick##10199 |goto 32.27,63.92
step
talk Papa Wheeler##19645
accept Pick Your Part##10206 |goto 32.98,64.66
step
talk Ravandwyr##19217
turnin The Archmage's Staff##10173 |goto 31.36,66.15
accept Rebuilding the Staff##10300 |goto 31.36,66.15
step
talk Chief Engineer Trep##19709
|tip He walks around this area.
turnin Elemental Power Extraction##10226 |goto 32.45,66.78
step
use Boom's Doom##29429
|tip Use it repeatedly on Dr. Boom nearby.
|tip Stand on this barrel.
|tip You will be far enough away that he can't hurt you.
kill Dr. Boom##20284 |q 10221/1 |goto 34.71,59.53
step
Kill Disembodied enemies around this area
collect 4 Flawless Crystal Shard##29216 |q 10300/1 |goto 33.53,53.81
step
talk Lead Sapper Blastfizzle##19634
turnin Dr. Boom!##10221 |goto 34.19,68.15
step
Follow the path |goto 34.49,66.66 < 20 |only if walking
talk Ravandwyr##19217
turnin Rebuilding the Staff##10300 |goto 31.36,66.15
accept Curse of the Violet Tower##10174 |goto 31.36,66.15
stickystart "Kill_Sunfury_Geologists"
stickystart "Kill_Sunfury_Warp_Masters"
stickystart "Kill_Sunfury_Warp_Engineers"
step
kill Sunfury Magister##18855+
collect Bloodgem Shard##28452 |n
use the Bloodgem Shard##28452
|tip Use it next to a floating crystal around this area.
Siphon the Bloodgem Crystal |q 10204/1 |goto 25.16,66.11
|only if rep ('The Scryers') >= Neutral
step
label "Kill_Sunfury_Geologists"
kill 8 Sunfury Geologist##19779 |q 10193/3 |goto 23.43,72.28
|only if rep ('The Scryers') >= Neutral
step
label "Kill_Sunfury_Warp_Masters"
kill 2 Sunfury Warp-Master##18857 |q 10193/1 |goto 23.43,72.28
|only if rep ('The Scryers') >= Neutral
step
label "Kill_Sunfury_Warp_Engineers"
kill 6 Sunfury Warp-Engineer##18852 |q 10193/2 |goto 22.71,71.91
|tip They are usually next to the wall of the manaforge.
You can find more around [28.78,71.84]
|only if rep ('The Scryers') >= Neutral
step
use the Warp-Attuned Orb##29324
Measure the Northern Pipeline |q 10313/1 |goto 25.71,60.61
|only if rep ('The Aldor') >= Neutral
step
use the Warp-Attuned Orb##29324
Measure the Western Pipeline |q 10313/4 |goto 20.90,66.88
|only if rep ('The Aldor') >= Neutral
step
use the Warp-Attuned Orb##29324
Measure the Southern Pipeline |q 10313/3 |goto 20.54,70.62
|only if rep ('The Aldor') >= Neutral
step
Enter the building |goto 21.72,69.65 < 7 |walk
click B'naar Control Console##183770
|tip Inside the building.
turnin Naaru Technology##10243 |goto 23.17,68.17
accept B'naar Console Transcription##10245 |goto 23.17,68.17
|only if rep ('The Aldor') >= Neutral
step
Leave the building |goto 24.90,67.67 < 7 |walk
use the Warp-Attuned Orb##29324
Measure the Eastern Pipeline |q 10313/2 |goto 28.81,72.01
|only if rep ('The Aldor') >= Neutral
stickystart "Collect_Zaxxis_Insignias"
step
click Ethereal Technology##183814+
|tip They look like small glass boxes on the ground around this area.
collect 10 Ethereal Technology##28457 |q 10206/1 |goto 28.79,77.43
step
label "Collect_Zaxxis_Insignias"
Kill Zaxxis enemies around this area
collect 10 Zaxxis Insignia##29209 |q 10262/1 |goto 28.79,77.43
step
Follow the path up |goto 32.01,70.66 < 20 |only if walking
Enter the building |goto 32.11,64.53 < 7 |walk
talk Exarch Orelis##19466
|tip Inside the building.
turnin Measuring Warp Energies##10313 |goto 32.08,64.18
|only if rep ('The Aldor') >= Neutral
step
talk Anchorite Karja##19467
|tip Inside the building.
turnin B'naar Console Transcription##10245 |goto 32.04,64.18
accept Shutting Down Manaforge B'naar##10299 |goto 32.04,64.18
|only if rep ('The Aldor') >= Neutral
step
Follow the path up |goto 32.01,70.66 < 20 |only if walking
Enter the building |goto 32.11,64.53 < 7 |walk
talk Spymaster Thalodien##19468
|tip Inside the building.
turnin High Value Targets##10193 |goto 32.00,64.07
accept Shutting Down Manaforge B'naar##10329 |goto 32.00,64.07
|only if rep ('The Scryers') >= Neutral
step
talk Magistrix Larynna##19469
|tip Inside the building.
turnin Bloodgem Crystals##10204 |goto 32.05,64.00
|only if rep ('The Scryers') >= Neutral
step
talk Nether-Stalker Khay'ji##19880
turnin A Heap of Ethereals##10262 |goto 32.44,64.21
accept Warp-Raider Nesaad##10205 |goto 32.44,64.21
step
talk Papa Wheeler##19645
turnin Pick Your Part##10206 |goto 32.98,64.66
accept In A Scrap With The Legion##10232 |goto 32.98,64.66
accept Help Mama Wheeler##10333 |goto 32.98,64.66
step
Enter the building |goto 24.91,67.67 < 7 |walk
kill Overseer Theredis##20416
|tip He walks back and forth in this hallway.
|tip Inside the building.
collect B'naar Access Crystal##29366 |q 10299/2 |goto 23.83,70.58 |only if rep ('The Aldor') >= Neutral
collect B'naar Access Crystal##29366 |q 10329/2 |goto 23.83,70.58 |only if rep ('The Scryers') >= Neutral
step
click B'naar Control Console##183770
|tip Inside the building.
Choose _<Begin emergency shutdown.>_
Kill the enemies that attack in waves
|tip This takes 2 minutes.
Shut Down Manaforge B'naar |q 10299/1 |goto 23.18,68.16 |only if rep ('The Aldor') >= Neutral
Shut Down Manaforge B'naar |q 10329/1 |goto 23.18,68.16 |only if rep ('The Scryers') >= Neutral
step
Leave the building |goto 24.89,67.67 < 7 |walk
kill Warp-Raider Nesaad##19641 |q 10205/1 |goto 28.27,79.60
step
Follow the path up |goto 32.01,70.66 < 20 |only if walking
Enter the building |goto 32.11,64.53 < 7 |walk
talk Anchorite Karja##19467
|tip Inside the building.
turnin Shutting Down Manaforge B'naar##10299 |goto 32.04,64.18
accept Shutting Down Manaforge Coruu##10321 |goto 32.04,64.18
|only if rep ('The Aldor') >= Neutral
step
talk Exarch Orelis##19466
|tip Inside the building.
accept Attack on Manaforge Coruu##10246 |goto 32.08,64.18
|only if rep ('The Aldor') >= Neutral
step
Follow the path up |goto 32.01,70.66 < 20 |only if walking
Enter the building |goto 32.11,64.53 < 7 |walk
talk Spymaster Thalodien##19468
|tip Inside the building.
turnin Shutting Down Manaforge B'naar##10329 |goto 32.00,64.07
accept Stealth Flight##10194 |goto 32.00,64.07
|only if rep ('The Scryers') >= Neutral
step
talk Nether-Stalker Khay'ji##19880
turnin Warp-Raider Nesaad##10205 |goto 32.44,64.21
accept Request for Assistance##10266 |goto 32.44,64.21
step
talk Veronia##20162
turnin Stealth Flight##10194 |goto 33.81,64.23
accept Behind Enemy Lines##10652 |goto 33.81,64.23
|only if rep ('The Scryers') >= Neutral
step
talk Veronia##20162
Tell her _"I'm as ready as I'll ever be."_
Take a Flight to Manaforge Coruu |ontaxi |goto 33.81,64.23 |q 10652
|only if rep ('The Scryers') >= Neutral
step
Fly to Manaforge Coruu |offtaxi |goto 48.24,86.66 |q 10652 |notavel
|only if rep ('The Scryers') >= Neutral
step
talk Caledis Brightdawn##19840
turnin Behind Enemy Lines##10652 |goto 48.24,86.60
accept A Convincing Disguise##10197 |goto 48.24,86.60
|only if rep ('The Scryers') >= Neutral
step
kill Sunfury Arcanist##20134+ |n
collect Sunfury Arcanist Robes##28635 |q 10197/3 |goto 47.7,84.9
|only if rep ('The Scryers') >= Neutral
step
Enter the building |goto 47.26,80.93 < 10 |walk
kill Sunfury Researcher##20136+ |n
|tip Inside the building.
collect Sunfury Researcher Gloves##28636 |q 10197/1 |goto 48.38,81.74
|only if rep ('The Scryers') >= Neutral
step
Follow the path |goto 49.49,82.47 < 7 |walk
Leave the building |goto 50.38,83.07 < 10 |walk
kill Sunfury Guardsmen##18850+
collect Sunfury Guardsman Medallion##28637 |q 10197/2 |goto 51.22,83.75
|only if rep ('The Scryers') >= Neutral
step
talk Caledis Brightdawn##19840
turnin A Convincing Disguise##10197 |goto 48.24,86.60
accept Information Gathering##10198 |goto 48.24,86.60
|only if rep ('The Scryers') >= Neutral
step
use the Sunfury Disguise##28607
Wear the Sunfury Disguise |havebuff 133564
|only if rep ('The Scryers') >= Neutral
step
Enter the building |goto 47.26,80.93 < 10 |walk
Follow the path |goto 48.14,81.54 < 7 |walk
Follow the path |goto 48.52,83.00 < 7 |walk
Watch the dialogue
|tip Inside the building.
|tip Be careful, the Arcane Annihilator can see through the disguise and will attack you.
Gather the Information |q 10198/1 |goto 48.19,84.07
|only if rep ('The Scryers') >= Neutral
step
Follow the path |goto 48.50,83.01 < 7 |walk
Follow the path |goto 48.14,81.54 < 7 |walk
Leave the building |goto 47.25,80.93 < 10 |walk
talk Caledis Brightdawn##19840
turnin Information Gathering##10198 |goto 48.24,86.60
accept Shutting Down Manaforge Coruu##10330 |goto 48.24,86.60
|only if rep ('The Scryers') >= Neutral
step
Follow the road |goto 38.03,75.49 < 50 |only if walking
Cross the bridge |goto 44.03,76.57 < 20 |only if walking
kill 8 Sunfury Arcanist##20134 |q 10246/2 |goto 46.57,81.22
|only if rep ('The Aldor') >= Neutral
stickystart "Kill_Sunfury_Researchers"
step
Enter the building |goto 47.26,80.93 < 7 |walk
kill Overseer Seylanna##20397
|tip Inside the building.
collect Coruu Access Crystal##29396 |q 10330/2 |goto 49.02,81.51 |only if rep ('The Scryers') >= Neutral
collect Coruu Access Crystal##29396 |q 10321/2 |goto 49.02,81.51 |only if rep ('The Aldor') >= Neutral
step
label "Kill_Sunfury_Researchers"
kill 5 Sunfury Researcher##20136+ |q 10246/1 |goto 48.38,81.74
|tip Inside the building. |notinsticky
|only if rep ('The Aldor') >= Neutral
step
click Coruu Control Console##183956
|tip Inside the building.
Choose _<Begin emergency shutdown.>_
Kill the enemies that attack in waves
|tip This takes 2 minutes.
Shut Down Manaforge Coruu |q 10321/1 |goto 48.95,81.51 |only if rep ('The Aldor') >= Neutral
Shut Down Manaforge Coruu |q 10330/1 |goto 48.95,81.51 |only if rep ('The Scryers') >= Neutral
step
Follow the path |goto 48.14,81.54 < 7 |walk
Leave the building |goto 47.25,80.93 < 10 |walk
talk Caledis Brightdawn##19840 |goto 48.24,86.60
turnin Shutting Down Manaforge Coruu##10330 |goto 48.24,86.60
accept Return to Thalodien##10200 |goto 48.24,86.60
|only if rep ('The Scryers') >= Neutral
step
talk Thadell##20464
accept Needs More Cowbell##10334 |goto 57.72,84.94
step
talk Apprentice Andrethan##20463
accept Indispensable Tools##10331 |goto 57.71,85.19
step
talk Custodian Dieworth##19488
accept Malevolent Remnants##10184 |goto 57.51,86.34
step
use Archmage Vargoth's Staff##28455
talk Image of Archmage Vargoth##19644
|tip He appears next to you.
turnin Curse of the Violet Tower##10174
accept The Sigil of Krasus##10188
step
talk Custodian Dieworth##19488
accept A Fate Worse Than Death##10185 |goto 57.51,86.34
step
talk Lieutenant-Sorcerer Morran##19489
accept The Unending Invasion##10343 |goto 57.58,86.30
stickystart "Slay_Severed_Spirits"
step
kill Abjurist Belmara##19546
|tip She walks around this area.
collect Belmara's Tome##29234 |n
use Belmara's Tome##29234
accept Abjurist Belmara##10305 |goto 58.51,88.35
step
Enter the building |goto 60.17,87.29 < 7 |walk
kill Battle-Mage Dathric##19543
|tip Inside the building.
collect Dathric's Blade##29233 |n
use Dathric's Blade##29233
accept Battle-Mage Dathric##10182 |goto 60.41,88.01
step
kill Cohlien Frostweaver##19545
|tip He walks around this area.
collect Cohlien's Cap##29236 |n
use Cohlien's Cap##29236
accept Cohlien Frostweaver##10307 |goto 59.72,86.68
step
kill Kirin'Var Apprentice##20409+
collect Smithing Hammer##29365 |q 10331/1 |goto 61.12,84.87
step
kill Conjurer Luminrath##19544
|tip He walks around this area.
collect Luminrath's Mantle##29235 |n
use Luminrath's Mantle##29235
accept Conjurer Luminrath##10306 |goto 60.26,84.96
step
Cross the bridge |goto 59.23,83.89 < 15 |only if walking
talk Bessy##20415
|tip If she's not here, someone else may be escorting her.
|tip Wait for her to respawn.
|tip The quest is a group quest, but you should be able to solo it fairly easily.
|tip If you find it too difficult, try to find someone to help you, or skip it.
turnin Needs More Cowbell##10334 |goto 59.15,78.79
accept When the Cows Come Home##10337 |goto 59.15,78.79
step
Watch the dialogue
|tip Follow Bessy and protect her as she walks.
|tip She eventually walks to this location.
|tip If you find this escort quest too
Escort Bessy on Her Way Home |q 10337/1 |goto 57.75,84.98
step
talk Thadell##20464
turnin When the Cows Come Home##10337 |goto 57.72,84.94
step
talk Apprentice Andrethan##20463
turnin Indispensable Tools##10331 |goto 57.71,85.19
accept Master Smith Rhonsus##10332 |goto 57.71,85.19
step
label "Slay_Severed_Spirits"
Kill Severed enemies around this area
Slay #20# Severed Spirits |q 10184/1 |goto 59.64,85.42
step
talk Custodian Dieworth##19488
turnin Malevolent Remnants##10184 |goto 57.51,86.34
accept The Annals of Kirin'Var##10312 |goto 57.51,86.34
stickystart "Kill_Mana_Seekers"
stickystart "Kill_Mageslayers"
step
Enter the building |goto 56.74,86.64 < 7 |walk
use Dathric's Blade##28351
|tip Inside the building.
Put Dathric's Spirit to Rest |q 10182/1 |goto 56.88,86.85
step
use Luminrath's Mantle##28352
Put Luminrath's Spirit to Rest |q 10306/1 |goto 56.41,87.80
step
click Mana Bomb Fragment##184433
collect Mana Bomb Fragment##29461 |q 10343/1 |goto 55.72,87.21
step
use Cohlien's Cap##28353
Put Cohlien's Spirit to Rest |q 10307/1 |goto 55.09,87.54
step
use Belmara's Tome##28336
Put Belmara's Spirit to Rest |q 10305/1 |goto 55.48,86.53
step
label "Kill_Mana_Seekers"
kill 10 Mana Seeker##18867 |q 10185/1 |goto 56.05,87.14
step
label "Kill_Mageslayers"
kill 10 Mageslayer##18866 |q 10185/2 |goto 56.05,87.14
step
talk Custodian Dieworth##19488
turnin Abjurist Belmara##10305 |goto 57.51,86.34
turnin A Fate Worse Than Death##10185 |goto 57.51,86.34
turnin Battle-Mage Dathric##10182 |goto 57.51,86.34
turnin Cohlien Frostweaver##10307 |goto 57.51,86.34
turnin Conjurer Luminrath##10306 |goto 57.51,86.34
step
talk Lieutenant-Sorcerer Morran##19489
turnin The Unending Invasion##10343 |goto 57.58,86.30
accept Potential Energy Source##10239 |goto 57.58,86.30
step
Enter the building |goto 60.17,87.29 < 7 |walk
kill Battle-Mage Dathric##19543
|tip Inside the building.
collect Annals of Kirin'Var##29331 |q 10312/1 |goto 60.41,88.01
step
Leave the building |goto 60.17,87.29 < 7 |walk
kill Rhonsus##20410 |q 10332/1 |goto 60.94,84.81
|tip He walks around this area.
step
talk Apprentice Andrethan##20463
turnin Master Smith Rhonsus##10332 |goto 57.71,85.19
step
talk Custodian Dieworth##19488
turnin The Annals of Kirin'Var##10312 |goto 57.51,86.34
accept Searching for Evidence##10316 |goto 57.51,86.34
step
Cross the bridge |goto 59.22,83.87 < 15 |only if walking
Enter the building |goto 60.32,78.39 < 7 |walk
click Necromantic Focus##184300
|tip Inside the building.
turnin Searching for Evidence##10316 |goto 60.31,77.98
accept A Lingering Suspicion##10314 |goto 60.31,77.98
step
Kill Tormented enemies around this area
|tip The Tormented enemies around this area turn into Kirin'Var enemies when they attack you.
Kill Kirin'Var enemies around this area
collect 10 Loathsome Remnant##29338 |q 10314/1 |goto 60.67,79.94
step
Cross the bridge |goto 59.18,82.25 < 15 |only if walking
talk Custodian Dieworth##19488
turnin A Lingering Suspicion##10314 |goto 57.51,86.34
accept Capturing the Phylactery##10319 |goto 57.51,86.34
step
Cross the bridge |goto 59.22,83.87 < 15 |only if walking
click Suspicious Outhouse##184310
collect Naberius's Phylactery##29361 |q 10319/1 |goto 59.88,80.38
step
Cross the bridge |goto 59.18,82.25 < 15 |only if walking
talk Custodian Dieworth##19488
turnin Capturing the Phylactery##10319 |goto 57.51,86.34
stickystart "Collect_Energy_Isolation_Cubes"
step
kill Spellbinder Maryana##19593
|tip She walks around this area.
collect Sigil of Krasus##28368 |q 10188/1 |goto 51.38,82.09
step
label "Collect_Energy_Isolation_Cubes"
click Energy Isolation Cube##183945+
|tip They look like glass boxes on the ground around this area.
collect 10 Energy Isolation Cube##28564 |q 10239/1 |goto 51.38,82.09
step
use Archmage Vargoth's Staff##28455
talk Image of Archmage Vargoth##19644
|tip He appears next to you.
turnin The Sigil of Krasus##10188
accept Krasus's Compendium##10192
step
talk Lieutenant-Sorcerer Morran##19489
turnin Potential Energy Source##10239 |goto 57.58,86.30
accept Building a Perimeter##10240 |goto 57.58,86.30
step
talk Custodian Dieworth##19488
accept The Sunfury Garrison##10222 |goto 57.51,86.34
step
Enter the building |goto 57.58,89.42 < 7 |walk
click Krasus' Compendium - Chapter 2##184122
|tip Inside the building.
collect Krasus's Compendium - Chapter 2##28473 |q 10192/2 |goto 57.55,89.58
step
Enter the building |goto 58.61,88.97 < 7 |walk
click Krasus' Compendium - Chapter 1##184121
|tip Inside the building.
collect Krasus's Compendium - Chapter 1##28472 |q 10192/1 |goto 58.61,89.20
step
Enter the building |goto 58.93,88.03 < 7 |walk
click Krasus' Compendium - Chapter 3##184123
|tip Inside the building.
collect Krasus's Compendium - Chapter 3##28474 |q 10192/3 |goto 58.83,87.95
step
use Archmage Vargoth's Staff##28455
talk Image of Archmage Vargoth##19644
|tip He appears next to you.
turnin Krasus's Compendium##10192
accept Unlocking the Compendium##10301
step
Follow the path |goto 57.58,87.60 < 30 |only if walking
talk Lieutenant-Sorcerer Morran##19489
accept Torching Sunfury Hold##10233 |goto 57.58,86.30
step
use the Rune Activation Device##28725
Activate the Eastern Rune |q 10240/1 |goto 59.23,85.35
step
Cross the bridge |goto 59.22,83.88 < 15 |only if walking
use the Rune Activation Device##28725
Activate the Northeastern Rune |q 10240/2 |goto 57.34,82.88
step
use the Rune Activation Device##28725
Activate the Western Rune |q 10240/3 |goto 54.30,86.08
stickystart "Destroy_Sunfury_Ballistas"
stickystart "Destroy_Sunfury_Tents"
stickystart "Kill_Sunfury_Archers"
step
Follow the road |goto 55.51,82.57 < 30 |only if walking
kill Spellreaver Marathelle##19926
|tip She walks around this area.
collect Heliotrope Oculus##28475 |q 10301/1 |goto 55.90,78.31
step
label "Destroy_Sunfury_Ballistas"
kill Sunfury Flamekeeper##20221+
collect Flaming Torch##28550 |n
use the Flaming Torch##28550
|tip Use it next to Sunfury Ballistas.
|tip They look like catapult machines on the ground around this area.
|tip You must be facing them when you use the Flaming Torch.
|tip You can burn the same on repeatedly, if you wait a moment for it to respawn.
Destroy #4# Sunfury Ballistas |q 10233/1 |goto 55.91,78.53
step
label "Destroy_Sunfury_Tents"
kill Sunfury Flamekeeper##20221+ |notinsticky
collect Flaming Torch##28550 |n |notinsticky
use the Flaming Torch##28550
|tip Use it next to Sunfury Tents.
|tip They look like blue tents on the ground around this area.
|tip You must be facing them when you use the Flaming Torch.
|tip You can burn the same on repeatedly, if you wait a moment for it to respawn.
Destroy #4# Sunfury Tents |q 10233/2 |goto 55.91,78.53
step
label "Kill_Sunfury_Archers"
kill 10 Sunfury Archer##19707 |q 10222/1 |goto 56.09,79.45
step
use Archmage Vargoth's Staff##28455
talk Image of Archmage Vargoth##19644
|tip He appears next to you.
turnin Unlocking the Compendium##10301
accept Summoner Kanthin's Prize##10209
step
talk Custodian Dieworth##19488
turnin The Sunfury Garrison##10222 |goto 57.51,86.34
accept Down With Daellis##10223 |goto 57.51,86.34
step
talk Lieutenant-Sorcerer Morran##19489
turnin Building a Perimeter##10240 |goto 57.58,86.30
turnin Torching Sunfury Hold##10233 |goto 57.58,86.30
step
Follow the road |goto 55.50,82.37 < 30 |only if walking
Cross the bridge |goto 51.56,74.06 < 20 |only if walking
Follow the road |goto 52.11,64.55 < 50 |only if walking
kill Master Daellis Dawnstrike##19705 |q 10223/1 |goto 56.16,66.27
|tip He runs around this area.
step
kill Summoner Kanthin##19657
|tip He walks around this area with a water elemental.
collect Stone of Glacius##28479 |q 10209/1 |goto 57.15,66.00
Also check around [59.08,62.54]
step
use Archmage Vargoth's Staff##28455
talk Image of Archmage Vargoth##19644
|tip He appears next to you.
turnin Summoner Kanthin's Prize##10209
accept Ar'kelos the Guardian##10176
step
Follow the road |goto 59.26,60.62 < 30 |only if walking
talk Harpax##20515
fpath Cosmowrench |goto 65.20,66.81
step
Follow the path |goto 66.03,66.54 < 7 |only if walking
talk Sab'aoth##22479
accept Bloody Imp-ossible!##10924 |goto 66.39,67.30
step
use Zeppit's Crystal##31815
|tip Zeppit will appear next to you.
|tip Use it again if Zeppit disappears.
kill Warp Chaser##18884+
|tip Kill them at melee range, otherwise Zeppit won't collect the quest item.
collect 8 Warp Chaser Blood##31813 |q 10924/1 |goto 63.47,64.52
You can find more around [58.69,59.17]
step
Follow the path |goto 66.03,66.54 < 7 |only if walking
talk Sab'aoth##22479
turnin Bloody Imp-ossible!##10924 |goto 66.39,67.30
step
Follow the road |goto 57.43,61.34 < 30 |only if walking
Continue following the road |goto 51.48,64.96 < 50 |only if walking
Cross the bridge |goto 51.31,71.28 < 20 |only if walking
Follow the road |goto 51.62,79.02 < 50 |only if walking
talk Custodian Dieworth##19488
turnin Down With Daellis##10223 |goto 57.51,86.34
step
Enter the building |goto 57.84,86.15 < 7 |walk
kill Ar'kelos##19494 |q 10176/1 |goto 58.1,86.5
|tip He walks around this area.
|tip Inside the building.
step
talk Archmage Vargoth##19481
|tip Inside the building, on the top floor.
turnin Ar'kelos the Guardian##10176 |goto 58.34,86.40
step
talk Exarch Orelis##19466
|tip Inside the building.
turnin Attack on Manaforge Coruu##10246 |goto 32.07,64.18
|only if rep ('The Aldor') >= Neutral
step
talk Anchorite Karja##19467
|tip Inside the building.
turnin Shutting Down Manaforge Coruu##10321 |goto 32.04,64.18
accept Shutting Down Manaforge Duro##10322 |goto 32.04,64.18
|only if rep ('The Aldor') >= Neutral
step
talk Exarch Orelis##19466
|tip Inside the building.
accept Sunfury Briefings##10328 |goto 32.07,64.18
|only if rep ('The Aldor') >= Neutral
step
talk Spymaster Thalodien##19468
|tip Inside the building.
turnin Return to Thalodien##10200 |goto 32.00,64.07
|only if rep ('The Scryers') >= Neutral
step
talk Magistrix Larynna##19469
|tip Inside the building.
accept Kick Them While They're Down##10341 |goto 32.05,64.00
|only if rep ('The Scryers') >= Neutral
step
talk Spymaster Thalodien##19468
|tip Inside the building.
accept Shutting Down Manaforge Duro##10338 |goto 32.00,64.07
|only if rep ('The Scryers') >= Neutral
step
Cross the bridge |goto 41.07,63.17 < 20 |only if walking
talk Gahruj##20066
turnin Request for Assistance##10266 |goto 46.66,56.95
accept Rightful Repossession##10267 |goto 46.66,56.95
accept Drijya Needs Your Help##10311 |goto 46.66,56.95
step
talk Mama Wheeler##19728
turnin Help Mama Wheeler##10333 |goto 46.63,56.53
accept One Demon's Trash...##10234 |goto 46.63,56.53
step
talk Mehrdad##20810
accept New Opportunities##10348 |goto 46.45,56.41
accept Run a Diagnostic!##10417 |goto 46.45,56.41
step
talk Shauly Pore##20921
accept Keeping Up Appearances##10433 |goto 46.48,56.04
stickystart "Collect_Ivory_Bells"
stickystart "Collect_Ripfang_Lynx_Pelts"
step
click Diagnostic Equipment##184589
collect Diagnostic Results##29741 |q 10417/1 |goto 48.21,55.00
step
label "Collect_Ivory_Bells"
click Ivory Bell##184443+
|tip They look like pink drooping flowers on the ground around this area.
collect 15 Ivory Bell##29474 |q 10348/1 |goto 45.38,53.65
step
label "Collect_Ripfang_Lynx_Pelts"
kill Ripfang Lynx##20671+
collect 10 Ripfang Lynx Pelt##29801 |q 10433/1 |goto 45.38,53.65
step
talk Shauly Pore##20921
turnin Keeping Up Appearances##10433 |goto 46.48,56.04
accept The Dynamic Duo##10434 |goto 46.48,56.04
step
talk Mehrdad##20810
turnin New Opportunities##10348 |goto 46.45,56.41
turnin Run a Diagnostic!##10417 |goto 46.45,56.41
accept Deal With the Saboteurs##10418 |goto 46.45,56.41
stickystart "Kill_Ganarg_Engineers"
stickystart "Kill_Moarg_Doomsmiths"
step
click Fel Reaver Part##183935+
|tip They look like brown metal objects on the ground around this area.
collect 10 Fel Reaver Part##28551 |q 10234/1 |goto 49.74,57.88
step
label "Kill_Ganarg_Engineers"
kill 15 Gan'arg Engineer##16948 |q 10232/2 |goto 50.38,58.65
step
label "Kill_Moarg_Doomsmiths"
kill 5 Mo'arg Doomsmith##16944 |q 10232/1 |goto 50.38,58.65
step
talk Mama Wheeler##19728
turnin One Demon's Trash...##10234 |goto 46.63,56.53
accept Declawing Doomclaw##10235 |goto 46.63,56.53
step
kill 8 Barbscale Crocolisk##20773 |q 10418/1 |goto 46.50,52.48
step
talk Mehrdad##20810
turnin Deal With the Saboteurs##10418 |goto 46.45,56.41
accept To the Stormspire##10423 |goto 46.45,56.41
step
kill Doomclaw##19738
collect Doomclaw's Hand##28563 |q 10235/1 |goto 50.69,57.18
step
talk Drijya##20281
|tip If he's not there, someone else may be escorting him.
|tip Wait for him to respawn.
turnin Drijya Needs Your Help##10311 |goto 48.11,63.50
stickystart "Collect_Boxes_Of_Surveying_Equipment"
stickystart "Collect_Sunfury_Military_Briefing"
step
kill Sunfury Conjurer##20139+
collect Sunfury Arcane Briefing##29546 |q 10328/2 |goto 57.87,63.68
|only if rep ('The Aldor') >= Neutral
step
label "Collect_Sunfury_Military_Briefing"
Kill Sunfury enemies around this area
|tip Only Sunfury Bowmen and Sunfury Centurions will drop the quest item.
collect Sunfury Military Briefing##29545 |q 10328/1 |goto 58.56,63.44
|only if rep ('The Aldor') >= Neutral
stickystart "Kill_Sunfury_Bowmen"
stickystart "Kill_Sunfury_Centurions"
step
kill 8 Sunfury Conjurer##20139 |q 10341/1 |goto 57.87,63.68
|only if rep ('The Scryers') >= Neutral
step
label "Kill_Sunfury_Bowmen"
kill 6 Sunfury Bowman##20207 |q 10341/2 |goto 57.87,63.68
|only if rep ('The Scryers') >= Neutral
step
label "Kill_Sunfury_Centurions"
kill 4 Sunfury Centurions##20140 |q 10341/3 |goto 57.87,63.68
|only if rep ('The Scryers') >= Neutral
step
label "Collect_Boxes_Of_Surveying_Equipment"
click Box Surveying Equipment##184031+
|tip They look like silver metal boxes on the ground around this area.
collect 10 Box of Surveying Equipment##28913 |q 10267/1 |goto 57.87,63.68
step
Enter the building |goto 58.76,64.20 < 7 |walk
kill Overseer Athanel##20435
|tip Inside the building.
collect Duro Access Crystal##29397 |q 10322/2 |goto 59.99,68.50 |only if rep ('The Aldor') >= Neutral
collect Duro Access Crystal##29397 |q 10338/2 |goto 59.99,68.50 |only if rep ('The Scryers') >= Neutral
step
click Duro Control Console##184311
|tip Inside the building.
Choose _<Begin emergency shutdown.>_
Kill the enemies that attack in waves
|tip This takes 2 minutes.
Shut Down Manaforge Duro |q 10322/1 |goto 59.11,66.78 |only if rep ('The Aldor') >= Neutral
Shut Down Manaforge Duro |q 10338/1 |goto 59.11,66.78 |only if rep ('The Scryers') >= Neutral
step
Leave the building |goto 58.76,64.19 < 7 |walk
Follow the road |goto 53.07,64.47 < 70 |only if walking
talk Gahruj##20066
turnin Rightful Repossession##10267 |goto 46.67,56.95
accept An Audience with the Prince##10268 |goto 46.67,56.95
step
talk Mama Wheeler##19728
turnin Declawing Doomclaw##10235 |goto 46.63,56.53
accept Warn Area 52!##10237 |goto 46.63,56.53
step
Cross the bridge |goto 43.56,47.31 < 20 |only if walking
talk Aurine Moonblaze##20871
accept Flora of the Eco-Domes##10426 |goto 42.32,32.57
step
Ride the elevator up |goto 42.56,33.58 < 10 |only if walking
talk Ghabar##20811
turnin To the Stormspire##10423 |goto 43.54,35.15
accept Diagnosis: Critical##10424 |goto 43.54,35.15
step
talk Nether-Stalker Nauthis##20471
accept The Minions of Culuthas##10336 |goto 44.69,34.93
accept Fel Reavers, No Thanks!##10855 |goto 44.69,34.93
step
talk Zephyrion##20470
accept Surveying the Ruins##10335 |goto 44.72,34.87
step
talk Audi the Needle##20205
turnin The Dynamic Duo##10434 |goto 44.74,36.74
accept Retrieving the Goods##10435 |goto 44.74,36.74
step
Enter the building |goto 45.28,36.01 < 10 |walk
talk Image of Nexus-Prince Haramad##20084
|tip Inside the building.
turnin An Audience with the Prince##10268 |goto 45.86,35.97
accept Triangulation Point One##10269 |goto 45.86,35.97
step
talk Grennik##19583
fpath The Stormspire |goto 45.31,34.87
step
talk Papa Wheeler##19645
turnin In A Scrap With The Legion##10232 |goto 32.98,64.66
step
talk Rocket-Chief Fuselage##19570
turnin Warn Area 52!##10237 |goto 32.68,64.41
accept Doctor Vomisa, Ph.T.##10247 |goto 32.68,64.41
step
Enter the building |goto 32.11,64.53 < 7 |walk
talk Exarch Orelis##19466
|tip Inside the building.
turnin Sunfury Briefings##10328 |goto 32.08,64.17
accept Outside Assistance##10431 |goto 32.08,64.17
|only if rep ('The Aldor') >= Neutral
step
talk Anchorite Karja##19467
|tip Inside the building.
turnin Shutting Down Manaforge Duro##10322 |goto 32.03,64.18
|only if rep ('The Aldor') >= Neutral
step
Enter the building |goto 32.11,64.53 < 7 |walk
talk Spymaster Thalodien##19468
|tip Inside the building.
turnin Shutting Down Manaforge Duro##10338 |goto 32.00,64.07
|only if rep ('The Scryers') >= Neutral
step
talk Magistrix Larynna##19469
|tip Inside the building.
turnin Kick Them While They're Down##10341 |goto 32.05,64.00
accept A Defector##10202 |goto 32.05,64.00
|only if rep ('The Scryers') >= Neutral
step
talk Doctor Vomisa, Ph.T.##19832
|tip He walks around this area.
turnin Doctor Vomisa, Ph.T.##10247 |goto 37.32,63.74
step
Enter the building |goto 43.52,36.03 < 15 |walk
talk Eyonix##19531
|tip Inside the building.
home The Stormspire |goto 43.36,36.14 |q 10434
step
Ride the elevator down |goto 42.55,33.57 < 10 |only if walking
use the Energy Field Modulator##29818
|tip Use it on Farahlon Lashers around this area.
kill Mutated Farahlon Lasher+
Test Energy Modulator #10# Times |q 10426/1 |goto 40.71,35.41
step
talk Aurine Moonblaze##20871
turnin Flora of the Eco-Domes##10426 |goto 42.32,32.57
accept Creatures of the Eco-Domes##10427 |goto 42.32,32.57
step
Kill Talbuk enemies around this area
|tip Don't kill them, just weaken them.
use the Talbuk Tagger##29817
|tip Use it on Talbuk enemies when they are weakened.
Tag #12# Talbuk |q 10427/1 |goto 40.71,35.41
step
talk Aurine Moonblaze##20871
turnin Creatures of the Eco-Domes##10427 |goto 42.32,32.57
accept When Nature Goes Too Far##10429 |goto 42.32,32.57
step
Follow the path down |goto 41.86,31.34 < 30 |only if walking
kill Markaru##20775
|tip Underwater.
collect Hulking Hydra Heart##29768 |q 10429/1 |goto 44.59,28.41
step
use the Diagnostic Device##29803
collect Diagnostic Results##29769 |q 10424/1 |goto 47.63,26.80
stickystart "Kill_Hounds_Of_Culuthas"
stickystart "Kill_Eyes_Of_Culuthas"
step
Follow the road |goto 48.65,22.64 < 30 |only if walking
use the Surveying Markers##29445
Place Surveying Marker One |q 10335/1 |goto 51.66,20.49
step
Follow the road |goto 51.78,23.57 < 30 |only if walking
Continue following the road |goto 56.56,24.14 < 30 |only if walking
use the Surveying Markers##29445
Place Surveying Marker Three |q 10335/3 |goto 55.81,19.93
step
use the Surveying Markers##29445
Place Surveying Marker Two |q 10335/2 |goto 54.56,22.82
step
label "Kill_Hounds_Of_Culuthas"
kill 10 Hound of Culuthas##20141 |q 10336/1 |goto 54.56,22.82
step
label "Kill_Eyes_Of_Culuthas"
kill 5 Eye of Culuthas##20394 |q 10336/2 |goto 54.56,22.82
step
Follow the road |goto 52.68,23.67 < 70 |only if walking
kill Gan'arg Mekgineer##16949+
collect 5 Condensed Nether Gas##31653 |q 10855 |goto 37.77,28.88
step
talk Inactive Fel Reaver##22293
|tip Complete the "Nether Gas In a Fel Fire Engine" repeatable quest.
Watch the dialogue
Destroy the Inactive Fel Reaver |q 10855/1 |goto 35.86,28.84
step
talk Kaylaan##20780
turnin Outside Assistance##10431 |goto 34.80,38.29
accept A Dark Pact##10380 |goto 34.80,38.29
|only if rep ('The Aldor') >= Neutral
step
talk Wind Trader Tuluman##20112
accept Dealing with the Foreman##10317 |goto 34.62,37.95
step
talk Nether-Stalker Oazul##20341
accept Neutralizing the Nethermancers##10315 |goto 34.50,37.80
stickystart "Kill_Sunfury_Nethermancers"
step
Follow the path up |goto 29.57,41.65 < 15 |only if walking
talk Magister Theledorn##20920
turnin A Defector##10202 |goto 26.19,41.57
accept Damning Evidence##10432 |goto 26.19,41.57
|only if rep ('The Scryers') >= Neutral
stickystart "Collect_Orders_From_Kaelthas"
stickystart "Kill_Ganarg_Warp_Tinkerers"
step
kill 1 Daughter of Destiny##18860 |q 10380/2 |goto 30.59,40.66 |count 1
|tip She walks around this area.
|only if rep ('The Aldor') >= Neutral
step
kill 2 Daughter of Destiny##18860 |q 10380/2 |goto 29.68,43.84 |count 2
|tip She walks around this area.
|only if rep ('The Aldor') >= Neutral
step
Enter the mine |goto 26.38,44.00 < 10 |walk
talk Foreman Sundown##20393
|tip Inside the mine.
turnin Dealing with the Foreman##10317 |goto 26.37,42.28
accept Dealing with the Overmaster##10318 |goto 26.37,42.28
step
Follow the path down |goto 26.98,38.01 < 7 |walk
kill Overmaster Grindgarr##20803 |q 10318/1 |goto 26.81,35.85
|tip Inside the mine.
step
label "Kill_Moarg_Warp_Masters"
kill 3 Mo'arg Warp-Master##20326 |q 10380/3 |goto 27.03,37.45
|tip Inside the mine.
|only if rep ('The Aldor') >= Neutral
step
label "Kill_Ganarg_Warp_Tinkerers"
kill 6 Gan'arg Warp-Tinker##20285 |q 10380/1 |goto 27.03,37.45
|tip Inside the mine.
|only if rep ('The Aldor') >= Neutral
step
label "Collect_Orders_From_Kaelthas"
Kill enemies around this area
|tip Inside the mine.
collect 8 Orders From Kael'thas##29797 |q 10432/1 |goto 27.03,37.45
|only if rep ('The Scryers') >= Neutral
step
Follow the path up |goto 26.33,40.68 < 7 |walk
Leave the mine |goto 26.36,44.22 < 10 |c |q 10315
step
kill 3 Daughter of Destiny##18860 |q 10380/2 |goto 29.68,43.84 |count 3
|tip She walks around this area.
|only if rep ('The Aldor') >= Neutral
step
label "Kill_Sunfury_Nethermancers"
kill 15 Sunfury Nethermancer##20248 |q 10315/1 |goto 30.45,41.90
You can find more around: |notinsticky
[30.53,39.78]
[29.68,43.84]
step
Cross the bridge |goto 31.68,41.36 < 20 |only if walking
talk Nether-Stalker Oazul##20341
turnin Neutralizing the Nethermancers##10315 |goto 34.50,37.80
step
talk Wind Trader Tuluman##20112
turnin Dealing with the Overmaster##10318 |goto 34.62,37.95
step
talk Kaylaan##20780
turnin A Dark Pact##10380 |goto 34.80,38.29
accept Aldor No More##10381 |goto 34.80,38.29
|only if rep ('The Aldor') >= Neutral
step
talk Ghabar##20811
turnin Diagnosis: Critical##10424 |goto 43.53,35.15
accept Testing the Prototype##10430 |goto 43.53,35.15
step
talk Nether-Stalker Nauthis##20471
turnin The Minions of Culuthas##10336 |goto 44.69,34.93
turnin Fel Reavers, No Thanks!##10855 |goto 44.69,34.93
accept The Best Defense##10856 |goto 44.69,34.93
step
talk Zephyrion##20470
turnin Surveying the Ruins##10335 |goto 44.72,34.86
step
Ride the elevator down |goto 42.55,33.57 < 10 |only if walking
talk Aurine Moonblaze##20871
turnin When Nature Goes Too Far##10429 |goto 42.32,32.57
step
kill 12 Wrathbringer##18858 |q 10856/1 |goto 41.42,21.90
stickystart "Collect_Dome_Generator_Segments"
step
Follow the road |goto 44.35,21.20 < 50 |only if walking
talk Tashar##20913
turnin Testing the Prototype##10430 |goto 44.69,14.57
accept All Clear!##10436 |goto 44.69,14.57
stickystart "Kill_Scythetooth_Raptors"
step
label "Collect_Dome_Generator_Segments"
click Dome Generator Segment##184607+
|tip They look like glass containers with pink electricity in them on the ground around this area.
collect 10 Dome Generator Segment##29798 |q 10435/1 |goto 44.49,11.69
step
label "Kill_Scythetooth_Raptors"
kill 12 Scythetooth Raptor##20634 |q 10436/1 |goto 44.49,11.69
step
talk Tashar##20913
turnin All Clear!##10436 |goto 44.69,14.57
step
Watch the dialogue
talk Tashar##20913
accept Success!##10440 |goto 44.69,14.57
step
Follow the road |goto 43.24,17.26 < 50 |only if walking
Continue following the road |goto 40.92,30.08 < 50 |only if walking
Ride the elevator up |goto 42.55,33.56 < 10 |only if walking
talk Ghabar##20811
turnin Success!##10440 |goto 43.53,35.14
step
talk Nether-Stalker Nauthis##20471
turnin The Best Defense##10856 |goto 44.69,34.93
accept Teleport This!##10857 |goto 44.69,34.93
step
talk Audi the Needle##20205
turnin Retrieving the Goods##10435 |goto 44.74,36.74
step
Ride the elevator down |goto 42.55,33.57 < 10 |only if walking
use the Mental Interference Rod##31678
|tip Use it on a Cyber-Rage Forgelord around this area.
|tip You can't have any other pet active while doing this.
Destroy the Western Teleporter |q 10857/1 |goto 39.18,20.43
|tip Use the "Detonate Teleporter" ability on your action bar near this structure.
step
use the Mental Interference Rod##31678
|tip Use it on a Cyber-Rage Forgelord around this area.
|tip You can't have any other pet active while doing this.
Destroy the Central Teleporter |q 10857/2 |goto 41.08,19.42
|tip Use the "Detonate Teleporter" ability on your action bar near this structure.
step
use the Mental Interference Rod##31678
|tip Use it on a Cyber-Rage Forgelord around this area.
|tip You can't have any other pet active while doing this.
Destroy the Eastern Teleporter |q 10857/3 |goto 42.28,21.07
|tip Use the "Detonate Teleporter" ability on your action bar near this structure.
step
Follow the road |goto 48.58,22.66 < 30 |only if walking
Cross the bridge |goto 55.58,27.09 < 20 |only if walking
talk Wind Trader Marid##20071
accept A Not-So-Modest Proposal##10270 |goto 58.31,31.65
step
talk Researcher Navuud##20449
accept Electro-Shock Goodness!##10411 |goto 59.25,32.58
step
talk Commander Ameer##20448
accept The Ethereum##10339 |goto 59.50,32.38
step
talk Professor Dabiri##20907
accept Recipe for Destruction##10437 |goto 60.11,31.72
step
talk Flesh Handler Viridius##20450
|tip He walks around this area.
accept Captain Tyralius##10422 |goto 59.73,31.88
step
use Navuud's Concoction##29737
Gain the Electro-Shock Therapy Buff |havebuff 135990 |q 10411
stickystart "Kill_Ethereum_Assassins"
stickystart "Kill_Ethereum_Shocktroopers"
stickystart "Kill_Ethereum_Researchers"
stickystart "Kill_Void_Waste_Globules"
step
Follow the path down |goto 57.21,32.58 < 20 |only if walking
kill Captain Zovax##20727 |q 10339/4 |goto 57.12,36.39
|tip He walks around this area.
step
label "Kill_Ethereum_Assassins"
kill 5 Ethereum Assassin##20452 |q 10339/1 |goto 56.47,38.93
step
label "Kill_Ethereum_Shocktroopers"
kill 5 Ethereum Shocktrooper##20453 |q 10339/2 |goto 57.12,36.39
step
label "Kill_Ethereum_Researchers"
kill 2 Ethereum Researcher##20456 |q 10339/3 |goto 57.12,36.39
step
click Ethereum Transponder Zeta
talk Image of Commander Ameer##20482
turnin The Ethereum##10339 |goto 56.81,38.69
accept Ethereum Data##10384 |goto 56.81,38.69
step
click Ethereum Data Cell##184560
collect Ethereum Data Cell##29582 |q 10384/1 |goto 55.77,39.89
step
click Ethereum Transponder Zeta
talk Image of Commander Ameer##20482
turnin Ethereum Data##10384 |goto 56.81,38.69
accept Potential for Brain Damage = High##10385 |goto 56.81,38.69
step
kill Warden Icoshock##20770
|tip He walks around this area.
collect The Warden's Key##29742 |goto 54.53,40.48 |q 10422
step
click Captain Tyralius's Prison
Free Captain Tyralius |q 10422/1 |goto 53.33,41.48
step
Kill Ethereum enemies around this area
collect Ethereum Essence##29482+ |n
use the Ethereum Essence##29482+
|tip This will allow you to see Ethereum Relays around this area.
|tip The effect only lasts for 1 minute, so you will need multiple.
kill Ethereum Relay##20619+
collect 15 Ethereum Relay Data##29459 |q 10385/1 |goto 55.72,40.82
step
click Ethereum Transponder Zeta
talk Image of Commander Ameer##20482
turnin Potential for Brain Damage = High##10385 |goto 56.81,38.69
accept S-A-B-O-T-A-G-E##10405 |goto 56.81,38.69
step
Kill Ethereum enemies around this area
|tip Only Ethereum Overlords and Ethereum Archons will drop the quest item.
collect Prepared Ethereum Wrapping##29591 |q 10405/1 |goto 55.79,43.63
step
click Ethereum Transponder Zeta
talk Image of Commander Ameer##20482
turnin S-A-B-O-T-A-G-E##10405 |goto 56.81,38.69
step
label "Kill_Void_Waste_Globules"
kill Void Waste##20778+
|tip In the water around this area.
kill 30 Void Waste Globule##20805 |q 10411/2 |goto 55.79,40.47
|tip They sometimes appear after you kill Void Wastes.
step
Follow the path up |goto 57.07,34.38 < 20 |only if walking
talk Researcher Navuud##20449
turnin Electro-Shock Goodness!##10411 |goto 59.25,32.57
step
talk Flesh Handler Viridius##20450
|tip He walks around this area.
turnin Captain Tyralius##10422 |goto 59.73,31.88
step
Follow the path |goto 59.90,35.20 < 15 |only if walking
talk Agent Araxes##20551
accept The Flesh Lies...##10345 |goto 59.42,45.04
stickystart "Burn_Withered_Corpses"
step
Enter the mine |goto 61.05,45.48 < 10 |walk
Follow the path |goto 60.98,44.51 < 7 |walk
Follow the down |goto 60.22,43.46 < 7 |walk
Follow the path |goto 59.75,42.56 < 7 |walk
talk Agent Ya-six##20552
|tip Inside the mine.
accept Arconus the Insatiable##10353 |goto 60.92,41.53
step
click Teleporter Power Pack##184075
|tip Inside the mine.
collect Teleporter Power Pack##28969 |q 10270/1 |goto 60.96,41.53
step
Follow the path up |goto 59.76,42.57 < 7 |walk
Continue up the path |goto 60.44,43.07 < 7 |walk
Continue up the path |goto 60.79,41.39 < 7 |walk
kill Arconus the Insatiable##20554 |q 10353/1 |goto 60.14,39.87
|tip He walks around this area.
|tip Inside the mine.
step
label "Burn_Withered_Corpses"
use the Protectorate Igniter##29473
|tip Use it on Withered Corpses.
|tip They look like dead blood elves on the ground inside the mine.
|tip If you get too close they will turn into fleshbeasts and attack you.
Burn #12# Withered Corpses |q 10345/1 |goto 60.14,39.87
step
Follow the path |goto 60.53,43.57 < 7 |walk
Leave the mine |goto 61.04,45.62 < 10 |walk
talk Agent Araxes##20551
turnin The Flesh Lies...##10345 |goto 59.42,45.04
step
Remove the Electro-Shock Therapy Buff |nobuff spell:35685 |q 10411
|tip Right-click the "Electro-Shock Therapy" buff near your minimap.
step
use Navuud's Concoction##29737
Gain the Electro-Shock Therapy Buff |havebuff spell:35685 |q 10411
stickystart "Collect_Fragments_Of_Dimensius"
step
Follow the road |goto 65.89,46.63 < 30 |only if walking
kill Seeping Sludge##20501+
kill 30 Seeping Sludge Globule##20806 |q 10411/1 |goto 65.90,40.82
|tip They appear after you kill Seeping Sludges.
You can find more around [64.71,41.77]
step
label "Collect_Fragments_Of_Dimensius"
Kill Void enemies around this area
|tip You can find them all around the perimeter of Manaforge Ultris.
collect 8 Fragment of Dimensius##29822 |q 10437/1 |goto 65.90,40.82
You can find more around [64.71,41.77]
step
use the Triangulation Device##28962
|tip Your character will automatically be faced in the direction you need to go.
|tip Run in the direction you become faced until the item is no longer on cooldown.
|tip After the the item completes its cooldown, the quest goal should complete.
Discover the First Triangulation Point |q 10269/1 |goto 66.81,34.82
step
Follow the path down |goto 68.66,33.55 < 30 |only if walking
click Ethereum Transponder Zeta
Choose _"Attempt to contact Wind Trader Marid."_
talk Image of Wind Trader Marid##20518
turnin A Not-So-Modest Proposal##10270 |goto 71.14,38.99
accept Getting Down to Business##10271 |goto 71.14,38.99
step
use the Essence Gatherer##69825
|tip Use it on Nether enemies around this area.
collect 8 Nether Dragon Essence##28970 |q 10271/1 |goto 72.34,38.46
step
talk Shrouded Figure##20154
turnin Getting Down to Business##10271 |goto 70.93,38.82
accept Formal Introductions##10281 |goto 70.93,38.82
step
talk Tyri##20110
turnin Formal Introductions##10281 |goto 71.22,35.12
accept A Promising Start##10272 |goto 71.22,35.12
step
click Nether Dragonkin Egg##184077+
|tip They look like blue eggs with white crystals on them on the ground around this area.
collect 15 Nether Dragonkin Egg##28971 |q 10272/1 |goto 72.14,38.29
step
talk Tyri##20110
turnin A Promising Start##10272 |goto 71.22,35.12
accept Troublesome Distractions##10273 |goto 71.22,35.12
step
Follow the path up |goto 71.09,39.90 < 20 |only if walking
Follow the road |goto 68.32,33.39 < 30 |only if walking
talk Professor Dabiri##20907
turnin Recipe for Destruction##10437 |goto 60.10,31.73
accept On Nethery Wings##10438 |goto 60.10,31.73
step
talk Commander Ameer##20448
turnin Arconus the Insatiable##10353 |goto 59.50,32.39
step
talk Dealer Hazzin##20092
turnin Triangulation Point One##10269 |goto 58.35,31.26
accept Triangulation Point Two##10275 |goto 58.35,31.26
step
Locate Wind Trader Marid |goto 58.32,31.65 < 15 |c |q 10273
step
talk Wind Trader Marid##20071
Tell him _"Wind Trader Marid, I've returned with more information on the nether drakes. I'm prepared to be your business partner, and for an extra sum, I'll take care of that troublesome elf and her human friend."_
Begin Following Wind Trader Marid |goto 58.32,31.65 > 15 |c |q 10273
step
Watch the dialogue
|tip Follow Wind Trader Marid as he walks.
|tip He eventually walks to this location.
kill Wind Trader Marid##20071 |q 10273/1 |goto 59.95,30.96
step
talk Protectorate Nether Drake##20903
Tell him _"I'm ready to fly! Take me up, dragon!"_
Begin Flying with the Nether Drake |ontaxi |goto 60.21,31.76 |q 10438
step
use the Phase Disruptor##29778
|tip Use it while flying around the Void Conduit.
|tip It's at the top of Manaforge Ultris.
Destroy the Void Conduit |q 10438/1 |goto 62.45,40.90 |notravel
step
Return to the Ground |offtaxi |goto 60.10,31.99 |q 10438 |notravel
step
talk Professor Dabiri##20907
turnin On Nethery Wings##10438 |goto 60.10,31.73
step
Follow the path down |goto 68.66,33.55 < 30 |only if walking
talk Tyri##20110
turnin Troublesome Distractions##10273 |goto 71.22,35.12
step
talk Nether-Stalker Nauthis##20471
turnin Teleport This!##10857 |goto 44.70,34.94
step
Ride the elevator down |goto 42.55,33.57 < 10 |only if walking
Follow the road |goto 39.09,30.79 < 70 |only if walking
Cross the bridge |goto 33.62,37.77 < 20 |only if walking
Follow the path up |goto 29.58,41.34 < 15 |only if walking
use the Triangulation Device##29018
|tip Your character will automatically be faced in the direction you need to go.
|tip Run in the direction you become faced until the item is no longer on cooldown.
|tip After the the item completes its cooldown, the quest goal should complete.
Discover the Second Triangulation Point |q 10275/1 |goto 29.05,40.45
step
Cross the bridge |goto 31.66,41.38 < 20 |only if walking
talk Wind Trader Tuluman##20112
turnin Triangulation Point Two##10275 |goto 34.62,37.95
step
Follow the road |goto 40.82,29.94 < 50 |only if walking
Ride the elevator up |goto 42.55,33.57 < 10 |only if walking
Enter the building |goto 32.11,64.52 < 7 |walk
talk Exarch Orelis##19466
|tip Inside the building.
turnin Aldor No More##10381 |goto 32.07,64.18
|only if rep('The Aldor') >= Neutral
step
Follow the road |goto 40.82,29.94 < 50 |only if walking
Ride the elevator up |goto 42.55,33.57 < 10 |only if walking
Enter the building |goto 32.11,64.52 < 7 |walk
talk Spymaster Thalodien##19468
|tip Inside the building.
turnin Damning Evidence##10432 |goto 32.00,64.07
|only if rep('The Scryers') >= Neutral
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\The Burning Crusade (58-70)\\Shadowmoon Valley (70-70)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Shadowmoon",
condition_suggested=function() return level == 70 and not completedq(10679) end,
},[[
step
Reach Level 70 |ding 70
|tip Use the Leveling guides to accomplish.
|tip This zone has some quests that require you to be level 70 to accept them.
step
talk Haggard War Veteran##19684
|tip He walks along the bridge around this area.
accept A'dal##10210 |goto Shattrath City/0 60.41,16.08
step
Enter the building |goto 51.55,37.39 < 10 |walk
talk A'dal##18481
|tip Inside the building.
turnin A'dal##10210 |goto 53.98,44.71
step
talk Archmage Khadgar##18166
|tip Inside the building.
accept City of Light##10211 |goto 54.73,44.32
step
Watch the dialogue
|tip Follow Khadgar's Servant as he walks.
|tip He eventually walks to this location.
|tip This is a long escort quest.
Tour the City of Light |q 10211/1 |goto 50.36,42.98
step
talk Archmage Khadgar##18166
|tip Inside the building.
turnin City of Light##10211 |goto 54.73,44.32
step
talk Archmage Khadgar##18166
|tip Inside the building.
|tip You will only be able to complete one of these quests.
accept Allegiance to the Aldor##10551 |goto 54.75,44.32 |or |noautoaccept
|tip You will become aligned with the Aldor faction by completing this quest.
accept Allegiance to the Scryers##10552 |goto 54.75,44.32 |or |noautoaccept
|tip You will become aligned with the Scryers faction by completing this quest.
step
Follow the road |goto Shadowmoon Valley/0 24.10,30.34 < 50 |only if walking
Continue following the road |goto Shadowmoon Valley/0 62.26,82.40 < 30 |only if walking
talk Wing Commander Nuainn##21357
accept Besieged!##10562 |goto Shadowmoon Valley/0 39.50,53.73
step
kill 10 Infernal Attacker##21419 |q 10562/1 |goto 40.75,52.62
You can find more around [36.67,51.35]
step
talk Wing Commander Nuainn##21357
turnin Besieged!##10562 |goto 39.50,53.73
accept To Legion Hold##10563 |goto 39.50,53.73
step
Follow the path |goto 62.53,83.53 < 10 |only if walking
talk Gryphonrider Kieran##22042
accept The Sketh'lon Wreckage##10569 |goto 38.78,54.22
step
talk Brubeck Stormfoot##18939
fpath Wildhammer Stronghold |goto 37.61,55.45
step
talk Zorus the Judicator##21774
|tip He walks around this area.
accept A Ghost in the Machine##10642 |goto 36.64,54.88
step
talk Gnomus##21777
accept Spleendid!##10661 |goto 36.54,55.24
step
talk Earthmender Sophurus##21937
accept The Hand of Gul'dan##10680 |goto 36.37,56.95
step
talk Thane Yoregar##21773
|tip He walks around this area.
accept Put On Yer Kneepads...##10703 |goto 36.26,56.97
step
Enter the building |goto 37.38,57.58 < 7 |walk
talk Dreg Cloudsweeper##19352
|tip Inside the building.
home Wildhammer Stronghold |goto 37.06,58.27 |q 10562 |future
step
Follow the path |goto 39.15,53.27 < 10 |only if walking
Follow the road |goto 37.78,49.29 < 50 |only if walking
Follow the path up |goto 24.62,33.93 < 20 |only if walking
Follow the path |goto 23.56,39.47 < 30 |only if walking
use the Box o' Tricks##30638
|tip Use it next to the Legion Communication Device.
|tip Be careful of the elite enemies that walk around this area.
Watch the dialogue
Discover the Legion's Plans |q 10563/1 |goto 23.58,36.92
stickystart "Collect_Ever_Burning_Ash"
stickystart "Slay_Shadowmoon_Valley_Wildlife"
step
kill Felfire Diemetradon##21408+
|tip You can find them around the green lava areas around this area.
collect 8 Felfire Spleen##30819 |q 10661/1 |goto 36.25,44.18
You can find more around:
[39.44,45.48]
[36.13,38.82]
step
label "Collect_Ever_Burning_Ash"
click Ever-burning Ash##184948+
|tip They look like small piles of dirt with green smoke rising out of them on the ground around this area.
|tip There are usually more of them close to the green lava around this area.
collect 15 Ever-Burning Ash##30716 |q 10642/1 |goto 33.83,36.43
step
label "Slay_Shadowmoon_Valley_Wildlife"
Kill enemies around this area
|tip Only Felboars and Vilewing Chimaeras will count for the quest goal.
Slay #20# Shadowmoon Valley Wildlife |q 10703/1 |goto 34.47,42.71
step
Follow the path |goto 41.04,44.77 < 50 |only if walking
talk Earthmender Torlok##21024
turnin The Hand of Gul'dan##10680 |goto 42.19,45.07
accept Enraged Spirits of Fire and Earth##10458 |goto 42.19,45.07
stickystart "Capture_Fiery_Souls"
step
use the Totem of Spirits##30094
kill Enraged Earth Spirit##21050+
|tip Kill them near the totems you plant.
Capture #8# Earthen Souls |q 10458/1 |goto 47.38,44.84
You can find more around [49.01,50.16]
step
label "Capture_Fiery_Souls"
use the Totem of Spirits##30094 |notinsticky
kill Enraged Fire Spirit##21061+
|tip Kill them near the totems you plant.
Capture #8# Fiery Souls |q 10458/2 |goto 47.38,44.84
You can find more around [49.01,50.16]
step
talk Earthmender Torlok##21024
turnin Enraged Spirits of Fire and Earth##10458 |goto 42.19,45.07
accept Enraged Spirits of Water##10480 |goto 42.19,45.07
stickystart "Collect_Skethlon_Commanders_Journal_Page_2"
stickystart "Collect_Skethlon_Commanders_Journal_Page_3"
step
Follow the path |goto 40.84,44.61 < 30 |only if walking
Kill Dark Conclave enemies around this area
collect Sketh'lon Commander's Journal - Page 1##31260 |q 10569/1 |goto 37.85,30.94
step
label "Collect_Skethlon_Commanders_Journal_Page_2"
Kill Dark Conclave enemies around this area |notinsticky
collect Sketh'lon Commander's Journal - Page 2##31261 |q 10569/2 |goto 37.85,30.94
step
label "Collect_Skethlon_Commanders_Journal_Page_3"
Kill Dark Conclave enemies around this area |notinsticky
collect Sketh'lon Commander's Journal - Page 3##31262 |q 10569/3 |goto 37.85,30.94
step
Follow the road |goto 41.37,30.68 < 30 |only if walking
use the Totem of Spirits##30094
kill Enraged Water Spirit##21059+
|tip Kill them near the totems you plant.
Capture #5# Watery Souls |q 10480/1 |goto 50.17,23.74
step
talk Thane Yoregar##21773
|tip He walks around this area.
turnin Put On Yer Kneepads...##10703 |goto 36.28,56.98
step
talk Gnomus##21777
turnin Spleendid!##10661 |goto 36.54,55.24
accept The Second Course...##10677 |goto 36.54,55.24
step
talk Zorus the Judicator##21774
|tip He walks around this area.
turnin A Ghost in the Machine##10642 |goto 36.64,54.88
accept Harbingers of Shadowmoon##10643 |goto 36.64,54.88
step
talk Gryphonrider Kieran##22042
turnin The Sketh'lon Wreckage##10569 |goto 38.78,54.22
accept Find the Deserter##10759 |goto 38.78,54.22
step
kill 12 Shadowmoon Harbinger##21795 |q 10643/1 |goto 37.22,55.12
|tip Make sure to equip the Spectrecles.
|tip You can only see them when you have the Spectrecles equipped.
|tip You can get more Spectrecles from Zorus the Judicator, who walks around this area.
step
Equip Your Normal Head Armor
Click Here After Equipping Your Normal Head Armor |confirm |q 10643
step
talk Zorus the Judicator##21774
|tip He walks around this area.
turnin Harbingers of Shadowmoon##10643 |goto 36.62,54.87
accept Teron Gorefiend - Lore and Legend##10644 |goto 36.62,54.87
step
Follow the path |goto 39.15,53.28 < 10 |only if walking
talk Wing Commander Nuainn##21357
turnin To Legion Hold##10563 |goto 39.50,53.74
accept Setting Up the Bomb##10572 |goto 39.50,53.74
step
Follow the path |goto 40.89,44.59 < 30 |only if walking
talk Earthmender Torlok##21024
turnin Enraged Spirits of Water##10480 |goto 42.19,45.07
accept Enraged Spirits of Air##10481 |goto 42.19,45.07
step
talk Parshah##22024
|tip He walks along this road around this area.
turnin Find the Deserter##10759 |goto 35.19,40.89
accept Asghar's Totem##10777 |goto 35.19,40.89
step
kill Asghar##22025
|tip He walks around this area.
collect Sketh'lon War Totem##31169 |q 10777/1 |goto 39.68,29.40
step
Follow the road |goto 41.37,30.68 < 30 |only if walking
kill Greater Felfire Diemetradon##21462+
collect Overdeveloped Felfire Gizzard##30867 |q 10677/1 |goto 47.59,21.90
step
Follow the road |goto 46.00,24.12 < 20 |only if walking
talk Parshah##22024
|tip He walks along this road around this area.
turnin Asghar's Totem##10777 |goto 35.19,40.89
accept The Rod of Lianthe##10778 |goto 35.19,40.89
step
Follow the road |goto 28.09,35.70 < 30 |only if walking
Follow the path up |goto 22.32,32.13 < 20 |only if walking
click Fel Reaver Armor Plating##184860
|tip Be careful of the elite enemies that walk around this area.
collect Fel Reaver Armor Plating##30631 |q 10572/2 |goto 22.24,35.54
step
Follow the path |goto 23.52,36.13 < 30 |only if walking
Continue following the path |goto 26.06,38.02 < 30 |only if walking
click Fel Reaver Power Core##184859
|tip Underwater.
|tip Be careful of the elite enemies that walk around this area.
collect Fel Reaver Power Core##30628 |q 10572/1 |goto 26.29,41.24
step
Follow the road |goto 38.22,49.55 < 50 |only if walking
talk Wing Commander Nuainn##21357
turnin Setting Up the Bomb##10572 |goto 39.50,53.73
accept Blast the Infernals!##10564 |goto 39.50,53.73
step
Follow the path |goto 39.11,53.33 < 10 |only if walking
talk Gnomus##21777
turnin The Second Course...##10677 |goto 36.54,55.25
accept The Main Course!##10678 |goto 36.54,55.25
step
Follow the path |goto 39.17,53.26 < 10 |only if walking
Follow the road |goto 37.91,49.36 < 50 |only if walking
Continue following the road |goto 27.16,33.13 < 30 |only if walking
Follow the path up |goto 24.73,33.60 < 20 |only if walking
Follow the path |goto 24.00,39.62 < 30 |only if walking
use the Fel Bomb##30614
|tip The Deathforged Infernals won't attack you.
|tip Be careful of the elite enemies that walk around this area.
Destroy the Legion Hold Infernals |q 10564/1 |goto 22.64,39.91
step
Follow the road |goto 31.28,43.49 < 70 |only if walking
Follow the path |goto 38.16,49.59 < 50 |only if walking
talk Wing Commander Nuainn##21357
turnin Blast the Infernals!##10564 |goto 39.50,53.73
accept The Deathforge##10573 |goto 39.50,53.73
step
Run up the stairs |goto 40.27,41.90 < 7 |only if walking
talk Stormer Ewan Wildwing##21471
|tip On top of the building.
turnin The Deathforge##10573 |goto 40.45,41.29
accept Minions of the Shadow Council##10582 |goto 40.45,41.29
stickystart "Kill_Deathforge_Summoners"
stickystart "Collect_Marks_Of_Sargeras"
step
kill 10 Deathforge Guardian##20878 |q 10582/1 |goto 39.25,36.20
You can find more inside the cave at [40.16,38.18]
step
label "Kill_Deathforge_Summoners"
kill 5 Deathforge Summoner##20872 |q 10582/2 |goto 39.25,36.20
You can find more inside the cave at [40.16,38.18]
step
label "Collect_Marks_Of_Sargeras"
Kill Deathforge enemies around this area
collect 10 Mark of Sargeras##30809 |goto 39.25,36.20 |q 10826 |future
You can find more inside the cave at [40.16,38.18]
|only if rep ('The Aldor') >= Neutral
step
Follow the path up |goto 40.61,36.37 < 15 |only if walking
Run up the stairs |goto 40.27,41.90 < 7 |only if walking
talk Stormer Ewan Wildwing##21471
|tip On top of the building.
turnin Minions of the Shadow Council##10582 |goto 40.45,41.29
accept The Fate of Flanis##10583 |goto 40.45,41.29
accept The Summoning Chamber##10585 |goto 40.45,41.29
step
Jump down and enter the cave |goto 40.16,38.16 < 10 |walk
Kill Deathforge enemies around this area
|tip Only Deathforge Smiths or Deathforge Tinkerers will drop the quest item.
|tip Inside the cave.
collect Elemental Displacer##30672 |q 10585/2 |goto 37.37,41.68
step
Follow the path |goto 36.33,41.36 < 15 |walk
clicknpc Flanis Swiftwing##21727
|tip Inside the cave.
Choose _"Reclaim Flanis's pack."_
collect Flanis Pack##30658 |q 10583/1 |goto 34.62,39.88
step
Cross the bridge |goto 37.77,40.91 < 15 |walk
Jump down here inside the cave |goto 38.92,38.69 < 7 |walk
use the Elemental Displacer##30672
|tip Inside the cave.
kill Infernal Oversoul##21735
End the Infernal Summoning Ritual |q 10585/1 |goto 37.70,38.27
step
Follow the path up |goto 38.63,38.27 < 10 |walk
Leave the cave |goto 40.50,39.41 < 10 |walk
Follow the path up |goto 40.62,36.38 < 15 |only if walking
Run up the stairs |goto 40.27,41.90 < 7 |only if walking
talk Stormer Ewan Wildwing##21471
|tip On top of the building.
turnin The Fate of Flanis##10583 |goto 40.45,41.29
turnin The Summoning Chamber##10585 |goto 40.45,41.29
accept Bring Down the Warbringer!##10586 |goto 40.45,41.29
stickystart "Collect_Razuuns_Orders"
step
Jump down and enter the cave |goto 40.16,38.16 < 10 |walk
Click the Heavy Iron Portcullis and walk through the doorway |goto 37.38,42.67 < 7 |walk
kill Warbringer Razuun##21287 |q 10586/1 |goto 38.90,46.78
|tip Inside the cave.
step
label "Collect_Razuuns_Orders"
kill Warbringer Razuun##21287 |notinsticky
|tip Inside the cave. |notinsticky
collect Razuun's Orders##30689 |q 10586/2 |goto 38.90,46.78
step
Follow the path |goto 39.11,53.32 < 10 |only if walking
talk Wing Commander Nuainn##21357
turnin Bring Down the Warbringer!##10586 |goto 39.50,53.73
accept Gaining Access##10589 |goto 39.50,53.73
stickystart "Collect_Legion_Teleporter_Control"
step
Follow the road |goto 37.86,49.31 < 30 |only if walking
Follow the path up |goto 22.32,32.15 < 20 |only if walking
kill Overseer Ripsaw##21499
|tip He walks around this area, with a buzzsaw as a hand.
|tip Be careful to avoid the elite enemies that walk around this area.
collect Illidari-Bane Shard##30756 |n
use the Illidari-Bane Shard##30756
accept Illidari-Bane Shard##10621 |goto 23.13,35.10
step
label "Collect_Legion_Teleporter_Control"
kill Mo'arg Weaponsmith##19755+
|tip Be careful to avoid the elite enemies that walk around this area. |notinsticky
collect Legion Teleporter Control##30695 |q 10589/1 |goto 23.70,33.11
step
Follow the road |goto 27.40,33.55 < 50 |only if walking
Follow the path |goto 38.19,49.52 < 50 |only if walking
talk Wing Commander Nuainn##21357
turnin Gaining Access##10589 |goto 39.50,53.73
step
Follow the path |goto 39.08,53.34 < 10 |only if walking
talk Ordinn Thunderfist##19370
turnin Illidari-Bane Shard##10621 |goto 36.82,54.89
stickystart "Collect_Sunfury_Signets"
step
Follow the path |goto 39.15,53.28 < 10 |only if walking
Follow the road |goto 42.53,51.74 < 70 |only if walking
Follow the path |goto 49.34,57.88 < 50 |only if walking
Kill Eclipsion enemies around this area
collect Lianthe's Key##31316 |q 10778/1 |goto 45.65,68.76
step
click Lianthe's Strongbox##185128
|tip Inside the tent.
collect Rod of Lianthe##31317 |q 10778/2 |goto 47.54,71.69
step
label "Collect_Sunfury_Signets"
Kill Eclipsion enemies around this area
collect 10 Sunfury Signets##30810 |goto 46.84,68.76 |q 10824 |future
|only if rep('The Scryers')>=Neutral
step
Follow the road |goto 49.51,57.44 < 70 |c |q 10481
step
talk Varen the Reclaimer##21953
accept The Ashtongue Broken##10807 |goto 54.73,58.20
|only if rep('The Scryers')>=Neutral
step
talk Alieshor##21766
fpath Sanctum of the Stars |goto 56.32,57.80
|only if rep('The Scryers')>=Neutral
step
talk Battlemage Vyara##22211
accept Sunfury Signets##10824 |goto 56.28,58.80
|only if rep('The Scryers')>=Neutral
step
talk Battlemage Vyara##22211
turnin Sunfury Signets##10824 |goto 56.28,58.80
|only if rep('The Scryers')>=Neutral
step
Enter the building |goto 56.44,59.13 < 7 |walk
talk Arcanist Thelis##21955
|tip Inside the building.
accept Tablets of Baa'ri##10683 |goto 56.25,59.60
|only if rep('The Scryers')>=Neutral
step
talk Roldemar##21744
|tip Inside the building.
home Sanctum of the Stars |goto 56.32,59.84
|only if rep('The Scryers')>=Neutral
stickystart "Capture_Air_Souls"
step
Follow the path down |goto 62.44,62.58 < 20 |only if walking
talk Ancient Shadowmoon Spirit##21797
turnin Teron Gorefiend - Lore and Legend##10644 |goto 58.23,70.79
accept Divination: Gorefiend's Cloak##10635 |goto 58.23,70.79
step
label "Capture_Air_Souls"
use the Totem of Spirits##30094
kill Enraged Air Spirit##21060+
|tip Kill them near the totems you plant.
Capture #10# Air Souls |q 10481/1 |goto 59.68,70.17
You can find more around [62.51,61.91]
step
talk Mordenai##22113
|tip He walks around this area.
accept Kindness##10804 |goto 60.51,58.80
step
Kill Rocknail enemies around this area
collect Rocknail Flayer Giblets##31373+ |n
use the Rocknail Flayer Giblets##31373+
|tip You need 5 to create a Rocknail Flayer Carcass.
collect Rocknail Flayer Carcass##31372+ |n
use the Rocknail Flayer Carcass##31372+
|tip Use them on the ground near Mature Netherwing Drakes.
|tip They look like blue dragons flying in the sky around this area.
|tip They will fly down to eat.
Feed #8# Mature Netherwing Drakes |q 10804/1 |goto 61.58,56.49
step
talk Mordenai##22113
|tip He walks around this area.
turnin Kindness##10804 |goto 60.51,58.80
step
kill Cleric of Karabor##21815+
|tip Make sure to equip the Spectrecles.
|tip You can only see them when you have the Spectrecles equipped.
collect Gorefiend's Cloak##30799 |q 10635/1 |goto 63.81,49.17
You can get more Spectrecles from Zorus the Judicator around [36.62,54.87]
step
Equip Your Normal Head Armor
Click Here After Equipping Your Normal Head Armor |confirm |q 10635
step
Follow the path up |goto 62.09,43.01 < 20 |only if walking
Follow the path |goto 59.47,46.62 < 30 |only if walking
kill Felspine the Greater##21897
collect Felspine's Hide##30851 |q 10678/1 |goto 56.10,44.36
step
Follow the path |goto 59.55,46.73 < 30 |only if walking
Follow the road |goto 63.27,48.14 < 50 |only if walking
Follow the path down |goto 62.44,62.58 < 20 |only if walking
talk Ancient Shadowmoon Spirit##21797
turnin Divination: Gorefiend's Cloak##10635 |goto 58.23,70.79
step
Follow the path up |goto 61.35,67.12 < 40 |only if walking
Follow the path |goto 62.36,62.36 < 30 |only if walking
Follow the road |goto 63.17,51.55 < 50 |only if walking
Run up the stairs |goto 61.44,30.85 < 20 |only if walking
talk Vindicator Aluumen##21822
accept The Ashtongue Tribe##10619 |goto 61.18,29.15
|only if rep ('The Aldor') >= Neutral
step
Enter the building |goto 61.20,28.88 < 7 |walk
talk Caretaker Aluuro##21746
|tip Inside the building.
home Altar of Sha'tar |goto 61.12,28.24 |q 10568 |future
|only if rep ('The Aldor') >= Neutral
step
Enter the building |goto 62.31,28.95 < 10 |walk
talk Anchorite Ceyla##21402
|tip Inside the building.
accept Tablets of Baa'ri##10568 |goto 62.58,28.38
|only if rep ('The Aldor') >= Neutral
step
talk Harbinger Saronen##22214
|tip He walks around this area.
accept Marks of Sargeras##10826 |goto 62.27,29.78
|only if rep ('The Aldor') >= Neutral
step
talk Harbinger Saronen##22214
|tip He walks around this area.
turnin Marks of Sargeras##10826 |goto 62.27,29.78
|only if rep ('The Aldor') >= Neutral
step
talk Maddix##19581
fpath Altar of Sha'tar |goto 63.33,30.40
|only if rep ('The Aldor') >= Neutral
stickystart "Kill_Ashtongue_Handlers_Aldor"
stickystart "Kill_Ashtongue_Warriors_Aldor"
stickystart "Kill_Ashtongue_Shamans_Aldor"
step
Follow the path up |goto 61.36,38.02 < 20 |only if walking
kill Ashtongue Worker##21455+
click Baar'ri Tablet Fragment##184870+
|tip They look like green glowing broken stone pieces on the ground around this area.
collect 12 Baa'ri Tablet Fragment##30596 |q 10568/1 |goto 57.49,35.62
|only if rep('The Aldor') >= Neutral
step
label "Kill_Ashtongue_Handlers_Aldor"
kill 3 Ashtongue Handler##21803 |q 10619/1 |goto 57.49,35.62
|only if rep('The Aldor') >= Neutral
step
label "Kill_Ashtongue_Warriors_Aldor"
kill 4 Ashtongue Warrior##21454 |q 10619/2 |goto 57.49,35.62
|only if rep('The Aldor') >= Neutral
step
label "Kill_Ashtongue_Shamans_Aldor"
kill 6 Ashtongue Shaman##21453 |q 10619/3 |goto 57.49,35.62
|only if rep('The Aldor') >= Neutral
step
talk Vindicator Aluumen##21822
turnin The Ashtongue Tribe##10619 |goto 61.17,29.15
|only if rep('The Aldor') >= Neutral
step
Enter the building |goto 62.31,28.96 < 10 |walk
talk Anchorite Ceyla##21402
|tip Inside the building.
turnin Tablets of Baa'ri##10568 |goto 62.58,28.38
accept Oronu the Elder##10571 |goto 62.58,28.38
|only if rep('The Aldor') >= Neutral
step
Follow the path up |goto 61.36,38.02 < 20 |only if walking
Follow the path |goto 58.65,36.55 < 30 |only if walking
Enter the building |goto 57.01,34.02 < 15 |only if walking
kill Oronu the Elder##21663
collect Orders From Akama##30649 |q 10571/1 |goto 57.19,32.87
|only if rep ('The Aldor') >= Neutral
step
Run up the stairs |goto 61.44,30.85 < 20 |only if walking
Enter the building |goto 62.31,28.96 < 10 |walk
talk Anchorite Ceyla##21402
|tip Inside the building.
turnin Oronu the Elder##10571 |goto 62.58,28.38
|only if rep('The Aldor') >= Neutral
stickystart "Kill_Ashtongue_Handlers_Scryers"
stickystart "Kill_Ashtongue_Warriors_Scryers"
stickystart "Kill_Ashtongue_Shamans_Scryers"
step
Follow the path up |goto 61.35,67.12 < 40 |only if walking
Follow the path |goto 62.36,62.36 < 30 |only if walking
Follow the road |goto 63.17,51.55 < 50 |only if walking
Follow the path up |goto 61.36,38.02 < 20 |only if walking
kill Ashtongue Worker##21455+
click Baar'ri Tablet Fragment##184870+
|tip They look like green glowing broken stone pieces on the ground around this area.
collect 12 Baa'ri Tablet Fragment##30596 |q 10683/1 |goto 57.49,35.62
|only if rep('The Scryers') >= Neutral
step
label "Kill_Ashtongue_Handlers_Scryers"
kill 3 Ashtongue Handler##21803 |q 10807/1 |goto 57.49,35.62
|only if rep('The Scryers') >= Neutral
step
label "Kill_Ashtongue_Warriors_Scryers"
kill 4 Ashtongue Warrior##21454 |q 10807/2 |goto 57.49,35.62
|only if rep('The Scryers') >= Neutral
step
label "Kill_Ashtongue_Shamans_Scryers"
kill 6 Ashtongue Shaman##21453 |q 10807/3 |goto 57.49,35.62
|only if rep('The Scryers') >= Neutral
step
talk Arcanist Thelis##21955
|tip Inside the building.
turnin Tablets of Baa'ri##10683 |goto 56.25,59.60
accept Oronu the Elder##10684 |goto 56.25,59.60
|only if rep ('The Scryers') >= Neutral
step
Follow the path up |goto 55.85,56.82 < 20 |only if walking
talk Varen the Reclaimer##21953
turnin The Ashtongue Broken##10807 |goto 54.73,58.20
|only if rep ('The Scryers') >= Neutral
step
Follow the road |goto 63.17,51.55 < 50 |only if walking
Follow the path up |goto 61.36,38.02 < 20 |only if walking
Follow the path |goto 58.65,36.55 < 30 |only if walking
Enter the building |goto 57.01,34.02 < 15 |only if walking
kill Oronu the Elder##21663
collect Orders From Akama##30649 |q 10684/1 |goto 57.19,32.87
|only if rep ('The Scryers') >= Neutral
step
Follow the road |goto 63.10,38.71 < 50 |only if walking
Continue following the road |goto 62.76,52.72 < 50 |only if walking
Enter the building |goto 56.43,59.16 < 10 |walk
talk Arcanist Thelis##21955
|tip Inside the building.
turnin Oronu the Elder##10684 |goto 56.25,59.59
|only if rep ('The Scryers') >= Neutral
step
talk Gnomus##21777
turnin The Main Course!##10678 |goto 36.54,55.24
step
Follow the path |goto 39.16,53.26 < 10 |only if walking
Follow the path |goto 40.95,44.68 < 30 |only if walking
talk Earthmender Torlok##21024
turnin Enraged Spirits of Air##10481 |goto 42.19,45.06
step
talk Parshah##22024
|tip He walks along this road around this area.
turnin The Rod of Lianthe##10778 |goto 35.19,40.89
accept Sketh'lon Feathers##10780 |goto 35.19,40.89
step
click Sketh'lon Feather##185130+
|tip They look like brown feathers on the ground around this area.
collect 8 Sketh'lon Feather##31324 |q 10780/1 |goto 43.96,58.21
step
talk Parshah##22024
|tip He walks along this road around this area.
turnin Sketh'lon Feathers##10780 |goto 35.19,40.89
accept Imbuing the Headpiece##10782 |goto 35.19,40.89
step
use the Unfinished Headpiece##31360
collect Energized Headpiece##31365 |q 10782/1 |goto 43.03,44.87
step
talk Parshah##22024
|tip He walks along this road around this area.
turnin Imbuing the Headpiece##10782 |goto 35.19,40.89
accept Thwart the Dark Conclave##10808 |goto 35.19,40.89
step
kill Dark Conclave Ritualist##22138+
|tip There are 4 of them channeling a pink spell around this area.
|tip Kill them all before using the quest item.
use the Staff of Parshah##31386
|tip Use it at this location.
End the Dark Conclave Summoning Ritual |q 10808/1 |goto 40.72,60.15
step
talk Parshah##22024
|tip He walks along this road around this area.
turnin Thwart the Dark Conclave##10808 |goto 35.19,40.89
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Extra Zones\\Western Plaguelands",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Western Plaguelands",
},[[
step
Enter the building |goto Ironforge 20.67,53.24 < 7 |walk
talk Innkeeper Firebrew##5111
|tip Inside the building.
home Ironforge |goto Ironforge 18.15,51.46
step
Enter the building |goto 34.07,62.42 < 7 |walk
talk Bailey Stonemantle##2461
|tip Inside the building.
|tip Collect these items from the bank.
collect 6 Filled Cursed Ooze Jar##11947 |goto 35.59,60.52 |q 4512
collect 6 Filled Tainted Ooze Jar##11949 |goto 35.59,60.52 |q 4512
collect Everlook Report##15788 |goto 35.59,60.52 |q 6028
step
Run up the stairs |goto 31.88,8.36 < 7 |only if walking
Enter the building |goto 32.00,5.50 < 5 |walk
talk Tymor##8507
|tip Inside the building.
turnin Return to Tymor##3461 |goto 30.97,4.82
step
Leave the building |goto 32.02,5.50 < 5 |walk
talk Laris Geardawdle##9616
|tip Inside the building.
turnin A Little Slime Goes a Long Way##4512 |goto 75.77,23.38
step
Watch the dialogue
talk Laris Geardawdle##9616
|tip Inside the building.
accept A Little Slime Goes a Long Way##4513 |goto 75.77,23.38
step
Enter the building |goto 34.07,62.42 < 7 |walk
talk Bailey Stonemantle##2461
|tip Inside the building.
|tip Put these items in the bank.
bank Bag of Empty Ooze Containers##11955 |goto 35.59,60.52 |q 4513
step
talk Commander Ashlam Valorfist##10838
turnin A Call to Arms: The Plaguelands!##5091 |goto Western Plaguelands 42.70,84.03
accept Clear the Way##5092 |goto Western Plaguelands 42.70,84.03
step
talk Argent Officer Pureheart##10840
turnin The Everlook Report##6028 |goto 42.97,83.55
accept Argent Dawn Commission##5401 |goto 42.97,83.55
step
Equip the Argent Dawn Commission
|tip Wearing it will allow Minion's Scourgestones to drop from undead enemies in Western and Eastern Plaguelands.
Gain the Argent Dawn Commission Buff |havebuff 133440 |q 5408 |future
stickystart "Kill_Slavering_Ghouls"
stickystart "Collect_Minions_Scourgestones"
step
kill 10 Skeletal Flayer##1783 |q 5092/1 |goto 48.51,81.13
You can find more: |notinsticky
Around [50.64,77.01]
step
label "Kill_Slavering_Ghouls"
kill 10 Slavering Ghoul##1791 |q 5092/2 |goto 48.51,81.13
You can find more: |notinsticky
Around [50.64,77.01]
step
label "Collect_Minions_Scourgestones"
Kill enemies in around this area
|tip Only undead enemies will drop the quest item.
collect 20 Minion's Scourgestone##12840 |goto 48.51,81.13 |q 9141 |future
|tip Save these for later, when you go to Eastern Plaguelands.
You can find more: |notinsticky
Around [50.64,77.01]
step
Follow the path |goto 46.64,81.31 < 30 |only if walking
talk Commander Ashlam Valorfist##10838
turnin Clear the Way##5092 |goto 42.70,84.03
step
map Ironforge
path	follow strict;	loop;	ants curved;	dist 20
path	32.24,22.90		34.74,33.94		40.38,37.68		48.22,31.09
path	55.91,35.09		57.34,48.56		48.22,57.86		46.33,47.76
path	39.94,44.41		38.43,38.33		34.49,32.86		33.42,21.18
path	39.45,12.40		44.31,10.79		53.02,10.57		58.98,13.76
path	70.47,33.88		71.16,44.77		70.12,55.01		67.38,65.14
path	57.32,78.92		50.14,81.06		39.59,79.17		34.35,74.44
path	24.69,55.32		24.38,38.36		27.70,25.23
talk Courier Hammerfall##10877
|tip He looks like a dwarf that walks in a counter-clockwise path around Ironforge.
|tip This step's path will take you clockwise to help you find him faster.
accept The New Frontier##1019
step
Follow the path |goto 44.55,49.53 < 7 |walk
talk Royal Historian Archesonus##8879
turnin The Smoldering Ruins of Thaurissan##3701 |goto 38.37,55.30
step
Follow the path |goto 44.68,49.42 < 7 |walk
talk Commander Ashlam Valorfist##10838
accept The Scourge Cauldrons##5215 |goto Western Plaguelands 42.70,84.04
step
talk High Priestess MacDonnell##11053
turnin The Scourge Cauldrons##5215 |goto 42.97,84.50
accept Target: Felstone Field##5216 |goto 42.97,84.50
stickystart "Collect_Bone_Fragments"
step
Follow the road |goto 42.62,80.61 < 30 |only if walking
Follow the path |goto 36.84,73.56 < 30 |only if walking
Follow the path up |goto 35.63,69.07 < 10 |only if walking
kill Cauldron Lord Bilemaw##11075
collect Felstone Field Cauldron Key##13194 |q 5216/1 |goto 37.03,57.11
step
click Scourge Cauldron
turnin Target: Felstone Field##5216 |goto 37.19,56.87
accept Return to Chillwind Camp##5217 |goto 37.19,56.87
step
Enter the building |goto 38.04,54.61 < 7 |walk
talk Janice Felstone##10778
|tip Upstairs inside the building.
accept Better Late Than Never##5021 |goto 38.40,54.05
step
Leave the building |goto 38.03,54.63 < 7 |walk
Enter the building |goto 38.52,55.33 < 7 |walk
click Janice's Parcel
|tip Inside the building.
turnin Better Late Than Never##5021 |goto 38.73,55.24
accept Better Late Than Never##5022 |goto 38.73,55.24
step
label "Collect_Bone_Fragments"
Leave the building |goto 38.54,55.32 < 7 |walk
Kill enemies in around this area
|tip Only skeleton enemies will drop the quest item.
collect 30 Bone Fragments##22526 |goto 36.76,56.42 |q 9126 |future
step
Enter the building |goto Ironforge 26.12,72.19 < 10 |walk
talk Auctioneer Redmuse##8720
|tip Inside the building.
|tip Buy these items from the Auction House.
|tip These are needed for a quest in Eastern Plaguelands.
|tip If you can't get them, it's okay, but you will have to skip the quest.
collect 2 Thorium Bar##12359 |goto Ironforge 24.25,74.55 |q 6026 |future
collect Golden Rod##11128 |goto Ironforge 24.25,74.55 |q 6026 |future
collect 8 Hi-Explosive Bomb##10562 |goto Ironforge 24.25,74.55 |q 6026 |future
collect 8 Unstable Trigger##10560 |goto Ironforge 24.25,74.55 |q 6026 |future
step
Enter the building |goto Stormwind City 47.79,31.24 < 7 |walk
talk Royal Factor Bathrilor##10782
|tip Upstairs inside the building.
turnin Better Late Than Never##5022 |goto Stormwind City 48.47,30.55
accept Good Natured Emma##5048 |goto Stormwind City 48.47,30.55
step
Leave the building |goto 47.80,31.23 < 7 |c |q 5048
step
map Stormwind City
path	follow strict;	loop;	ants curved;	dist 20
path	52.46,41.98		48.29,49.03		50.15,51.53		55.04,47.69
path	57.64,47.70		59.73,51.45		57.66,55.16		60.62,60.33
path	57.16,54.48		57.05,54.37		55.65,53.48		52.74,55.15
path	50.88,51.60		49.66,51.59		48.32,48.32
talk Ol' Emma##3520
|tip She looks like an old human woman that walks in a counter-clockwise path around Stormwind City.
|tip This step's path will take you clockwise to help you find her faster.
|tip She sometimes stands upstairs inside the house that this path leads you to the doorway of.
|tip Keep an eye on your minimap as you walk around, she will show up as a yellow dot.
turnin Good Natured Emma##5048
accept Good Luck Charm##5050
step
Enter the building |goto 69.11,28.64 < 7 |walk
talk Highlord Bolvar Fordragon##1748
|tip Inside the building.
accept The First and the Last##6182 |goto 78.23,17.98
step
Leave the building |goto 69.06,28.79 < 7 |walk
Run up the stairs |goto 73.00,51.63 < 7 |only if walking
Follow the path |goto 74.73,53.66 < 7 |only if walking
Enter the building |goto 77.12,58.01 < 7 |walk
talk Master Mathias Shaw##332
|tip Upstairs inside the building.
turnin The First and the Last##6182 |goto 75.79,59.85
accept Honor the Dead##6183 |goto 75.79,59.85
step
talk Master Mathias Shaw##332
|tip Upstairs inside the building.
turnin Honor the Dead##6183 |goto 75.79,59.85
accept Flint Shadowmore##6184 |goto 75.79,59.85
step
Enter the building |goto 55.30,68.13 < 7 |walk
talk Olivia Burnside##2455
|tip Inside the building.
|tip Collect these items from the bank.
collect First Relic Fragment##12896 |goto 57.54,72.44 |q 5245
collect Second Relic Fragment##12897 |goto 57.54,72.44 |q 5245
collect Third Relic Fragment##12898 |goto 57.54,72.44 |q 5245
collect Fourth Relic Fragment##12899 |goto 57.54,72.44 |q 5245
collect Jaron's Pick##12891 |goto 57.54,72.44 |q 5245
collect Vial of Blessed Water##5646 |goto 57.54,72.44 |q 4441
collect Studies in Spirit Speaking##15790 |goto 57.54,72.44 |q 6030
step
talk High Priestess MacDonnell##11053
turnin Return to Chillwind Camp##5217 |goto Western Plaguelands 42.97,84.50
accept Target: Dalson's Tears##5219 |goto Western Plaguelands 42.97,84.50
step
talk Flint Shadowmore##12425
turnin Flint Shadowmore##6184 |goto 43.61,84.51
accept The Eastern Plagues##6185 |goto 43.61,84.51
step
Follow the road |goto 42.62,80.61 < 30 |only if walking
Follow the path |goto 36.84,73.56 < 30 |only if walking
Follow the path up |goto 35.63,69.07 < 7 |only if walking
Enter the building |goto 38.04,54.61 < 7 |walk
talk Janice Felstone##10778
|tip Upstairs inside the building.
turnin Good Luck Charm##5050 |goto 38.40,54.05
accept Two Halves Become One##5051 |goto 38.40,54.05
step
Leave the building |goto 38.02,54.65 < 7 |walk
kill Jabbering Ghoul##10801
|tip It looks like a green ghoul holding a pitchfork.
|tip He can possibly spawn in multiple locations, and may walk around this area.
collect Good Luck Other-Half-Charm##12722 |goto 36.84,58.23 |q 5051
step
use the Good Luck Other-Half-Charm##12722
collect Good Luck Charm##12723 |q 5051/1
step
Enter the building |goto 38.04,54.61 < 7 |walk
talk Janice Felstone##10778
|tip Upstairs inside the building.
turnin Two Halves Become One##5051 |goto 38.40,54.05
step
Leave the building |goto 38.02,54.65 < 7 |walk
kill Cauldron Lord Malvinious##11077
collect Dalson's Tears Cauldron Key##13195 |q 5219/1 |goto 46.18,52.38
step
click Scourge Cauldron
turnin Target: Dalson's Tears##5219 |goto 46.18,52.02
accept Return to Chillwind Camp##5220 |goto 46.18,52.02
step
Enter the building |goto 47.52,50.94 < 7 |walk
click Mrs. Dalson's Diary
|tip Inside the building.
accept Mrs. Dalson's Diary##5058 |goto 47.79,50.67
step
Leave the building |goto 47.52,50.94 < 7 |walk
kill Wandering Skeleton##10816
|tip It looks like a white skeleton that spawns here and walks around this area around the buildings nearby.
|tip You can wait here until it walks by here, or respawns, or you can search around the building.
collect Dalson Outhouse Key##12738 |goto 47.85,49.32 |q 5060 |future
step
click Outhouse
accept Locked Away##5059 |goto 48.11,49.71 |q 5060 |future
|tip Farmer Dalson will appear and attack you.
step
kill Farmer Dalson##10836
collect Dalson Cabinet Key##12739 |goto 48.11,49.71 |q 5060 |future
step
Enter the building |goto 47.14,50.19 < 7 |walk
click Locked Cabinet
|tip Upstairs inside the building.
accept Locked Away##5060 |goto 47.37,49.65
step
Leave the building |goto 47.15,50.22 < 7 |walk
Follow the road |goto 47.07,57.08 < 30 |only if walking
Follow the path |goto 40.31,59.83 < 30 |only if walking
Follow the path |goto 36.57,68.66 < 30 |only if walking
Follow the path up |goto 36.37,73.34 < 7 |only if walking
Follow the road |goto 36.38,78.08 < 30 |only if walking
talk High Priestess MacDonnell##11053
turnin Return to Chillwind Camp##5220 |goto 42.97,84.50
accept Target: Writhing Haunt##5222 |goto 42.97,84.50
step
Follow the path |goto 46.61,81.32 < 30 |only if walking
Continue following the path |goto 50.63,76.95 < 30 |only if walking
Follow the path up |goto 51.46,71.39 < 7 |only if walking
kill Cauldron Lord Razarch##11076
collect Writhing Haunt Cauldron Key##13197 |q 5222/1 |goto 53.02,66.06
step
click Scourge Cauldron
turnin Target: Writhing Haunt##5222 |goto 53.02,65.72
accept Return to Chillwind Camp##5223 |goto 53.02,65.72
step
Enter the building |goto 53.60,64.79 < 7 |walk
talk Mulgris Deepriver##10739
|tip Inside the building.
accept The Wildlife Suffers Too##4984 |goto 53.72,64.67
step
Follow the road |goto 49.50,56.70 < 30 |only if walking
kill 8 Diseased Wolf##1817 |q 4984/1 |goto 42.74,54.83
|tip They share spawn points with Carrion Lurker spiders.
|tip Kill those as well, if you can't find any wolves.
You can find more around: |notinsticky
[45.96,48.00]
[46.92,39.81]
step
Kill enemies around this area
Reach Level 57 |ding 57 |goto 42.74,54.83
You can find more around: |notinsticky
[45.96,48.00]
[46.92,39.81]
step
Follow the path |goto 49.52,56.90 < 30 |only if walking
Enter the building |goto 53.60,64.79 < 7 |walk
talk Mulgris Deepriver##10739
|tip Inside the building.
turnin The Wildlife Suffers Too##4984 |goto 53.72,64.67
accept The Wildlife Suffers Too##4985 |goto 53.72,64.67
step
kill 8 Diseased Grizzly##1816 |q 4985/1 |goto 56.81,63.63
|tip They share spawn points with Plague Lurker spiders.
|tip Kill those as well, if you can't find any bears.
You can find more around: |notinsticky
[58.69,58.24]
[57.20,52.78]
[61.55,52.23]
step
Enter the building |goto 53.60,64.79 < 7 |walk
talk Mulgris Deepriver##10739
|tip Inside the building.
turnin The Wildlife Suffers Too##4985 |goto 53.72,64.67
accept Glyphed Oaken Branch##4986 |goto 53.72,64.67
step
Follow the path up |goto 52.37,74.71 < 7 |only if walking
Follow the path |goto 46.62,81.33 < 30 |only if walking
talk High Priestess MacDonnell##11053
turnin Return to Chillwind Camp##5223 |goto 42.97,84.50
accept Target: Gahrron's Withering##5225 |goto 42.97,84.50
step
Follow the path |goto 46.61,81.32 < 30 |only if walking
Continue following the path |goto 52.14,75.49 < 30 |only if walking
Follow the path |goto 54.99,71.56 < 30 |only if walking
Continue following the path |goto 58.80,62.31 < 30 |only if walking
kill Cauldron Lord Soulwrath##11078
|tip He walks around this area.
collect Gahrron's Withering Cauldron Key##13196 |q 5225/1 |goto 62.78,58.75
step
click Scourge Cauldron
turnin Target: Gahrron's Withering##5225 |goto 62.56,58.57
accept Return to Chillwind Point##5226 |goto 62.56,58.57
step
Follow the path |goto Eastern Plaguelands 7.22,52.75 < 30 |only if walking
Continue following the path |goto Eastern Plaguelands 13.32,73.77 < 30 |only if walking
Cross the water |goto Western Plaguelands 70.78,59.57 < 40 |only if walking
Follow the path |goto Western Plaguelands 65.27,72.80 < 20 |only if walking
Enter the building |goto Western Plaguelands 65.61,75.38 < 7 |walk
talk Artist Renfray##11936
|tip Inside the building.
turnin Of Love and Family##5846 |goto Western Plaguelands 65.77,75.37
step
Follow the path |goto 55.17,77.76 < 30 |only if walking
Enter the building |goto 49.28,78.55 < 7 |walk
talk Marlene Redpath##10927
|tip She walks around this area upstairs inside the building.
turnin Auntie Marlene##5152 |goto 49.17,78.58
accept A Strange Historian##5153 |goto 49.17,78.58
step
Leave the building |goto 49.28,78.55 < 7 |walk
click Joseph Redpath's Monument
collect Joseph's Wedding Ring##12894 |q 5153/1 |goto 49.68,76.77
step
Cross the bridge |goto 49.22,73.14 < 20 |only if walking
use the Beacon Torch##12815
|tip Use it in front of the tower entrance.
|tip Be careful, there is an elite enemy inside the tower.
|tip Avoid the doorway, making sure the elite inside can't see you.
|tip You can get closer to the tower safely, if the enemy inside can't see you.
Mark Tower Four |q 5097/4 |goto 46.70,71.10
step
Avoid the big group of enemies in the center of town |goto 44.17,71.56 < 30 |only if walking
Follow the road |goto 41.32,70.69 < 20 |only if walking
use the Beacon Torch##12815
|tip Use it in front of the tower entrance.
|tip Be careful, there is an elite enemy inside the tower.
|tip Avoid the doorway, making sure the elite inside can't see you.
|tip You can get closer to the tower safely, if the enemy inside can't see you.
Mark Tower One |q 5097/1 |goto 40.13,71.52
step
Enter the building |goto 39.57,68.38 < 7 |walk
talk Chromie##10667
|tip Upstairs inside the building.
turnin A Strange Historian##5153 |goto 39.45,66.76
accept The Annals of Darrowshire##5154 |goto 39.45,66.76
accept A Matter of Time##4971 |goto 39.45,66.76
step
Hug the outside of this building to get to the entrance |goto 43.81,70.34 < 5 |only if walking
Enter the building |goto 44.09,69.22 < 7 |walk
click Musty Tome+
|tip They look like blue books on the floor inside this building.
|tip Only one of them is the real book, and it's random.
|tip If you click fake books, enemies will spawn, so try to only click the real book.
|tip To identify the real book, zoom in your view, mouse over the books to highlight them, and look at the book pages.
|tip The fake books will have very blurry pages, with the top half of pages shaded darker than the bottom half of pages.
|tip The real book pages look sharper, with more clear horizontal lines, and the top half and bottom half of the pages are not shaded differently.
|tip If the correct book isn't there, click other books and kill enemies until the correct book appears.
collect Annals of Darrowshire##12900 |q 5154/1 |goto 43.52,69.55
step
Leave the building and try to avoid the enemies nearby |goto 44.09,69.22 < 7 |walk
use the Beacon Torch##12815
|tip Use it in front of the tower entrance.
|tip Be careful, there is an elite enemy inside the tower.
|tip Avoid the doorway, making sure the elite inside can't see you.
|tip You can get closer to the tower safely, if the enemy inside can't see you.
Mark Tower Two |q 5097/2 |goto 42.44,66.27
step
use the Beacon Torch##12815
|tip Use it in front of the tower entrance.
|tip Be careful, there is an elite enemy inside the tower.
|tip Avoid the doorway, making sure the elite inside can't see you.
|tip You can get closer to the tower safely, if the enemy inside can't see you.
Mark Tower Three |q 5097/3 |goto 44.22,63.37
step
use the Temporal Displacer##12627
|tip Use it near the cylinder structures with blue light shining out of them around this area.
kill 15 Temporal Parasite##10717 |q 4971/1 |goto 45.05,62.61
You can find more around: |notinsticky
[46.76,62.38]
[48.07,62.86]
[47.79,65.63]
[49.90,66.60]
[49.23,68.60]
step
Avoid the big group of enemies in the center of town |goto 43.29,66.54 < 30 |only if walking
Enter the building |goto 39.57,68.38 < 7 |walk
talk Chromie##10667
|tip Upstairs inside the building.
turnin The Annals of Darrowshire##5154 |goto 39.45,66.76
turnin A Matter of Time##4971 |goto 39.45,66.76
accept Counting Out Time##4972 |goto 39.45,66.76
accept Brother Carlin##5210 |goto 39.45,66.76
step
Leave the building |goto 39.58,68.38 < 7 |walk
click Small Lockbox
|tip Inside the crumbled building.
collect Andorhal Watch##12638 |q 4972/1 |goto 38.29,69.63 |count 1
step
click Small Lockbox
|tip Inside the crumbled building.
collect Andorhal Watch##12638 |q 4972/1 |goto 38.88,68.06 |count 2
step
click Small Lockbox
|tip Inside the crumbled building.
collect Andorhal Watch##12638 |q 4972/1 |goto 40.27,68.17 |count 3
step
click Small Lockbox
|tip Inside the crumbled building.
collect Andorhal Watch##12638 |q 4972/1 |goto 40.85,67.14 |count 4
step
click Small Lockbox
|tip Inside the crumbled building.
collect Andorhal Watch##12638 |q 4972/1 |goto 40.32,66.48 |count 5
step
Enter the building |goto 39.57,68.38 < 7 |walk
talk Chromie##10667
|tip Upstairs inside the building.
turnin Counting Out Time##4972 |goto 39.45,66.76
step
Leave the building |goto 39.58,68.38 < 7 |walk
Follow the path |goto 46.16,47.50 < 30 |only if walking
click Northridge Lumber Mill Crate
|tip Inside the building.
Choose _"Place Termite Barrel on the crate."_
click Termite Barrel
|tip It appears on top of the crate.
turnin A Plague Upon Thee##5904 |goto 48.35,32.00
accept A Plague Upon Thee##6389 |goto 48.35,32.00
step
Follow the path down |goto 50.64,29.34 < 30 |only if walking
talk Kirsta Deepshadow##11610
accept Unfinished Business##6004 |goto 51.92,28.06
stickystart "Kill_Scarlet_Hunters"
stickystart "Kill_Scarlet_Mages"
stickystart "Kill_Scarlet_Knights"
step
Follow the path |goto 49.96,30.61 < 30 |only if walking
kill 2 Scarlet Medic##10605 |q 6004/1 |goto 51.67,44.39
|tip They share spawn points with other Scarlet enemies, so kill them too.
step
label "Kill_Scarlet_Hunters"
kill 2 Scarlet Hunter##1831 |q 6004/2 |goto 51.67,44.39
|tip They share spawn points with other Scarlet enemies, so kill them too. |notinsticky
step
label "Kill_Scarlet_Mages"
kill 2 Scarlet Mage##1826 |q 6004/3 |goto 50.47,41.12
|tip They share spawn points with other Scarlet enemies, so kill them too. |notinsticky
step
label "Kill_Scarlet_Knights"
kill 2 Scarlet Knight##1833 |q 6004/4 |goto 50.47,41.12
|tip They share spawn points with other Scarlet enemies, so kill them too. |notinsticky
step
Follow the path down |goto 49.83,30.51 < 30 |only if walking
talk Kirsta Deepshadow##11610
turnin Unfinished Business##6004 |goto 51.92,28.06
accept Unfinished Business##6023 |goto 51.92,28.06
step
Follow the path |goto 49.96,30.61 < 30 |only if walking
Follow the path |goto 51.58,39.81 < 30 |only if walking
Follow the path up |goto 55.23,34.61 < 20 |only if walking
kill Huntsman Radley##11613 |q 6023/1 |goto 57.83,36.09
step
kill Cavalier Durgen##11611 |q 6023/2 |goto 54.37,23.77
|tip He walks back and forth, between this spot and the top of the tower.
|tip Wait outside the tower near this spot, he will eventually walk outside.
|tip Pull him away into the road nearby, so you can fight him alone.
step
Jump down here |goto 53.32,26.64 < 15 |only if walking
talk Kirsta Deepshadow##11610
turnin Unfinished Business##6023 |goto 51.92,28.06
step
Follow the path |goto 49.93,30.78 < 30 |only if walking
Continue following the path |goto 45.83,47.67 < 40 |only if walking
Continue following the path |goto 36.49,68.56 < 30 |only if walking
Follow the path up |goto 35.14,72.88 < 7 |only if walking
Follow the road |goto 36.90,78.75 < 30 |only if walking
talk Nathaniel Dumah##11616
turnin A Plague Upon Thee##6389 |goto 43.42,84.83
step
talk Commander Ashlam Valorfist##10838
turnin All Along the Watchtowers##5097 |goto 42.70,84.03
accept Scholomance##5533 |goto 42.70,84.03
step
_Destroy This Item:_
|tip It is no longer needed.
trash Beacon Torch##12815
step
talk Alchemist Arbington##11056
turnin Scholomance##5533 |goto 42.67,83.77
accept Skeletal Fragments##5537 |goto 42.67,83.77
step
Follow the path |goto 46.57,81.32 < 30 |only if walking
Kill Skeletal enemies around this area
|tip Only enemies that look like skeletons will drop the quest item.
collect 15 Skeletal Fragments##14619 |q 5537/1 |goto 50.35,78.60
You can find more inside and outside the crypt at [54.33,79.90]
step
Follow the path |goto 46.58,81.33 < 30 |only if walking
talk Alchemist Arbington##11056
turnin Skeletal Fragments##5537 |goto 42.67,83.77
step
Enter the building |goto Ironforge 34.07,62.41 < 7 |walk
talk Bailey Stonemantle##2461
|tip Inside the building.
|tip Put these items in the bank.
bank Extended Annals of Darrowshire##13202 |goto Ironforge 35.57,60.53 |q 5210
step
talk Cenarion Emissary Jademoon##15187
accept Taking Back Silithus##8275 |goto 58.54,47.31
step
Enter the building |goto Stormwind City 69.08,28.69 < 7 |walk
talk Highlord Bolvar Fordragon##1748
|tip Inside the building.
turnin The Blightcaller Cometh##6186 |goto Stormwind City 78.22,17.98
step
Leave the building |goto 69.09,28.70 < 7 |walk
talk Erelas Ambersky##7916
|tip Inside the building.
turnin Guardians of the Altar##4901 |goto Teldrassil 55.50,92.05
accept Wildkin of Elune##4902 |goto Teldrassil 55.50,92.05
step
Enter the building |goto Darnassus 35.52,10.70 < 7 |walk
talk Mathrengyl Bearwalker##4217
|tip Upstairs inside the building.
turnin Glyphed Oaken Branch##4986 |goto Darnassus 35.38,8.40
step
talk Arch Druid Fandral Staghelm##3516
|tip He walks around inside the building, at the top.
turnin The New Frontier##1019 |goto 34.82,9.25
accept The New Frontier##6761 |goto 34.82,9.25
turnin Wildkin of Elune##4902 |goto 34.82,9.25
step
talk Mathrengyl Bearwalker##4217
|tip Upstairs inside the building, on the middle floor.
turnin The New Frontier##6761 |goto 35.38,8.40
accept Rabine Saturna##6762 |goto 35.38,8.40
step
Leave the building |goto 35.54,10.75 < 7 |walk
Follow the road |goto Moonglade 40.40,36.43 < 30 |only if walking
Enter the building |goto Moonglade 51.47,41.43 < 10 |walk
talk Rabine Saturna##11801
|tip Inside the building.
turnin Rabine Saturna##6762 |goto Moonglade 51.69,45.09
accept Wasteland##1124 |goto Moonglade 51.69,45.09
step
Follow the road |goto Ashenvale 38.35,57.68 < 30 |only if walking
Continue following the road |goto Ashenvale 59.84,62.28 < 30 |only if walking
Enter Felwood |goto Ashenvale 55.84,31.64 < 30 |only if walking
Follow the path up |goto Felwood 51.15,84.00 < 30 |only if walking
Enter the building |goto Felwood 51.26,81.69 < 7 |walk
talk Eridan Bluewind##9116
|tip Inside the building.
turnin Felbound Ancients##4441 |goto Felwood 51.35,81.51
step
Watch the dialogue
talk Eridan Bluewind##9116
|tip Inside the building.
accept Purified!##4442 |goto 51.35,81.51
step
talk Eridan Bluewind##9116
|tip Inside the building.
turnin Purified!##4442 |goto 51.35,81.51
step
Leave the building |goto 51.26,81.70 < 7 |walk
Follow the road |goto 49.87,83.90 < 30 |only if walking
Follow the path down |goto 44.69,23.44 < 30 |only if walking
kill Toxic Horror##7132+
collect 3 Toxic Horror Droplet##12822 |q 5086/1 |goto 48.61,23.88
You can find more around [50.89,22.57]
step
Follow the path up |goto 49.69,17.45 < 30 |only if walking
Follow the road |goto 50.17,14.16 < 30 |only if walking
Follow the path |goto 61.36,16.45 < 30 |only if walking
Continue following the path |goto 62.84,23.03 < 30 |only if walking
Enter the building |goto Tanaris 52.21,28.57 < 7 |walk
talk Gimblethorn##7799
|tip Inside the building.
|tip Put these items in the bank.
bank Toxic Horror Droplet##12822 |goto Tanaris 52.30,28.91 |q 5086
|tip You should have 3 of these.
step
talk Gimblethorn##7799
|tip Inside the building.
|tip Collect these items from the bank.
collect Bag of Empty Ooze Containers##11955 |goto 52.30,28.91 |q 4513
collect Umi's Mechanical Yeti##12928 |goto 52.30,28.91 |q 5163
step
use the Umi's Mechanical Yeti##12928
|tip Use it on Sprinkle.
Scare Sprinkle |q 5163/2 |goto 51.06,26.87
step
use the Umi's Mechanical Yeti##12928
|tip Use it on Quixxil.
Scare Quixxil |q 5163/3 |goto Un'Goro Crater 43.67,9.38
step
use the Bag of Empty Ooze Containers##11955
collect 10 Empty Pure Sample Jar##11953 |q 4513
step
Kill Ooze enemies around this area
|tip Any ooze enemy in Un'Goro Crater will count, except Cloned Oozes that spawn from other ooze enemies.
use the Empty Pure Sample Jar##11953+
|tip Use them on their corpses.
collect 10 Filled Pure Sample Jar##11954 |q 4513/1 |goto 38.28,32.32
You can find more around: |notinsticky
[32.50,33.81]
[27.98,35.95]
[34.61,37.32]
[36.92,40.68]
[39.93,38.85]
[40.17,46.60]
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Extra Zones\\Eastern Plaguelands",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Eastern Plaguelands",
},[[
step
Follow the road |goto Western Plaguelands 61.29,55.09 < 30 |only if walking
Cross the bridge |goto Western Plaguelands 69.82,50.26 < 20 |only if walking
Follow the path up the coast |goto Eastern Plaguelands 12.46,71.89 < 20 |only if walking
Continue following the path |goto Eastern Plaguelands 7.55,53.51 < 30 |only if walking
talk Tirion Fordring##1855
|tip He walks around this area.
accept Demon Dogs##5542 |goto Eastern Plaguelands 7.56,43.70
accept Blood Tinged Skies##5543 |goto Eastern Plaguelands 7.56,43.70
accept Carrion Grubbage##5544 |goto Eastern Plaguelands 7.56,43.70
stickystart "Kill_Plaguebats"
stickystart "Kill_Plaguehound_Runts"
stickystart "Collect_Slabs_Of_Carrion_Worm_Meat"
step
Follow the path |goto 7.25,52.69 < 30 |only if walking
Continue following the path |goto 12.00,61.72 < 30 |only if walking
Follow the path up |goto 29.11,73.55 < 20 |only if walking
click Mangled Human Remains
collect SI:7 Insignia (Turyen)##16002 |q 6185/3 |goto 28.81,74.88
step
Uncover the Blightcaller |q 6185/4 |goto 27.28,74.96
|tip Be careful to stay out of range of the elite enemies nearby.
step
click Mangled Human Remains
|tip It looks like a human skeleton on the ground.
|tip Be careful to stay out of range of the elite enemies nearby.
collect SI:7 Insignia (Fredo)##16001 |q 6185/2 |goto 27.28,74.96
step
click Mangled Human Remains
collect SI:7 Insignia (Rutger)##16003 |q 6185/1 |goto 28.81,79.85
step
Follow the path |goto 36.01,81.28 < 30 |only if walking
Continue following the path |goto 38.25,91.65 < 30 |only if walking
talk Pamela Redpath##10926
|tip She walks around this area inside the small crumbled house.
turnin Sister Pamela##5601 |goto 36.45,90.80
accept Pamela's Doll##5149 |goto 36.45,90.80
stickystop "Kill_Plaguebats"
stickystop "Kill_Plaguehound_Runts"
stickystop "Collect_Slabs_Of_Carrion_Worm_Meat"
stickystart "Collect_Pamelas_Dolls_Left_Side"
stickystart "Collect_Pamelas_Dolls_Right_Side"
step
click Pamela's Doll's Head
|tip It looks like a brown ball, with two X's for eyes, with flies buzzing around it.
|tip It can be in any of the 3 buildings around this area.
collect Pamela's Doll's Head##12886 |goto 39.07,91.53 |q 5149
step
label "Collect_Pamelas_Dolls_Left_Side"
click Pamela's Doll's Left Side
|tip It looks like a brown half of a doll, with one arm and one leg, with flies buzzing around it.
|tip It can be in any of the 3 buildings around this area.
collect Pamela's Doll's Left Side##12887 |goto 39.07,91.53 |q 5149
step
label "Collect_Pamelas_Dolls_Right_Side"
click Pamela's Doll's Right Side
|tip It looks like a brown half of a doll, with one arm and one leg, with flies buzzing around it.
|tip It can be in any of the 3 buildings around this area.
collect Pamela's Doll's Right Side##12888 |goto 39.07,91.53 |q 5149
step
use Pamela's Doll's Head##12886
collect Pamela's Doll##12885 |q 5149/1
step
talk Pamela Redpath##10926
|tip She walks around this area inside the small crumbled house.
turnin Pamela's Doll##5149 |goto 36.45,90.80
accept Auntie Marlene##5152 |goto 36.45,90.80
accept Uncle Carlin##5241 |goto 36.45,90.80
stickystart "Kill_Plaguehound_Runts"
stickystart "Collect_Slabs_Of_Carrion_Worm_Meat"
step
label "Kill_Plaguebats"
kill 30 Plaguebat##8600 |q 5543/1 |goto 43.24,82.95
You can find more around: |notinsticky
[42.24,69.81]
[35.16,74.32]
[27.42,69.07]
[19.99,68.52]
[18.56,77.87]
[33.76,82.90]
step
label "Kill_Plaguehound_Runts"
kill 20 Plaguehound Runt##8596 |q 5542/1 |goto 43.24,82.95
You can find more around: |notinsticky
[42.24,69.81]
[27.42,69.07]
[19.99,68.52]
[18.56,77.87]
[33.76,82.90]
step
label "Collect_Slabs_Of_Carrion_Worm_Meat"
kill Carrion Grub##8603+
collect 15 Slab of Carrion Worm Meat##13853 |q 5544/1 |goto 43.24,82.95
You can find more around: |notinsticky
[42.24,69.81]
[35.16,74.32]
[27.42,69.07]
[19.99,68.52]
[18.56,77.87]
[33.76,82.90]
step
kill 5 Plaguehound##8597 |q 5542/2 |goto 70.01,68.38
You can find more around: |notinsticky
[76.41,66.59]
[71.11,56.12]
step
talk Caretaker Alen##11038
|tip He walks around this area.
accept Zaeldarr the Outcast##6021 |goto 79.54,63.77
accept The Restless Souls##5281 |goto 79.54,63.77
step
talk Duke Nicholas Zverenhoff##11039
turnin Duke Nicholas Zverenhoff##6030 |goto 81.43,59.82
collect Argent Dawn Valor Token##12844 |goto 81.43,59.82 |q 9141 |future
|tip Turn in the repeatable "Minion's Scourgestones" quest to get this.
|tip Don't use the item, it is needed to turn in for a quest later.
step
talk Carlin Redpath##11063
turnin Uncle Carlin##5241 |goto 81.52,59.77
accept Defenders of Darrowshire##5211 |goto 81.52,59.77
step
talk Khaelyn Steelwing##12617
fpath Light's Hope Chapel |goto 81.63,59.28
step
talk Smokey LaRue##11033
accept That's Asking A Lot##6026 |goto 80.61,57.97
step
talk Smokey LaRue##11033
turnin That's Asking A Lot##6026 |goto 80.61,57.97
step
Kill enemies around this area
|tip Any Undead enemy in Corin's Crossing will award Argent Dawn reputation.
|tip Watch out for the group of Elites that walk back and forth down this road.
Reach Friendly Reputation with Argent Dawn |condition rep('Argent Dawn') >= Friendly |goto 61.06,66.84 |q 9141 |future
|tip Press "U" to open your reputation list.
|tip Select the "Argent Dawn" reputation, and select "Show as Experience Bar".
|tip This will show you a progress bar for this reputation, similar to your experience bar.
step
talk Dispatch Commander Metz##16212
accept They Call Me "The Rooster"##9141 |goto 81.05,57.55
step
talk Dispatch Commander Metz##16212
turnin They Call Me "The Rooster"##9141 |goto 81.05,57.55
step
talk High Priestess MacDonnell##11053
turnin Return to Chillwind Camp##5226 |goto Western Plaguelands 42.97,84.50
step
talk Commander Ashlam Valorfist##10838
accept Mission Accomplished!##5237 |goto 42.70,84.03
step
talk Flint Shadowmore##12425
turnin The Eastern Plagues##6185 |goto 43.61,84.51
step
talk Nathaniel Dumah##11616
accept A Plague Upon Thee##5903 |goto 43.42,84.84
step
kill 5 Frenzied Plaguehound##8598 |q 5542/3 |goto Eastern Plaguelands 62.63,47.95
You can find more around: |notinsticky
[Eastern Plaguelands 51.17,43.24]
[Eastern Plaguelands 49.69,35.97]
step
talk Aurora Skycaller##10304
turnin Troubled Spirits of Kel'Theril##5245 |goto 53.51,22.00
step
_Destroy This Item:_
|tip It is no longer needed.
trash Jaron's Pick##12891
stickystart "Free_Darrowshire_Spirits"
step
click Large Termite Mound+
|tip They look like large brown and white stones cracked open with green goo leaking out of the top of them around this area.
collect 100 Plagueland Termites##15043 |q 5903/1 |goto 45.90,34.10
You can find more around: |notinsticky
[42.19,38.20]
[42.84,34.28]
[40.61,31.38]
[36.03,31.81]
[32.08,35.71]
[26.47,37.57]
[25.22,37.89]
[28.46,32.49]
[26.16,29.78]
[23.87,25.24]
[22.45,21.52]
[20.40,27.00]
step
label "Free_Darrowshire_Spirits"
kill Cannibal Ghoul##8530+
|tip All around the Plaguewood area. |notinsticky
|tip They share spawn points with other enemies, so kill them too.
talk Darrowshire Spirit##11064+
|tip They appear after you kill the Cannibal Ghouls.
Free #15# Darrowshire Spirits |q 5211/1 |goto 35.91,29.38
stickystart "Collect_Crypt_Fiend_Parts"
step
Follow the road |goto 18.52,33.21 < 30 |only if walking
Enter the building |goto 14.59,33.47 < 7 |walk
talk Egan##11140
|tip Inside the building.
turnin The Restless Souls##5281 |goto 14.45,33.74
step
talk Augustus the Touched##12384
|tip Inside the building.
accept Augustus' Receipt Book##6164 |goto 14.45,33.48
step
Enter the building |goto 17.56,33.03 < 7 |walk
click Augustus' Receipt Book
|tip Upstairs inside the building.
collect Augustus' Receipt Book##15884 |q 6164/1 |goto 17.43,31.09
step
Leave the building |goto 17.56,33.02 < 7 |walk
Enter the building |goto 14.59,33.47 < 7 |walk
talk Augustus the Touched##12384
|tip Inside the building.
turnin Augustus' Receipt Book##6164 |goto 14.45,33.48
step
label "Collect_Crypt_Fiend_Parts"
Kill Crypt enemies around this area
|tip They look like large insects.
|tip They take 5 minutes to respawn.
collect 30 Crypt Fiend Parts##22525 |goto 16.57,32.94 |q 9124 |future
You can find more in the tunnel at [15.33,29.35]
|tip Be careful in the tunnel, there are many enemies that are pretty close together.
|tip Sometimes an elite level 60 enemy walks around inside of the tunnel.
|tip Don't go too far into the tunnel, so you can come back and kill the enemies outside the tunnel when they respawn.
step
Enter the tunnel |goto 15.38,29.31 < 10 |walk
Leave the tunnel |goto 7.26,41.05 < 10 |c |q 5542
|tip If you find it too difficult to walk through this tunnel, you can skip this step.
|tip Instead, you will have to run the long way around to reach the location of the next step.
step
talk Tirion Fordring##1855
|tip He walks around this area.
turnin Demon Dogs##5542 |goto 7.57,43.70
turnin Blood Tinged Skies##5543 |goto 7.57,43.70
turnin Carrion Grubbage##5544 |goto 7.57,43.70
accept Redemption##5742 |goto 7.57,43.70
step
talk Tirion Fordring##1855
|tip He walks around this area.
|tip Type "/sit" into your chat, or press X.
|tip You must be sitting for the dialogue option to appear when you talk to him.
Tell him _"I am ready to hear your tale, Tirion."_
Listen to Tirion's Tale |q 5742/1 |goto 7.57,43.70
step
talk Tirion Fordring##1855
|tip He walks around this area.
turnin Redemption##5742 |goto 7.57,43.70
accept Of Forgotten Memories##5781 |goto 7.57,43.70
step
Follow the path |goto 7.25,52.69 < 30 |only if walking
Continue following the path |goto 12.00,61.72 < 30 |c |q 6021
step
Kill enemies around this area
Reach Level 58 |ding 58 |goto 17.86,67.53
step
Enter the crypt |goto 27.86,85.48 < 7 |walk
kill Zaeldarr the Outcast##12250
|tip Downstairs inside the crypt.
collect Zaeldarr's Head##15785 |q 6021/1 |goto 27.46,84.88
step
Run up the stairs |goto 27.54,86.15 < 7 |c |q 6021
step
Leave the crypt |goto 27.85,85.50 < 7 |walk
click Loose Dirt Mound
|tip Mercutio Filthgorger appears with a group of 3 guards with him.
|tip Try to kite Mercutio Filthgorger away from his guards, so you can fight him by himself.
|tip If you have trouble, try to find someone to help you.
kill Mercutio Filthgorger##11886
collect Taelan's Hammer##14613 |q 5781/1 |goto 28.31,86.88
step
Follow the road |goto 25.98,79.74 < 30 |only if walking
Follow the path |goto 18.94,72.74 < 40 |only if walking
Continue following the path |goto 11.93,61.49 < 30 |only if walking
Continue following the path |goto 7.23,52.25 < 30 |only if walking
talk Tirion Fordring##1855
|tip He walks around this area.
turnin Of Forgotten Memories##5781 |goto 7.56,43.70
accept Of Lost Honor##5845 |goto 7.56,43.70
step
Follow the path |goto 7.25,52.69 < 30 |only if walking
Continue following the path |goto 12.00,61.72 < 30 |only if walking
Follow the road |goto 19.21,73.06 < 30 |only if walking
Avoid Corin's Crossing |goto 56.19,79.14 < 30 |only if walking
Follow the path |goto 74.19,70.52 < 30 |only if walking
talk Caretaker Alen##11038
|tip He walks around this area.
turnin Zaeldarr the Outcast##6021 |goto 79.54,63.77
step
talk Carlin Redpath##11063
turnin Defenders of Darrowshire##5211 |goto 81.52,59.76
step
talk Rayne##16135
accept Savage Flora##9136 |goto 81.20,59.00
step
talk Rayne##16135
turnin Savage Flora##9136 |goto 81.20,59.00
step
Enter the building |goto 81.15,58.55 < 7 |walk
talk Rohan the Assassin##16131
|tip Inside the building.
accept Bonescythe Digs##9126 |goto 81.43,58.51
step
talk Rohan the Assassin##16131
|tip Inside the building.
turnin Bonescythe Digs##9126 |goto 81.43,58.51
step
talk Huntsman Leopold##16132
|tip Inside the building.
accept Cryptstalker Armor Doesn't Make Itself...##9124 |goto 81.50,58.55
step
talk Huntsman Leopold##16132
|tip Inside the building.
turnin Cryptstalker Armor Doesn't Make Itself...##9124 |goto 81.50,58.55
step
talk Korfax, Champion of the Light##16112
|tip Inside the building.
accept Binding the Dreadnaught##9131 |goto 81.79,58.07
step
talk Korfax, Champion of the Light##16112
|tip Inside the building.
turnin Binding the Dreadnaught##9131 |goto 81.79,58.07
step
talk Commander Ashlam Valorfist##10838
accept All Along the Watchtowers##5097 |goto Western Plaguelands 42.70,84.03
step
talk Flint Shadowmore##12425
accept The Blightcaller Cometh##6186 |goto 43.61,84.51
step
talk Nathaniel Dumah##11616
turnin A Plague Upon Thee##5903 |goto 43.42,84.84
accept A Plague Upon Thee##5904 |goto 43.42,84.84
step
_Destroy These Items:_
|tip They are no longer needed.
trash Plagueland Termites##15043
step
Follow the path |goto Eastern Plaguelands 70.37,48.89 < 30 |only if walking
click Symbol of Lost Honor
|tip Underwater.
collect Symbol of Lost Honor##14625 |q 5845/1 |goto Eastern Plaguelands 71.30,33.95
step
Cross the bridge |goto 63.12,52.10 < 30 |only if walking
Follow the path |goto 58.56,64.65 < 30 |only if walking
Follow the road |goto 55.84,72.13 < 30 |only if walking
Follow the path |goto 18.94,72.74 < 40 |only if walking
Continue following the path |goto 11.93,61.49 < 30 |only if walking
Continue following the path |goto 7.23,52.25 < 30 |only if walking
talk Tirion Fordring##1855
|tip He walks around this area.
turnin Of Lost Honor##5845 |goto 7.56,43.70
accept Of Love and Family##5846 |goto 7.56,43.70
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Extra Zones\\Silithus",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Silithus",
},[[
step
Follow the path up |goto Un'Goro Crater 29.34,22.42 < 15 |only if walking
talk Layo Starstrike##13220
|tip Inside the building.
turnin Wasteland##1124 |goto Silithus 81.87,18.93
accept The Spirits of Southwind##1125 |goto 81.87,18.93
step
talk Windcaller Proudhorn##15191
turnin Taking Back Silithus##8275 |goto 51.15,38.29
accept Securing the Supply Lines##8280 |goto 51.15,38.29
step
click Wanted Poster: Deathclasp
accept Wanted - Deathclasp, Terror of the Sands##8283 |goto 51.34,38.25
step
talk Beetix Ficklespragg##15189
|tip She walks around this area upstairs inside the building.
accept Deadly Desert Venom##8277 |goto 51.71,38.58
step
talk Geologist Larksbane##15183
accept The Twilight Mystery##8284 |goto 49.67,37.34
step
talk Bor Wildmane##15306
accept Secret Communication##8318 |goto 48.57,37.78
step
Enter the building |goto 49.60,36.02 < 10 |only if walking
talk Commander Mar'alith##15181
|tip Outside, on the balcony of the building.
accept Dearest Natalia##8304 |goto 49.19,34.18
step
Follow the path up |goto 50.30,35.91 < 7 |only if walking
talk Rifleman Torrig##17082
accept Report to Marshal Bluewall##9415 |goto 50.68,34.70
step
talk Cloud Skydancer##15177
fpath Cenarion Hold |goto 50.58,34.45
stickystart "Kill_Tortured_Sentinels"
step
kill 8 Tortured Druid##12178 |q 1125/1 |goto 62.96,53.11
|tip You can find more inside the buildings around this area.
step
label "Kill_Tortured_Sentinels"
kill 8 Tortured Sentinel##12179 |q 1125/2 |goto 62.96,53.11
|tip You can find more inside the buildings around this area.
stickystart "Collect_Stonelash_Scorpid_Stingers"
stickystart "Collect_Sand_Skitterer_Fangs"
stickystart "Kill_Dredge_Strikers"
step
Follow the path |goto 61.69,51.69 < 15 |only if walking
talk Layo Starstrike##13220
|tip Inside the building.
turnin The Spirits of Southwind##1125 |goto 81.87,18.93
accept Hive in the Tower##1126 |goto 81.87,18.93
step
Follow the path |goto 61.48,48.93 < 30 |only if walking
Continue following the path |goto 61.69,51.72 < 20 |only if walking
Enter the building |goto 60.45,52.83 < 10 |walk
|tip Three silithid will ambush you when you enter the tower.
click Hive'Ashi Pod##178553
|tip At the top of the tower.
kill Hive'Ashi Ambusher##13301+
collect Encrusted Silithid Object##17346 |q 1126/1 |goto 60.35,52.55
stickystop "Collect_Stonelash_Scorpid_Stingers"
stickystop "Collect_Sand_Skitterer_Fangs"
stickystop "Kill_Dredge_Strikers"
step
Kill Hive'Ashi enemies around this area
|tip You may need help with this.
collect Brann Bronzebeard's Lost Letter##20461 |goto 55.97,49.86 |q 8308 |future
|tip This has a low drop rate.
step
use Brann Bronzebeard's Lost Letter##20461
accept Brann Bronzebeard's Lost Letter##8308
step
Kill enemies around this area
|tip You can find more inside the buildings around this area.
Reach Level 59 |ding 59 |goto 62.96,53.11
stickystart "Collect_Stonelash_Scorpid_Stingers"
stickystart "Collect_Sand_Skitterer_Fangs"
stickystart "Kill_Dredge_Strikers"
step
Follow the path |goto 61.69,51.69 < 20 |only if walking
talk Layo Starstrike##13220
|tip Inside the building.
turnin Hive in the Tower##1126 |goto 81.87,18.93
accept Umber, Archivist##6844 |goto 81.87,18.93
step
Follow the path |goto 72.12,30.46 < 30 |only if walking
Continue following the path |goto 66.40,27.39 < 30 |only if walking
Kill Twilight enemies around this area
collect 10 Encrypted Twilight Text##20404 |q 8318/1 |goto 66.89,19.00
You can find more inside the cave at [68.88,15.22]
step
label "Collect_Stonelash_Scorpid_Stingers"
kill Stonelash Scorpid##11735+
|tip They look like scorpions.
collect 8 Stonelash Scorpid Stinger##20373 |q 8277/1 |goto 60.63,17.19
You can find more around: |notinsticky
[51.92,17.95]
[52.50,30.60]
[68.54,32.78]
[59.11,23.46]
step
label "Collect_Sand_Skitterer_Fangs"
kill Sand Skitterer##11738+
|tip They look like spiders.
collect 8 Sand Skitterer Fang##20376 |q 8277/2 |goto 60.63,17.19
You can find more around: |notinsticky
[51.92,17.95]
[52.50,30.60]
[68.54,32.78]
[59.11,23.46]
step
label "Kill_Dredge_Strikers"
kill 15 Dredge Striker##11740 |q 8280/1 |goto 60.63,17.19
You can find more around: |notinsticky
[51.92,17.95]
[52.50,30.60]
[68.54,32.78]
[59.11,23.46]
step
talk Windcaller Proudhorn##15191
turnin Securing the Supply Lines##8280 |goto 51.15,38.29
accept Stepping Up Security##8281 |goto 51.15,38.29
step
talk Beetix Ficklespragg##15189
|tip She walks around this area upstairs inside the building.
turnin Deadly Desert Venom##8277 |goto 51.71,38.58
accept Noggle's Last Hope##8278 |goto 51.71,38.58
step
Follow the path |goto 50.34,37.00 < 20 |only if walking
talk Bor Wildmane##15306
turnin Secret Communication##8318 |goto 48.58,37.78
stickystart "Collect_Core_Of_Elements"
step
Follow the path |goto 30.35,16.88 < 40 |only if walking
click Twilight Tablet Fragment+
|tip They look like small blue-glowing broken pieces of stone tablets on the ground around this area.
collect 8 Twilight Tablet Fragment##20378 |q 8284/1 |goto 24.33,11.94
step
label "Collect_Core_Of_Elements"
Kill enemies around this area
|tip They look like air and rock elementals.
collect 30 Core of Elements##22527 |goto 23.01,12.28 |q 9128 |future
You can find more around: |notinsticky
[31.53,18.08]
[28.22,29.43]
[19.10,27.73]
step
Kill Twilight enemies around this area
collect 10 Encrypted Twilight Text##20404 |goto 27.34,33.46 |q 8323 |future
stickystart "Kill_Dredge_Crushers"
stickystart "Collect_Stonelash_Pincer_Stingers"
step
talk Marshal Bluewall##17080
turnin Report to Marshal Bluewall##9415 |goto 33.29,51.05
step
label "Kill_Dredge_Crushers"
kill 20 Dredge Crusher##11741 |q 8281/1 |goto 27.26,43.55
You can find more around: |notinsticky
[36.54,50.40]
[37.93,60.76]
[47.11,59.42]
[57.55,60.78]
step
label "Collect_Stonelash_Pincer_Stingers"
kill Stonelash Pincer##11736+
collect 3 Stonelash Pincer Stinger##20374 |q 8278/2 |goto 27.26,43.55
You can find more around: |notinsticky
[36.54,50.40]
[37.93,60.76]
[47.11,59.42]
[57.55,60.78]
stickystart "Collect_Stonelash_Flayer_Stingers"
stickystart "Collect_Rock_Stalker_Fangs"
step
talk Rutgar Glyphshaper##15170
turnin Brann Bronzebeard's Lost Letter##8308 |goto 41.28,88.45
step
talk Rutgar Glyphshaper##15170
Tell him _"Hello, Rutgar. The Commander has sent me here to gather some information about his missing wife."_
Question Rutgar |q 8304/2 |goto 41.28,88.45
step
talk Frankal Stonebridge##15171
Tell him _"Hello, Frankal. I've heard that you might have some information as to the whereabouts of Mistress Natalia Mar'alith."_
Question Frankal |q 8304/1 |goto 40.82,88.85
step
label "Collect_Stonelash_Flayer_Stingers"
kill Stonelash Flayer##11737+
collect 3 Stonelash Flayer Stinger##20375 |q 8278/1 |goto 45.96,71.47
You can find more around: |notinsticky
[45.15,82.20]
[36.97,86.68]
[28.44,80.89]
[35.23,71.64]
step
label "Collect_Rock_Stalker_Fangs"
kill Rock Stalker##11739+
collect 3 Rock Stalker Fang##20377 |q 8278/3 |goto 45.96,71.47
You can find more around: |notinsticky
[45.15,82.20]
[36.97,86.68]
[28.44,80.89]
[35.23,71.64]
step
Follow the road |goto 42.86,72.53 < 30 |only if walking
Follow the path |goto 47.12,40.65 < 30 |only if walking
talk Windcaller Proudhorn##15191
turnin Stepping Up Security##8281 |goto 51.15,38.29
step
talk Beetix Ficklespragg##15189
|tip She walks around this area upstairs inside the building.
turnin Noggle's Last Hope##8278 |goto 51.71,38.58
step
talk Noggle Ficklespragg##15190
|tip Upstairs inside the building.
accept Noggle's Lost Satchel##8282 |goto 51.62,38.50
step
Follow the path |goto 50.34,37.02 < 20 |only if walking
talk Geologist Larksbane##15183
turnin The Twilight Mystery##8284 |goto 49.68,37.34
accept The Deserter##8285 |goto 49.68,37.34
step
Enter the building |goto 49.61,36.05 < 10 |only if walking
talk Commander Mar'alith##15181
|tip Outside, on the balcony of the building.
turnin Dearest Natalia##8304 |goto 49.19,34.18
accept Into The Maw of Madness##8306 |goto 49.19,34.18
step
Enter the cave |goto 66.32,70.03 < 10 |walk
talk Hermit Ortell##15194
|tip Inside the cave.
turnin The Deserter##8285 |goto 67.19,69.76
accept The Twilight Lexicon##8279 |goto 67.19,69.76
step
Leave the cave |goto 66.28,70.06 < 10 |walk
kill Twilight Keeper Havunth##11804
|tip He looks like an orc that walks around this area wearing a bright purple robe.
|tip You can wait around this spot to avoid going into the camp looking for him.
collect Twilight Lexicon - Chapter 3##20396 |q 8279/3 |goto 42.00,44.13
step
kill Twilight Keeper Mayna##15200
|tip She walks around this area.
collect Twilight Lexicon - Chapter 1##20394 |q 8279/1 |goto 26.46,36.45
step
Follow the path up |goto 19.91,47.62 < 10 |only if walking
Follow the path |goto 20.68,52.43 < 10 |only if walking
Continue following the path |goto 17.45,62.34 < 10 |only if walking
Follow the path up |goto 18.25,68.26 < 10 |only if walking
Continue up the path |goto 19.29,70.42 < 10 |only if walking
Jump down here |goto 17.99,71.75 < 10 |only if walking
Follow the path down |goto 18.53,74.31 < 10 |only if walking
kill Twilight Keeper Exeter##11803
collect The Twilight Lexicon##8279 |q 8279/2 |goto 16.09,86.37
step
Follow the path |goto 29.63,84.72 < 40 |only if walking
Follow the path up |goto 42.36,90.81 < 10 |only if walking
kill Deathclasp##15196
|tip He walks around this area.
|tip You may need help with this.
collect Deathclasp's Pincer##20385 |q 8283/1 |goto 44.94,91.23
step
click Noggle's Satchel
collect Noggle's Satchel##20379 |q 8282/1 |goto 44.57,91.36
step
Follow the path |goto 55.17,63.52 < 30 |only if walking
Enter the cave |goto 66.32,70.03 < 10 |walk
talk Hermit Ortell##15194
|tip Inside the cave.
turnin The Twilight Lexicon##8279 |goto 67.19,69.76
accept A Terrible Purpose##8287 |goto 67.19,69.76
accept True Believers##8323 |goto 67.19,69.76
step
talk Hermit Ortell##15194
|tip Inside the cave.
turnin True Believers##8323 |goto 67.19,69.76
step
Leave the cave |goto 66.28,70.06 < 10 |walk
Follow the road |goto 45.20,52.54 < 30 |only if walking
Follow the path up |goto 45.64,43.35 < 30 |only if walking
talk Noggle Ficklespragg##15190
|tip Upstairs inside the building.
turnin Noggle's Lost Satchel##8282 |goto 51.63,38.50
step
Follow the path |goto 50.34,37.02 < 20 |only if walking
Enter the building |goto 49.61,36.05 < 10 |only if walking
talk Commander Mar'alith##15181
|tip Outside, on the balcony of the building.
turnin A Terrible Purpose##8287 |goto 49.19,34.18
step
Leave the building |goto 49.60,36.00 < 10 |only if walking
Follow the path up |goto 50.43,35.93 < 7 |only if walking
Enter the building |goto 50.81,33.88 < 7 |only if walking
talk Vish Kozus##15182
|tip At the top of the tower.
turnin Wanted - Deathclasp, Terror of the Sands##8283 |goto 50.75,33.65
step
Enter the building |goto Ironforge 34.07,62.40 < 7 |walk
talk Bailey Stonemantle##2461
|tip Inside the building.
|tip Collect these items from the bank.
collect Extended Annals of Darrowshire##13202 |goto 35.57,60.53 |q 5210
collect 3 Toxic Horror Droplet##12822 |goto 35.57,60.53 |q 5086
step
talk Laris Geardawdle##9616
|tip Inside the building.
turnin A Little Slime Goes a Long Way##4513 |goto 75.77,23.37
step
talk Carlin Redpath##11063
turnin Brother Carlin##5210 |goto Eastern Plaguelands 81.52,59.77
accept Villains of Darrowshire##5181 |goto 81.52,59.77
step
Enter the building |goto 81.15,58.55 < 7 |walk
talk Archmage Angela Dosantos##16116
|tip Inside the building.
accept The Elemental Equation##9128 |goto 81.52,58.27
step
talk Archmage Angela Dosantos##16116
|tip Inside the building.
turnin The Elemental Equation##9128 |goto 81.52,58.27
step
Follow the path |goto 76.19,55.28 < 30 |only if walking
click Horgus' Skull
|tip Underwater.
collect Skull of Horgus##12956 |q 5181/1 |goto 51.11,49.94
step
Follow the path |goto 49.71,55.83 < 30 |only if walking
Jump down here |goto 50.52,65.38 < 15 |only if walking
Follow the path |goto 53.22,70.36 < 20 |only if walking
Follow the path |goto 55.52,68.77 < 20 |only if walking
click Shattered Sword of Marduk
collect Shattered Sword of Marduk##12957 |q 5181/2 |goto 53.92,65.76
step
Follow the path |goto 55.31,69.42 < 20 |only if walking
Follow the path up |goto 51.17,71.06 < 20 |only if walking
Follow the path |goto 49.20,75.21 < 30 |only if walking
Avoid Corin's Crossing |goto 54.87,78.88 < 30 |only if walking
Follow the path |goto 72.39,68.66 < 30 |only if walking
talk Carlin Redpath##11063
turnin Villains of Darrowshire##5181 |goto 81.51,59.77
step
Follow the road |goto Moonglade 40.40,36.43 < 30 |only if walking
talk Umber##11939
|tip Upstairs inside the building.
turnin Umber, Archivist##6844 |goto Moonglade 44.89,35.59
accept Uncovering Past Secrets##6845 |goto Moonglade 44.89,35.59
step
Enter the building |goto 51.47,41.43 < 10 |walk
talk Rabine Saturna##11801
|tip Inside the building.
turnin Uncovering Past Secrets##6845 |goto 51.69,45.09
step
Leave the building |goto 51.47,41.43 < 10 |walk
talk Umber##11939
|tip Upstairs inside the building.
accept Under the Chitin Was...##1185 |goto 44.89,35.59
step
Reach Level 60 |ding 60
|tip Use the Leveling guides to accomplish this.
step
talk Huum Wildmane##15270
accept Twilight Geolords##8320 |goto Silithus 48.63,37.86
step
talk Bor Wildmane##15306
accept Abyssal Contacts##8361 |goto 48.57,37.78
stickystart "Collect_Twilight_Cultist_Cowl"
stickystart "Collect_Twilight_Cultist_Mantle"
stickystart "Collect_Twilight_Cultist_Robe"
step
kill 10 Twilight Geolord##11881 |q 8320/1 |goto 27.34,33.46
step
label "Collect_Twilight_Cultist_Cowl"
Kill Twilight enemies around this area
collect Twilight Cultist Cowl##20408 |goto 27.34,33.46 |q 8361
step
label "Collect_Twilight_Cultist_Mantle"
Kill Twilight enemies around this area
collect Twilight Cultist Mantle##20406 |goto 27.34,33.46 |q 8361
step
label "Collect_Twilight_Cultist_Robe"
Kill Twilight enemies around this area
collect Twilight Cultist Robe##20407 |goto 27.34,33.46 |q 8361
step
use the Twilight Cultist Cowl##20408
|tip It should be in your bags.
Equip the Twilight Cultist Cowl |equipped Twilight Cultist Cowl##20408 |q 8361
step
use the Twilight Cultist Mantle##20406
|tip It should be in your bags.
Equip the Twilight Cultist Mantle |equipped Twilight Cultist Mantle##20406 |q 8361
step
use the Twilight Cultist Robe##20407
|tip It should be in your bags.
Equip the Twilight Cultist Robe |equipped Twilight Cultist Robe##20407 |q 8361
step
click Lesser Wind Stone##180456
Tell it _"I am no cultist, you monster! Come to me and face your destruction!"_
Kill the Templar enemy that attacks
|tip It is Elite.
|tip You may need help with this.
collect Abyssal Crest##20513 |q 8361/1 |goto 24.47,35.99
step
talk Huum Wildmane##15270
turnin Twilight Geolords##8320 |goto 48.63,37.86
accept Vyral the Vile##8321 |goto 48.63,37.86
step
talk Bor Wildmane##15306
turnin Abyssal Contacts##8361 |goto 48.57,37.78
step
Enter the cave |goto 69.09,14.98 < 7 |walk
kill Vyral the Vile##15202
|tip Inside the cave.
collect Vyral's Signet Ring##20466 |q 8321/1 |goto 72.39,15.58
step
talk Huum Wildmane##15270
turnin Vyral the Vile##8321 |goto 48.63,37.86
step
Enter the hive |goto 55.32,87.60 < 20 |walk
Follow the path |goto 53.66,88.85 < 15 |walk
Continue following the path |goto 52.31,90.19 < 10 |walk
Continue following the path |goto 53.19,93.36 < 10 |walk
Continue following the path |goto 52.59,98.52 < 15 |walk
kill Cenarion Scout Landion##15609
The Fate of Mistress Natalia Mar'alith |q 8306/1 |goto 49.26,34.46
step
Enter the building |goto 49.61,36.05 < 10 |only if walking
talk Commander Mar'alith##15181
|tip Outside, on the balcony of the building.
turnin Into The Maw of Madness##8306 |goto 49.19,34.18
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Extra Zones\\Bloodmyst Isle",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\Bloodmyst Isle",
},[[
step
talk Torallius the Pack Handler##17584
accept Elekks Are Serious Business##9625 |goto The Exodar/0 81.51,51.46
step
Follow the road |goto Azuremyst Isle/0 37.42,19.19 < 50 |only if walking
Cross the bridge |goto Azuremyst Isle/0 42.41,5.29 < 20 |only if walking
talk Aonar##17599
accept A Favorite Treat##9624 |goto Bloodmyst Isle/0 63.43,88.78
step
talk Vorkhan the Elekk Herder##17586
turnin Elekks Are Serious Business##9625 |goto 63.04,87.91
accept Alien Predators##9634 |goto 63.04,87.91
step
talk Kessel##17649
accept The Kessel Run##9663 |goto 63.00,87.55
step
Follow the road |goto Azuremyst Isle/0 43.31,11.78 < 50 |only if walking
Continue following the road |goto Azuremyst Isle/0 51.57,14.03 < 50 |only if walking
Continue following the road |goto Azuremyst Isle/0 50.88,25.21 < 40 |only if walking
talk High Chief Stillpine##17440
|tip HURRY!
|tip This quest is timed.
Warn High Chief Stillpine |q 9663/1 |goto Azuremyst Isle/0 46.68,20.62
step
Follow the road |goto 46.49,36.21 < 70 |only if walking
Continue following the road |goto 49.18,49.12 < 50 |only if walking
Continue following the road |goto 47.71,43.50 < 50 |only if walking
talk Exarch Menelaous##17116
|tip HURRY!
|tip This quest is timed.
Warn Exarch Menelaous |q 9663/2 |goto 47.11,50.60
step
Follow the road |goto 47.72,60.62 < 50 |only if walking
talk Admiral Odesyus##17240
|tip HURRY!
|tip This quest is timed.
Warn Admiral Odesyus |q 9663/3 |goto 47.04,70.21
step
Follow the road |goto 47.86,60.14 < 50 |only if walking
Continue following the road |goto 48.92,52.97 < 30 |only if walking
Continue following the road |goto 46.50,33.57 < 50 |only if walking
Continue following the road |goto 51.98,23.45 < 50 |only if walking
Continue following the road |goto 51.23,13.55 < 50 |only if walking
Cross the bridge |goto 42.43,5.29 < 20 |only if walking
talk Kessel##17649
|tip HURRY!
|tip This quest is timed.
turnin The Kessel Run##9663 |goto Bloodmyst Isle/0 63.00,87.54
accept Declaration of Power##9666 |goto Bloodmyst Isle/0 63.00,87.54
step
Cross the bridge |goto 58.72,73.87 < 20 |only if walking
Follow the path |goto 54.18,61.79 < 30 |only if walking
Enter the building |goto 55.19,59.41 < 7 |walk
talk Caregiver Topher Loaal##17553
|tip Inside the building.
accept Beds, Bandages, and Beyond##9603 |goto 55.85,59.81
|only if Draenei
step
talk Caregiver Topher Loaal##17553
|tip Inside the building.
home Blood Watch |goto 55.85,59.81
step
click Wanted Poster##184945
accept WANTED: Deathclaw##9646 |goto 55.23,59.11 |q 9629 |future
step
talk Morae##17434
accept Catch and Release##9629 |goto 53.25,57.75
step
Enter the building |goto 52.99,53.72 < 7 |walk
talk Exarch Admetius##17658
|tip Inside the building.
accept What Argus Means to Me##9693 |goto 52.68,53.21
step
talk Harbinger Mikolaas##17423
|tip Inside the building.
accept Learning from the Crystals##9581 |goto 52.59,53.21
step
talk Vindicator Boros##17684
turnin What Argus Means to Me##9693 |goto 55.43,55.27
accept Blood Watch##9694 |goto 55.43,55.27
step
talk Jessera of Mac'Aree##17663
accept Mac'Aree Mushroom Menagerie##9648 |goto 56.43,56.82
step
talk Laando##17554
fpath Blood Watch |goto 57.68,53.88
step
talk Laando##17554
turnin Beds, Bandages, and Beyond##9603 |goto 57.68,53.87
accept On the Wings of a Hippogryph##9604 |goto 57.68,53.87
|only if Draenei
step
Enter the building |goto The Exodar/0 73.91,53.59 < 10 |walk
talk Nurguni##16768
|tip Inside the building.
turnin On the Wings of a Hippogryph##9604 |goto The Exodar/0 57.02,50.08
accept Hippogryph Master Stephanos##9605 |goto The Exodar/0 57.02,50.08
|only if Draenei
step
Run up the ramp |goto 53.30,32.95 < 20 |walk
Run up the ramp |goto 64.09,35.93 < 10 |walk
Leave the building |goto 74.28,53.92 < 15 |walk
talk Stephanos##17555
turnin Hippogryph Master Stephanos##9605 |goto 68.34,63.50
accept Return to Topher Loaal##9606 |goto 68.34,63.50
|only if Draenei
step
Enter the building |goto Bloodmyst Isle/0 55.20,59.41 < 7 |walk
talk Caregiver Topher Loaal##17553
|tip Inside the building.
turnin Return to Topher Loaal##9606 |goto Bloodmyst Isle/0 55.85,59.81
|only if Draenei
step
_Note:_
|tip As you kill enemies while completing quests in Bloodmyst Isle, you will collect Irradiated Crystal Shards.
|tip Save at least 10 of these for a later quest.
Click Here to Continue |confirm |q 9641 |future
step
click Blood Mushroom##181891+
|tip They look like orange glowing mushrooms on the ground around this area.
|tip They tend to me next to trees.
collect Blood Mushroom##24040 |q 9648/2 |goto 62.13,55.62
stickystart "Collect_Ruinous_Polyspore"
step
Follow the path up |goto 66.90,69.25 < 15 |only if walking
kill Lord Xiz##17701 |q 9666/1 |goto 68.86,68.25
|tip He walks around this area.
step
use the Draenei Banner##24084
|tip Use it on Lord Xiz's corpse.
|tip His corpse will be at the location you killed him.
Signal the Declaration of Power |q 9666/2 |goto 68.86,68.25
step
label "Collect_Ruinous_Polyspore"
click Ruinous Polyspore##181893+
|tip They look like brown mushrooms on the ground around this area.
collect Ruinous Polyspore##24042 |q 9648/3 |goto 67.48,67.93
stickystart "Collect_Sand_Pears"
step
talk Princess Stillpine##17682
accept Saving Princess Stillpine##9667 |goto 68.26,81.09
|only if completedq(9544)
step
Follow the path up |goto 66.70,82.68 < 15 |only if walking
Kill Bristlelimb enemies around this area
|tip Eventually, High Chief Bristelimb will yell in the chat and appear at this location.
kill High Chief Bristlelimb##17702
|tip He walks around this area after he spawns.
collect The High Chief's Key##24099 |q 9667 |goto 64.21,76.71
|only if havequest(9667) or completedq(9667)
step
click Princess Stillpine's Cage##181928
Save Princess Stillpine |q 9667/1 |goto 68.26,80.89
|only if havequest(9667) or completedq(9667)
step
kill 10 Bloodmyst Hatchling##17525 |q 9634/1 |goto 72.12,84.19
step
label "Collect_Sand_Pears"
click Sand Pear##181854+
|tip They look like small light brown pears on the ground around this area.
|tip They tend to be next to trees.
collect 10 Sand Pear##23927 |q 9624/1 |goto 59.39,89.75
You can find more around: |notinsticky
[67.17,87.74]
step
talk Aonar##17599
turnin A Favorite Treat##9624 |goto 63.43,88.78
step
talk Vorkhan the Elekk Herder##17586
turnin Alien Predators##9634 |goto 63.04,87.90
step
talk Kessel##17649
turnin Declaration of Power##9666 |goto 63.00,87.54
accept Report to Exarch Admetius##9668 |goto 63.00,87.54
step
use the Crystal Mining Pick##23875
collect Impact Site Crystal Sample##23878 |q 9581/1 |goto 58.21,83.40
step
click Aquatic Stinkhorn##181892+
|tip They look like large brown mushrooms with spikes on them underwater around this area.
collect Aquatic Stinkhorn##24041 |q 9648/1 |goto 57.84,73.50
You can find more around: |notinsticky
[57.24,75.26]
[56.03,79.55]
[55.08,82.47]
step
click Fel Cone Fungus##181894+
|tip They look like smaller brown mushrooms that put off green gas on the ground around this area.
collect Fel Cone Fungus##24043 |q 9648/4 |goto 43.65,82.32
stickystart "Tag_Blacksilt_Scouts"
stickystart "Collect_Irradiated_Crystal_Shards"
step
Cross the water |goto Bloodmyst Isle/0 55.01,85.99 < 20 |only if walking
kill Cruelfin##17496
|tip He looks like an orange murloc that walks along the beach around this area.
collect Red Crystal Pendant##23870 |n
use the Red Crystal Pendant##23870
accept Cruelfin's Necklace##9576 |goto 47.71,94.34
Also check around [37.26,94.97]
step
label "Tag_Blacksilt_Scouts"
use the Murloc Tagger##23995
|tip Use it on Blacksilt Scouts.
|tip They look like purple murlocs around this area.
|tip You can find more in the water.
Tag #6# Blacksilt Scouts |q 9629/1 |goto 47.71,94.34
You can find more around [37.26,94.97]
step
label "Collect_Irradiated_Crystal_Shards"
Kill enemies around this area
collect 10 Irradiated Crystal Shard##23984 |goto 47.71,94.34 |q 9641 |future
You can find more around [37.26,94.97]
step
talk Vindicator Aalesia##17433
accept Know Thine Enemy##9567 |goto 55.08,57.99
step
talk Morae##17434
turnin Cruelfin's Necklace##9576 |goto 53.24,57.74
turnin Catch and Release##9629 |goto 53.24,57.74
accept Victims of Corruption##9574 |goto 53.24,57.74
step
Enter the building |goto 52.99,53.74 < 7 |walk
talk Exarch Admetius##17658
|tip Inside the building.
turnin Report to Exarch Admetius##9668 |goto 52.68,53.21
step
talk Harbinger Mikolaas##17423
|tip Inside the building.
turnin Learning from the Crystals##9581 |goto 52.59,53.21
accept The Missing Survey Team##9620 |goto 52.59,53.21
step
talk Stillpine Ambassador Frasaboo##18803
turnin Saving Princess Stillpine##9667 |goto 55.15,55.95
|only if havequest(9667) or completedq(9667)
step
talk Vindicator Boros##17684
accept Irradiated Crystal Shards##9641 |goto 55.42,55.27
step
talk Vindicator Boros##17684
turnin Irradiated Crystal Shards##9641 |goto 55.42,55.27
step
talk Prospector Nachlan##18804
accept Explorers' League, Is That Something for Gnomes?##10063 |goto 56.33,54.23
step
talk Jessera of Mac'Aree##17663
turnin Mac'Aree Mushroom Menagerie##9648 |goto 56.42,56.82
step
clicknpc Draenei Cartographer##17600
turnin The Missing Survey Team##9620 |goto 61.18,48.75
accept Salvaging the Data##9628 |goto 61.18,48.75
step
Kill Wrathscale enemies around this area
collect Survey Data Crystal##23932 |q 9628/1 |goto 61.63,48.27
step
Follow the path up |goto 56.64,52.55 < 15 |only if walking
Enter the building |goto 52.99,53.72 < 7 |walk
talk Harbinger Mikolaas##17423
|tip Inside the building.
turnin Salvaging the Data##9628 |goto 52.59,53.21
accept The Second Sample##9584 |goto 52.59,53.21
step
talk Tracker Lyceon##17642
accept Constrictor Vines##9643 |goto 55.86,57.00
accept The Bear Necessities##9580 |goto 55.86,57.00
stickystart "Kill_Sunhawk_Spies"
step
use the Crystal Mining Pick##23876
collect Altered Crystal Sample##23879 |q 9584/1 |goto 45.70,47.83
step
label "Kill_Sunhawk_Spies"
kill 10 Sunhawk Spy##17604 |q 9694/1 |goto 47.22,46.22
stickystart "Collect_Elder_Brown_Bear_Flanks"
step
kill Mutated Constrictor##17344+
|tip They look like walking plants.
collect 6 Thorny Constrictor Vine##23994 |q 9643/1 |goto 33.10,44.07
You can find more around: |notinsticky
[46.34,35.13]
[41.08,49.97]
[42.86,56.79]
step
label "Collect_Elder_Brown_Bear_Flanks"
kill Elder Brown Bear##17348+
collect 8 Elder Brown Bear Flank##24026 |q 9580/1 |goto 33.10,44.07
You can find more around: |notinsticky
[46.34,35.13]
[41.08,49.97]
[42.86,56.79]
stickystart "Accept_Signs_Of_The_Legion"
stickystart "Collect_Crystallized_Bark"
step
Follow the path |goto 47.34,67.70 < 100 |only if walking
click Nazzivus Monument Glyph##5992
collect Nazzivus Monument Glyph##23859 |q 9567/1 |goto 36.50,71.36
step
label "Accept_Signs_Of_The_Legion"
kill Tzerak##17528
|tip He looks like a felguard that walks around this area.
collect Tzerak's Armor Plate##23900 |n
use Tzerak's Armor Plate##23900
accept Signs of the Legion##9594 |goto 36.64,73.50
Also check around [37.81,81.10]
stickystart Kill_Nazzivus_Felsworn
step
kill 8 Nazzivus Satyr##17337 |q 9594/1 |goto 37.61,76.75
step
label "Kill_Nazzivus_Felsworn"
kill 8 Nazzivus Felsworn##17339 |q 9594/2 |goto 37.61,76.75
step
label "Collect_Crystallized_Bark"
kill Corrupted Treant##17352+
collect 6 Crystallized Bark##23869 |q 9574/1 |goto 36.97,75.83
You can find more around [50.81,74.20]
step
talk Vindicator Aalesia##17433
turnin Know Thine Enemy##9567 |goto 55.09,57.99
turnin Signs of the Legion##9594 |goto 55.09,57.99
accept Containing the Threat##9569 |goto 55.09,57.99
step
talk Morae##17434
turnin Victims of Corruption##9574 |goto 53.24,57.74
accept Searching for Galaen##9578 |goto 53.24,57.74
step
Enter the building |goto 53.00,53.75 < |walk
talk Harbinger Mikolaas##17423
|tip Inside the building.
turnin The Second Sample##9584 |goto 52.59,53.21
accept The Final Sample##9585 |goto 52.59,53.21
step
talk Vindicator Boros##17684
turnin Blood Watch##9694 |goto 55.43,55.25
accept Intercepting the Message##9779 |goto 55.43,55.27
step
talk Tracker Lyceon##17642
turnin Constrictor Vines##9643 |goto 55.86,57.00
turnin The Bear Necessities##9580 |goto 55.86,57.00
accept Culling the Flutterers##9647 |goto 55.86,57.00
step
talk Jessera of Mac'Aree##17663
accept Ysera's Tears##9649 |goto 56.43,56.82
step
kill Sunhawk Spy##17604+
collect Sunhawk Missive##24399 |q 9779/1 |goto 46.90,47.35
stickystart "Kill_Axxarien_Shadowstalkers"
stickystart "Kill_Axxarien_Hellcallers"
stickystart "Collect_Corrupted_Crystal"
step
Follow the path |goto 42.06,36.28 < 30 |only if walking
kill Zevrax##17494 |q 9569/1 |goto 41.91,29.53
step
use the Crystal Mining Pick##23877
collect Axxarien Crystal Sample##23880 |q 9585/1 |goto 41.23,30.79
step
label "Kill_Axxarien_Shadowstalkers"
kill 5 Axxarien Shadowstalker##17340 |q 9569/3 |goto 41.03,33.85
step
label "Kill_Axxarien_Hellcallers"
kill 5 Axxarien Hellcaller##17342 |q 9569/2 |goto 41.03,33.85
step
label "Collect_Corrupted_Crystal"
click Corrupted Crystal##181771
|tip They look like big red crystals on the ground around this area.
collect 5 Corrupted Crystal##23863 |q 9569/4 |goto 41.03,33.85
step
Jump down carefully here |goto 39.77,31.85 < 10 |only if walking
kill Deathclaw##17661
|tip He looks like a diseased brown bear that walks around this area.
collect Deathclaw's Paw##24025 |q 9646/1 |goto 37.22,29.91
step
talk Clopper Wizbang##17421
|tip Inside the turtle shell.
turnin Explorers' League, Is That Something for Gnomes?##10063 |goto 42.15,21.23
accept Pilfered Equipment##9548 |goto 42.15,21.23
accept Artifacts of the Blacksilt##9549 |goto 42.15,21.23
stickystart "Collect_Crude_Murloc_Idols"
stickystart "Collect_Crude_Murloc_Knives"
step
click Clopper's Equipment##181746
|tip It looks like a wooden crate.
|tip It can spawn in 4 of the murloc camps on the beach around this area.
collect Clopper's Equipment##23830 |q 9548/1 |goto 40.50,20.11
Also check around: |notinsticky
[38.56,22.14]
[44.05,22.42]
[46.20,20.07]
step
label "Collect_Crude_Murloc_Idols"
Kill Blacksilt enemies around this area
collect 3 Crude Murloc Idol##23834 |q 9549/1 |goto 36.13,25.92
You can find more around: |notinsticky
[40.16,20.29]
[46.31,20.55]
step
label "Collect_Crude_Murloc_Knives"
Kill Blacksilt enemies around this area
collect 6 Crude Murloc Knife##23833 |q 9549/2 |goto 36.13,25.92
You can find more around: |notinsticky
[40.16,20.29]
[46.31,20.55]
step
talk Clopper Wizbang##17421
|tip Inside the turtle shell.
turnin Pilfered Equipment##9548 |goto 42.15,21.23
turnin Artifacts of the Blacksilt##9549 |goto 42.15,21.23
step
use the Weathered Treasure Map##23837
accept A Map to Where?##9550
step
kill 10 Royal Blue Flutterer##17350 |q 9647/1 |goto 40.55,26.09
|tip They look like blue butterflies.
You can find more around: |notinsticky
[48.18,32.18]
[42.47,41.19]
[35.41,42.98]
[37.98,50.60]
[44.50,55.10]
step
talk Vindicator Aalesia##17433
turnin Containing the Threat##9569 |goto 55.09,57.99
step
Enter the building |goto 52.99,53.72 < 7 |walk
talk Harbinger Mikolaas##17423
|tip Inside the building.
turnin The Final Sample##9585 |goto 52.59,53.21
turnin WANTED: Deathclaw##9646 |goto 52.59,53.21
accept Talk to the Hand##10064 |goto 52.59,53.21
step
talk Vindicator Boros##17684
turnin Intercepting the Message##9779 |goto 55.43,55.27
accept Translations...##9696 |goto 55.43,55.27
step
talk Interrogator Elysis##17825
turnin Translations...##9696 |goto 54.43,54.45
accept Audience with the Prophet##9698 |goto 54.43,54.45
step
talk Tracker Lyceon##17642
turnin Culling the Flutterers##9647 |goto 55.85,57.00
step
talk Achelus##17676
accept The Missing Expedition##9669 |goto 53.25,57.03
step
talk Messenger Hermesius##17703
|tip He walks around this area.
accept Urgent Delivery##9671 |goto 54.33,55.60 |instant
step
click Mailbox##32349
|tip Collect the letter from Admiral Odesyus.
collect A Letter from the Admiral##24132 |n
use A Letter from the Admiral##24132
accept The Bloodcurse Legacy##9672 |goto 55.18,59.19
step
Run up the ramp |goto 60.77,41.46 < 7 |only if walking
click Battered Ancient Book##181756
turnin A Map to Where?##9550 |goto 61.16,41.89
accept Deciphering the Book##9557 |goto 61.16,41.89
step
talk Prince Toreth##17674
|tip He walks around this area.
accept Restoring Sanctity##9687 |goto 74.06,33.92
step
click Dragon Bone##181981+
|tip They look like orange and white spiked bones planted in the ground around this area.
collect 8 Dragon Bone##24185 |q 9687/1 |goto 60.01,35.69
You can find more around: |notinsticky
[56.96,34.42]
[56.04,40.16]
[53.09,41.58]
[53.71,35.71]
[54.00,31.19]
[58.07,29.55]
step
talk Prince Toreth##17674
|tip He walks around this area.
turnin Restoring Sanctity##9687 |goto 74.06,33.92
accept Into the Dream##9688 |goto 74.06,33.92
stickystart "Kill_Veridian_Broodlings"
stickystart "Kill_Veridian_Whelps"
step
click Ysera's Tear##181897+
|tip They look like green mushrooms on the ground around this area.
collect 2 Ysera's Tear##24049 |q 9649/1 |goto 69.98,26.31
Also check around: |notinsticky
[68.05,20.30]
[71.03,13.29]
[75.53,13.84]
[76.75,21.60]
step
label "Kill_Veridian_Whelps"
kill 5 Veridian Whelp##17588 |q 9688/1 |goto 69.98,26.31
|tip You can find them all around the base of the mountain.
You can find more around: |notinsticky
[68.05,20.30]
[71.03,13.29]
[75.53,13.84]
[76.75,21.60]
step
label "Kill_Veridian_Broodlings"
kill 5 Veridian Broodling##17589 |q 9688/2 |goto 69.98,26.31
|tip You can find them all around the base of the mountain.
You can find more around: |notinsticky
[68.05,20.30]
[71.03,13.29]
[75.53,13.84]
[76.75,21.60]
step
talk Prince Toreth##17674
|tip He walks around this area.
turnin Into the Dream##9688 |goto 74.06,33.92
step
talk Captain Edward Hanes##17712
turnin The Bloodcurse Legacy##9672 |goto 79.15,22.65
accept The Bloodcursed Naga##9674 |goto 79.15,22.65
step
kill 10 Bloodcursed Naga##17713 |q 9674/1 |goto 81.36,21.84
|tip Underwater around this area.
You can find more around: |notinsticky
[80.44,11.50]
step
talk Captain Edward Hanes##17712
turnin The Bloodcursed Naga##9674 |goto 79.15,22.65
accept The Hopeless Ones...##9682 |goto 79.15,22.65
step
kill Bloodcursed Voyager##17714+
|tip Underwater around this area.
collect 4 Bloodcursed Soul##24153 |q 9682/1 |goto 83.15,21.47
You can find more near the sunken ships around: |notinsticky
[87.29,20.57]
[85.14,14.47]
step
talk Captain Edward Hanes##17712
turnin The Hopeless Ones...##9682 |goto 79.15,22.65
accept Ending the Bloodcurse##9683 |goto 79.15,22.65
step
Follow the path up |goto 82.69,47.66 < 20 |only if walking
click Statue of Queen Azshara##181964
kill Atoph the Bloodcursed##17715 |q 9683/1 |goto 85.94,54.32
step
talk Captain Edward Hanes##17712
turnin Ending the Bloodcurse##9683 |goto 79.15,22.65
step
talk Jessera of Mac'Aree##17663
turnin Ysera's Tears##9649 |goto 56.43,56.82
step
talk Anchorite Paetheus##17424
turnin Deciphering the Book##9557 |goto 54.67,53.94
step
Watch the dialogue
talk Anchorite Paetheus##17424
accept Nolkai's Words##9561 |goto 54.67,53.94
step
Enter the building |goto The Exodar/0 74.12,53.88 < 10 |walk
talk Prophet Velen##17468
|tip Inside the building.
turnin Audience with the Prophet##9698 |goto The Exodar/0 32.87,54.50
accept Truth or Fiction##9699 |goto The Exodar/0 32.87,54.50
step
Run up the ramp |goto 53.30,32.95 < 20 |walk
Run up the ramp |goto 64.09,35.93 < 10 |walk
Leave the building |goto 74.28,53.92 < 15 |walk
talk Vindicator Boros##17684
turnin Truth or Fiction##9699 |goto Bloodmyst Isle/0 55.43,55.27
accept I Shoot Magic Into the Darkness##9700 |goto Bloodmyst Isle/0 55.43,55.27
step
Follow the path up |goto 59.66,49.52 < 15 |only if walking
click Mound of Dirt##216161
turnin Nolkai's Words##9561 |goto 61.18,49.64
stickystart "Kill_Void_Anomalies"
step
Confirm the Sun Portal Site |q 9700/2 |goto 52.79,21.16
step
label "Kill_Void_Anomalies"
kill 5 Void Anomaly##17550 |q 9700/1 |goto 52.39,23.47
step
Follow the road |goto 50.25,29.15 < 50 |only if walking
Follow the path |goto 55.35,52.76 < 40 |only if walking
talk Vindicator Boros##17684
turnin I Shoot Magic Into the Darkness##9700 |goto 55.43,55.28
step
talk Vindicator Kuros##17843
accept The Cryo-Core##9703 |goto 55.63,55.23
stickystart "Collect_Medical_Supplies"
step
clicknpc Galaen's Corpse##17508
|tip Inside the building.
turnin Searching for Galaen##9578 |goto 37.5,61.2
accept Galaen's Fate##9579 |goto 37.5,61.2
step
click Galaen's Journal##182032
|tip Inside the building.
accept Galaen's Journal - The Fate of Vindicator Saruan##9706 |goto 37.56,61.24
step
kill Sunhawk Reclaimer##17606+
collect Galaen's Amulet##23873 |q 9579/1 |goto 39.08,60.32
step
label "Collect_Medical_Supplies"
kill Sunhawk Reclaimer##17606+
click Medical Supplies##239971+
|tip They look like silver metal boxes on the ground around this area.
collect 12 Medical Supplies##24236 |q 9703/1 |goto 39.08,60.32
step
talk Morae##17434
turnin Galaen's Fate##9579 |goto 53.24,57.74
step
talk Vindicator Kuros##17843
turnin The Cryo-Core##9703 |goto 55.63,55.23
turnin Galaen's Journal - The Fate of Vindicator Saruan##9706 |goto 55.63,55.23
accept Matis the Cruel##9711 |goto 55.63,55.23
step
talk Vindicator Aesom##17844
accept Don't Drink the Water##9748 |goto 55.56,55.40
step
use the Flare Gun##24278
|tip Use it on Matis the Cruel, but don't attack him.
|tip He looks like a blood elf riding a horse with flaming feet that walks along this road.
|tip An elite ally will appear and begin fighting him.
|tip Let your ally fight him for a bit, before you start attacking too.
kill Matis the Cruel##17664
|tip He will eventually be captured.
Capture Matis the Cruel |q 9711/1 |goto 41.12,44.71
He walks between this location and [25.11,54.00]
step
talk Scout Jorli##17927
turnin Talk to the Hand##10064 |goto 30.26,45.92
accept Cutting a Path##10065 |goto 30.26,45.92
step
talk Scout Loryi##17926
accept Critters of the Void##9741 |goto 30.23,45.86
step
talk Vindicator Corin##17986
accept Fouled Water Spirits##10067 |goto 30.75,46.85
accept Oh, the Tangled Webs They Weave##10066 |goto 30.75,46.85
stickystart "Kill_Entangled_Ravagers"
step
kill 8 Mutated Tangler##17346 |q 10066/1 |goto 28.41,58.18
You can find more around: |notinsticky
[33.82,56.14]
[27.16,48.33]
step
label "Kill_Entangled_Ravagers"
kill 10 Enraged Ravager##17527 |q 10065/1 |goto 28.41,58.18
You can find more around: |notinsticky
[33.82,56.14]
[27.16,48.33]
step
talk Vindicator Corin##17986
turnin Oh, the Tangled Webs They Weave##10066 |goto 30.75,46.85
step
talk Scout Jorli##17927
turnin Cutting a Path##10065 |goto 30.26,45.92
step
Follow the path |goto 31.22,41.98 < 40 |only if walking
kill 6 Fouled Water Spirit##17358 |q 10067/1 |goto 29.11,38.54
stickystart "Kill_Myst_Leechers"
stickystart "Kill_Myst_Spinners"
step
talk Researcher Cornelius##17686
accept They're Alive! Maybe...##9670 |goto 24.86,34.38
stickystart "Free_Expedition_Researchers"
step
Follow the path |goto 22.54,37.33 < 20 |only if walking
Follow the path up |goto 17.81,28.30 < 15 |only if walking
kill Zarakh##17683 |q 9669/3 |goto 18.19,37.78
step
label "Free_Expedition_Researchers"
kill Webbed Creature##17680+
|tip They look like wriggling white cocoons on the ground around this area.
|tip They may not all contain an Expedition Researcher.
Free #5# Expedition Researchers |q 9670/1 |goto 22.62,39.87
You can find more down the path that starts at [21.75,36.45]
step
label "Kill_Myst_Leechers"
kill 8 Myst Leecher##17523 |q 9669/1 |goto 22.62,39.87
You can find more down the path that starts at [21.75,36.45]
step
label "Kill_Myst_Spinners"
kill 8 Myst Spinner##17522 |q 9669/2 |goto 22.62,39.87
You can find more down the path that starts at [21.75,36.45]
step
talk Researcher Cornelius##17686
turnin They're Alive! Maybe...##9670 |goto 24.87,34.37
step
Jump down carefully here |goto 33.69,35.50 < 15 |only if walking
use the Water Sample Flask##24318
|tip Use it at the bottom of the red waterfall.
collect Bloodmyst Water Sample##24317 |q 9748/1 |goto 34.32,33.72
step
talk Achelus##17676
turnin The Missing Expedition##9669 |goto 53.25,57.04
step
talk Vindicator Aesom##17844
turnin Don't Drink the Water##9748 |goto 55.55,55.39
accept Limits of Physical Exhaustion##9746 |goto 55.55,55.39
step
talk Vindicator Kuros##17843
turnin Matis the Cruel##9711 |goto 55.64,55.22
step
talk Vindicator Aesom##17844
accept What We Know...##9753 |goto 55.55,55.41
step
Enter the building |goto 53.00,53.73 < 7 |walk
talk Exarch Admetius##17658
|tip Inside the building.
turnin What We Know...##9753 |goto 52.68,53.21
accept What We Don't Know...##9756 |goto 52.68,53.21
step
talk Captured Sunhawk Agent##17824
Tell him _"I'm a prisoner, what does it look like? The draenei filth captured me as I exited the sun gate. They killed our portal controllers and destroyed the gate. The Sun King will be most displeased with this turn of events."_
Recover the Sunhawk Information |q 9756/1 |goto 54.42,54.27
step
Enter the building |goto 53.00,53.73 < 7 |walk
talk Exarch Admetius##17658
|tip Inside the building.
turnin What We Don't Know...##9756 |goto 52.68,53.21
accept Vindicator's Rest##9760 |goto 52.68,53.21
step
talk Vindicator Corin##17986
turnin Vindicator's Rest##9760 |goto 30.75,46.85
turnin Fouled Water Spirits##10067 |goto 30.75,46.85
stickystart "Kill_Sunhawk_Defenders"
step
kill 10 Sunhawk Pyromancer##17608 |q 9746/1 |goto 24.51,51.46
You can find more around: |notinsticky
[24.67,57.00]
[21.37,61.26]
step
label "Kill_Sunhawk_Defenders"
kill 10 Sunhawk Defender##17607 |q 9746/2 |goto 24.51,51.46
You can find more around: |notinsticky
[24.67,57.00]
[21.37,61.26]
step
kill 12 Void Critter##17887 |q 9741/1 |goto 20.15,62.65
step
Follow the road |goto 27.92,51.83 < 70 |only if walking
talk Vindicator Aesom##17844
turnin Critters of the Void##9741 |goto 55.55,55.40
turnin Limits of Physical Exhaustion##9746 |goto 55.55,55.40
accept The Sun Gate##9740 |goto 55.55,55.40
step
Follow the road |goto 48.92,41.02 < 70 |only if walking
click Sunhawk Portal Controller##184850
|tip It looks like a floating purple crystal.
Click Here After Destroying the Sunhawk Portal Controller |confirm |goto 20.44,63.86 |q 9740
step
click Sunhawk Portal Controller##184850
|tip It looks like a floating purple crystal.
Click Here After Destroying the Sunhawk Portal Controller |confirm |goto 19.98,63.03 |q 9740
step
click Sunhawk Portal Controller##184850
|tip It looks like a floating purple crystal.
Click Here After Destroying the Sunhawk Portal Controller |confirm |goto 19.26,62.04 |q 9740
step
click Sunhawk Portal Controller##184850
|tip It looks like a floating purple crystal.
Click Here After Destroying the Sunhawk Portal Controller |confirm |goto 18.83,61.64 |q 9740
step
click Sun Gate##182026
|tip Floating above the water.
Destroy the Sun Gate |q 9740/1 |goto 18.75,63.94
step
Follow the road |goto 27.92,51.83 < 70 |only if walking
talk Vindicator Aesom##17844
turnin The Sun Gate##9740 |goto 55.55,55.40
step
talk Anchorite Paetheus##17424
accept Newfound Allies##9632 |goto 54.66,53.96
step
talk Huntress Kella Nightbow##17614
turnin Newfound Allies##9632 |goto Azuremyst Isle/0 24.18,54.35
accept The Way to Auberdine##9633 |goto Azuremyst Isle/0 24.18,54.35
step
Enter the building |goto Darkshore/0 37.77,41.36 < 15 |walk
talk Thundris Windweaver##3649
|tip Inside the building.
turnin The Way to Auberdine##9633 |goto Darkshore/0 37.40,40.13
]])
