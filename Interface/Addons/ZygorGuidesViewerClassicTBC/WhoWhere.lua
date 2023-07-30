local name,ZGV=...

local WW={}
ZGV.WhoWhere=WW

local HBD = ZGV.HBD

local hide_timer_main = 0
local hide_timer_proff = 0

local ui = ZGV.UI
local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold
local L = ZGV.L

local SkinData = ZGV.UI.SkinData

local LibRover = LibStub("LibRover-1.0")

WW.Types = {}

function WW:SetupMenuArray()
	local Tradeskills = {
		{text="Alchemy",	iconkey="ALCHEMY"},
		--{text="Archaeology",	iconkey="ARCHAEOLOGY"},
		{text="Blacksmithing",	iconkey="BLACKSMITHING"},
		{text="Cooking",	iconkey="COOKING"},
		{text="Enchanting",	iconkey="ENCHANTING"},
		{text="Engineering",	iconkey="ENGINEERING"},
		{text="First Aid",	iconkey="FIRSTAID"},
		{text="Fishing",	iconkey="FISHING"},
		{text="Herbalism",	iconkey="HERBALISM"},
		--{text="Inscription",	iconkey="INSCRIPTION"},
		{text="Jewelcrafting",	iconkey="JEWELCRAFTING"},
		{text="Leatherworking",	iconkey="LEATHERWORKING"},
		{text="Mining",		iconkey="MINING"},
		{text="Skinning",	iconkey="SKINNING"},
		{text="Tailoring",	iconkey="TAILORING"},
	}

	for i,v in ipairs(Tradeskills) do
		v.func = v.func or function() ZGV.WhoWhere:FindNPC("Trainer"..(v.type or v.text)) CloseDropDownForks() end 
		v.notCheckable = 1
		v.icon = ZGV.IconSets.WorldQuest.file
		local texcoord=ZGV.IconSets.WorldQuest[v.iconkey].texcoord
		v.tCoordLeft = texcoord[1]
		v.tCoordRight = texcoord[2]
		v.tCoordTop = texcoord[3]
		v.tCoordBottom = texcoord[4]
	end


	local Classes = {
		{text="Druid"},
		{text="Hunter"},
		{text="Hunter pets",overicon="Hunter"},
		{text="Mage"},
		{text="Paladin"},
		{text="Priest"},
		{text="Rogue"},
		{text="Shaman"},
		{text="Warlock"},
		{text="Warrior"}
	}

	for i,v in ipairs(Classes) do
		v.func = v.func or function() ZGV.WhoWhere:FindNPC("Class"..(v.type or v.text)) CloseDropDownForks() end 
		v.notCheckable = 1
		v.icon = "Interface\\TargetingFrame\\UI-Classes-Circles"
		local texcoord=CLASS_ICON_TCOORDS[(v.overicon or v.text):upper()]
		v.tCoordLeft = texcoord[1]
		v.tCoordRight = texcoord[2]
		v.tCoordTop = texcoord[3]
		v.tCoordBottom = texcoord[4]
	end












	WW.Types = {
		{text="Auctioneer",icon="Interface\\Minimap\\Tracking\\Auctioneer"},
		{text="Banker",icon="Interface\\Minimap\\Tracking\\Banker"},
		--{text="Barber",icon=ZGV.IconSets.WorldQuest.file,iconkey="BARBER"},
		{text="Innkeeper",icon="Interface\\Minimap\\Tracking\\Innkeeper"},
		{text="Mailbox",icon="Interface\\Minimap\\Tracking\\Mailbox",func = function() ZGV.WhoWhere:FindMailbox() CloseDropDownForks() end},
		{text="Class Trainers",icon="Interface\\Minimap\\Tracking\\Profession", nofunc = true, hasArrow = true, menuList = Classes},
		{text="Profession Trainers",icon="Interface\\Minimap\\Tracking\\Profession", nofunc = true, hasArrow = true, menuList = Tradeskills},
		{text="Repair",icon="Interface\\Minimap\\Tracking\\Repair"},
		{text="Riding Trainer",icon="Interface\\Minimap\\Tracking\\StableMaster", type="TrainerRiding"},
		{text="Stable Master",icon="Interface\\Minimap\\Tracking\\StableMaster"},
		--{text="Transmogrifier",icon="Interface\\Minimap\\Tracking\\Transmogrifier"},
		{text="Vendor",icon="Interface\\Minimap\\Tracking\\Food"},
		--{text="Void Storage",icon=ZGV.IconSets.WorldQuest.file,iconkey="VOID"},
	}

	for i,v in ipairs(WW.Types) do
		if not v.nofunc then v.func = v.func or function() ZGV.WhoWhere:FindNPC(v.type or v.text) CloseDropDownForks()  end end
		v.notCheckable = 1
		if v.iconkey then
			local texcoord=ZGV.IconSets.WorldQuest[v.iconkey].texcoord
 			v.tCoordLeft = texcoord[1]
			v.tCoordRight = texcoord[2]
			v.tCoordTop = texcoord[3]
			v.tCoordBottom = texcoord[4]
		end	
	end


end

function WW:CreateWorkerFrame()
	if self.WorkerFrame then return end
	self.WorkerFrame=CreateFrame("FRAME")
	self.WorkerFrame:Show()
