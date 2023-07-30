local name,ZGV = ...

-- GLOBAL Spoo

local MAX_FACTIONS = 300

local reptypes = {
	['faction'] = {
		standings = {
			{ name="Hated", from=0*10000, color="880000" },
			{ name="Hostile", from=1*10000, color="ff0000"},			
			{ name="Unfriendly", from=2*10000, color="ff8800" },
			{ name="Neutral", from=2*10000, color="ffff00" },
			{ name="Friendly", from=2*10000, color="00ff00" },
			{ name="Honored", from=2*10000, color="00ff88" },
			{ name="Revered", from=2*10000, color="00ffff" },
			{ name="Exalted", from=2*10000, color="cc88ff" },
		},
	},
}
ZGV.ReputationTypes = reptypes

local defaultReps = {
	["The Mag'har"]=3, --unfriendly
	["Kurenai"]=3, --unfriendly
	["Ella"]=5,
	["Chee Chee"]=5,
	["Gina Mudclaw"]=5,
	["Jogu the Drunk"]=5,
	["Sho"]=5,
	["The Aldor"]=3, -- The Aldor: unfriendly
	["The Scryers"]=3, -- The Scryers: unfriendly
	["Ve'nari"]=1, -- Dubious
}


local standingnums={} -- for by-name lookups.
ZGV.StandingNums = standingnums  -- exported for Parser and Goal

local standingcolors = {"aa0000","ff0000","ff8800","ffff00","00ff00","00ff88","00ffff","cc88ff",[105]="00ff44",[106]="00ffcc"}   -- what's with the 105 and 106??

for type,data in pairs(reptypes) do
	for num,standing in ipairs(data.standings) do
		standingnums[standing.name]=num  -- no reverse lookups, too many faction types!
		standingcolors[standing.name]=standing.color
	end
end


local LF=ZygorGuidesViewer_L("Faction")

local RepProto = {}

tinsert(ZGV.startups,{"Faction startup",function(self)
	ZGV:UPDATE_FACTION_Faction()
	--self:AddEventHandler("PLAYER_ENTERING_WORLD","UPDATE_FACTION_Faction")
	self:AddEventHandler("UPDATE_FACTION","UPDATE_FACTION_Faction")
	--self:AddEventHandler("CHAT_MSG_COMBAT_FACTION_CHANGE","CHAT_MSG_COMBAT_FACTION_CHANGE_Faction")

	-- translate
	local sex = UnitSex("player")==3 and "_FEMALE" or ""
	for i=1,8 do
		reptypes["faction"].standings[i].name_local = _G['FACTION_STANDING_LABEL'..i..sex]
	end
	
	--tillerrepnames[4]=tillerrepnames[5] --Stranger
end})

--[[
NOTES:

FACTION reps:
-------------
local name,desc,standing,min,max,val,_,_,header,_,headerhasrep,_,_, _,_,id = GetFactionInfoByID(1281)

min,max = used for bar display
val = actual value
"1000/2500" shown on bar is just (val-min)/(max-min)
^ bar shows: min->val->max


FRIENDSHIP reps:
----------------
local friendID, friendRep, friendMaxRep, friendName, friendText, friendTexture, friendTextLevel, friendThresh, friendThreshNext = GetFriendshipReputation(1281)

standing = ignored? 1? whatever
min->val->max = shown on bar in reps panel?
friendThresh->friendRep->friendThreshNext = shown on bar, too?

GossipFrame: if not friendThresh then  friendThresh, friendThreshNext, friendRep = 0, 1, 1  end   -- simulate full bar



local name,desc,standing,min,max,val,_,_,header,_,headerhasrep,_,_, _,_,id = GetFactionInfoByID(1281)
name="Gina"
desc=""
standing=6
min=9000
max=21000
val=13860

local friendID, friendRep, friendMaxRep, friendName, friendText, friendTexture, friendTextLevel, friendThresh, friendThreshNext = GetFriendshipReputation(1281)
friendRep=13860 ==val?
friendMaxRep=42999
friendThresh=8400

barValue = friendRep - friendThresh   == 11880-8400
barMax = min( friendMaxRep - friendThresh, 8400)   == 42999-8400 .. 8400   (so, 8400 or less)


3480/8400



*** At tillers rep change, there's:  -7410 (-88.2%) - 10% to Buddy

*** friendThresh = solution? humm?

--]]

ZGV.factions_mentioned = {}

