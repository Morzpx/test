local name,ZGV = ...

local arrowskindir,arrowskinname = "Jigsaw","Jigsaw"
local arrowSkin = ZGV.Pointer:AddArrowSkin(arrowskindir,arrowskinname)

arrowSkin.features={colordist=true,smooth=false}


_G['ZygorGuidesViewerFrame_Arrow_'..arrowskindir..'_Mixin'] = Mixin({},ZygorGuidesViewerFrame_Arrow_Mixin)
local arrow_mixin = _G['ZygorGuidesViewerFrame_Arrow_'..arrowskindir..'_Mixin']

local options = {
	spr_w = 85,
	spr_h = 68,
	img_w = 1024,
	img_h = 1024,
	spritecount = 180,
	mirror = true,

	_off_precise = {
		range = 3,
		smooth = false,
		r=128/255,g=255/255,b=146/255,
	},
	-- colors
	--ar=172/255,ag=45/255,ab=45/255,
	--br=220/255,bg=132/255,bb=28/255,
	--cr=134/255,cg=255/255,cb=102/255,
	color_gradients = {
		_default='three',
		['one'] = {
		squared=false,
		---[[ aili
		{at=0,    r=172/255, g=45/255,  b=45/255},
		{at=0.5,  r=220/255, g=132/255, b=28/255},
		{at=0.75, r=239/255, g=211/255, b=22/255},
		{at=1,    r=100/255, g=251/255, b=122/255},
		},
		['two'] = {
		squared=false,
		{at=0,    r=172/255, g=45/255,  b=45/255},
		{at=0.5,  r=210/255, g=102/255, b=28/255},
		--{at=0.75, r=239/255, g=211/255, b=22/255},
		{at=0.75, r=180/255, g=150/255, b=22/255},
		{at=1,    r=100/255, g=251/255, b=122/255},
		},
		['three'] = {
		{at=0,    r=235/255, g=35/255,  b=35/255},
		{at=0.5,  r=255/255, g=154/255, b=35/255},
		{at=0.75, r=255/255, g=253/255, b=46/255},
		{at=1,    r=134/255, g=255/255, b=102/255},
		},
	},

	arrival = {
		spr_w = 64,
		spr_h = 64,
		img_w = 512,
		img_h = 256,
		spritecount = 32,
	}
}


------------ color

local msin,mcos,mabs,mfloor,mround=math.sin,math.cos,math.abs,math.floor,math.round
local rad2deg = 180/math.pi

local Pointer

function arrow_mixin:Setup()
	self.options = options

	self:Hide()
	self.title:SetFont(ZGV.Font,9)

	self:SetupSprites()
	self:SetupColors()

	self.arrow.warning = self.arrow:CreateAnimationGroup()
	local fade1 = ZGV.ChainCall(self.arrow.warning:CreateAnimation("Alpha")) :SetDuration(0.5) :SetToAlpha(1) :SetOrder(1) .__END
	local fade2 = ZGV.ChainCall(self.arrow.warning:CreateAnimation("Alpha")) :SetDuration(0.5) :SetToAlpha(0) :SetOrder(2) .__END
end

local precision_range = 0.02
local precision_mult = 1/precision_range

function arrow_mixin:ShowTraveling (elapsed,angle_rad,dist)
	self.arrow:Show() self.special:Hide()
	self.title:Show()

	self.arrow.warning:Stop()

	------------ color
	
	local r,g,b = self:GetArrowColors(angle_rad,dist)
	if r then self.arrow.arr:SetVertexColor(r,g,b) end

	local angle=angle_rad*rad2deg
	-- precision!
	local precise = self:GetPrecisionMeter(angle)
	if precise>0 then
		if not options.precise.smooth then precise=1 end
		local r,g,b,a = self.arrow.arr:GetVertexColor()
		--r = r + (1-r)*0.5*precise
		r = options.precise.r
		g = options.precise.g
		b = options.precise.b
		--b = b + (1-b)*0.5*precise
		self.arrow.arr:SetVertexColor(r,g,b,a)
		--self.arrspecular:SetAlpha(0.7 + 0.3*precise)
	else
		--self.arrspecular:SetAlpha(0.7)
	end
	
	------------ rotation

	self.arrow.arr:SetSpriteNum(mround(angle)%360)

	--self.arrspecular:SetTexCoord(x1,x2,y1,y2)
	-- self.mask:SetTexCoord(x1,x2,y1,y2) -- WON'T WORK! Need a reverse texcoord here, oh boy, oh boy
	--self.mask:SetPoint("TOPLEFT",-self.mask:GetWidth()*x1,self.mask:GetHeight()*y1)

end

local specials={"here","waiting","upstairs","downstairs","error","instance","instancehide"}
function arrow_mixin:ShowSpecial(spec)
	if spec==nil or not self.special[spec] then self.arrow:Hide() self.special:Hide() return end
	self.arrow:Hide() self.special:Show()
	for k,v in ipairs(specials) do if v~=spec then self.special[v]:Stop() end end
	self.special[spec]:Play()
end

function arrow_mixin:ShowArrived()
	self:ShowSpecial("here")
	--self.back:SetTexCoord(0,0,0,1,1,0,1,1)
end

function arrow_mixin:ShowStairs(up)
	self:ShowSpecial(up and "upstairs" or "downstairs")
end

function arrow_mixin:ShowWaiting(phase)
	--self.arrow:SetAngle(phase*6.28)
	self:ShowSpecial("waiting")
end

function arrow_mixin:ShowNothing()
	self:ShowSpecial(nil)
end

function arrow_mixin:ShowError()
	self:ShowSpecial("error")
end

function arrow_mixin:ShowInstance()
	self:ShowSpecial("instance")
end

function arrow_mixin:HideInstance()
	self:ShowSpecial("instancehide")
end

function arrow_mixin:ShowWarning()
	self.arrow.warning:Play()
end

function arrow_mixin:SetNotice (text)
	self.notice = text
end

-- ShowText: inherited

function arrow_mixin:SetOption(opt,val)
	if opt=="metal" then
		local skindir = self.skin:GetDir()
		self.arrow.arr:SetTexture(skindir.."arrow"..(val and "-specular" or "") ,false)
	end
end