end

local function CalcStep()
	if WW.thread then
		coroutine.resume(WW.thread)
		if coroutine.status(WW.thread)=="dead" then
			WW.thread=nil
			WW.WorkerFrame:SetScript("OnUpdate",nil)
		end
	end
end


local function CalcThread()
	local typ,m,x,y=WW.typ,WW.m,WW.x,WW.y
	if not m then x,y,m=LibRover:GetPlayerPosition() end
	local parse=ZGV.NPCData.parseNPC
	local mindist,minid,minm,minf,minx,miny=999999
	local count=0
	for id,data in ZGV.NPCData:iterate(typ) do
		local npc=parse(data)
		if tonumber(npc.m) and npc.m>0 then
			npc.x=npc.x*0.01
			npc.y=npc.y*0.01
			local dist=HBD:GetZoneDistance(m,x,y,npc.m,npc.x,npc.y)

			if dist and dist<mindist then
				mindist=dist
				minid,minm,minx,miny=tonumber(id),npc.m,npc.x,npc.y
			end
		end
		count=count+1
		if count%100==0 then coroutine.yield() end
	end
	if minid then
		ZGV.Pointer:SetWaypoint(minm,minx,miny,{title=ZGV.Localizers:GetTranslatedNPC(minid),arrow=true,findpath=true,type="manual",cleartype="true"},true)
	end

end

function WW:FindNPC(typ,m,f,x,y)
	if typ == "Innkeeper" or not ZGV.db.profile.pathfinding then
		WW:FindNPC_Direct(typ)
	elseif typ then
		WW:FindNPC_Smart(typ)
	end
end

function WW:FindNPC_Direct(typ,m,f,x,y)
	self.typ,self.m,self.f,self.x,self.y=typ,m,f,x,y

	self.WorkerFrame:SetScript("OnUpdate",CalcStep)
	self.thread = coroutine.create(CalcThread)
end

function WW:FindNPC_Smart(typ)
	local parse=ZGV.NPCData.parseNPC
	local foundnpcs = {}
	local npcid, npcdata, npcrawdata

	local npccounter = 1

	for id,data in ZGV.NPCData:iterate(typ) do
		local temp = parse(data)
		if (not temp.c or temp.c()) and temp.m>0 then
			foundnpcs[npccounter] = {m=temp.m, x=temp.x/100, y=temp.y/100, id=tonumber(id)}
			npccounter = npccounter + 1
		end
	end

	local b = foundnpcs[1]
	if not b then return false end

	local more_points = {}
	for i=1,#foundnpcs do
		local w=foundnpcs[i]
		more_points[#more_points+1]={m=w.m,f=w.f,x=w.x,y=w.y,title="Nearest "..typ.." #"..w.id, noskip=true}
	end

	LibRover:QueueFindPath(0,0,0, b.m,b.x,b.y, ZGV.Pointer.PathFoundHandler, {foundnpcs=foundnpcs, direct=not ZGV.db.profile.pathfinding, multiple_ends=more_points })
	LibRover:UpdateNow()
end

function WW:Find_Taxi()
	local cn,cont = ZGV.GetCurrentMapContinent()
	ZGV.LibTaxi:ClearContinentKnowledge(cn,"taxi")
	local taxis={}
	for ni,node in pairs(LibRover.nodes.taxi) do
		if node.c==cont then tinsert(taxis,{m=node.m,f=node.f,x=node.x,y=node.y,title=node.name,name=node.name,id=node.npcid,learnfpath=true}) end
	end
	local b=taxis[1]
	LibRover:QueueFindPath(0,0,0, b.m,b.x,b.y, ZGV.Pointer.PathFoundHandler, {foundnpcs=taxis, direct=not ZGV.db.profile.pathfinding, multiple_ends=taxis })
	LibRover:UpdateNow(true)
end

--------------------------------------------------------------------------------

local function CalcMailboxThread()
	local m, x, y =  WW.m, WW.x, WW.y

	local parse=ZGV.MailboxData.parseMailbox
	local mindist,minid,minm,minf,minx,miny=999999
	local count=0
	for id,data in ZGV.MailboxData:iterate() do
		local mailbox=parse(data)
		if (not mailbox.c or mailbox.c()) and mailbox.m>0 then
			mailbox.x=mailbox.x*0.01
			mailbox.y=mailbox.y*0.01
			local dist = HBD:GetZoneDistance(m,x,y,mailbox.m,mailbox.x,mailbox.y)

			if dist and dist<mindist then
				mindist=dist
				minid,minm,minx,miny=tonumber(id),mailbox.m,mailbox.x,mailbox.y
			end
		end
		count=count+1
		if count%100==0 then coroutine.yield() end
	end
	if minid then
		ZGV.Pointer:SetWaypoint(minm,minx,miny,{title="Mailbox",arrow=true,findpath=true,type="manual",cleartype="true"},true)
	end

end



function WW:FindMailbox()
	self.x, self.y, self.m = LibRover:GetPlayerPosition() 
	self.WorkerFrame:SetScript("OnUpdate",CalcStep)
	self.thread = coroutine.create(CalcMailboxThread)
end


tinsert(ZGV.startups,{"WhoWhere",function(self)
	WW:SetupMenuArray()
	WW:CreateWorkerFrame()
end})