local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("ReputationsHCLASSIC") then return end
ZygorGuidesViewer.GuideMenuTier = "CLA"
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Reputation Guides\\The Burning Crusade\\Thrallmar",{
author="support@zygorguides.com",
startlevel=58,
endlevel=70,
},[[
step
"Hellfire Ramparts" and "The Blood Furnace" give rep up to 5999/6000 Friendly rep.
|tip For a full clear, Hellfire Ramparts will provide 633 reputation.
|tip For a full clear, the Blood Furnace will net 750 reputation.
|tip For optimal rep gains, it may be best to grind to 5999 Friendly before starting the Hellfire Peninsula leveling guide.
Reach 5,999 Into Honored Reputation with Thrallmar
|tip If you prefer to skip this, click the line below.
Click here to continue |confirm
step
Complete the "Hellfire Ramparts Quests" guide |complete countcompletedq(9588,9572) == 2 |future
step
Complete "The Blood Furnace Quests" guide |complete countcompletedq(9590,9608) == 2 |future
step
Complete the "Hellfire Peninsula" leveling guide
|tip Refer to the guide to accomplish this.
Click here to continue |confirm
step
ding 68
step
Complete the "Shattered Halls Quests" guide |q 9495 |future
step
Clear enemies within the Shattered Halls
|tip Full clears net around 1,600 reputation.
Reach Revered Reputation with Thrallmar |condition rep("Thrallmar")>=Revered
step
Run Heroic Hellfire Citadel Dungeons for reputation.
|tip A full clear of Heroic Hellfire Rampart nets roughly 2,500 reputation.
|tip A full clear of Heroic Blood Furnace nets roughly 2,700 reputation.
|tip A full clear of Heroic Shattered Halls nets roughly 2,900 reputation.
|tip A full clear of Normal Shattered Halls nets roughly 1,600 reputation.
Reach Exalted Reputation with Thrallmar |condition rep("Thrallmar")==Exalted
step
_Congratulations!_
You Earned Exalted Reputation with Thrallmar
]])
ZygorGuidesViewer:RegisterGuide("Reputation Guides\\The Burning Crusade\\Cenarion Expedition",{
author="support@zygorguides.com",
startlevel=58,
endlevel=70,
},[[
step
ding 62
step
Kill enemies around this area
collect 240 Unidentified Plant Parts##24401 |goto Zangarmarsh/0 71.65,76.32
|tip You can also buy them from the Auction House.
|only if rep("Cenarion Expedition") <= Honored
step
talk Lauranna Thar'well##17909
accept Plants of Zangarmarsh##9802 |goto 80.32,64.17
step
Kill enemies around this area
collect 10 Unidentified Plant Parts##24401 |q 9802/1 |goto 71.65,76.32
step
talk Lauranna Thar'well##17909
turnin Plants of Zangarmarsh##9802 |goto 80.32,64.17
step
talk Lauranna Thar'well##17909
accept Identify Plant Parts##9784 |goto 80.32,64.17 |future
|tip This quest is repeatable until Honored.
|tip You can also run the Slave Pens and Underbog for reputation up until Honored.
Reach Honored with the Cenarion Expedition |condition rep("Cenarion Expedition")>=Honored
step
use the Package of Identified Plants##24402
use the Uncatalogued Species##24407
|tip This is contained in the Package of Identified Plants.
|tip There is a low chance of obtaining this item.
accept Uncatalogued Species##9875
step
talk Lauranna Thar'well##17909
turnin Uncatalogued Species##9875 |goto 80.32,64.17
step
Complete the "Slave Pens Quests" guide |q 9738 |future
step
Complete "The Underbog Quests" guide |complete countcompletedq(9738,9717,9719,9715) == 4 |future
step
ding 70
step
Complete the "Steamvaults Quests" guide |complete countcompletedq(9763,9764,10885) == 3 |future
step
Clear enemies within the Steamvaults
|tip Full clears net around 1,600 reputation.
Reach Revered Reputation with the Cenarion Expedition |condition rep("Cenarion Expedition")>=Revered
step
Run Heroic Coilfang Resevoir Dungeons for reputation.
|tip A full clear of Heroic Slave Pens nets roughly 2,750 reputation.
|tip A full clear of Underbog nets roughly 2,600 reputation.
|tip A full clear of Heroic Steamvaults nets roughly 2,600 reputation.
|tip A full clear of Normal Steamvaults nets roughly 1,600 reputation.
Reach Exalted Reputation with the Cenarion Expedition |condition rep("Cenarion Expedition")==Exalted
step
_Congratulations!_
You Earned Exalted Reputation with the Cenarion Expedition
]])
ZygorGuidesViewer:RegisterGuide("Reputation Guides\\The Burning Crusade\\Lower City",{
author="support@zygorguides.com",
startlevel=58,
endlevel=70,
},[[
step
ding 64
step
Kill enemies around this area
collect 1080 Arakkoa Feather##25719 |goto Terokkar Forest/0 31.08,42.28
|tip You can also buy them from the Auction House.
|tip You will only need this many if you plan to run no instances.
|tip A full clear of Auchenai Crypts nets roughly 700 reputation.
|tip A full clear of Sethekk Halls nets roughly 1000 reputation.
|tip A full clear of Shadow Labyrinth nets roughly 1750 reputation.
|only if rep("Lower City") <= Honored
step
Run up the ramp |goto Shattrath City/0 56.45,16.27 < 7 |only if walking
talk Vekax##22429
|tip He walks around this area.
|tip Up on this wooden platform.
accept The Outcast's Plight##10917 |goto 52.01,18.10
step
Kill enemies around this area
collect 30 Arakkoa Feather##25719 |goto Terokkar Forest/0 31.08,42.28
step
Run up the ramp |goto Shattrath City/0 56.45,16.27 < 7 |only if walking
talk Vekax##22429
|tip He walks around this area.
|tip Up on this wooden platform.
turnin The Outcast's Plight##10917 |goto 52.01,18.10
step
Run up the ramp |goto Shattrath City/0 56.45,16.27 < 7 |only if walking
talk Vekax##22429
|tip He walks around this area.
|tip Up on this wooden platform.
accept More Feathers##10918 |goto 52.01,18.10
|tip This quest is repeatable until Honored.
|tip You can also run Auchenai Crypts, Sethekk Halls or Shadow Labyrunth for reputation up until Honored.
Reach Honored with the Lower City |condition rep("Lower City")>=Honored
step
Complete the "Auchenai Crypts Quests" guide |complete countcompletedq(10168,10164) == 2 |future
step
Complete the "Sethekk Halls Quests" guide |complete countcompletedq(10097,10098,10180) == 3 |future
step
Complete the "Shadow Labyrinth Quests" guide |complete countcompletedq(10666,10091,10095,9831,10649) == 5 |future
step
Clear enemies within the Steamvaults
|tip Full clears net around 1,600 reputation.
Reach Revered Reputation with the Lower City |condition rep("Lower City")>=Revered
step
Run Heroic Coilfang Resevoir Dungeons for reputation.
|tip A full clear of Heroic Auchenai Crpts nets roughly 2,000 reputation.
|tip A full clear of Heroic Sethekk Halls nets roughly 2,000 reputation.
|tip A full clear of Heroic Shadow Labyrinth nets roughly 2,700 reputation.
|tip A full clear of Normal Sethekk Halls nets roughly 1,000 reputation.
|tip A full clear of Normal Shadow Labyrinth nets roughly 1,700 reputation.
Reach Exalted Reputation with the Lower City |condition rep("Lower City")==Exalted
step
_Congratulations!_
You Earned Exalted Reputation with Lower City
]])
ZygorGuidesViewer:RegisterGuide("Reputation Guides\\The Burning Crusade\\The Scryers",{
author="support@zygorguides.com",
startlevel=60,
endlevel=70,
},[[
step
talk Haggard War Veteran##19684
|tip He walks along the bridge.
accept A'dal##10210 |goto Shattrath City/0 60.29,16.69
step
talk A'dal##18481
|tip Inside the building.
turnin A'dal##10210 |goto 54.00,44.71
step
talk Khadgar##18166
|tip Inside the building.
accept City of Light##10211 |goto 54.75,44.32
step
Follow Khadgar's Servant and listen to its story |q 10211/1
|tip Make sure you follow it or you will have to repeat this step.
|tip Marking it with a Raid Target Icon can help track it.
step
talk Khadgar##18166
|tip Inside the building.
turnin City of Light##10211 |goto 54.76,44.33
accept Allegiance to the Scryers##10552 |instant |goto 54.76,44.33
step
talk Khadgar##18166
accept Voren'thal the Seer##10553 |goto 54.76,44.33
step
Use the Elevator |goto 49.94,62.96 < 7 |n |only if walking
talk Magistrix Fyalenn##18531
accept Firewing Signets##10412 |goto 45.20,81.44
accept Sunfury Signets##10656 |goto 45.20,81.44
step
talk Voren'thal the Seer##18530
|tip Upstairs inside the building.
turnin Voren'thal the Seer##10553 |goto 42.79,91.71
accept Synthesis of Power##10416 |goto 42.79,91.71
step
talk Arcanist Savan##23272
accept Report to Spymaster Thalodien##11039 |goto 44.59,76.41
step
talk Spymaster Thalodien##19468
|tip Inside the building.
turnin Report to Spymaster Thalodien##11039 |goto Netherstorm/0 32.00,64.07
accept Manaforge B'naar##10189 |goto Netherstorm/0 32.00,64.07
step
kill Captain Arathyn##19635
|tip He walks around this area on a big purple bird.
collect B'naar Personnel Roster##28376 |q 10189/1 |goto 27.8,65
step
talk Spymaster Thalodien##19468
|tip Inside the building.
turnin Manaforge B'naar##10189 |goto 32.00,64.07
accept High Value Targets##10193 |goto 32.00,64.07
step
talk Magistrix Larynna##19469
|tip Inside the building.
accept Bloodgem Crystals##10204 |goto 32.05,64.00
only if rep ('The Scryers') >= Friendly
stickystart "Kill_8_Sunfury_Geologist"
stickystart "Kill_2_Sunfury_Warp-Master"
stickystart "Kill_6_Sunfury_Warp-Engineers"
stickystart "Collect_10_Sunfury_Signets"
step
kill Sunfury Magister##18855+
collect Bloodgem Shard##28452 |n
use the Bloodgem Shard##28452
|tip Use it next to the floating crystal.
Siphon the Bloodgem Crystal |q 10204/1 |goto 25.29,65.87
step
label "Kill_8_Sunfury_Geologist"
kill 8 Sunfury Geologist##19779+ |q 10193/3 |goto 28.57,70.80
step
label "Kill_2_Sunfury_Warp-Master"
kill 2 Sunfury Warp-Master##18857+ |q 10193/1 |goto 26.58,71.73
step
label "Kill_6_Sunfury_Warp-Engineers"
kill 6 Sunfury Warp-Engineer##18852+ |q 10193/2 |goto 28.62,72.08
You can find more around [26.78,72.08]
step
label "Collect_10_Sunfury_Signets"
collect 10 Sunfury Signet##30810 |q 10656/1 |goto 26.9,70.5
step
talk Spymaster Thalodien##19468
|tip Inside the building.
turnin High Value Targets##10193 |goto 32.00,64.07
accept Shutting Down Manaforge B'naar##10329 |goto 32.00,64.07
step
talk Magistrix Larynna##19469
|tip Inside the building.
turnin Bloodgem Crystals##10204 |goto 32.05,64.00
step
Inside Manaforge B'naar:
kill Overseer Theredis##20416
|tip Walking around inside the building.
collect B'naar Access Crystal##29366 |q 10329/2 |goto 23.85,70.62
step
Inside Manaforge B'naar:
click the B'naar Control Console
|tip Inside the building.
Choose  _"<Begin emergency shutdown>"_
Kill enemies around this area
|tip They will spawn in waves for 2 minutes.
Shut Down Manaforge B'naar |q 10329/1 |goto 23.19,68.10
step
talk Spymaster Thalodien##19468
|tip Inside the building.
turnin Shutting Down Manaforge B'naar##10329 |goto 32.00,64.07
accept Stealth Flight##10194 |goto 32.00,64.07
step
talk Veronia##20162
turnin Stealth Flight##10194 |goto 33.81,64.23
accept Behind Enemy Lines##10652 |goto 33.81,64.23
step
talk Veronia##20162
Tell her _"I'm as ready as i'll ever be."_
Fly to Manaforge Coruu |goto 48.0,86.0 < 5 |noway |c |q 10652
step
talk Caledis Brightdawn##19840
turnin Behind Enemy Lines##10652 |goto 48.24,86.60
accept A Convincing Disguise##10197 |goto 48.24,86.60
step
kill Sunfury Arcanists##20134+
collect Sunfury Arcanist Robes##28635 |q 10197/3 |goto 47.68,85.14
step
kill Sunfury Researcher##20136+
|tip Inside the building.
collect Sunfury Researcher Gloves##28636 |q 10197/1 |goto 49.01,81.49
step
kill Sunfury Guardsmen##18850
collect Sunfury Guardsman Medallion##28637 |q 10197/2 |goto 50.65,83.35
step
talk Caledis Brightdawn##19840
turnin A Convincing Disguise##10197 |goto 48.24,86.60
accept Information Gathering##10198 |goto 48.24,86.60
step
use the Sunfury Disguise##28607 |havebuff 133564 |q 10198
step
Inside of Manaforge Coruu:
|tip Avoid the Arcane Annihilators, they can see through the disguise.
|tip Listen to the information provided in the room full of blood elves.
Gather the Information |q 10198/1 |goto 48.20,84.08
step
talk Caledis Brightdawn##19840
turnin Information Gathering##10198 |goto 48.24,86.60
accept Shutting Down Manaforge Coruu##10330 |goto 48.24,86.60
step
Inside of Manaforge Coruu:
kill Overseer Seylanna##20397
|tip Inside the building.
collect Coruu Access Crystal##29396 |q 10330/2 |goto 49.01,81.49
step
Inside of Manaforge Coruu:
click the Coruu Control Console##183956
|tip Inside the building.
Choose _"<Begin emergency shutdown>"_
Kill enemies around this area
|tip They will spawn in waves for 2 minutes.
Shut Down Manaforge Coruu |q 10330/1 |goto 49.01,81.49
step
talk Caledis Brightdawn##19840
turnin Shutting Down Manaforge Coruu##10330 |goto 48.24,86.60
accept Return to Thalodien##10200 |goto 48.24,86.60
step
talk Spymaster Thalodien##19468
|tip Inside the building.
turnin Return to Thalodien##10200 |goto 32.00,64.07
step
talk Magistrix Larynna##19469
accept Kick Them While They're Down##10341 |goto 32.00,64.07
step
talk Spymaster Thalodien##19468
accept Shutting Down Manaforge Duro##10338 |goto 32.00,64.07
only if rep ('The Scryers') >= Neutral
stickystart "Kill_8_Sunfury_Conjurers"
stickystart "Kill_6_Sunfury_Bowmen"
stickystart "Kilil_4_Sunfury_Centurion"
step
Inside Manaforge Duro:
kill Overseer Athanel##20435
collect 1 Duro Access Crystal##29397|q 10338/2 |goto 59.99,68.48
only if rep ('The Scryers') >= Friendly
step
Inside Manaforge Duro:
click the Duro Control Console##184311
Choose _"<Begin emergency shutdown>"_
Kill enemies around this area
|tip They will spawn in waves for 2 minutes.
Shut Down Manaforge Duro |q 10338/1 |goto 59.09,66.81
only if rep ('The Scryers') >= Friendly
step
label "Kill_6_Sunfury_Bowmen"
kill 6 Sunfury Bowman##20207+ |q 10341/2 |goto 58.50,63.38
only if rep ('The Scryers') >= Friendly
step
label "Kill_8_Sunfury_Conjurers"
kill 8 Sunfury Conjurer##20139+ |q 10341/1 |goto 57.42,63.79
only if rep ('The Scryers') >= Friendly
step
label "Kilil_4_Sunfury_Centurion"
kill 4 Sunfury Centurion##20140+ |q 10341/3 |goto 56.73,65.08
only if rep ('The Scryers') >= Friendly
step
talk Spymaster Thalodien##19468
turnin Shutting Down Manaforge Duro##10338 |goto 32.00,64.07
step
talk Magistrix Larynna##19469
turnin Kick Them While They're Down##10341 |goto 32.00,64.07
accept A Defector##10202 |goto 32.00,64.07
only if rep ('The Scryers') >= Friendly
step
talk Magister Theledorn##20920
turnin A Defector##10202 |goto 26.2,41.6
accept Damning Evidence##10432 |goto 26.2,41.6
only if rep ('The Scryers') >= Friendly
step
Inside Manaforge Ara:
Kill enemies around this area
collect 8 Orders From Kael'thas##29797 |q 10432/1 |goto 27.11,39.19
only if rep ('The Scryers') >= Friendly
step
talk Spymaster Thalodien##19468
turnin Damning Evidence##10432 |goto 32.00,64.07
accept A Gift for Voren'thal##10508 |goto 32.00,64.07
only if rep ('The Scryers') >= Friendly
step
kill Forgemaster Morug##20800
|tip You may need help with this.
collect First Half of Socrethar's Stone##29624 |q 10508/1 |goto 36.83,27.87
only if rep ('The Scryers') >= Friendly
step
kill Silroth##20801
|tip You may need help with this.
collect Second Half of Socrethar's Stone##29625 |q 10508/2 |goto 40.88,19.54
only if rep ('The Scryers') >= Friendly
step
talk Spymaster Thalodien##19468
turnin A Gift for Voren'thal##10508 |goto 32.00,64.07
accept Bound for Glory##10509 |goto 32.00,64.07
step
talk Voren'thal the Seer##18530
|tip Upstairs inside the building.
turnin Bound for Glory##10509 |goto Shattrath City/0 42.77,91.72
accept Turnin Point##10507 |goto Shattrath City/0 42.77,91.72
step
use Voren'thal's Package##30260
collect 1 Socrethar's Teleportation Stone##29796 |n
collect 1 Voren'thal's Presence##30259 |n
Stand in the teleporter |goto Netherstorm/0 36.42,18.33
use Socrethar's Teleportation Stone##29796
Arrive at Socrethar's Seat |goto 30.56,17.72 < 10 |q 10507 |future |noway |c
step
use Voren'thal's Presence##30259
|tip Use it on Socrethar.
kill Socrethar##20132 |q 10507/1 |goto 29.31,13.71
step
talk Voren'thal the Seer##18530
|tip Upstairs inside the building.
turnin Turnin Point##10507 |goto Shattrath City/0 42.77,91.72
step
talk Larissa Sunstrike##21954
|tip Inside the building.
accept Karabor Training Grounds##10687 |goto Shadowmoon Valley/0 55.74,58.17
step
talk Battlemage Vyara##22211
accept Sunfury Signets##10824 |goto 56.29,58.80
step
talk Arcanist Thelis##21955
|tip Inside the building.
accept Tablets of Baa'ri##10683 |goto 56.25,59.60
step
talk Varen the Reclaimer##21953
accept The Ashtongue Broken##10807 |goto 54.73,58.20
step
Kill Eclipse enemies around this area
collect 10 Sunfury Signet##30810 |q 10824/1 |goto 51.50,59.08
You can find more around [51.67,65.83]
step
talk Battlemage Vyara##22211
turnin Sunfury Signets##10824 |goto 56.29,58.80
stickystart "Collect_Arcane_Tome"
step
Kill Demon Hunter enemies around this area
collect 8 Sunfury Glaive##30679 |q 10687/1 |goto 70.42,51.98
step
label "Collect_Arcane_Tome"
Kill Demon Hunter enemies around this area
collect 1 Arcane Tome##29739 |q 10416/1 |goto 70.42,51.98
step
talk Larissa Sunstrike##21954
|tip Inside the building
turnin Karabor Training Grounds##10687 |goto 55.74,58.17
accept A Necessary Distraction##10688 |goto 55.74,58.17
step
kill Sunfury Warlock##21503+
collect Scroll of Demonic Unbanishing##30811 |n
use the Scroll of Demonic Unbanishing##30811
|tip Use it on Azaloth.
Free Azaloth |q 10688/1 |goto 70.0,51.4
step
talk Larissa Sunstrike##21954
|tip Inside the building.
turnin A Necessary Distraction##10688 |goto 55.74,58.17
accept Altruis##10689 |goto 55.74,58.17
stickystart "Kill_4_Ashtongue_Warriors"
stickystart "Kill_6_Ashtongue_Shaman"
stickystart "Collect_12_Baa'ri_Tablet_Fragments"
step
kill 3 Ashtongue Handler##21803+ |q 10807/1 |goto 56.20,36.71
step
label "Kill_4_Ashtongue_Warriors"
kill 4 Ashtongue Warrior##21454+ |q 10807/2 |goto 56.99,34.38
step
label "Kill_6_Ashtongue_Shaman"
kill 6 Ashtongue Shaman##21453+ |q 10807/3 |goto 55.72,39.22
step
label "Collect_12_Baa'ri_Tablet_Fragments"
click Baar'ri Tablet Fragment##6420
|tip On the ground around this area.
kill Ashtongue Worker##21455+
collect 12 Baa'ri Tablet Fragment##30596 |q 10683/1 |goto 59.84,36.36
step
talk Varen the Reclaimer##21953
turnin The Ashtongue Broken##10807 |goto 54.73,58.20
accept The Great Retribution##10817 |goto 54.73,58.20
step
talk Arcanist Thelis##21955
turnin Tablets of Baa'ri##10683 |goto 56.25,59.60
accept Oronu the Elder##10684 |goto 56.25,59.60
step
kill Oronu the Elder##21663
|tip Standing on the balcony.
collect Orders From Akama##30649 |q 10684/1 |goto 57.16,32.82
stickystart "Kill_8_Shadowmoon_Chosen"
stickystart "Kill_4_Shadowmoon_Darkweavers"
step
kill 8 Shadowmoon Slayer##22082+ |q 10817/1 |goto 68.65,39.55
step
label "Kill_8_Shadowmoon_Chosen"
kill 8 Shadowmoon Chosen##22084+ |q 10817/2 |goto 68.62,37.63
step
label "Kill_4_Shadowmoon_Darkweavers"
kill 4 Shadowmoon Darkweaver##22081+ |q 10817/3 |goto 68.77,35.70
You can find more around [69.62,39.62]
step
talk Arcanist Thelis##21955
turnin Oronu the Elder##10684 |goto 56.25,59.60
accept The Ashtongue Corruptors##10685 |goto 56.25,59.60
step
kill Corrupt Air Totem##21705
|tip Destroy them all to make Haalum vulnerable.
kill Haalum##21711
collect Haalum's Medallion Fragment##30691 |q 10685/2 |goto 57.08,73.64
step
kill Corrupt Earth Totem##21704
|tip Destroy them all to make Eykenen vulnerable.
kill Eykenen##21709
collect Eykenen's Medallion Fragment##30692 |q 10685/1 |goto 51.18,52.83
step
kill Corrupt Fire Totem##21703
|tip Destroy them all to make Uylaru vulnerable.
kill Uylaru##21710
collect Uylaru's Medallion Fragment##30694 |q 10685/4 |goto 48.29,39.56
step
kill Corrupt Water Totem##21420
|tip Destroy them all to make Lakaan vulnerable.
kill Lakaan##21416
collect Lakaan's Medallion Fragment##30693 |q 10685/3 |goto 49.89,23.01
step
talk Arcanist Thelis##21955
turnin The Ashtongue Corruptors##10685 |goto 56.25,59.60
accept The Warden's Cage##10686 |goto 56.25,59.60
step
Follow the path down |goto 57.35,49.67 < 5 |walk
talk Sanoru##21826
|tip Downstairs.
turnin The Warden's Cage##10686 |goto 57.33,49.58
step
talk Altruis the Sufferer##18417
turnin Altruis##10640 |goto Nagrand/0 27.34,43.09
accept Against All Odds##10669 |goto 27.34,43.09
accept Against the Illidari##10668 |goto 27.34,43.09
accept Against the Legion##10641 |goto 27.34,43.09
step
use the Imbued Silver Spear##30853
kill Xeleth##21894 |q 10669/1 |goto Zangarmarsh/0 16.19,40.69
step
kill Wrath Priestess##18859+
|tip Walks around this area.
collect Freshly Drawn Blood##30850 |n
use the Freshly Drawn Blood##30850
|tip It only lasts for a minute.
kill Avatar of Sathal##21925 |q 10641/1 |goto Netherstorm/0 39.66,20.55
step
kill Lothros##21928 |q 10668/1 |goto Shadowmoon Valley/0 28.20,48.90
|tip He walks around this area.
|tip You may need help with this.
step
talk Altruis the Sufferer##18417
turnin Against the Legion##10641 |goto Nagrand/0 27.34,43.09
turnin Against the Illidari##10668 |goto 27.34,43.09
turnin Against All Odds##10669 |goto 27.34,43.09
accept Illidan's Pupil##10646 |goto 27.34,43.09
step
talk Altruis the Sufferer##18417
Choose _"Tell me about the demon hunter training grounds at the Ruins of Karabor."_
Listen to Illidan's Pupil |q 10646/1 |goto 27.34,43.09
step
talk Altruis the Sufferer##18417
turnin Illidan's Pupil##10646 |goto 27.34,43.09
accept The Book of Fel Names##10649 |goto 27.34,43.09
step
Inside the Shadow Labyrinth Dungeon:
kill Blackheart the Inciter##18667
collect 1 Book of Fel Names##30808|q 10649/1
step
talk Altruis the Sufferer##18417
turnin The Book of Fel Names##10649 |goto 27.34,43.09
accept Return to the Scryers##10691 |goto 27.34,43.09
step
talk Larissa Sunstrike##21954
|tip Inside the building.
turnin Return to the Scryers##10691 |goto Shadowmoon Valley/0 55.74,58.17
accept Varedis Must Be Stopped##10692 |goto 55.74,58.17
step
kill Netharel##21164 |q 10692/2 |goto 68.71,52.69
|tip He walks around this area.
|tip You may need help with this.
step
kill Alandien##21171 |q 10692/4 |goto 69.59,54.08
|tip You may need help with this.
step
kill Varedis##21178
|tip Inside the building.
|tip You may need help with this.
use the Book of Fel Names##30854
|tip Use it when Varedis is at low health.
Slay Varedis |q 10692/1 |goto 72.2,53.7
step
kill Theras##21168 |q 10692/3 |goto 72.34,48.40
|tip You may need help with this.
step
talk Larissa Sunstrike##21954
|tip Inside the building.
turnin Return to the Scryers##10692 |goto 55.74,58.17
step
talk Magistrix Fyalenn##18531
turnin Firewing Signets##10412 |goto Shattrath City/0 45.21,81.43
turnin Sunfury Signets##10656 |goto 45.21,81.43
step
talk Voren'thal the Seer##18530
|tip Upstairs inside the building.
turnin Synthesis of Power##10416 |goto 42.77,91.72
step
label "farming"
You will need to farm "Arcane Tomes" and "Sunfury Signets"
|tip Every 10 Sunfury Signets turned in nets 250 reputation.
|tip Each Arcane Tome turn in nets 350 reputation.
Click here to continue |confirm
'|complete rep('The Scryers')==Exalted |next "exalted"
step
Kill Sunfury enemies around this area
collect Arcane Tome##29739 |n |goto Netherstorm/0 27.58,70.88
|tip Each Arcane Tome turn in nets 350 reputation.
collect Sunfury Signet##30810 |n |goto 27.58,70.88
|tip Every 10 Sunfury Signets turned in nets 250 reputation.
You can find more around [25.23,65.72]
Click here to continue |confirm
step
talk Magistrix Fyalenn##18531
accept More Sunfury Signets##10658 |n |goto Shattrath City/0 45.21,81.43
Click here to continue |confirm
Reach Exalted reputation with The Scryers |next "exalted" |complete rep('The Scryers')==Exalted
step
talk Voren'thal the Seer##18530
|tip Upstairs inside the building.
accept Arcane Tomes##10419 |n |goto Shattrath City/0 42.77,91.72
Click here to continue |next "farming" |confirm
|tip Click the line above to continue farming.
Reach Exalted reputation with The Scryers. |next |complete rep('The Scryers')==Exalted
step
label "exalted"
_Congratulations!_
You Earned Exalted Reputation with The Scryers
]])
ZygorGuidesViewer:RegisterGuide("Reputation Guides\\The Burning Crusade\\The Aldor",{
author="support@zygorguides.com",
startlevel=60,
endlevel=70,
},[[
step
talk Haggard War Veteran##19684
|tip He walks along the bridge.
accept A'dal##10210 |goto Shattrath City/0 60.29,16.69
step
talk A'dal##18481
|tip Inside the building.
turnin A'dal##10210 |goto 54.00,44.71
step
talk Khadgar##18166
|tip Inside the building.
accept City of Light##10211 |goto 54.75,44.32
step
Follow Khadgar's Servant and listen to its story |q 10211/1
|tip Make sure you follow it or you will have to repeat this step.
|tip Marking it with a Raid Target Icon can help track it.
step
talk Khadgar##18166
|tip Inside the building.
turnin City of Light##10211 |goto 54.76,44.33
accept Allegiance to the Aldor##10551 |instant |goto 54.76,44.33
step
talk Khadgar##18166
|tip Inside the building.
accept Ishanah##10554 |goto 54.76,44.33
step
Use the elevator |goto Shattrath City/0 41.71,38.64 < 5 |only if walking
talk Vindicator Kaan##23271
accept Assist Exarch Orelis##11038 |goto 35.07,32.36
step
talk Adyen the Lightwarden##18537
accept Marks of Kil'jaeden##10325 |goto 30.81,34.60
accept Marks of Sargeras##10653 |goto 30.81,34.60
step
talk Ishanah##18538
|tip Inside the building.
turnin Ishanah##10554 |goto 23.96,29.70
accept Restoring the Light##10021 |goto 23.96,29.70
accept A Cleansing Light##10420 |goto 23.96,29.70
step
talk Sha'nir##18597
|tip Inside the building.
accept A Cure for Zahlia##10020 |goto 64.48,15.10
step
Kill Cabal enemies around this area
collect 10 Mark of Kil'jaeden##29425 |goto Terokkar Forest/0 39.67,58.73
step
click the Eastern Altar##182565
Purify the Eastern Altar |q 10021/2 |goto Terokkar Forest/0 49.24,20.31
step
click the Northern Altar##182563
Purify the Northern Altar |q 10021/1 |goto 50.67,16.54
step
click the Western Altar##182566
Purify the Western Altar |q 10021/3 |goto 48.11,14.51
step
kill Stonegazer##18648+
collect Stonegazer's Blood##25815 |q 10020/1 |goto 61.23,25.76
|tip It walks around this area.
|tip You may need help with this.
You can also find it around [goto 68.45,31.00]
step
talk Adyen the Lightwarden##18537
turnin Marks of Kil'jaeden##10325 |goto Shattrath City/0 30.81,34.60
step
talk Sha'nir##18597
turnin A Cure for Zahlia##10020 |goto 64.48,15.10
step
talk Ishanah##18538
|tip Inside the building.
turnin Restoring the Light##10021 |goto 23.96,29.70
step
talk Vindicator Kaan##23271
accept Assist Exarch Orelis##11038 |goto 35.06,32.36
step
talk Exarch Orelis##19466
|tip Inside the building.
turnin Assist Exarch Orelis##11038 |goto Netherstorm/0 32.07,64.18
accept Distraction at Manaforge B'naar##10241 |goto 32.07,64.18
stickystart "Kill_8_Sunfury_Bloodwarders"
step
kill 8 Sunfury Magister##18855+ |q 10241/1 |goto 25.34,65.49
You can find more around [26.24,68.56]
step
label "Kill_8_Sunfury_Bloodwarders"
kill 8 Sunfury Bloodwarder##18853+ |q 10241/2 |goto 27.43,65.46
You can find more around [21.22,69.44]
step
talk Exarch Orelis##19466
|tip Inside the building.
turnin Distraction at Manaforge B'naar##10241 |goto 32.07,64.18
accept Measuring Warp Energies##10313 |goto 32.07,64.18
step
talk Anchorite Karja##19467
|tip Inside the building.
accept Naaru Technology##10243 |goto 32.03,64.18
step
Next to the Northern Pipeline:
use the Warp-Attuned Orb##29324
Measure the Northern Pipeline |q 10313/1 |goto 25.71,60.62
step
Next to the Western Pipeline:
use the Warp-Attuned Orb##29324
Measure the Western Pipeline |q 10313/4 |goto 20.90,66.90
step
Next to the Southern Pipeline:
use the Warp-Attuned Orb##29324
Measure the Southern Pipeline |q 10313/3 |goto 20.71,70.70
step
Inside Manaforge B'naar:
click the B'naar Control Console
turnin Naaru Technology##10243 |goto 23.19,68.10
accept B'naar Console Transcription##10245 |goto 23.19,68.10
step
Next to the Eastern Pipeline:
use the Warp-Attuned Orb##29324
Measure the Eastern Pipeline |q 10313/2 |goto 28.98,72.70
step
talk Exarch Orelis##19466
|tip Inside the building.
turnin Measuring Warp Energies##10313 |goto 32.07,64.18
step
talk Anchorite Karja##19467
|tip Inside the building.
turnin B'naar Console Transcription##10245 |goto 32.03,64.18
accept Shutting Down Manaforge B'naar##10299 |goto 32.03,64.18
step
Inside Manaforge B'naar:
kill Overseer Theredis##20416
|tip Walking around inside the building.
collect B'naar Access Crystal##29366 |q 10299/2 |goto 23.85,70.62
step
Inside Manaforge B'naar:
click the B'naar Control Console
|tip Inside the building.
Choose  _"<Begin emergency shutdown>"_
Kill enemies around this area
|tip They will spawn in waves for 2 minutes.
Shut Down Manaforge B'naar |q 10299/1 |goto 23.19,68.10
step
talk Anchorite Karja##19467
|tip Inside the building.
turnin Shutting Down Manaforge B'naar##10299 |goto 32.03,64.18
accept Shutting Down Manaforge Coruu##10321 |goto 32.03,64.18
step
talk Exarch Orelis##19466
|tip Inside the building.
accept Attack on Manaforge Coruu##10246 |goto 32.07,64.18
step
kill 8 Sunfury Arcanist##20134+ |q 10246/2 |goto 47.68,85.14
step
Inside of Manaforge Coruu:
kill 5 Sunfury Researcher##20136+ |q 10246/1 |goto 49.01,81.49
step
Inside of Manaforge Coruu:
kill Overseer Seylanna##20397
|tip Inside the building.
collect Coruu Access Crystal##29396 |q 10321 |goto 49.01,81.49
step
Inside of Manaforge Coruu:
click the Coruu Control Console##183956
|tip Inside the building.
Choose _"<Begin emergency shutdown>"_
Kill enemies around this area
|tip They will spawn in waves for 2 minutes.
Shut Down Manaforge Coruu |q 10321/1 |goto 49.01,81.49
step
talk Anchorite Karja##19467
|tip Inside the building.
turnin Shutting Down Manaforge Coruu##10321 |goto 32.03,64.18
accept Shutting Down Manaforge Duro##10322 |goto 32.03,64.18
step
talk Exarch Orelis##19466
|tip Inside the building.
turnin Attack on Manaforge Coruu##10246 |goto 32.07,64.18
accept Sunfury Briefings##10328 |goto 32.07,64.18
step
kill Sunfury Conjurer##20139+
collect 1 Sunfury Arcane Briefing##29546|q 10328/2 |goto 57.42,63.79
step
kill Sunfury Bowman##20207+, Sunfury Centurion##20140+
collect 1 Sunfury Military Briefing##29545|q 10328/1 |goto 58.50,63.38
step
Inside Manaforge Duro:
kill Overseer Athanel##20435
collect 1 Duro Access Crystal##29397|q 10322/2 |goto 57.42,63.79
step
click the Duro Control Console##184311
Choose _"<Begin emergency shutdown>"_
Kill enemies around this area
|tip They will spawn in waves for 2 minutes.
Shut Down Manaforge Duro |q 10322/1 |goto 59.09,66.81
step
talk Exarch Orelis##19466
|tip Inside the building.
turnin Sunfury Briefings##10328 |goto 32.07,64.18
accept Outside Assistance##10431 |goto 32.07,64.18
step
talk Anchorite Karja##19467
|tip Inside the building.
turnin Shutting Down Manaforge Duro##10322 |goto 32.03,64.18
accept Shutting Down Manaforge Ara##10323 |goto 32.03,64.18
step
talk Kaylaan##20780
turnin Outside Assistance##10431 |goto 34.79,38.30
accept A Dark Pact##10380 |goto 34.79,38.30
stickystart "Kill_6_Gan'arg_Warp-Tinkerers"
stickystart "Kill_6_Mo'arg_Warp-Masters"
step
kill 3 Daughter of Destiny##18860+ |q 10380/2 |goto 30.61,39.95
You can more around [28.48,41.29]
step
label "Kill_6_Gan'arg_Warp-Tinkerers"
kill 6 Gan'arg Warp-Tinker##20285+ |q 10380/1 |goto 24.45,40.86
You can find more in the cave around [26.38,43.99]
step
label "Kill_6_Mo'arg_Warp-Masters"
kill 6 Mo'arg Warp-Master##20326+ |q 10380/3 |goto 24.45,40.86
You can find more in the cave around [26.38,43.99]
step
Inside Manaforge Ara:
kill Overseer Azarad##20685
|tip He walks around inside Manaforge Ara and stops in at this small side room.
collect Ara Access Crystal##29411 |q 10323/2 |goto 26.7,36.8
step
Inside Manaforge Ara:
click the Ara Control Console##184312
click "<Begin emergency shutdown>"
Kill enemies around this area
|tip They will spawn in waves for 2 minutes.
Shut Down Manaforge Ara |q 10323/1 |goto 26.0,38.8
step
talk Kaylaan##20780
turnin A Dark Pact##10380 |goto 34.79,38.30
accept Aldor No More##10381 |goto 34.79,38.30
step
talk Exarch Orelis##19466
|tip Inside the building.
turnin Aldor No More##10381 |goto 32.07,64.18
step
talk Anchorite Karja##19467
|tip Inside the building.
turnin Shutting Down Manaforge Ara##10323 |goto 32.03,64.18
accept Socrethar's Shadow##10407 |goto 32.03,64.18
stickystart "Collect_10_ Marks_of_Sargeras"
stickystart "Collect_1_Fel_Armament"
step
kill Forgemaster Morug##20800
|tip You may need help with this.
collect First Half of Socrethar's Stone##29624 |q 10407/1 |goto 36.84,27.86
step
kill Silroth##20801
|tip You may need help with this.
collect Second Half of Socrethar's Stone##29625 |q 10407/2 |goto 40.89,19.55
step
label "Collect_10_ Marks_of_Sargeras"
Kill enemies around this area
collect 10 Mark of Sargeras##30809+ |q 10653/1 |goto 42.08,21.78
More can be found around here:
[39.87,22.99]
[38.04,26.88]
step
label "Collect_1_Fel_Armament"
Kill enemies around this area
collect 1 Fel Armament##29740 |q 10420/1 |goto 42.08,21.78
More can be found around here:
[39.87,22.99]
[38.04,26.88]
step
talk Anchorite Karja##19467
|tip Inside the building.
turnin Socrethar's Shadow##10407 |goto 32.03,64.18
accept Ishanah's Help##10410 |goto 32.03,64.18
step
talk Adyen the Lightwarden##18537
turnin Marks of Sargeras##10653 |goto Shattrath City/0 30.81,34.60
step
talk Ishanah##18538
|tip Inside the building.
talk Ishanah##18538
turnin Ishanah's Help##10410 |goto 23.96,29.70
turnin A Cleansing Light##10420 |goto 23.96,29.70
accept Deathblow to the Legion##10409 |goto 23.96,29.70
step
use Voren'thal's Package##30260
collect 1 Socrethar's Teleportation Stone##29796 |n
collect 1 Voren'thal's Presence##30259 |n
Stand in the teleporter |goto Netherstorm/0 36.42,18.33
use Socrethar's Teleportation Stone##29796
Arrive at Socrethar's Seat |goto 30.56,17.72 < 10 |q 10409 |future |noway |c
step
use Voren'thal's Presence##30259
|tip Use it on Socrethar.
kill Socrethar##20132 |q 10409/1 |goto 29.31,13.71
step
talk Ishanah##18538
turnin Deathblow to the Legion##10409 |goto Shattrath City/0 23.96,29.70
step
talk Exarch Onaala##21860
accept Karabor Training Grounds##10587 |goto Shadowmoon Valley/0 61.19,29.23
step
talk Vindicator Aluumen##21822
accept The Ashtongue Tribe##10619 |goto 61.18,29.15
step
talk Anchorite Ceyla##21402
|tip Inside the building.
accept Tablets of Baa'ri##10568 |goto 62.58,28.37
stickystart "Kill_4_Ashtongue_Warriors"
stickystart "Kill_6_Ashtongue_Shaman"
stickystart "Collect_12_Baa'ri_Tablet_Fragments"
step
kill 3 Ashtongue Handler##21803+ |q 10619/1 |goto 56.20,36.71
step
label "Kill_4_Ashtongue_Warriors"
kill 4 Ashtongue Warrior##21454+ |q 10619/2 |goto 56.99,34.38
step
label "Kill_6_Ashtongue_Shaman"
kill 6 Ashtongue Shaman##21453+ |q 10619/3 |goto 55.72,39.22
step
label "Collect_12_Baa'ri_Tablet_Fragments"
click Baar'ri Tablet Fragment##6420
|tip On the ground around this area.
kill Ashtongue Worker##21455+
collect 12 Baa'ri Tablet Fragment##30596 |q 10568/1 |goto 59.84,36.36
step
Kill Demon Hunter enemies around this area
collect 8 Sunfury Glaive##30679 |q 10587/1 |goto 70.42,51.98
step
talk Vindicator Aluumen##21822
turnin The Ashtongue Tribe##10619 |goto 61.18,29.15
accept Reclaiming Holy Grounds##10816 |goto 61.18,29.15
step
talk Anchorite Ceyla##21402
|tip Inside the building.
turnin Tablets of Baa'ri##10568 |goto 62.58,28.37
accept Oronu the Elder##10571 |goto 62.58,28.37
step
talk Exarch Onaala##21860
turnin Karabor Training Grounds##10587 |goto Shadowmoon Valley/0 61.19,29.23
accept A Necessary Distraction##10637 |goto Shadowmoon Valley/0 61.19,29.23
step
kill Oronu the Elder##21663
|tip Standing on the balcony.
collect Orders From Akama##30649 |q 10571/1 |goto 57.16,32.82
stickystart "Kill_8_Shadowmoon_Chosen"
stickystart "Kill_4_Shadowmoon_Darkweavers"
step
kill 8 Shadowmoon Slayer##22082+ |q 10816/1 |goto 68.65,39.55
step
label "Kill_8_Shadowmoon_Chosen"
kill 8 Shadowmoon Chosen##22084+ |q 10816/2 |goto 68.62,37.63
step
label "Kill_4_Shadowmoon_Darkweavers"
kill 4 Shadowmoon Darkweaver##22081+ |q 10816/3 |goto 68.77,35.70
You can find more around [69.62,39.62]
step
kill Sunfury Warlock##21503+
collect Scroll of Demonic Unbanishing##30811 |n
use the Scroll of Demonic Unbanishing##30811
|tip Use it on Azaloth.
Free Azaloth |q 10637/1 |goto 70.0,51.4
step
talk Exarch Onaala##21860
turnin A Necessary Distraction##10637 |goto Shadowmoon Valley/0 61.19,29.23
accept Altruis##10640 |goto Shadowmoon Valley/0 61.19,29.23
step
talk Vindicator Aluumen##21822
turnin Reclaiming Holy Grounds##10816 |goto 61.18,29.15
step
talk Anchorite Ceyla##21402
|tip Inside the building.
turnin Oronu the Elder##10571 |goto 62.58,28.37
accept The Ashtongue Corruptors##10574 |goto 62.58,28.37
step
kill Corrupt Water Totem##21420
|tip Destroy them all to make Lakaan vulnerable.
kill Lakaan##21416
collect Lakaan's Medallion Fragment##30693 |q 10574/3 |goto 49.89,23.01
step
kill Corrupt Fire Totem##21703
|tip Destroy them all to make Uylaru vulnerable.
kill Uylaru##21710
collect Uylaru's Medallion Fragment##30694 |q 10574/4 |goto 48.29,39.56
step
kill Corrupt Earth Totem##21704
|tip Destroy them all to make Eykenen vulnerable.
kill Eykenen##21709
collect Eykenen's Medallion Fragment##30692 |q 10574/1 |goto 51.18,52.83
step
kill Corrupt Air Totem##21705
|tip Destroy them all to make Haalum vulnerable.
kill Haalum##21711
collect Haalum's Medallion Fragment##30691 |q 10574/2 |goto 57.08,73.64
step
talk Anchorite Ceyla##21402
|tip Inside the building.
turnin The Ashtongue Corruptors##10574 |goto 62.58,28.37
accept The Warden's Cage##10575 |goto 62.58,28.37
step
Follow the path down |goto 57.35,49.67 < 5 |walk
talk Sanoru##21826
|tip Downstairs.
turnin The Warden's Cage##10575 |goto 57.33,49.58
step
talk Altruis the Sufferer##18417
turnin Altruis##10640 |goto Nagrand/0 27.34,43.09
accept Against All Odds##10669 |goto 27.34,43.09
accept Against the Illidari##10668 |goto 27.34,43.09
accept Against the Legion##10641 |goto 27.34,43.09
step
use the Imbued Silver Spear##30853
kill Xeleth##21894 |q 10669/1 |goto Zangarmarsh/0 16.19,40.69
step
kill Wrath Priestess##18859+
|tip Walks around this area.
collect Freshly Drawn Blood##30850 |n
use the Freshly Drawn Blood##30850
|tip It only lasts for a minute.
kill Avatar of Sathal##21925 |q 10641/1 |goto Netherstorm/0 39.66,20.55
step
kill Lothros##21928 |q 10668/1 |goto Shadowmoon Valley/0 28.20,48.90
|tip He walks around this area.
|tip You may need help with this.
step
talk Altruis the Sufferer##18417
turnin Against the Legion##10641 |goto Nagrand/0 27.34,43.09
turnin Against the Illidari##10668 |goto 27.34,43.09
turnin Against All Odds##10669 |goto 27.34,43.09
accept Illidan's Pupil##10646 |goto 27.34,43.09
step
talk Altruis the Sufferer##18417
Choose _"Tell me about the demon hunter training grounds at the Ruins of Karabor."_
Listen to Illidan's Pupil |q 10646/1 |goto 27.34,43.09
step
talk Altruis the Sufferer##18417
turnin Illidan's Pupil##10646 |goto 27.34,43.09
accept The Book of Fel Names##10649 |goto 27.34,43.09
step
Inside the Shadow Labyrinth Dungeon:
kill Blackheart the Inciter##18667
collect 1 Book of Fel Names##30808|q 10649/1
step
talk Altruis the Sufferer##18417
turnin The Book of Fel Names##10649 |goto 27.34,43.09
accept Return to the Scryers##10691 |goto 27.34,43.09
step
talk Exarch Onaala##21860
turnin Return to the Aldor##10650 |goto Shadowmoon Valley/0 61.19,29.23
accept Varedis Must Be Stopped##10651 |goto 61.19,29.23
step
kill Netharel##21164 |q 10651/2 |goto 68.71,52.69
|tip He walks around this area.
|tip You may need help with this.
step
kill Alandien##21171 |q 10651/4 |goto 69.59,54.08
|tip You may need help with this.
step
kill Varedis##21178
|tip Inside the building.
|tip You may need help with this.
use the Book of Fel Names##30854
|tip Use it when Varedis is at low health.
Slay Varedis |q 10651/1 |goto 72.2,53.7
step
kill Theras##21168 |q 10651/3 |goto 72.34,48.40
|tip You may need help with this.
step
talk Exarch Onaala##21860
turnin Return to the Aldor##10650 |goto Shadowmoon Valley/0 61.19,29.23
step
label "farming"
You will need to farm "Fel Armaments" and "Mark of Sargeras"
|tip Every 10 Mark of Sargeras turned in nets 250 reputation.
|tip Each Fel Armament turn in nets 350 reputation.
Click here to continue |confirm
'|complete rep('The Aldor')==Exalted |next "exalted"
step
Kill enemies around this area
collect Fel Armament##29740 |n |goto Shadowmoon Valley 22.5,34.6
|tip Each Fel Armament turn in nets 350 reputation.
collect Mark of Sargeras###30809 |n |goto Shadowmoon Valley 22.5,34.6
|tip Every 10 Mark of Sargeras turned in nets 250 reputation.
Click here to continue |confirm
step
talk Adyen the Lightwarden##18537
accept More Marks of Sargeras##10654 |n |goto Shattrath City/0 30.81,34.60
Click here to continue |confirm
Reach Exalted reputation with The Aldor |complete rep('The Aldor')==Exalted |next "exalted"
step
talk Ishanah##18538
|tip Inside the building.
accept Fel Armaments##10421 |n |goto 23.96,29.70
Click here to continue |confirm |next "farming"
Reach Exalted reputation with The Aldor |complete rep('The Aldor')==Exalted |next
step
label "exalted"
_Congratulations!_
You Earned Exalted Reputation with The Aldor
]])
ZGV.BETAEND()
ZGV.DevStart()
