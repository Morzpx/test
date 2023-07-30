local name,ZGV = ...

local tinsert,tremove,print,ipairs,pairs,wipe,floor,ceil=tinsert,tremove,print,ipairs,pairs,wipe,floor,ceil

local Notification = {}

local L = ZGV.L
local CHAIN = ZGV.ChainCall
local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold

local ui = ZGV.UI
local SkinData = ui.SkinData

ZGV.NotificationCenter=Notification

function Notification.OnUpdate()
	local now = time()
	local changed = false

	-- remove notifications that are now outdated
	for i=#Notification.Entries,1,-1 do
		local entry = Notification.Entries[i]
		if entry.removetime and entry.removetime<now then
			table.remove(Notification.Entries)
			changed = true
		end
	end

	if changed then
		Notification:HideNotifications()
		if ZGV.Frame.Controls.Notifications.Counter:IsVisible() then
			Notification:UpdateCounter()
		end
	end

	if not ZGV.Frame.Controls.MenuHostNotifications:IsVisible() then return end

	Notification.HideTiming = Notification.HideTiming or 0

	if ZGV.Frame.Controls.Notifications:IsMouseOver() then 
		Notification.HideTiming = 0
		return
	end

	for _,button in ipairs(Notification.Buttons) do
		if button:IsMouseOver() then
			Notification.HideTiming = 0
			return
		end
	end

	Notification.HideTiming = Notification.HideTiming + 1

	if Notification.HideTiming>100 then
		Notification:HideNotifications()
	end

end

function Notification.OnEvent(self,event,payload)
	Notification:SaveNotifications()
end

function Notification:DoStartup()
	ZGV:AddEventHandler("PLAYER_LOGOUT",Notification.OnEvent)
	ZGV.UpdateCentral:AddHandler(Notification.OnUpdate)

	Notification.Entries = {}
	Notification.Buttons = {}

	Notification:AddedSavedNotifications()

	Notification.Empty ={
		title=L["notifcenter_no_entries"], 
		text=L["notifcenter_no_entries"], 
		notCheckable=1,
	}

	Notification.Reset ={
		title=L["notifcenter_reset"], 
		text=L["notifcenter_reset"], 
		notCheckable=1,
		func = Notification.RemoveAllEntries
	}

	ZGV:AddMessageHandler("SKIN_UPDATED",Notification.ApplySkin)
	Notification:ApplySkin()
end

function Notification:AddEntry(ident, title, text, texture, texcoords, onClick, tooltip, priority, poptime, removetime, quiet, onOpen, notiftype, data ) 
	local flashText = text
	data = data or {}
	onClick = onClick or function() end
	assert(type(ident)=="string", "ident must be a string")
	assert(type(texture)=="string", "Texture must be a string")
	if type(text)=="table" then flashText = text[2] text = text[1] end
	assert(type(title)=="string", "Text must be a string")
	assert(type(text)=="string", "Text must be a string")

	if onClick then assert(type(onClick)=="function", "OnClick must be a function") end
	if data then assert(type(data)=="table", "Data must be a table if it is there.") end

	Notification:RemoveEntry(ident)

	local entry = {
		ident=ident,
		title=title, 
		text=text, 
		texture=texture, 
		texcoords=texcoords, 
		tooltip=tooltip, 
		priority=priority, 
		poptime=poptime, 
		removetime=removetime and (time()+removetime), 
		quiet=quiet, 
		notiftype=notiftype, 
		data=data,

		onClick=onClick, 
		onOpen=onOpen, 
	}


	table.insert(Notification.Entries,1,entry)

	if not quiet then
		Notification:ShowOneNotification(ident)
	end

	if not (data.guide and data.dontdelete) then
		entry.dontSave = true
	end

	ZGV.db.char.NotificationsCounterHidden = false
	Notification:UpdateCounter()

	return button
end

function Notification:UpdateCounter()
	local counter = #Notification.Entries
	if counter>0 then
		ZGV.Frame.Controls.Notifications.Counter:Show()
		ZGV.Frame.Controls.Notifications.Counter.Text:SetText(counter)
	else
		ZGV.Frame.Controls.Notifications.Counter:Hide()
	end
end