local function GetNewRep(name)
	local rep = {
		name=name,
		standing=defaultReps[name] or 4,min=0,max=0,val=0,
		progress=0,
		reptypemeta=reptypes['faction'],
		id=0
	}
	for k,v in pairs(RepProto) do rep[k]=v end
	return rep
end


function ZGV:GetFakeRep(name,standing,min,max,val)
	local oldrep = self.reputations[name]
	local rep = GetNewRep(name)
	rep.standing = standing or rep.standing
	if min then rep.min=min end
	if max then rep.max=max end
	if val then rep.val=val end
	if oldrep then rep.reptypemeta = oldrep.reptypemeta end
	return rep
end

local function reportChange(name,delta,progdelta,going)
	print(("|cffbbbbff%s|r: %s%d (%.1f%%) - %s"):format(
		name,
		delta and "+" or "", delta,
		progdelta*100,
		going
	))
end

function ZGV:CacheRepByID(id)
	local name,desc,standing,bmin,bmax,val,_,_,header,_,headerhasrep,_,_, _ , hasBonusRepGain, canBeLFGBonus = GetFactionInfoByID(id)
	
	if not name then return false end
	
	local reptype = "faction"
	for type,data in pairs(reptypes) do if data.check and data.check(id,friendID,friendTexture) then reptype=type break end end
	local repdata = reptypes[reptype]

	-- data gathered, let's put it in

	local oldval,oldmin,oldprog
	local rep = self.reputations[name]
	if rep then
		if rep.val~=val then
			oldval=rep.val
			oldmin=rep.min
			oldprog=rep.progress
		end
	else
		rep = GetNewRep(name)
		self.reputations[name]=rep
	end
	if bmax==bmin then bmax=bmin+1 end
	local progress = (val-bmin)/(bmax-bmin)
	
	rep.id = id
	rep.name = name
	rep.reptype = reptype
	rep.reptypemeta = repdata
	rep.standing = standing
	rep.min=bmin
	rep.max=bmax
	rep.val=val
	rep.progress=progress
	rep.hasBonus = hasBonusRepGain
	rep.friendRep = friendRep
	
	if self.db.profile.analyzereps then
		if oldval and oldval~=val then reportChange(rep.name, rep.val-oldval, (oldmin~=rep.min and rep.progress or rep.progress-oldprog), rep:Going(true)) end
	end
	
	if C_Reputation.IsFactionParagon(id) then
		local currentValue, threshold, rewardQuestID, hasRewardPending, tooLowLevelForParagon = C_Reputation.GetFactionParagonInfo(id)
		local oldParagonVal,oldParagonProgress
		if not tooLowLevelForParagon then
			local value = mod(currentValue, threshold)
			oldParagonVal=rep.paragonVal
			oldParagonProgress=rep.paragonProgress
			rep.paragonVal=value
			if hasRewardPending then value=threshold end -- imitate cap
			rep.paragonThresh=threshold
			rep.paragonReward = hasRewardPending
			rep.paragonProgress = value/threshold
		end
		if self.db.profile.analyzereps then
			if oldParagonVal and oldParagonVal~=rep.paragonVal then reportChange(rep.name,rep.paragonVal-oldParagonVal,rep.paragonProgress-oldParagonProgress, rep:Going(true)) end
		end
	end

	return rep
end

function ZGV:CacheReputations()
	local faction_ids = {}
	for i=1,MAX_FACTIONS do
		local name,desc,standing,bmin,bmax,val,_,_,header,_,headerhasrep,_,_, id , hasBonusRepGain, canBeLFGBonus = GetFactionInfo(i)
		if name and bmin and (not header or headerhasrep) then tinsert(faction_ids,id) end
	end
	tinsert(faction_ids,2398) -- honeyback harvester
	tinsert(faction_ids,2010) -- brawlgar arena
	tinsert(faction_ids,2011) -- brawlgar arena
	
	for i,id in ipairs(faction_ids) do self:CacheRepByID(id) end
end

function ZGV:GetReputation(name)
	if type(name)=="number" then
		for k,v in pairs(self.reputations) do if v.id==name then name=k break end end
		if type(name)=="number" then name=tostring(name) end
	end
	ZGV.factions_mentioned[name] = name
	if self.BFL[name] then name=self.BFL[name] end
	return self.db.profile.fakereps[name] and self:GetFakeRep(name,self.db.profile.fakereps[name])
		or self.reputations[name]
		or GetNewRep(name)
end


function ZGV:UPDATE_FACTION_Faction()
	self:CacheReputations()
	self:UpdateFrame(true)
end

