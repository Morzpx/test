local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("EventsH") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Events Guides\\Darkmoon Faire\\Elwynn Forest\\Sayge's Fortunes (Elwynn Forest)",{
author="support@zygorguides.com",
description="\nReceive a stat buff and have your fortune told by Sayge at the Darkmoon Faire.",
model={491},
},[[
step
label "Choose_Fortune"
Choose the buff you would like to receive:
|tip The buff lasts for two hours.
|tip You can have your fortune told every four hours.
|tip NOTE: You will not be able to receive the written fortune and potential quest without an open inventory slot.
+10% Agility |confirm |next "Agility_Buff"
+10% Intelligence |confirm |next "Intelligence_Buff"
+10% Spirit |confirm |next "Spirit_Buff"
+10% Stamina |confirm |next "Stamina_Buff"
+10% Strength |confirm |next "Strength_Buff"
+10% Armor |confirm |next "Armor_Buff"
+25 All Resistances |confirm |next "Resistance_Buff"
+10% Damage |confirm |next "Damage_Buff"
step
label "Agility_Buff"
talk Sayge##14822
Choose _"I am ready to discover where my fortune lies!"_
Tell him _"I confiscate the corn he has stolen, warn him that stealing is a path towards doom and destruction, but I let him go to return to his family."_
Then tell him _"I would create some surreptitious means to keep my brother out of the order."_
Gain the "Sayge's Dark Fortune of Agility" Buff |havebuff spell:23736 |goto Elwynn Forest 42.12,69.00 |next "Use_Darkmoon_Faire_Fortune"
step
label "Intelligence_Buff"
talk Sayge##14822
Choose _"I am ready to discover where my fortune lies!"_
Tell him _"I turn over the man to my liege for punishment, as he has broken the law of the land and it is my sworn duty to enforce it."_
Then tell him _"I quietly ignore the insult."_
Gain the "Sayge's Dark Fortune of Intelligence" Buff |havebuff spell:23766 |goto Elwynn Forest 42.12,69.00 |next "Use_Darkmoon_Faire_Fortune"
step
label "Spirit_Buff"
talk Sayge##14822
Choose _"I am ready to discover where my fortune lies!"_
Tell him _"I turn over the man to my liege for punishment, as he has broken the law of the land and it is my sworn duty to enforce it."_
Then tell him _"I confront the ruler on his malicious behavior, upholding my liege's honor at the risk of any future diplomacy."_
Gain the "Sayge's Dark Fortune of Spirit" Buff |havebuff spell:23738 |goto Elwynn Forest 42.12,69.00 |next "Use_Darkmoon_Faire_Fortune"
step
label "Stamina_Buff"
talk Sayge##14822
Choose _"I am ready to discover where my fortune lies!"_
Tell him _"I confiscate the corn he has stolen, warn him that stealing is a path towards doom and destruction, but I let him go to return to his family."_
Then tell him _"I would speak against my brother joining the order, rushing a permanent breech in our relationship."_
Gain the "Sayge's Dark Fortune of Stamina" Buff |havebuff spell:23737 |goto Elwynn Forest 42.12,69.00 |next "Use_Darkmoon_Faire_Fortune"
step
label "Strength_Buff"
talk Sayge##14822
Choose _"I am ready to discover where my fortune lies!"_
Tell him _"I confiscate the corn he has stolen, warn him that stealing is a path towards doom and destruction, but I let him go to return to his family."_
Then tell him _"I would speak for my brother joining the order, potentially risking the safety of the order."_
Gain the "Sayge's Dark Fortune of Strength" Buff |havebuff spell:23735 |goto Elwynn Forest 42.12,69.00 |next "Use_Darkmoon_Faire_Fortune"
step
label "Armor_Buff"
talk Sayge##14822
Choose _"I am ready to discover where my fortune lies!"_
Tell him _"I slay the man on the spot as my liege would expect me to do, as he is nothing more than a thief and a liar."_
Then tell him _"I risk my own life and free him so that he may prove his innocence."_
Gain the "Sayge's Dark Fortune of Armor" Buff |havebuff spell:23767 |goto Elwynn Forest 42.12,69.00 |next "Use_Darkmoon_Faire_Fortune"
step
label "Resistance_Buff"
talk Sayge##14822
Choose _"I am ready to discover where my fortune lies!"_
Tell him _"I slay the man on the spot as my liege would expect me to do, as he is nothing more than a thief and a liar."_
Then tell him _"I execute him as per my liege's instructions, but doing so in as painless of a way as possible."_
Gain the "Sayge's Dark Fortune of Resistance" Buff |havebuff spell:23769 |goto Elwynn Forest 42.12,69.00 |next "Use_Darkmoon_Faire_Fortune"
step
label "Damage_Buff"
talk Sayge##14822
Choose _"I am ready to discover where my fortune lies!"_
Tell him _"I slay the man on the spot as my liege would expect me to do, as he is nothing more than a thief and a liar."_
Then tell him _"I execute him as per my liege's instructions, and do it in such a manner that he suffers painfully before he dies as retribution for his crimes against my people."_
Gain the "Sayge's Dark Fortune of Damage" Buff |havebuff spell:23768 |goto Elwynn Forest 42.12,69.00 |next "Use_Darkmoon_Faire_Fortune"
step
label "Use_Darkmoon_Faire_Fortune"
talk Sayge##14822
Tell him _"I'd love to get one of those written fortunes you mentioned!"_
collect 1 Darkmoon Faire Fortune##19422 |goto Elwynn Forest 42.12,69.00
step
use the Darkmoon Faire Fortune##19422
Obtain Your Fortune |condition itemcount(19422) == 0
step
label "Fortune_Told"
You have received your fortune
|tip You can have your fortune told every four hours.
Click Here to Choose Another Fortune |confirm |next "Choose_Fortune" |or
'|condition itemcount(19423) == 1 and not completedq(7937) and level >= 10 |next "Fortune_Awaits_Eastvale" |or
'|condition itemcount(19424) == 1 and not completedq(7938) and level >= 10 |next "Fortune_Awaits_Deadmines" |or
'|condition itemcount(19443) == 1 and not completedq(7944) and level >= 10 |next "Fortune_Awaits_Wailing_Caverns" |or
'|condition itemcount(19452) == 1 and not completedq(7945) and level >= 10 |next "Fortune_Awaits_Palemane_Rock" |or
step
label "Fortune_Awaits_Eastvale"
use Sayge's Fortune #23##19423
accept Your Fortune Awaits You...##7937
step
click Mysterious Eastvale Haystack
turnin Your Fortune Awaits You...##7937 |goto Elwynn Forest 84.79,64.37 |next "Fortune_Told"
step
label "Fortune_Awaits_Deadmines"
use Sayge's Fortune #24##19424
accept Your Fortune Awaits You...##7938
step
click Mysterious Deadmines Chest
|tip Just inside The Deadmines instance before you reach the first Miner.
|tip It may take a minute or two to appear.
turnin Your Fortune Awaits You...##7938 |next "Fortune_Told"
step
label "Fortune_Awaits_Wailing_Caverns"
use Sayge's Fortune #25##19443
accept Your Fortune Awaits You...##7944
step
click Mysterious Wailing Caverns Chest
|tip Just inside the Wailing Caverns instance after the Disciple of Naralex.
|tip It may take a minute or two to appear.
turnin Your Fortune Awaits You...##7944 |next "Fortune_Told"
step
label "Fortune_Awaits_Palemane_Rock"
use Sayge's Fortune #27##19452
accept Your Fortune Awaits You...##7945
step
click Mysterious Tree Stump
turnin Your Fortune Awaits You...##7945 |goto Mulgore 34.99,61.56 |next "Fortune_Told"
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Darkmoon Faire\\Elwynn Forest\\Chronos Turn-Ins (Elwynn Forest)",{
author="support@zygorguides.com",
description="\nExchange various Leatherworking crafted items with Chronos for prize tickets at the Darkmoon Faire.",
model={14875},
},[[
step
collect 3 Embossed Leather Boots##2309 |n
|tip Create them with Leatherworking or purchase them from the Auction House.
talk Chronos##14833
accept Carnival Boots##7881 |goto Elwynn Forest 43.57,70.86 |or
|tip Each turnin requires 3 Embossed Leather Boots and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 1 Darkmoon Faire Prize Ticket.
|tip You can turn this quest in until you reach 500 Neutral reputation.
'|condition repval('Darkmoon Faire','Neutral') >= 500 |or
step
Reach Level 10 |ding 10
|tip Use the leveling guides to accomplish this.
step
collect 3 Toughened Leather Armor##2314 |n
|tip Create them with Leatherworking or purchase them from the Auction House.
talk Chronos##14833
accept Carnival Jerkins##7882 |goto 43.57,70.86 |or
|tip Each turnin requires 3 Toughened Leather Armors and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 4 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 1,100 Neutral reputation.
'|condition repval('Darkmoon Faire','Neutral') >= 1100 |or
step
Reach Level 20 |ding 20
|tip Use the leveling guides to accomplish this.
step
collect 3 Barbaric Harness##5739 |n
|tip Create them with Leatherworking or purchase them from the Auction House.
talk Chronos##14833
accept The World's Largest Gnome!##7883 |goto 43.57,70.86 |or
|tip Each turnin requires 3 Barbaric Harnesses and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 8 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 1,700 Neutral reputation.
'|condition repval('Darkmoon Faire','Neutral') >= 1700 |or
step
Reach Level 30 |ding 30
|tip Use the leveling guides to accomplish this.
step
collect 1 Turtle Scale Leggings##8185 |n
|tip Create them with Leatherworking or purchase them from the Auction House.
talk Chronos##14833
accept Crocolisk Boy and the Bearded Murloc##7884 |goto 43.57,70.86 |or
|tip Each turnin requires 1 Turtle Scale Leggings and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 12 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 2,500 Neutral reputation.
'|condition repval('Darkmoon Faire','Neutral') >= 2500 |or
step
Reach Level 40 |ding 40
|tip Use the leveling guides to accomplish this.
step
collect 8 Rugged Armor Kit##15564 |q 7885 |future
|tip Create them with Leatherworking or purchase them from the Auction House.
step
talk Chronos##14833
accept Armor Kits##7885 |goto 43.57,70.86
step
collect 8 Rugged Armor Kit##15564 |n
|tip Create them with Leatherworking or purchase them from the Auction House.
talk Chronos##14833
accept More Armor Kits##7941 |goto 43.57,70.86 |or
|tip From this point on, you can continue turning in Rugged Armor Kits.
|tip Each of these turnins will award 20 Darkmoon Faire Prize Tickets.
|tip Each turnin requires 8 Rugged Armor Kits and grants 100 reputation with the Darkmoon Faire.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Darkmoon Faire\\Elwynn Forest\\Kerri Hicks Turn-Ins (Elwynn Forest)",{
author="support@zygorguides.com",
description="\nExchange various Blacksmithing crafted items with Kerri Hicks for prize tickets at the Darkmoon Faire.",
model={14876},
},[[
step
collect 10 Coarse Weightstone##3240 |n
|tip Create them with Blacksmithing or purchase them from the Auction House.
talk Kerri Hicks##14832
accept Coarse Weightstone##7889 |goto Elwynn Forest 40.48,69.93 |or
|tip Each turnin requires 10 Coarse Weightstones and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 1 Darkmoon Faire Prize Ticket.
|tip You can turn this quest in until you reach 500 Neutral reputation.
'|condition repval('Darkmoon Faire','Neutral') >= 500 |or
step
Reach Level 10 |ding 10
|tip Use the leveling guides to accomplish this.
step
collect 7 Heavy Grinding Stone##3486 |n
|tip Create them with Blacksmithing or purchase them from the Auction House.
talk Kerri Hicks##14832
accept Heavy Grinding Stone##7890 |goto 40.48,69.93 |or
|tip Each turnin requires 7 Heavy Grinding Stones and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 4 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 1,100 Neutral reputation.
'|condition repval('Darkmoon Faire','Neutral') >= 1100 |or
step
Reach Level 20 |ding 20
|tip Use the leveling guides to accomplish this.
step
collect 3 Green Iron Bracers##3835 |n
|tip Create them with Blacksmithing or purchase them from the Auction House.
talk Kerri Hicks##14832
accept Green Iron Bracers##7891 |goto 40.48,69.93 |or
|tip Each turnin requires 3 Green Iron Bracers and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 8 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 1,700 Neutral reputation.
'|condition repval('Darkmoon Faire','Neutral') >= 1700 |or
step
Reach Level 30 |ding 30
|tip Use the leveling guides to accomplish this.
step
collect 1 Big Black Mace##7945 |n
|tip Create them with Blacksmithing or purchase them from the Auction House.
talk Kerri Hicks##14832
accept Big Black Mace##7892 |goto 40.48,69.93 |or
|tip Each turnin requires 1 Big Black Mace and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 12 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 2,500 Neutral reputation.
'|condition repval('Darkmoon Faire','Neutral') >= 2500 |or
step
Reach Level 40 |ding 40
|tip Use the leveling guides to accomplish this.
step
collect 8 Dense Grinding Stone##12644 |q 7893 |future
|tip Create them with Blacksmithing or purchase them from the Auction House.
step
talk Kerri Hicks##14832
accept Rituals of Strength##7893 |goto 40.48,69.93
step
collect 8 Dense Grinding Stone##12644 |n
|tip Create them with Blacksmithing or purchase them from the Auction House.
talk Kerri Hicks##14832
accept More Dense Grinding Stones##7939 |goto 40.48,69.93 |or
|tip From this point on, you can continue turning in Dense Grinding Stones.
|tip Each of these turnins will award 20 Darkmoon Faire Prize Tickets.
|tip Each turnin requires 8 Dense Grinding Stones and grants 100 reputation with the Darkmoon Faire.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Darkmoon Faire\\Elwynn Forest\\Rinling Turn-Ins (Elwynn Forest)",{
author="support@zygorguides.com",
description="\nExchange various Engineering crafted items with Rinling for prize tickets at the Darkmoon Faire.",
model={14877},
},[[
step
collect 5 Copper Modulator##4363 |n
|tip Create them with Engineering or purchase them from the Auction House.
|tip They also have a small chance to drop from mobs in the Gnomeregan dungeon.
talk Rinling##14841
accept Copper Modulator##7894 |goto Elwynn Forest 41.71,70.72 |or
|tip Each turnin requires 5 Copper Modulators and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 1 Darkmoon Faire Prize Ticket.
|tip You can turn this quest in until you reach 500 Neutral reputation.
'|condition repval('Darkmoon Faire','Neutral') >= 500 |or
step
Reach Level 10 |ding 10
|tip Use the leveling guides to accomplish this.
step
collect 7 Whirring Bronze Gizmo##4375 |n
|tip Create them with Engineering or purchase them from the Auction House.
talk Rinling##14841
accept Whirring Bronze Gizmo##7895 |goto 41.71,70.72 |or
|tip Each turnin requires 7 Whirring Bronze Gizmos and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 4 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 1,100 Neutral reputation.
'|condition repval('Darkmoon Faire','Neutral') >= 1100 |or
step
Reach Level 20 |ding 20
|tip Use the leveling guides to accomplish this.
step
collect 36 Green Firework##9313 |n
|tip Create them with Engineering or purchase them from the Auction House.
|tip They can also be purchased from any Holiday Fireworks Vendor on July 4th.
talk Rinling##14841
accept Green Fireworks##7896 |goto 41.71,70.72 |or
|tip Each turnin requires 36 Green Fireworks and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 8 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 1,700 Neutral reputation.
'|condition repval('Darkmoon Faire','Neutral') >= 1700 |or
step
Reach Level 30 |ding 30
|tip Use the leveling guides to accomplish this.
step
collect 6 Mechanical Repair Kit##11590 |n
|tip Create them with Engineering or purchase them from the Auction House.
talk Rinling##14841
accept Mechanical Repair Kits##7897 |goto 41.71,70.72 |or
|tip Each turnin requires 6 Mechanical Repair Kits and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 12 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 2,500 Neutral reputation.
'|condition repval('Darkmoon Faire','Neutral') >= 2500 |or
step
Reach Level 40 |ding 40
|tip Use the leveling guides to accomplish this.
step
collect 6 Thorium Widget##15994 |q 7898 |future
|tip Create them with Engineering or purchase them from the Auction House.
step
talk Rinling##14841
accept Thorium Widget##7898 |goto 41.71,70.72
step
collect 6 Thorium Widget##15994 |n
|tip Create them with Engineering or purchase them from the Auction House.
talk Rinling##14841
accept More Thorium Widgets##7942 |goto 41.71,70.72 |or
|tip From this point on, you can continue turning in Thorium Widgets.
|tip Each of these turnins will award 20 Darkmoon Faire Prize Tickets.
|tip Each turnin requires 6 Thorium Widgets and grants 100 reputation with the Darkmoon Faire.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Darkmoon Faire\\Elwynn Forest\\Yebb Neblegear Turn-Ins (Elwynn Forest)",{
author="support@zygorguides.com",
description="\nExchange various Farmed items with Yebb Neblegear for prize tickets at the Darkmoon Faire.",
model={14856},
},[[
step
Kill Savannah enemies around this area
|tip You can find them all over around Crossroads and to its northern area.
collect 5 Small Furry Paw##5134 |goto The Barrens 50.21,21.82 |n
talk Yebb Neblegear##14829
accept Small Furry Paws##7899 |goto Elwynn Forest 40.17,69.53 |or
|tip Each turnin requires 5 Small Furry Paws and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 1 Darkmoon Faire Prize Ticket.
|tip You can turn this quest in until you reach 500 Neutral reputation.
'|condition repval('Darkmoon Faire','Neutral') >= 500 |or
step
Reach Level 10 |ding 10
|tip Use the leveling guides to accomplish this.
step
Kill Ashenvale Bear enemies around this area
|tip You can find them all over between Raynewood Retreat and Splintertree post.
|tip You can also find them east of Satyrn.
collect 5 Torn Bear Pelt##11407 |goto Ashenvale 66.01,60.42 |n
You can find more around [83.81,47.40]
talk Yebb Neblegear##14829
accept Torn Bear Pelts##7900 |goto Elwynn Forest 40.17,69.53 |or
|tip Each turnin requires 5 Torn Bear Pelts and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 4 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 1,100 Neutral reputation.
'|condition repval('Darkmoon Faire','Neutral') >= 1100 |or
step
Reach Level 20 |ding 20
|tip Use the leveling guides to accomplish this.
step
Kill Crag Coyote enemies around this area
|tip You can find the all over central and western Badlands.
collect 5 Soft Bushy Tail##4582 |goto Badlands 34.41,65.63 |n
You can find more around [57.00,58.62]
talk Yebb Neblegear##14829
accept Soft Bushy Tails##7901 |goto Elwynn Forest 40.17,69.53 |or
|tip Each turnin requires 5 Soft Bushy Tails and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 8 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 1,700 Neutral reputation.
'|condition repval('Darkmoon Faire','Neutral') >= 1700 |or
step
Reach Level 30 |ding 30
|tip Use the leveling guides to accomplish this.
step
Kill Northspring enemies around this area
collect 5 Vibrant Plume##5117 |goto Feralas 40.00,12.61 |n
talk Yebb Neblegear##14829
accept Vibrant Plumes##7902 |goto Elwynn Forest 40.17,69.53 |or
|tip Each turnin requires 5 Vibrant Plumes and grants 100 reputation with the Darkmoon Faire.
|tip Each of these turnins will award 12 Darkmoon Faire Prize Tickets.
|tip You can turn this quest in until you reach 2,500 Neutral reputation.
'|condition repval('Darkmoon Faire','Neutral') >= 2500 |or
step
Reach Level 40 |ding 40
|tip Use the leveling guides to accomplish this.
step
Kill Stonelash enemies around this area
|tip You can find them all over central and southern Silithus.
collect 10 Glowing Scorpid Blood##19933 |goto Silithus 44.81,54.50 |q 8222 |future
step
talk Yebb Neblegear##14829
accept Glowing Scorpid Blood##8222 |goto Elwynn Forest 40.17,69.53
step
Kill Stonelash enemies around this area
|tip You can find them all over central and southern Silithus.
collect 10 Glowing Scorpid Blood##19933 |goto Silithus 44.81,54.50 |n
talk Yebb Neblegear##14829
accept More Glowing Scorpid Blood##8223 |goto Elwynn Forest 40.17,69.53
|tip From this point on, you can continue turning in Glowing Scorpid Blood.
|tip Each of these turnins will award 20 Darkmoon Faire Prize Tickets.
|tip Each turnin requires 10 Glowing Scorpid Blood and grants 100 reputation with the Darkmoon Faire.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Darkmoon Faire\\Elwynn Forest\\Spawn of Jubjub (Elwynn Forest)",{
author="support@zygorguides.com",
description="\nCollect a couple of Dark Iron Ale Mugs from the Grim Guzzler tavern in Blackrock Depths "..
"and offer them to Morja at the Darkmoon Faire to receive your very own Jubjub companion pet.",
condition_end=function() return completedq(7946) end,
model={14938},
},[[
step
click Dark Iron Ale Mug##165738
|tip They look like small mugs of ale on tables around the Grim Guzzler tavern in Blackrock Depths.
|tip Clicking two of them is safe but clicking more will anger the bar patrons.
collect 2 Dark Iron Ale Mug##11325 |q 7946 |future
|tip They can also be purchased from Plugger Spazzring in the Grim Guzzler.
|tip They can be purchased from the Auction House if you are lucky enough to find them.
step
use the Dark Iron Ale Mug##11325
|tip Place it at Morja's feet.
|tip Be sure you only use one; you will need the other one to turn in the quest.
Wait for Jubjub the frog to hop over to the mug
|tip This may take a couple of minutes.
talk Morja##14871
accept Spawn of Jubjub##7946 |goto Elwynn Forest 43.33,70.29
|tip This quest will be available after Jubjub appears.
step
use the Unhatched Jubling Egg##19462
|tip It will take seven days for the egg to mature enough to hatch.
collect 1 A Jubling's Tiny Home##19450
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Darkmoon Faire\\Elwynn Forest\\Wood Frog (Elwynn Forest)",{
author="support@zygorguides.com",
description="\nCatch Flik as he runs all over the Darkmoon Faire grounds and purchase his limited supply "..
"Wood Frog Box for 1 gold.",
model={901},
},[[
step
talk Flik##14860
|tip He's a little Orc boy running fast all over the Darkmoon Faire grounds.
|tip You will have to be quick to catch him.
|tip Talking to him will stop him for a short period of time.
buy 1 Wood Frog Box##11027 |goto Elwynn Forest 42.59,70.30
|tip This item costs 1 gold and has a limited quantity of 1.
|tip It respawns in approximately 20 minutes.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Darkmoon Faire\\Elwynn Forest\\Tree Frog (Elwynn Forest)",{
author="support@zygorguides.com",
description="\nCatch Flik as he runs all over the Darkmoon Faire grounds and purchase his "..
"Tree Frog Box for 1 gold.",
model={6295},
},[[
step
talk Flik##14860
|tip He's a little Orc boy running fast all over the Darkmoon Faire grounds.
|tip You will have to be quick to catch him.
|tip Talking to him will stop him for a short period of time.
buy 1 Tree Frog Box##11026 |goto Elwynn Forest 42.59,70.30
|tip This item costs 1 gold.
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Lunar Festival\\Lunar Festival Main Questline",{
author="support@zygorguides.com",
description="This guide will walk you through the quests for the \"Lunar Festival\" event.",
condition_end=function() return completedq(8862) end,
},[[
step
talk Lunar Festival Emissary##15891
accept The Lunar Festival##8873 |goto Orgrimmar 51.0,70.5
step
talk Lunar Festival Harbinger##15895
turnin The Lunar Festival##8873 |goto 41.6,32.0
accept Lunar Fireworks##8867 |goto 41.6,32.0
step
talk Lunar Festival Vendor##15898
buy 8 Small Blue Rocket##21558 |q 8867 |goto 41.3,32.4
buy 2 Blue Rocket Cluster##21571 |q 8867 |goto 41.3,32.4
stickystart "Fire_Lunar_Fireworks_Clusters"
step
use the Small Blue Rocket##21558
Fire #8# Lunar Fireworks|q 8867/1 |goto 41.6,32.8
step
label "Fire_Lunar_Fireworks_Clusters"
use the Blue Rocket Cluster##21571
Fire #2# Lunar Fireworks Clusters|q 8867/2 |goto 41.6,32.8
step
talk Lunar Festival Harbinger##15895
turnin Lunar Fireworks##8867 |goto 41.6,32.0
accept Valadar Starsong##8883 |goto 41.6,32.0
step
use the Lunar Festival Invitation##21711 |goto 41.0,31.0
Go to Moonglade |goto Moonglade |c |q 8883
step
talk Valadar Starsong##15864
turnin Valadar Starsong##8883 |goto 53.65,35.26
step
collect 16 Coin of Ancestry##21100
|tip These are awarded by talking to elders around Kalimdor and Eastern Kingdoms.
|tip Use the "Lunar Festival Optimized Elders Path" event guide to collect them.
step
talk Valadar Starsong##15864
accept Festive Lunar Dresses##8864 |goto 53.65,35.26
accept Festive Lunar Pant Suits##8865 |goto 53.65,35.26
accept Festival Dumplings##8863 |goto 53.65,35.26
accept Elune's Candle##8862 |goto 53.65,35.26
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Lunar Festival\\Lunar Festival Optimized Elders Path",{
author="support@zygorguides.com",
description="This guide will walk you through an optimized path, honoring the elders for the \"Lunar Festival\" event.",
},[[
step
talk Elder Moonstrike##15594
accept Moonstrike the Elder##8714 |goto Western Plaguelands 69.0,73.0
step
talk Elder Meadowrun##15602
accept Meadowrun the Elder##8722 |goto Western Plaguelands 66.0,47.8
step
talk Elder Graveborn##15568
accept Graveborn the Elder##8652 |goto Tirisfal Glades 61.9,53.8
step
talk Elder Darkcore##15564
accept Darkcore the Elder##8648 |goto Undercity 66.7,38.1
step
talk Elder Obsidian##15561
accept Obsidian the Elder##8645 |goto Silverpine Forest 45.0,41.1
step
talk Elder Snowcrown##15566
accept Snowcrown the Elder##8650 |goto Eastern Plaguelands 75.7,54.6
step
talk Elder Windrun##15592
accept Windrun the Elder##8688 |goto 35.6,68.8
step
talk Elder Highpeak
accept Highpeak the Elder##8643 |goto The Hinterlands 49.9,47.9
step
talk Elder Silvervein##15558
accept Silvervein the Elder##8642 |goto Loch Modan 33.0,46.5
step
talk Elder Bronzebeard##15871
accept Bronzebeard the Elder##8866 |goto Ironforge 29.18,17.06
step
talk Elder Goldwell##15569
accept Goldwell the Elder##8653 |goto Dun Morogh 46.82,51.61
step
talk Elder Ironband##15567
accept Ironband the Elder##8651 |goto Searing Gorge 21.1,78.8
step
talk Elder Dawnstrider##15585
accept Dawnstrider the Elder##8683 |goto Burning Steppes 64.2,24.0
step
talk Elder Rumblerock##15557
accept Rumblerock the Elder##8636 |goto 81.9,46.3
step
talk Elder Stormbrow##15565
accept Stormbrow the Elder##8649 |goto Elwynn Forest 39.6,63.5
step
talk Elder Hammershout##15562
accept Hammershout the Elder##8646 |goto Stormwind City 36.0,66.0
step
talk Elder Skychaser##15577
accept Skychaser the Elder##8675 |goto Westfall 55.6,47.0
step
talk Elder Bellowrage##15563
accept Bellowrage the Elder##8647 |goto Blasted Lands 57.7,54.7
step
talk Elder Starglade##15596
accept Starglade the Elder##8716 |goto Stranglethorn Vale 53.1,18.3
step
talk Elder Winterhoof##15576
accept Winterhoof the Elder##8674 |goto 27.62,74.25
step
talk Elder Windtotem##15582
accept Windtotem the Elder##8680 |goto The Barrens 62.6,36.7
step
talk Elder Moonwarden##15597
accept Moonwarden the Elder##8717 |goto 51.4,30.6
step
talk Elder High Mountain##15588
accept High Mountain the Elder##8686 |goto 45.0,57.9
step
talk Elder Bloodhoof##15575
accept Bloodhoof the Elder##8673 |goto Mulgore 48.3,53.4
step
talk Elder Ezra Wheathoof##15580
accept Wheathoof the Elder##8678 |goto Thunder Bluff 72.2,23.5
step
talk Elder Grimtotem##15581
accept Grimtotem the Elder##8679 |goto Feralas 76.7,37.7
step
talk Elder Mistwalker##15587
accept Mistwalker the Elder##8685 |goto 59.5,40.0
step
talk Elder Bladesing##15599
accept Bladesing the Elder##8719 |goto Silithus 48.8,37.6
step
talk Elder Primestone##15570
accept Primestone the Elder##8654 |goto 23.1,11.8
step
talk Elder Thunderhorn##15583
accept Thunderhorn the Elder##8681 |goto UnGoro Crater 50.4,76.2
step
talk Elder Ragetotem##15573
accept Ragetotem the Elder##8671 |goto Tanaris 36.2,80.4
step
talk Elder Dreamseer##15586
accept Dreamseer the Elder##8684 |goto 51.5,27.9
step
talk Elder Morningdew##15604
accept Morningdew the Elder##8724 |goto Thousand Needles 79.0,76.9
step
talk Elder Skyseer##15584
accept Skyseer the Elder##8682 |goto 45.3,49.8
step
talk Elder Darkhorn##15579
accept Darkhorn the Elder##8677 |goto Orgrimmar 40.9,32.9
step
talk Elder Runetotem##15572
accept Runetotem the Elder##8670 |goto Durotar 53.1,43.5
step
talk Elder Skygleam##15600
accept Skygleam the Elder##8720 |goto Azshara 72.4,84.9
step
talk Elder Stonespire##15574
accept Stonespire the Elder##8672 |goto Winterspring 61.3,37.7
step
talk Elder Brightspear##15606
accept Brightspear the Elder##8726 |goto 55.6,43.6
step
talk Elder Nightwind##15603
accept Nightwind the Elder##8723 |goto Felwood 37.7,52.9
step
talk Elder Riversong##15605
accept Riversong the Elder##8725 |goto Ashenvale 35.4,48.9
step
talk Elder Starweave##15601
accept Starweave the Elder##8721 |goto Darkshore 36.7,46.6
step
talk Elder Bladeswift##15598
accept Bladeswift the Elder##8718 |goto Darnassus 33.6,15.1
step
talk Elder Bladeleaf##15595
accept Bladeleaf the Elder##8715 |goto Teldrassil 57.2,60.7
step
talk Elder Wildmane##15578
|tip She is located inside Zul'Farak near the pool that spawns Gaz'Rilla.
|tip You will need to run this dungeon with a group.
accept Wildmane the Elder##8676
step
talk Elder Splitrock##15556
|tip He is located inside Mauradon near the east exit after beyond Rotgrip.
|tip He is at the top of a path at the end of the tunnel.
|tip You will need to run this dungeon with a group.
accept Splitrock the Elder##8635
step
talk Elder Starsong##15593
|tip Take the path on the left after entering Sunken Temple.
|tip Go up the spiral staircase and go left again to the large round room.
|tip The elder is in the rear of the alcove on the left.
|tip You will need to run this dungeon with a group.
accept Starsong the Elder##8713
step
talk Elder Morndeep##15549
|tip He is located in the middle of the Ring of Law in Blackrock Depths.
|tip Talking to him will start the event.
|tip You will need to run this dungeon with a group.
accept Morndeep the Elder##8619
step
talk Elder Stonefort##15560
|tip He is located on the left side after crossing the first rope brige in Hordemar City on the way to Omokk in Lower Blackrock Spire.
|tip You will need to run this dungeon with a group.
accept Stonefort the Elder##8644
step
talk Elder Farwhisper##15607
|tip He is located in Stratholme on the Service Entrance (Scarlet) side.
|tip Go left after entering the instance and through the plague rat gate and he will be on the right side.
|tip You will need to run this dungeon with a group.
accept Farwhisper the Elder##8727
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Love is in the Air Quests",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing the quests for the \"Love is in the Air\" event.",
condition_end=function() return completedq(9029) end,
},[[
step
talk Fenstad Argyle##16108
accept Dangerous Love##8904 |goto Undercity 66.68,44.70
step
talk Innkeeper Norman##6741
buy 1 Love Token##21815 |goto 67.75,37.88 |q 8904
buy 1 Cologne Bottle##21833 |goto 67.75,37.88 |q 8904
buy 1 Perfume Bottle##21829 |goto 67.75,37.88 |q 8904
step
use the Cologne Bottle##21833
use the Perfume Bottle##21829
Apply Perfume or Cologne |condition hasbuff("spell:26681") or hasbuff("spell:26682") |q 8904
|tip Perfume allows you to give Love Tokens to male NPCs.
|tip Cologne allows you to give Love Tokens to female NPCs.
step
talk Undercity Guardian
|tip Talk to those with a heart above their head.
Tell them _"Here, I'd like to give you this token of my love."_
use the Pledge of Adoration: Undercity##22157
use the Pledge of Friendship: Undercity##22163
collect 1 Guardian's Moldy Card##22145 |q 8904
step
talk Fenstad Argyle##16108
turnin Dangerous Love##8904 |goto 66.68,44.70
accept Fenstad's Hunch##8979 |goto 66.68,44.70
step
Run down the ramp |goto 52.81,77.72
talk Apothecary Zinge##5204
|tip Inside the building.
turnin Fenstad's Hunch##8979 |goto 50.15,67.98
accept Zinge's Assessment##8980 |goto 50.15,67.98
step
talk Fenstad Argyle##16108
turnin Zinge's Assessment##8980 |goto 66.68,44.70
accept Tracing the Source##8982 |goto 66.68,44.70
step
talk Innkeeper Norman##6741
turnin Tracing the Source##8982 |goto 67.75,37.88
accept Tracing the Source##8983 |goto 67.75,37.88
step
talk Mara Rennick##16109
|tip She walks around this area.
turnin Tracing the Source##8983 |goto 70.66,29.23
accept The Source Revealed##8984 |goto 70.66,29.23
step
Follow the path up |goto Hillsbrad Foothills 75.5,24.0
Enter the cave |goto 77.7,19.4
Run up the hill |goto Alterac Mountains 84.3,84.3
Follow the path up |goto 86.1,25.3
talk Apothecary Staffron Lerent##16107
turnin The Source Revealed##8984 |goto 89.5,75.5
step
click Fragrant Cauldron
accept A Bubbling Cauldron##9029 |goto 89.6,75.7
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Love is in the Air\\Gift Giving",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing the \"Gift Giving\" quest for the \"Love is in the Air\" event.",
},[[
step
label "Begin_Guide"
talk Innkeeper Gryshka##6929
|tip Inside the building.
buy 10 Love Token##21815 |goto Orgrimmar 54.10,68.39
buy 1 Cologne Bottle##21833 |goto 54.10,68.39
buy 1 Perfume Bottle##21829 |goto 54.10,68.39
step
label "Apply_Perfume_or_Cologne_Orgrimmar"
use the Cologne Bottle##21833
use the Perfume Bottle##21829
Apply Perfume or Cologne |condition hasbuff("spell:26681") or hasbuff("spell:26682")
|tip Perfume allows you to give Love Tokens to male NPCs.
|tip Cologne allows you to give Love Tokens to female NPCs.
step
Talk to Orgrimmar NPCs
|tip Talk to guards around Orgrimmar who have hearts over their heads.
|tip If you run out of Love Tokens, talk to the nearest Innkeeper to purchase more.
Tell them _"Here, I'd like to give you this token of my love."_
use the Pledge of Adoration: Orgrimmar##22156
use the Pledge of Friendship: Orgrimmar##22161
collect 5 Pledge of Loyalty: Orgrimmar##22123 |goto Orgrimmar 55.92,61.11 |or
'|condition not hasbuff("spell:26681") and not hasbuff("spell:26682") and itemcount (22123) < 5 |next "Apply_Perfume_or_Cologne_Orgrimmar" |or
step
Talk to Orgrimmar NPCs
|tip Talk to guards around Orgrimmar who have hearts over their heads.
|tip If you run out of Love Tokens, talk to the nearest Innkeeper to purchase more.
Tell them _"Here, I'd like to give you this token of my love."_
use the Pledge of Adoration: Orgrimmar##22156
use the Pledge of Friendship: Orgrimmar##22161
collect 5 Grunt's Card##22142 |goto Orgrimmar 55.92,61.11 |or
'|condition not hasbuff("spell:26681") and not hasbuff("spell:26682") and itemcount (22142) < 5 |next "Apply_Perfume_or_Cologne_Orgrimmar" |or
step
Talk to non-guard NPCs
|tip Talk to NPCs who aren't guards around Orgrimmar who have hearts over their heads.
|tip If you run out of Love Tokens, talk to the nearest Innkeeper to purchase more.
Tell them _"Here, I'd like to give you this token of my love."_
use the Gift of Adoration: Orgrimmar##21981
use the Gift of Friendship: Orgrimmar##22170
collect 5 Freshly Baked Pie##22175 |goto Orgrimmar 55.92,61.11 |or
'|condition not hasbuff("spell:26681") and not hasbuff("spell:26682") and itemcount (22175) < 5 |next "Apply_Perfume_or_Cologne_Orgrimmar" |or
step
use the Pledge of Loyalty: Orgrimmar##22123
collect 1 Orgrimmar Pledge Collection##22294
step
use the Grunt's Card##22142
collect 1 Package of Cards##22293
step
use the Freshly Baked Pie##22175
collect 1 Box of Fresh Pies##22292
step
use the Orgrimmar Pledge Collection##22294
collect 1 Orgrimmar Gift Collection##22136
step
label "Apply_Perfume_or_Cologne_Thunder_Bluff"
use the Cologne Bottle##21833
use the Perfume Bottle##21829
Apply Perfume or Cologne |condition hasbuff("spell:26681") or hasbuff("spell:26682")
|tip Perfume allows you to give Love Tokens to male NPCs.
|tip Cologne allows you to give Love Tokens to female NPCs.
step
Talk to Thunder Bluff guard NPCs
|tip Talk to guards around Thunder Bluff who have hearts over their heads.
|tip If you run out of Love Tokens, talk to the nearest Innkeeper to purchase more.
Tell them _"Here, I'd like to give you this token of my love."_
use the Pledge of Adoration: Thunder Bluff##22158
use the Pledge of Friendship: Thunder Bluff##22162
collect 5 Pledge of Loyalty: Thunder Bluff##22122 |goto Thunder Bluff 43.21,58.70 |or
'|condition not hasbuff("spell:26681") and not hasbuff("spell:26682") and itemcount (22122) < 5 |next "Apply_Perfume_or_Cologne_Thunder_Bluff" |or
step
Talk to Thunder Bluff guard NPCs
|tip Talk to guards around Thunder Bluff who have hearts over their heads.
|tip If you run out of Love Tokens, talk to the nearest Innkeeper to purchase more.
Tell them _"Here, I'd like to give you this token of my love."_
use the Pledge of Adoration: Thunder Bluff##22158
use the Pledge of Friendship: Thunder Bluff##22162
collect 5 Bluffwatcher's Card##22144 |goto Thunder Bluff 43.21,58.70 |or
'|condition not hasbuff("spell:26681") and not hasbuff("spell:26682") and itemcount (22144) < 5 |next "Apply_Perfume_or_Cologne_Thunder_Bluff" |or
step
Talk to non-guard NPCs
|tip Talk to NPCs who aren't guards around Thunder Bluff who have hearts over their heads.
Tell them _"Here, I'd like to give you this token of my love."_
use the Gift of Adoration: Thunder Bluff##21980
use the Gift of Friendship: Thunder Bluff##22168
collect 5 Freshly Picked Flowers##22177 |goto Thunder Bluff 43.21,58.70 |or
'|condition not hasbuff("spell:26681") and not hasbuff("spell:26682") and itemcount (22177) < 5 |next "Apply_Perfume_or_Cologne_Thunder_Bluff" |or
step
use the Pledge of Loyalty: Thunder Bluff##22122
collect 1 Thunder Bluff Pledge Collection##22297
step
use the Bluffwatcher's Card##22144
collect 1 Satchel of Cards##22295
step
use the Freshly Picked Flowers##22177
collect 1 Basket of Flowers##22296
step
use the Thunder Bluff Pledge Collection##22297
collect 1 Thunder Bluff Gift Collection##22135
step
label "Apply_Perfume_or_Cologne_Undercity"
use the Cologne Bottle##21833
use the Perfume Bottle##21829
Apply Perfume or Cologne |condition hasbuff("spell:26681") or hasbuff("spell:26682")
|tip Perfume allows you to give Love Tokens to male NPCs.
|tip Cologne allows you to give Love Tokens to female NPCs.
step
Talk to Undercity guard NPCs
|tip Talk to guards around Undercity who have hearts over their heads.
|tip If you run out of Love Tokens, talk to the nearest Innkeeper to purchase more.
Tell them _"Here, I'd like to give you this token of my love."_
use the Pledge of Adoration: Undercity##22157
use the Pledge of Friendship: Undercity##22163
collect 5 Pledge of Loyalty: Undercity##22121 |goto Undercity 68.07,44.10 |or
'|condition not hasbuff("spell:26681") and not hasbuff("spell:26682") and itemcount (22121) < 5 |next "Apply_Perfume_or_Cologne_Undercity" |or
step
Talk to Undercity guard NPCs
|tip Talk to guards around Undercity who have hearts over their heads.
|tip If you run out of Love Tokens, talk to the nearest Innkeeper to purchase more.
Tell them _"Here, I'd like to give you this token of my love."_
use the Pledge of Adoration: Undercity##22157
use the Pledge of Friendship: Undercity##22163
collect 5 Guardian's Moldy Card##22145 |goto Undercity 68.07,44.10 |or
'|condition not hasbuff("spell:26681") and not hasbuff("spell:26682") and itemcount (22145) < 5 |next "Apply_Perfume_or_Cologne_Undercity" |or
step
Talk to non-guard NPCs
|tip Talk to NPCs who aren't guards around Undercity who have hearts over their heads.
|tip If you run out of Love Tokens, talk to the nearest Innkeeper to purchase more.
Tell them _"Here, I'd like to give you this token of my love."_
use the Gift of Adoration: Undercity##22166
use the Gift of Friendship: Undercity##22172
collect 5 Romantic Poem##22174 |goto Undercity 68.07,44.10 |or
'|condition not hasbuff("spell:26681") and not hasbuff("spell:26682") and itemcount (22174) < 5 |next "Apply_Perfume_or_Cologne_Undercity" |or
step
use the Pledge of Loyalty: Undercity##22121
collect 1 Undercity Pledge Collection##22300
step
use the Guardian's Moldy Card##22145
collect 1 Sheaf of Cards##22299
step
use the Romantic Poem##22174
collect 1 Book of Romantic Poems##22298
step
use the Undercity Pledge Collection##22300
collect 1 Undercity Gift Collection##22134
step
use the Orgrimmar Gift Collection##22136
collect 1 Horde Gift Collection##22263
step
Choose the faction leader you would like to vote for:
|tip Turning in this quest in a capital city votes for that leader.
Sylvanas Windrunner |confirm |next "Vote_Sylvanas_Windrunner"
Thrall |confirm |next "Vote_Thrall"
Cairne Bloodhoof |confirm |next "Vote_Cairne_Bloodhoof"
step
label "Vote_Sylvanas_Windrunner"
Enter the tunnel |goto Undercity 51.86,64.75 < 20 |walk
talk Kwee Q. Peddlefeet##16075
accept Gift Giving##8981 |goto 55.20,89.96 |next "Final_Step"
step
label "Vote_Thrall"
Enter the building |goto Orgrimmar 40.28,36.93 < 20 |walk
talk Kwee Q. Peddlefeet##16075
|tip Inside the building.
accept Gift Giving##8981 |goto 32.57,36.80 |next "Final_Step"
step
label "Vote_Cairne_Bloodhoof"
talk Kwee Q. Peddlefeet##16075
|tip Inside the building.
accept Gift Giving##8981 |goto 38.11,80.50 |next Thunder Bluff 60.89,50.29
step
label "Final_Step"
You completed the Gift Giving quest
Click Here to Complete it Again |confirm |next "Begin_Guide"
]])