Notification.MenuItems = {}
function Notification:ShowNotifications()
	table.wipe(Notification.MenuItems)

	for index,entry in ipairs(Notification.Entries) do
		local data = {
			text = entry.text,
			icon = entry.texture,
			func = entry.onClick,
			notCheckable=1,
		}

		if entry.texcoords then
			data.tCoordLeft = entry.texcoords[1]
			data.tCoordRight = entry.texcoords[2]
			data.tCoordTop = entry.texcoords[3]
			data.tCoordBottom = entry.texcoords[4]
		end

		table.insert(Notification.MenuItems,data)
		if index<#Notification.Entries then table.insert(Notification.MenuItems,UIDropDownFork_separatorInfo) end
	end


	if #Notification.Entries==0 then 
		table.insert(Notification.MenuItems,Notification.Empty)
	else
		table.insert(Notification.MenuItems,UIDropDownFork_separatorInfo)
		table.insert(Notification.MenuItems,Notification.Reset)
	end

	UIDropDownFork_SetAnchor(ZGV.Frame.Controls.MenuHostNotifications, 0, 0, "TOP", ZGV.Frame.Controls.Notifications, "BOTTOM")
	EasyFork(Notification.MenuItems,ZGV.Frame.Controls.MenuHostNotifications,nil,0,0,"MENU",10)
	DropDownForkList1:SetPoint("RIGHT",ZGV.Frame,"RIGHT")

	ZGV.db.char.NotificationsCounterHidden = true
	ZGV.Frame.Controls.Notifications.Counter:Hide()
end

function Notification:ShowOneNotification(ident)
	local entry
	for index,notification in ipairs(Notification.Entries) do
		if notification.ident==ident then
			entry = notification
			break
		end
	end
	
	if not entry then return end

	table.wipe(Notification.MenuItems)

	local data = {
		text = entry.text,
		icon = entry.texture,
		func = entry.onClick,
		notCheckable=1,
	}

	if entry.texcoords then
		data.tCoordLeft = entry.texcoords[1]
		data.tCoordRight = entry.texcoords[2]
		data.tCoordTop = entry.texcoords[3]
		data.tCoordBottom = entry.texcoords[4]
	end

	table.insert(Notification.MenuItems,data)

	UIDropDownFork_SetAnchor(ZGV.Frame.Controls.MenuHostNotifications, 0, 0, "TOPRIGHT", ZGV.Frame.Controls.Notifications, "BOTTOMRIGHT")
	EasyFork(Notification.MenuItems,ZGV.Frame.Controls.MenuHostNotifications,nil,0,0,"MENU",10)

	ZGV:ScheduleTimer(Notification.HideNotifications, 2.0)

end

function Notification:HideNotifications()
	if DropDownForkList1 and DropDownForkList1:IsShown() and DropDownForkList1.dropdown==ZGV.Frame.Controls.MenuHostNotifications then CloseDropDownForks() return end
end

function Notification:AddedSavedNotifications()
	if not ZGV.db.char.notifications then return end

	local hide_counter = ZGV.db.char.NotificationsCounterHidden

	for id,info in pairs(ZGV.db.char.notifications) do
		local myId,title,text,texture,texCoord,OnClick,OnEnter,priority,poptime,removetime,quiet,OnOpen,myType,addtime,guideData,data

		local guide = ZGV:GetGuideByTitle(id)

		myId = id
		myType = info[1]
		title = info[2]
		text = info[3]
		addtime = info[4]
		texture = info[5] or ""
		texCoord = info[6]
		data = info[7]
		quiet = true -- don't pop saved notifies

		if info[1] == "pet" then
			ZGV.CreatureDetector:AddGuideToDetectedGuides(guide)
			OnClick = function(self) ZGV.Tabs:LoadGuideToTab(guide) Notification:RemoveEntry(myId) Notification:UpdateCounter() end
			OnEnter = function(self) local position,x,y = Notification:GetTooltipPosition() ZGV.CreatureDetector:ShowTooltip(guide,self,position,x,y) end
			guideData = guide
		elseif info[1] == "sis" or info[1] == "mount" or info[1] == "monk" then
			guideData = guide
			OnClick = function(self) ZGV.Tabs:LoadGuideToTab(guide) Notification:RemoveEntry(myId) Notification:UpdateCounter() end
		elseif info[1] == "legion" then
			guideData = guide
			OnClick = function(self) ZGV:PLAYER_LEVEL_UP(nil,data.level) Notification:RemoveEntry(myId) Notification:UpdateCounter() end
		end

		Notification:AddEntry(
			myId,
			title,
			text,
			texture,
			texCoord,
			OnClick,
			OnEnter,
			priority,
			poptime,
			removetime,
			quiet,
			OnOpen,
			myType,
			{time=addtime,guide=guideData,level=(data and data.level or nil),dontdelete=(data and data.dontdelete or nil)})
	end

	if hide_counter then
		ZGV.db.char.NotificationsCounterHidden = true -- need to set it back, since AddEntry defaults to showing the counter
		ZGV.Frame.Controls.Notifications.Counter:Hide()
	end

	--Notification:UpdateCounter()