local messages={FACTION_STANDING_DECREASED,FACTION_STANDING_DECREASED_GENERIC,FACTION_STANDING_INCREASED,FACTION_STANDING_INCREASED_BONUS,FACTION_STANDING_INCREASED_GENERIC}
for i,msg in ipairs(messages) do messages[i]=msg:gsub("%%[.%d]?[sdf]","(.*)") end

function ZGV:CHAT_MSG_COMBAT_FACTION_CHANGE_Faction(event,text)
	--print("Faction!",text)
	for i,msg in ipairs(messages) do
		local faction = text:match(msg)
		if faction then
			local rep = self:GetReputation(faction)
			print(("%s: %s (%s)"):format(faction,rep:Current(),rep:Going()))
			return
		end
	end
end

function ZGV:DebugReputations()
	for i=1,MAX_FACTIONS do repeat
		local name,desc,standing,bmin,bmax,val,_,_,header,_,headerhasrep,_,_, id , hasBonusRepGain, canBeLFGBonus = GetFactionInfo(i)
		if not id or header then break end --continue
		local rep = ZGV:GetReputation(id)
		Spoo(rep)
		print(("%d. #%d |cffffff88%s|r: (%s%s|r) %s, %s"):format(
			i,id,
			rep.name or "(?)",
			(setmetatable( { faction="|cffffaaff" } ,{__index=function() return "|cffff00ff" end}))[rep.reptype],
			rep.reptype,
			rep:GetFormattedStanding(),
			rep:Going(true)
		))
	until true end
end




-- #########################################################
-- #########################################################
-- #########################################################
-- #########################################################

---
-- @return
function RepProto:CalcTo(standing)
	if type(standing)=="string" then standing=standingnums[standing] if not standing then return end end
	if standing-self.standing>1 then
		return nil,nil
	elseif standing<=self.standing then
		return 0
	else
		return self.max-self.val
	end
end

local function bar(cur,max,len)
	local a=floor(cur/max*len)
	return ("|cffffff00[|cff00ff00%s|r|cff666666%s|r]|r"):format(strrep("||",a),strrep("||",len-a))
end

function RepProto:GetStandingName(num)
	local standing = self.reptypemeta.standings[num]
	return standing and standing.name_local or standing.name or "?"
end
	
function RepProto:Current()
	return self:GetStandingName(self.standing)
end

function RepProto:Next()
	local nextstanding = self:GetNextStanding()
	return self.reptypemeta.standings[nextstanding].name
end

function RepProto:Going(color)
	local maxstanding = self.reptypemeta.standings.max or #self.reptypemeta.standings
	if color then
		if self.standing==maxstanding then
			if self.paragonVal then
				return LF["going"]:format(self.paragonProgress*100,"bonus: "..bar(self.paragonProgress*100,100,20))
			else
				return self:GetFormattedStanding(maxstanding)
			end
		else 
			return LF["going"]:format(self.progress*100,self:GetFormattedStanding(self:GetNextStanding())) .. ": "..bar(self.progress*100,100,20) 
		end
	else
		if self.standing==maxstanding then return self:Current() else return LF["going"]:format(self.progress*100,self:Next()) end
	end
end

function RepProto:GetNextStanding()
	local nextstanding = self.standing+1
	if self.reptypemeta.standings[nextstanding] then return nextstanding
	else return self.standing end
end

function RepProto:EqualOrAbove(standing)
	if type(standing)=="string" then standing=standingnums[standing] if not standing then return end end
	return self.standing>=standing
end

function RepProto:Below(standing)
	if type(standing)=="string" then standing=standingnums[standing] if not standing then return end end
	return self.standing<standing
end

function RepProto:GetFormattedStanding(standing)
	if not standing then standing = self.friendship or self.standing end
	local standingmeta = self.reptypemeta.standings[standing]
	return ("|cff%s%s|r"):format(
		standingmeta.color or standingcolors[standing] or "5500ff?",
		standingmeta.name or ("?"..standing.."?"))
end

--- @return Spoo-friendly GetFactionInfoByID() results
function RepProto:GetRawReputation()
	return setmetatable({GetFactionInfoByID(self.id)},{__desc={'name','desc','standing','bmin','bmax','val','_','_','header','_','headerhasrep','_','_','id','hasBonusRepGain','canBeLFGBonus'}})
end
function RepProto:GetRawFriendship()
	return setmetatable({GetFriendshipReputation(self.id)},{__desc={'ID', 'Rep', 'MaxRep', 'Name', 'Text', 'Texture', 'TextLevel', 'Thresh', 'ThreshNext'}})
end