end

function Notification:SaveNotifications()
	ZGV.db.char.notifications  = ZGV.db.char.notifications or {} 
	wipe(ZGV.db.char.notifications)

	local saved = ZGV.db.char.notifications
	
	for i,notif in ipairs(Notification.Entries) do
		-- Loop through all current notifcations
		if notif.dontSave then
			-- noop
			-- entry is shown, but not stored in saved vars
		elseif notif.notiftype == "pet" then
			saved[notif.ident] = {
				notif.notiftype,
				notif.title,
				notif.text,
				notif.addtime,
				notif.texture,
				notif.texcoords,
				notif.data,
			}
		elseif notif.notiftype == "sis" or notif.notiftype == "mount" or notif.notiftype == "monk" or notif.notiftype == "legion" then
			local guideTitle = notif.data.guide.title 
			saved[guideTitle] = {
				notif.notiftype,
				notif.title,
				notif.text,
				notif.addtime,
				notif.texture,
				notif.texcoords,
				notif.data,
			}
		end
	end
end


function Notification:ApplySkin()
	ZGV.Frame.Controls.Notifications.Counter.BG:SetVertexColor(unpack(SkinData("NotificationBubbleColor")))
	if ZGV.Frame.Controls.MenuHostNotifications then
		CHAIN(ZGV.Frame.Controls.MenuHostNotifications)
			:SetBackdrop(SkinData("NotificationBackdrop"))
			:SetBackdropColor(unpack(SkinData("NotificationBackdropColor")))
			:SetBackdropBorderColor(unpack(SkinData("NotificationBackdropBorderColor")))
	end
end

function Notification:RemoveEntry(ident)
	for index,entry in ipairs(Notification.Entries) do
		if entry.ident==ident then
			table.remove(Notification.Entries,index)
			Notification:HideNotifications()
			return
		end
	end
end

function Notification:RemoveAllEntries()
	table.wipe(Notification.Entries)
	Notification:HideNotifications()
	Notification:UpdateCounter()
end


function Notification:EntryExists(ident)
	for index,entry in ipairs(Notification.Entries) do
		if entry.ident==ident then
			return true
		end
	end
	return false
end

function Notification:UpdateEnable()

end

function Notification:GetButton()
	for _,button in ipairs(Notification.Buttons) do
		if not button.Used then return button end
	end

	local button = CreateFrame("BUTTON",nil,ZGV.Frame,"ZGV_Notification_Button_Template")
	table.insert(Notification.Buttons,button)

	return button
end

tinsert(ZGV.startups,{"NC startup",function(self)
	Notification:DoStartup()
	Notification:AddedSavedNotifications()
end})

ZGV_Notification_Button_Mixin = {}
function ZGV_Notification_Button_Mixin:SetButton(data)
	self.Underline:SetColorTexture(unpack(SkinData("NotificationDecorColor")))
	self.Underline:Show()

	 self.hilitex = self.hilitex or CHAIN(self:CreateTexture())
		:SetPoint("TOPLEFT",0,-5)
		:SetPoint("BOTTOMRIGHT",0,5)
		:SetColorTexture(unpack(SkinData("ButtonHighlight")))
	.__END

	self:SetHighlightTexture(self.hilitex)

	self.Text:SetText(data.text)
	self.Text:SetTextColor(unpack(SkinData("NotificationTextColor")))
	self.Icon:SetTexture(data.texture)
	if data.texcoords then
		self.Icon:SetTexCoord(unpack(data.texcoords))
	end
	if data.onClick then 
		self:SetScript("OnClick",function() 
			data.onClick()
			Notification:RemoveEntry(data.ident)
		end)
	end
	if data.onOpen then 
		data.onOpen()
	end

	self.Used = true
	self:Show()
end

function ZGV_Notification_Button_Mixin:OnEnter()
	--self.Text:SetTextColor(unpack(SkinData("NotificationTextColorOver")))
end

function ZGV_Notification_Button_Mixin:OnLeave()
	--self.Text:SetTextColor(unpack(SkinData("NotificationTextColor")))
end

function ZGV_Notification_Button_Mixin:OnHide()
	self:ClearAllPoints()
	self.Text:SetText("")
	self.Icon:SetTexture(nil)
	self:SetScript("OnClick",nil)
	self.Used = false
end