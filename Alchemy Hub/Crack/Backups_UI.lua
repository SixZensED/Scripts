export type SliderConfig = {
	Min : number,
	Max : number,
	Default : number,
	VALUE : string,
}


--[[
Example:

local UI = require(script:WaitForChild('ModuleScript'))

-- CONFIG --
--	UI.Config.MainColor <color3>
--	UI.Config.DropColor <color3>
--	UI.Config["UI Size"] <udim2>

local Window = UI:NewWindow('SWITCH HUB','Series A B C D','rbxassetid://6886692638')
local MenuChangeLog = Window:AddMenu('Change Log',"i don't know",'hash','change')
local MenuFunctions = Window:AddMenu('Functions',"Script Auto Fuck",'ticket','tab')

local TabFunctions = MenuFunctions:AddTab('Main','Auto Kaitun','box-select')
local TabTeleport = MenuFunctions:AddTab('Teleport','Teleport (anti chaet)','list')

local ChangeLogSection = MenuChangeLog:AddTab():AddSection('Change Log' idk idk idk)
local MainSection = TabFunctions:AddSection('Auto Farm','auto kaitun, level from 1 to 700 levels in 10s','afk farm kaitun script','book-open')
local TeleportSection = TabTeleport:AddSection('Teleports','teleport to porn hub','teleport and steal your discord token','server')

MainSection:AddToggle('Auto Farm',false,function(v)
	print(v)
end)

MainSection:AddDropdown('Skill',{'Z','X','C','V'},nil,4,function(list,item)
	print(list,item)
end)

MainSection:AddSlider('Skill',{Min = 15, Max = 45, Default = 15, VALUE = '%'},function(v)
	print(v)
end)


MainSection:AddButton('Kill all',function(v)
	print(v)
end)

TeleportSection:AddButton('Blox Fruit',function()
	print('TP!')
end)

TeleportSection:AddButton('The Mimic',function()
	print('TP!')
end)

TeleportSection:AddButton('DOORS',function()
	print('TP!')
end)

TeleportSection:AddButton('Blade Ball',function()
	print('TP!')
end)

TeleportSection:AddButton('Phantom Force',function()
	print('TP!')
end)

TeleportSection:AddButton('Cry Of Fear',function()
	print('TP!')
end)
]]


local LocalPlayer = game:GetService('Players').LocalPlayer;
local TextService = game:GetService('TextService')
local TweenService = game:GetService('TweenService')
local UserInputService = game:GetService('UserInputService')
local HttpService = game:GetService('HttpService')

local Alc = {
	Config = {
		['UI Size'] = UDim2.new(0.100000001, 315, 0.100000001, 310),
		['MainColor'] = Color3.fromRGB(61, 207, 117),
		['DropColor'] = Color3.fromRGB(25, 102, 61)
	},
	CoreGui = game:FindFirstChild('CoreGui') or LocalPlayer.PlayerGui,
	Windows = {},
	Icons = (function()
		local Table;

		pcall(function()
			Table = game:HttpGet("https://raw.githubusercontent.com/evoincorp/lucideblox/master/src/modules/util/icons.json")
		end)

		if not Table then
			Table = require(script:WaitForChild('icon'))
		end

		local _,cal = pcall(HttpService.JSONDecode,HttpService,Table)

		return (_ and cal) or {['icons'] = {}}
	end)()
}

local ProtectGui = protectgui or (syn and syn.protect_gui) or (function() end);

local function cretate_button(asd)
	local button=Instance.new('TextButton')
	button.Size=UDim2.new(1,0,1,0)
	button.BackgroundTransparency=1
	button.TextTransparency=1
	button.Text=""
	button.Parent=asd
	button.ZIndex=5000
	return button
end

function Alc:GetTextSize(TextLabel:TextLabel)
	return TextService:GetTextSize(TextLabel.Text,TextLabel.TextSize,TextLabel.Font,Vector2.new(math.huge,math.huge))
end

function Alc:GetId(Original:string)
	if Original:find('rbxassetid://') or Original:find('=') then
		return Original
	end

	if Alc['Icons']['icons'][Original] then
		return Alc['Icons']['icons'][Original]
	end

	return "rbxassetid://"..Original
end

local function scrolling_connectY(scrollframe:ScrollingFrame)
	task.spawn(function()
		local addres = 1
		local UIListLayout:UIListLayout = scrollframe:WaitForChild('UIListLayout',9999999)
		scrollframe.CanvasSize=UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y+addres)

		UIListLayout:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()
			scrollframe.CanvasSize=UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y+addres)
		end)
	end)
end

local function scrolling_connectX(scrollframe:ScrollingFrame)
	task.spawn(function()
		local addres = 1
		local UIListLayout:UIListLayout = scrollframe:WaitForChild('UIListLayout',9999999)
		scrollframe.CanvasSize=UDim2.new(0,UIListLayout.AbsoluteContentSize.X+addres,0,0)

		UIListLayout:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()
			scrollframe.CanvasSize=UDim2.new(0,UIListLayout.AbsoluteContentSize.X+addres,0,0)
		end)
	end)
end

function Alc:NewWindow(WindowName:string,WindowDescription:string,WindowLogo:string)
	WindowName = WindowName or "...";
	WindowDescription = WindowDescription or "..."
	WindowLogo = WindowLogo or '0'

	local WindowAlc = {
		Toggle = Enum.KeyCode.LeftControl,
		Tabs = {},
		TabSelect = 1
	}

	local Main = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local DropShadow = Instance.new("ImageLabel")
	local Topbar = Instance.new("Frame")
	local HubLogo = Instance.new("ImageLabel")
	local UICorner_2 = Instance.new("UICorner")
	local TextTitle = Instance.new("TextLabel")
	local TextDescription = Instance.new("TextLabel")
	local UIGradient = Instance.new("UIGradient")
	local MenuFrames = Instance.new("Frame")
	local MenuScroll = Instance.new("ScrollingFrame")
	local UIListLayout = Instance.new("UIListLayout")
	local CloseUI = Instance.new("Frame")
	local HubLogo_2 = Instance.new("ImageLabel")
	local UICorner_3 = Instance.new("UICorner")
	local UICorner_4 = Instance.new("UICorner")

	Main.Name = "Main"
	Main.Parent = Alc.CoreGui
	Main.ResetOnSpawn = false
	Main.IgnoreGuiInset = true
	Main.ZIndexBehavior = Enum.ZIndexBehavior.Global
	ProtectGui(Main)
	Frame.Parent = Main
	Frame.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
	Frame.Size = UDim2.fromScale(0,0)
	Frame.SizeConstraint = Enum.SizeConstraint.RelativeYY
	Frame.ClipsDescendants = true

	TweenService:Create(Frame,TweenInfo.new(1.5),{Size = Alc.Config["UI Size"]}):Play()

	UICorner.Parent = Frame

	DropShadow.Name = "DropShadow"
	DropShadow.Parent = Frame
	DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
	DropShadow.BackgroundTransparency = 1.000
	DropShadow.BorderSizePixel = 0
	DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
	DropShadow.Size = UDim2.new(1, 47, 1, 47)
	DropShadow.ZIndex = 0
	DropShadow.Image = "rbxassetid://6015897843"
	DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	DropShadow.ImageTransparency = 0.500
	DropShadow.ScaleType = Enum.ScaleType.Slice
	DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)
	DropShadow.Rotation = 0.01

	Topbar.Name = "Topbar"
	Topbar.Parent = Frame
	Topbar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Topbar.BackgroundTransparency = 1.000
	Topbar.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Topbar.BorderSizePixel = 0
	Topbar.Size = UDim2.new(1, 0, 0.0799999982, 0)
	Topbar.ZIndex = 2

	HubLogo.Name = "HubLogo"
	HubLogo.Parent = Topbar
	HubLogo.AnchorPoint = Vector2.new(0.5, 0.5)
	HubLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	HubLogo.BackgroundTransparency = 1.000
	HubLogo.BorderColor3 = Color3.fromRGB(0, 0, 0)
	HubLogo.BorderSizePixel = 0
	HubLogo.Position = UDim2.new(0.0450000018, 0, 0.5, 0)
	HubLogo.Size = UDim2.new(0.899999976, 0, 0.899999976, 0)
	HubLogo.SizeConstraint = Enum.SizeConstraint.RelativeYY
	HubLogo.ZIndex = 3
	HubLogo.Image = Alc:GetId(WindowLogo)

	UICorner_2.Parent = HubLogo

	TextTitle.Name = "TextTitle"
	TextTitle.Parent = Topbar
	TextTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextTitle.BackgroundTransparency = 1.000
	TextTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextTitle.BorderSizePixel = 0
	TextTitle.Position = UDim2.new(0.103366353, 0, 0.0999998972, 0)
	TextTitle.Size = UDim2.new(0.896555603, 0, 0.433997005, 0)
	TextTitle.ZIndex = 3
	TextTitle.Font = Enum.Font.GothamBold
	TextTitle.Text = WindowName
	TextTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextTitle.TextScaled = true
	TextTitle.TextSize = 14.000
	TextTitle.TextWrapped = true
	TextTitle.TextXAlignment = Enum.TextXAlignment.Left

	TextDescription.Name = "TextDescription"
	TextDescription.Parent = Topbar
	TextDescription.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextDescription.BackgroundTransparency = 1.000
	TextDescription.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextDescription.BorderSizePixel = 0
	TextDescription.Position = UDim2.new(0.103366353, 0, 0.53399694, 0)
	TextDescription.Size = UDim2.new(0, 80, 0.300000012, 0)
	TextDescription.ZIndex = 3
	TextDescription.Font = Enum.Font.GothamBold
	TextDescription.Text = WindowDescription
	TextDescription.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextDescription.TextScaled = true
	TextDescription.TextSize = 14.000
	TextDescription.TextWrapped = true
	TextDescription.TextXAlignment = Enum.TextXAlignment.Left

	--[[UPDATE TEXT]]
	local function UpdateDescTextSize()
		local size = Alc:GetTextSize(TextDescription)
		TweenService:Create(TextDescription,TweenInfo.new(0.5),{Size = UDim2.new(0,size.X,0.3,0)}):Play()
	end

	UpdateDescTextSize()

	UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Alc.Config.MainColor), ColorSequenceKeypoint.new(1.00, Alc.Config.DropColor)}
	UIGradient.Parent = TextDescription

	MenuFrames.Name = "MenuFrames"
	MenuFrames.Parent = Frame
	MenuFrames.AnchorPoint = Vector2.new(0.5, 0)
	MenuFrames.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	MenuFrames.BackgroundTransparency = 1.000
	MenuFrames.BorderColor3 = Color3.fromRGB(0, 0, 0)
	MenuFrames.BorderSizePixel = 0
	MenuFrames.Position = UDim2.new(0.5, 0, 0.075000003, 0)
	MenuFrames.Size = UDim2.new(0.949999988, 0, 0.0799999982, 0)
	MenuFrames.ZIndex = 2

	MenuScroll.Name = "MenuScroll"
	MenuScroll.Parent = MenuFrames
	MenuScroll.Active = true
	MenuScroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	MenuScroll.BackgroundTransparency = 1.000
	MenuScroll.BorderColor3 = Color3.fromRGB(0, 0, 0)
	MenuScroll.BorderSizePixel = 0
	MenuScroll.Size = UDim2.new(1, 0, 1, 0)
	MenuScroll.ZIndex = 3
	MenuScroll.CanvasSize = UDim2.new(2, 0, 0, 0)
	MenuScroll.ScrollBarThickness = 0
	MenuScroll.TopImage = ""

	scrolling_connectX((MenuScroll))

	UIListLayout.Parent = MenuScroll
	UIListLayout.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout.Padding = UDim.new(0,8)
	CloseUI.Name = "CloseUI"
	CloseUI.Parent = Frame
	CloseUI.AnchorPoint = Vector2.new(0.5, 0.5)
	CloseUI.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	CloseUI.BorderColor3 = Color3.fromRGB(0, 0, 0)
	CloseUI.BorderSizePixel = 0
	CloseUI.Position = UDim2.new(0.5, 0, 0.5, 0)
	CloseUI.Visible = false
	CloseUI.ZIndex = 45
	CloseUI.Size = UDim2.fromScale(1,1)

	TweenService:Create(CloseUI,TweenInfo.new(2,Enum.EasingStyle.Quint,Enum.EasingDirection.In),{Size = UDim2.fromScale(0,0)}):Play()

	HubLogo_2.Name = "HubLogo"
	HubLogo_2.Parent = CloseUI
	HubLogo_2.AnchorPoint = Vector2.new(0.5, 0.5)
	HubLogo_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	HubLogo_2.BackgroundTransparency = 1.000
	HubLogo_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	HubLogo_2.BorderSizePixel = 0
	HubLogo_2.Position = UDim2.new(0.5, 0, 0.5, 0)
	HubLogo_2.Size = UDim2.new(0.25, 0, 0.25, 0)
	HubLogo_2.SizeConstraint = Enum.SizeConstraint.RelativeYY
	HubLogo_2.ZIndex = 55
	HubLogo_2.Image = Alc:GetId(WindowLogo)

	UICorner_3.Parent = HubLogo_2

	UICorner_4.Parent = CloseUI

	function WindowAlc:AddMenu(MenuName:string,MenuDescription:string,MenuIcon:string,MenuType:string)
		MenuType = MenuType or 'tab'
		local MenuAlc = {
			Checker = {}
		}

		local MenuButton = Instance.new("Frame")
		local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
		local UICorner = Instance.new("UICorner")
		local MenuLogo = Instance.new("ImageLabel")
		local MenuText = Instance.new("TextLabel")
		local MenuDesc = Instance.new("TextLabel")
		local Button = Instance.new("TextButton")

		MenuButton.Name = "MenuButton"
		MenuButton.Parent = MenuScroll
		MenuButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		MenuButton.BackgroundTransparency = 1.000
		MenuButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
		MenuButton.BorderSizePixel = 0
		MenuButton.ClipsDescendants = false
		MenuButton.Size = UDim2.new(0.5, 0, 0.75, 0)
		MenuButton.ZIndex = 4

		UIAspectRatioConstraint.Parent = MenuButton
		UIAspectRatioConstraint.AspectRatio = 0.1
		UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize
		UIAspectRatioConstraint.DominantAxis = Enum.DominantAxis.Height

		TweenService:Create(UIAspectRatioConstraint,TweenInfo.new(0.3 + (#WindowAlc.Tabs / 10),Enum.EasingStyle.Back),{AspectRatio = 4.000}):Play()
		UICorner.CornerRadius = UDim.new(0, 3)
		UICorner.Parent = MenuButton

		MenuLogo.Name = "MenuLogo"
		MenuLogo.Parent = MenuButton
		MenuLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		MenuLogo.BackgroundTransparency = 1.000
		MenuLogo.BorderColor3 = Color3.fromRGB(0, 0, 0)
		MenuLogo.BorderSizePixel = 0
		MenuLogo.Size = UDim2.new(1, 0, 1, 0)
		MenuLogo.SizeConstraint = Enum.SizeConstraint.RelativeYY
		MenuLogo.ZIndex = 5
		MenuLogo.Image = Alc:GetId(MenuIcon or "hash")

		MenuText.Name = "MenuText"
		MenuText.Parent = MenuButton
		MenuText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		MenuText.BackgroundTransparency = 1.000
		MenuText.BorderColor3 = Color3.fromRGB(0, 0, 0)
		MenuText.BorderSizePixel = 0
		MenuText.Position = UDim2.new(0.310877919, 0, 0, 0)
		MenuText.Size = UDim2.new(2.10955262, 0, 0.5, 0)
		MenuText.ZIndex = 5
		MenuText.Font = Enum.Font.GothamBold
		MenuText.Text = MenuName or "Menu"
		MenuText.TextColor3 = Color3.fromRGB(255, 255, 255)
		MenuText.TextScaled = true
		MenuText.TextSize = 14.000
		MenuText.TextWrapped = true
		MenuText.TextXAlignment = Enum.TextXAlignment.Left

		MenuDesc.Name = "MenuDesc"
		MenuDesc.Parent = MenuButton
		MenuDesc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		MenuDesc.BackgroundTransparency = 1.000
		MenuDesc.BorderColor3 = Color3.fromRGB(0, 0, 0)
		MenuDesc.BorderSizePixel = 0
		MenuDesc.Position = UDim2.new(0.31100589, 0, 0.600000083, 0)
		MenuDesc.Size = UDim2.new(2.10955262, 0, 0.349999547, 0)
		MenuDesc.ZIndex = 5
		MenuDesc.Font = Enum.Font.GothamBold
		MenuDesc.Text = MenuDescription or "Description"
		MenuDesc.TextColor3 = Color3.fromRGB(255, 255, 255)
		MenuDesc.TextScaled = true
		MenuDesc.TextSize = 14.000
		MenuDesc.TextTransparency = 0.500
		MenuDesc.TextWrapped = true
		MenuDesc.TextXAlignment = Enum.TextXAlignment.Left

		Button.Name = "Button"
		Button.Parent = MenuButton
		Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Button.BackgroundTransparency = 1.000
		Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Button.BorderSizePixel = 0
		Button.Size = UDim2.new(1, 0, 1, 0)
		Button.ZIndex = 25
		Button.Font = Enum.Font.SourceSans
		Button.Text = ""
		Button.TextColor3 = Color3.fromRGB(0, 0, 0)
		Button.TextSize = 14.000
		Button.TextTransparency = 1.000
		local MainFrame

		if MenuType:find('tab') then
			local PageFrames = Instance.new("Frame")
			local Search = Instance.new("Frame")
			local SearchEngine = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local UIStroke = Instance.new("UIStroke")
			local LabelText = Instance.new("TextLabel")
			local SearchIcon = Instance.new("ImageLabel")
			local UICorner_2 = Instance.new("UICorner")
			local searchbox = Instance.new("TextBox")
			local Framet = Instance.new("Frame")
			local Frame_2 = Instance.new("Frame")
			local TabFrames = Instance.new("ScrollingFrame")
			local UIListLayout = Instance.new("UIListLayout")
			local Main = Instance.new("Frame")


			PageFrames.Name = "PageFrames"
			PageFrames.Parent = Frame
			PageFrames.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			PageFrames.BackgroundTransparency = 1.000
			PageFrames.BorderColor3 = Color3.fromRGB(0, 0, 0)
			PageFrames.BorderSizePixel = 0
			PageFrames.ClipsDescendants = true
			PageFrames.Position = UDim2.new(0, 0, 0.163185388, 0)
			PageFrames.Size = UDim2.new(1, 0, 0.836814642, 0)
			PageFrames.ZIndex = 4

			MainFrame = PageFrames
			Search.Name = "Search"
			Search.Parent = PageFrames
			Search.AnchorPoint = Vector2.new(0.5, 0.5)
			Search.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Search.BackgroundTransparency = 1.000
			Search.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Search.BorderSizePixel = 0
			Search.ClipsDescendants = true
			Search.Position = UDim2.new(0.187006071, 0, 0.5, 0)
			Search.Size = UDim2.new(0.354012221, 0, 0.980000138, 0)
			Search.ZIndex = 4

			SearchEngine.Name = "SearchEngine"
			SearchEngine.Parent = Search
			SearchEngine.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			SearchEngine.BorderColor3 = Color3.fromRGB(0, 0, 0)
			SearchEngine.BorderSizePixel = 0
			SearchEngine.ClipsDescendants = true
			SearchEngine.Size = UDim2.new(1, 0, 0.0680000037, 0)
			SearchEngine.ZIndex = 6

			UICorner.CornerRadius = UDim.new(0, 2)
			UICorner.Parent = SearchEngine

			UIStroke.Thickness = 0.500
			UIStroke.Color = Color3.fromRGB(39, 39, 39)
			UIStroke.Parent = SearchEngine

			LabelText.Name = "LabelText"
			LabelText.Parent = SearchEngine
			LabelText.AnchorPoint = Vector2.new(0.5, 0.5)
			LabelText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			LabelText.BackgroundTransparency = 1.000
			LabelText.BorderColor3 = Color3.fromRGB(0, 0, 0)
			LabelText.BorderSizePixel = 0
			LabelText.Position = UDim2.new(0.612374663, 0, 0.499999851, 0)
			LabelText.Size = UDim2.new(0.871346772, 0, 0.50000006, 0)
			LabelText.ZIndex = 6
			LabelText.Font = Enum.Font.GothamBold
			LabelText.Text = "Search"
			LabelText.TextColor3 = Color3.fromRGB(255, 255, 255)
			LabelText.TextScaled = true
			LabelText.TextSize = 14.000
			LabelText.TextTransparency = 0.750
			LabelText.TextWrapped = true
			LabelText.TextXAlignment = Enum.TextXAlignment.Left

			SearchIcon.Name = "SearchIcon"
			SearchIcon.Parent = SearchEngine
			SearchIcon.AnchorPoint = Vector2.new(0.5, 0.5)
			SearchIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SearchIcon.BackgroundTransparency = 1.000
			SearchIcon.BorderColor3 = Color3.fromRGB(0, 0, 0)
			SearchIcon.BorderSizePixel = 0
			SearchIcon.Position = UDim2.new(0.075000003, 0, 0.5, 0)
			SearchIcon.Size = UDim2.new(0.699999988, 0, 0.699999988, 0)
			SearchIcon.SizeConstraint = Enum.SizeConstraint.RelativeYY
			SearchIcon.ZIndex = 6
			SearchIcon.Image = "rbxassetid://7734052925"
			SearchIcon.ImageTransparency = 0.750

			UICorner_2.CornerRadius = UDim.new(0, 6)
			UICorner_2.Parent = SearchIcon

			searchbox.Name = "searchbox"
			searchbox.Parent = SearchEngine
			searchbox.AnchorPoint = Vector2.new(0.5, 0.5)
			searchbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			searchbox.BackgroundTransparency = 1.000
			searchbox.BorderColor3 = Color3.fromRGB(0, 0, 0)
			searchbox.BorderSizePixel = 0
			searchbox.Position = UDim2.new(1.46321285, 0, 0.499999851, 0)
			searchbox.Size = UDim2.new(2.66615963, 0, 0.50000006, 0)
			searchbox.ZIndex = 7
			searchbox.ClearTextOnFocus = false
			searchbox.Font = Enum.Font.GothamBold
			searchbox.Text = ""
			searchbox.TextColor3 = Color3.fromRGB(255, 255, 255)
			searchbox.TextScaled = true
			searchbox.TextSize = 14.000
			searchbox.TextWrapped = true
			searchbox.TextXAlignment = Enum.TextXAlignment.Left

			Framet.Parent = Search
			Framet.Active = true
			Framet.AnchorPoint = Vector2.new(0, 0.5)
			Framet.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
			Framet.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Framet.BorderSizePixel = 0
			Framet.Position = UDim2.new(1.01999998, 0, 0.5, 0)
			Framet.Rotation = 0
			Framet.Size = UDim2.new(0.00499999989, 0, 1, 0)
			Framet.ZIndex = 3

			Frame_2.Parent = Framet
			Frame_2.Active = true
			Frame_2.AnchorPoint = Vector2.new(0, 0.5)
			Frame_2.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
			Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Frame_2.BorderSizePixel = 0
			Frame_2.Position = UDim2.new(1.00999999, 0, 0.5, 0)
			Frame_2.Size = UDim2.new(1, 0, 1, 0)
			Frame_2.ZIndex = 3

			TabFrames.Name = "TabFrames"
			TabFrames.Parent = Search
			TabFrames.Active = true
			TabFrames.AnchorPoint = Vector2.new(0.5, 0.5)
			TabFrames.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TabFrames.BackgroundTransparency = 1.000
			TabFrames.BorderColor3 = Color3.fromRGB(0, 0, 0)
			TabFrames.BorderSizePixel = 0
			TabFrames.ClipsDescendants = false
			TabFrames.Position = UDim2.new(0.500000119, 0, 0.549316823, 0)
			TabFrames.Size = UDim2.new(0.949999988, 0, 0.901000023, 0)
			TabFrames.ZIndex = 6
			TabFrames.ScrollBarThickness = 0

			scrolling_connectY(TabFrames)
			UIListLayout.Parent = TabFrames
			UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout.Padding = UDim.new(0, 4)

			Main.Name = "Main"
			Main.Parent = PageFrames
			Main.AnchorPoint = Vector2.new(0.5, 0.5)
			Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Main.BackgroundTransparency = 1.000
			Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Main.BorderSizePixel = 0
			Main.ClipsDescendants = true
			Main.Position = UDim2.new(0.685165405, 0, 0.5, 0)
			Main.Size = UDim2.new(0.609669089, 0, 0.980000019, 0)
			Main.ZIndex = 4


			searchbox.Focused:Connect(function()
				TweenService:Create(LabelText,TweenInfo.new(0.1),{TextTransparency = 1}):Play()
				TweenService:Create(SearchIcon,TweenInfo.new(0.1),{ImageTransparency = 1}):Play()
			end)

			searchbox.FocusLost:Connect(function()
				if #searchbox.Text > 0 then
					for i,v in ipairs(TabFrames:GetChildren()) do
						if v:IsA('Frame') then
							if v.Name:lower():find(searchbox.Text:lower()) then
								v.Visible = true
							else
								v.Visible = false
							end
						end
					end
				else
					TweenService:Create(LabelText,TweenInfo.new(0.1),{TextTransparency = 0.75}):Play()
					TweenService:Create(SearchIcon,TweenInfo.new(0.1),{ImageTransparency = 0.75}):Play()
					for i,v in ipairs(TabFrames:GetChildren()) do
						if v:IsA('Frame') then
							v.Visible = true
						end
					end
				end
			end)

			searchbox:GetPropertyChangedSignal('Text'):Connect(function()
				if #searchbox.Text > 0 then
					TweenService:Create(LabelText,TweenInfo.new(0.1),{TextTransparency = 1}):Play()
					TweenService:Create(SearchIcon,TweenInfo.new(0.1),{ImageTransparency = 1}):Play()
					for i,v in ipairs(TabFrames:GetChildren()) do
						if v:IsA('Frame') then
							if v.Name:lower():find(searchbox.Text:lower()) then
								v.Visible = true
							else
								v.Visible = false
							end
						end
					end
				else
					TweenService:Create(LabelText,TweenInfo.new(0.1),{TextTransparency = 0.75}):Play()
					TweenService:Create(SearchIcon,TweenInfo.new(0.1),{ImageTransparency = 0.75}):Play()

					for i,v in ipairs(TabFrames:GetChildren()) do
						if v:IsA('Frame') then
							v.Visible = true
						end
					end
				end
			end)

		elseif MenuType:find('change') then
			local ChangeLog = Instance.new("Frame")
			local Main = Instance.new("Frame")
			local MainScrolling = Instance.new("ScrollingFrame")
			local UIListLayout = Instance.new("UIListLayout")
			local Framec = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			scrolling_connectY(MainScrolling)
			ChangeLog.Name = "ChangeLog"
			ChangeLog.Parent = Frame
			ChangeLog.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ChangeLog.BackgroundTransparency = 1.000
			ChangeLog.BorderColor3 = Color3.fromRGB(0, 0, 0)
			ChangeLog.BorderSizePixel = 0
			ChangeLog.Position = UDim2.new(0, 0, 0.163185388, 0)
			ChangeLog.Size = UDim2.new(1, 0, 0.836814642, 0)
			ChangeLog.Visible = true

			ChangeLog.ZIndex = 4
			MainFrame = ChangeLog

			Main.Name = "Main"
			Main.Parent = ChangeLog
			Main.AnchorPoint = Vector2.new(0.5, 0.5)
			Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Main.BackgroundTransparency = 1.000
			Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Main.BorderSizePixel = 0
			Main.ClipsDescendants = true
			Main.Position = UDim2.new(0.5, 0, 0.5, 0)
			Main.Size = UDim2.new(0.949999988, 0, 0.949999988, 0)
			Main.ZIndex = 4

			MainScrolling.Name = "MainScrolling"
			MainScrolling.Parent = Main
			MainScrolling.Active = true
			MainScrolling.AnchorPoint = Vector2.new(0.5, 0.5)
			MainScrolling.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			MainScrolling.BackgroundTransparency = 1.000
			MainScrolling.BorderColor3 = Color3.fromRGB(0, 0, 0)
			MainScrolling.BorderSizePixel = 0
			MainScrolling.ClipsDescendants = false
			MainScrolling.Position = UDim2.new(0.5, 0, 0.5, 0)
			MainScrolling.Size = UDim2.new(0.99000001, 0, 1, 0)
			MainScrolling.ZIndex = 2
			MainScrolling.ScrollBarThickness = 0

			UIListLayout.Parent = MainScrolling
			UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout.Padding = UDim.new(0, 5)

			Framec.Parent = ChangeLog
			Framec.AnchorPoint = Vector2.new(0.5, 1)
			Framec.BackgroundColor3 = Color3.fromRGB(37, 37, 37)
			Framec.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Framec.BorderSizePixel = 0
			Framec.Position = UDim2.new(0.5, 0, 0, 0)
			Framec.Size = UDim2.new(0.949999988, 0, 0.00499999989, 0)

			UICorner.CornerRadius = UDim.new(0.5, 0)
			UICorner.Parent = Framec
		end

		local myindex = #WindowAlc.Tabs + 1

		local function Connect(val)
			if val then
				TweenService:Create(MainFrame,TweenInfo.new(0.3),{Position = UDim2.fromScale(0,0.163)}):Play()
				TweenService:Create(MenuText,TweenInfo.new(0.1 + (myindex / 10)),{TextColor3 = Alc.Config.MainColor,TextTransparency=0}):Play()
			else

				if myindex < WindowAlc.TabSelect then
					TweenService:Create(MainFrame,TweenInfo.new(0.3),{Position = UDim2.fromScale(-1,0.163)}):Play()
				else
					TweenService:Create(MainFrame,TweenInfo.new(0.3),{Position = UDim2.fromScale(1,0.163)}):Play()
				end
				TweenService:Create(MenuText,TweenInfo.new(0.1),{TextColor3 = Color3.fromRGB(255, 255, 255),TextTransparency=0.25}):Play()
			end
		end

		if not WindowAlc.Tabs[1] then
			Connect(true)
		else
			Connect(false)
		end

		table.insert(WindowAlc.Tabs,{MenuButton,Connect})

		myindex = #WindowAlc.Tabs

		Button.MouseButton1Click:Connect(function()
			WindowAlc.TabSelect = myindex
			for i,v in ipairs(WindowAlc.Tabs) do
				if v[1]==MenuButton then
					WindowAlc.TabSelect = i
					v[2](true)
				else
					v[2](false)
				end
			end
		end)

		function MenuAlc:AddTab(TabName:string,Descriptions:string,IconId:string)
			local MainTab = {

			}

			local TabAlc = {}

			local MainScrollingfr
			if MenuType:find('tab') then
				local MainScrolling = Instance.new("ScrollingFrame")
				local UIListLayout_2 = Instance.new("UIListLayout")

				scrolling_connectY(MainScrolling)
				MainScrollingfr = MainScrolling
				MainScrolling.Name = tostring(TabName or "Main")
				MainScrolling.Name = "MainScrolling"
				MainScrolling.Parent =  MainFrame:WaitForChild('Main')
				MainScrolling.Active = true
				MainScrolling.AnchorPoint = Vector2.new(0.5, 0.5)
				MainScrolling.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				MainScrolling.BackgroundTransparency = 1.000
				MainScrolling.BorderColor3 = Color3.fromRGB(0, 0, 0)
				MainScrolling.BorderSizePixel = 0
				MainScrolling.ClipsDescendants = false
				MainScrolling.Position = UDim2.new(0.5, 0, 0.5, 0)
				MainScrolling.Size = UDim2.new(0.99000001, 0, 1, 0)
				MainScrolling.ZIndex = 2
				MainScrolling.ScrollBarThickness = 0

				UIListLayout_2.Parent = MainScrolling
				UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
				UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayout_2.Padding = UDim.new(0, 5)

				local TabButton = Instance.new("Frame")
				local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
				local UICorner = Instance.new("UICorner")
				local UIStroke = Instance.new("UIStroke")
				local UIGradient = Instance.new("UIGradient")
				local TabIcon = Instance.new("ImageLabel")
				local Text = Instance.new("TextLabel")
				local Description = Instance.new("TextLabel")
				local Button = Instance.new("TextButton")

				TabButton.Name = tostring(TabName or "Main")
				TabButton.Parent = MainFrame:WaitForChild('Search'):WaitForChild('TabFrames')
				TabButton.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
				TabButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
				TabButton.BorderSizePixel = 0
				TabButton.Size = UDim2.new(1, 0, 1, 0)
				TabButton.ZIndex = 5

				UIAspectRatioConstraint.Parent = TabButton
				UIAspectRatioConstraint.AspectRatio = 4.250
				UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

				UICorner.CornerRadius = UDim.new(0, 3)
				UICorner.Parent = TabButton

				UIStroke.Transparency = 0.250
				UIStroke.Color = Color3.fromRGB(37, 37, 37)
				UIStroke.Parent = TabButton

				UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.50), NumberSequenceKeypoint.new(0.20, 0.00), NumberSequenceKeypoint.new(0.80, 0.00), NumberSequenceKeypoint.new(1.00, 0.50)}
				UIGradient.Parent = UIStroke

				TabIcon.Name = "TabIcon"
				TabIcon.Parent = TabButton
				TabIcon.AnchorPoint = Vector2.new(0.5, 0.5)
				TabIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TabIcon.BackgroundTransparency = 1.000
				TabIcon.BorderColor3 = Color3.fromRGB(0, 0, 0)
				TabIcon.BorderSizePixel = 0
				TabIcon.Position = UDim2.new(0.135000005, 0, 0.5, 0)
				TabIcon.Size = UDim2.new(0.699999988, 0, 0.699999988, 0)
				TabIcon.SizeConstraint = Enum.SizeConstraint.RelativeYY
				TabIcon.ZIndex = 6
				TabIcon.Image = Alc:GetId(IconId or '0')

				Text.Name = "Text"
				Text.Parent = TabButton
				Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Text.BackgroundTransparency = 1.000
				Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Text.BorderSizePixel = 0
				Text.Position = UDim2.new(0.246999651, 0, 0.200000003, 0)
				Text.Size = UDim2.new(0.753000021, 0, 0.400000006, 0)
				Text.ZIndex = 7
				Text.Font = Enum.Font.GothamBold
				Text.Text = TabName or "Main"
				Text.TextColor3 = Color3.fromRGB(255, 255, 255)
				Text.TextScaled = true
				Text.TextSize = 14.000
				Text.TextWrapped = true
				Text.TextXAlignment = Enum.TextXAlignment.Left

				Description.Name = "Description"
				Description.Parent = TabButton
				Description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Description.BackgroundTransparency = 1.000
				Description.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Description.BorderSizePixel = 0
				Description.Position = UDim2.new(0.246999651, 0, 0.600000024, 0)
				Description.Size = UDim2.new(0.753000081, 0, 0.25, 0)
				Description.ZIndex = 7
				Description.Font = Enum.Font.GothamBold
				Description.Text = Descriptions or "loadstring()()"
				Description.TextColor3 = Color3.fromRGB(255, 255, 255)
				Description.TextScaled = true
				Description.TextSize = 14.000
				Description.TextTransparency = 0.500
				Description.TextWrapped = true
				Description.TextXAlignment = Enum.TextXAlignment.Left

				Button.Name = "Button"
				Button.Parent = TabButton
				Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Button.BackgroundTransparency = 1.000
				Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Button.BorderSizePixel = 0
				Button.Size = UDim2.new(1, 0, 1, 0)
				Button.ZIndex = 25
				Button.Font = Enum.Font.SourceSans
				Button.Text = ""
				Button.TextColor3 = Color3.fromRGB(0, 0, 0)
				Button.TextSize = 14.000
				Button.TextTransparency = 1.000

				local function connect(val)
					local low = UDim2.fromScale(0.9,0.95)
					if val then
						TweenService:Create(TabIcon,TweenInfo.new(0.15),{ImageTransparency = 0}):Play()
						TweenService:Create(Description,TweenInfo.new(0.15),{TextTransparency = 0.5}):Play()
						TweenService:Create(Text,TweenInfo.new(0.15),{TextTransparency = 0}):Play()
						TweenService:Create(UIStroke,TweenInfo.new(0.15),{Transparency = 0.25}):Play()
						TweenService:Create(MainScrolling,TweenInfo.new(0.4),{
							Position = UDim2.new(0.5, 0, 0.5, 0)
						}):Play()
					else

						TweenService:Create(TabIcon,TweenInfo.new(0.15),{ImageTransparency = 0.55}):Play()
						TweenService:Create(Description,TweenInfo.new(0.15),{TextTransparency = 0.85}):Play()
						TweenService:Create(Text,TweenInfo.new(0.15),{TextTransparency = 0.55}):Play()
						TweenService:Create(UIStroke,TweenInfo.new(0.15),{Transparency = 0.65}):Play()
						TweenService:Create(MainScrolling,TweenInfo.new(0.4),{
							Position = UDim2.fromScale(1.55,0.5)
						}):Play()

					end
				end

				if not MenuAlc[1] then
					connect(true)
				else
					connect(false)
				end

				table.insert(MenuAlc,{connect,TabIcon})

				Button.MouseButton1Click:Connect(function()
					for i,v in ipairs(MenuAlc) do
						if v[2] == TabIcon then
							v[1](true)
						else
							v[1](false)
						end
					end
				end)
			elseif MenuType:find('change') then
				MainScrollingfr = MainFrame:FindFirstChild('Main'):FindFirstChild('MainScrolling')
			end

			function MainTab:AddLabel(LabelName)
				local SectionTitle = Instance.new("TextLabel")
				local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")

				SectionTitle.Name = "SectionTitle"
				SectionTitle.Parent = MainScrollingfr
				SectionTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SectionTitle.BackgroundTransparency = 1.000
				SectionTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
				SectionTitle.BorderSizePixel = 0
				SectionTitle.Size = UDim2.new(0.980000019, 0, 0.5, 0)
				SectionTitle.ZIndex = 4
				SectionTitle.Font = Enum.Font.GothamBold
				SectionTitle.Text = LabelName or "SECTRION"
				SectionTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
				SectionTitle.TextScaled = true
				SectionTitle.TextSize = 14.000
				SectionTitle.TextWrapped = true
				SectionTitle.TextXAlignment = Enum.TextXAlignment.Left

				UIAspectRatioConstraint.Parent = SectionTitle
				UIAspectRatioConstraint.AspectRatio = 23.000
				UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

				local Config = {}

				function Config:Text(...)
					SectionTitle.Text = tostring(...)
				end

				function Config:Delete()
					SectionTitle:Destroy()

				end

				return Config
			end

			function MainTab:AddSection(SectionName:string,SectionHeader:string,SectionDescriptions:string,SectionIcons:string)
				local SectionTitle = Instance.new("TextLabel")
				local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
				local SectionInfo = {}

				SectionTitle.Name = "SectionTitle"
				SectionTitle.Parent = MainScrollingfr
				SectionTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SectionTitle.BackgroundTransparency = 1.000
				SectionTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
				SectionTitle.BorderSizePixel = 0
				SectionTitle.Size = UDim2.new(0.980000019, 0, 0.5, 0)
				SectionTitle.ZIndex = 4
				SectionTitle.Font = Enum.Font.GothamBold
				SectionTitle.Text = SectionName or "SECTRION"
				SectionTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
				SectionTitle.TextScaled = true
				SectionTitle.TextSize = 14.000
				SectionTitle.TextWrapped = true
				SectionTitle.TextXAlignment = Enum.TextXAlignment.Left

				UIAspectRatioConstraint.Parent = SectionTitle
				UIAspectRatioConstraint.AspectRatio = 23.000
				UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

				local SectionFrame = Instance.new("Frame")
				local UICorner = Instance.new("UICorner")
				local UIStroke = Instance.new("UIStroke")
				local UIListLayout = Instance.new("UIListLayout")
				local Header = Instance.new("Frame")
				local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
				local SectionIcon = Instance.new("ImageLabel")
				local SectionHeadTest = Instance.new("TextLabel")
				local SectionDescription = Instance.new("TextLabel")
				local Frame = Instance.new("Frame")
				local UICorner_2 = Instance.new("UICorner")
				local defaut = 65

				local function UpdateSiz()
					local vs = 15

					for i,v in ipairs(SectionFrame:GetChildren()) do
						if v:IsA('Frame') then
							vs += (v.AbsoluteSize.Y or v.Size.Y.Scale) + UIListLayout.Padding.Offset
						end
					end

					TweenService:Create(SectionFrame,TweenInfo.new(0.1),{Size = UDim2.new(1, 0, 0, vs)}):Play()
				end

				local delays = tick() + 0.1
				CloseUI:GetPropertyChangedSignal('Size'):Connect(function()
					if tick() > delays then
						UpdateSiz()
						delays = tick() + 0.1
					end
				end)
				--Properties:

				SectionFrame.Name = "SectionFrame"
				SectionFrame.Parent = MainScrollingfr
				SectionFrame.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
				SectionFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
				SectionFrame.BorderSizePixel = 0
				SectionFrame.ClipsDescendants = true
				SectionFrame.Position = UDim2.new(0, 0, 0.100000001, 0)
				SectionFrame.Size = UDim2.new(1, 0, 0, 65)
				SectionFrame.ZIndex = 4

				UpdateSiz()

				UICorner.Parent = SectionFrame

				UIStroke.Color = Color3.fromRGB(37, 37, 37)
				UIStroke.Parent = SectionFrame

				UIListLayout.Parent = SectionFrame
				UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
				UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayout.Padding = UDim.new(0, 5)

				Header.Name = "Header"
				Header.Parent = SectionFrame
				Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Header.BackgroundTransparency = 1.000
				Header.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Header.BorderSizePixel = 0
				Header.Size = UDim2.new(0.949999988, 0, 0.5, 0)
				Header.ZIndex = 5

				UIAspectRatioConstraint.Parent = Header
				UIAspectRatioConstraint.AspectRatio = 4.000
				UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

				SectionIcon.Name = "SectionIcon"
				SectionIcon.Parent = Header
				SectionIcon.AnchorPoint = Vector2.new(0.5, 0.699999988)
				SectionIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SectionIcon.BackgroundTransparency = 1.000
				SectionIcon.BorderColor3 = Color3.fromRGB(0, 0, 0)
				SectionIcon.BorderSizePixel = 0
				SectionIcon.Position = UDim2.new(0.100000001, 0, 0.5, 0)
				SectionIcon.Size = UDim2.new(0.600000024, 0, 0.600000024, 0)
				SectionIcon.SizeConstraint = Enum.SizeConstraint.RelativeYY
				SectionIcon.ZIndex = 6
				SectionIcon.Image = Alc:GetId(SectionIcons or 'pin')

				SectionHeadTest.Name = "SectionHeadTest"
				SectionHeadTest.Parent = Header
				SectionHeadTest.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SectionHeadTest.BackgroundTransparency = 1.000
				SectionHeadTest.BorderColor3 = Color3.fromRGB(0, 0, 0)
				SectionHeadTest.BorderSizePixel = 0
				SectionHeadTest.Position = UDim2.new(0.218999997, 0, 0.0949999988, 0)
				SectionHeadTest.Size = UDim2.new(1, 0, 0.194999993, 0)
				SectionHeadTest.ZIndex = 5
				SectionHeadTest.Font = Enum.Font.GothamBold
				SectionHeadTest.Text = SectionHeader or "Data Settings"
				SectionHeadTest.TextColor3 = Color3.fromRGB(255, 255, 255)
				SectionHeadTest.TextScaled = true
				SectionHeadTest.TextSize = 14.000
				SectionHeadTest.TextWrapped = true
				SectionHeadTest.TextXAlignment = Enum.TextXAlignment.Left

				SectionDescription.Name = "SectionDescription"
				SectionDescription.Parent = Header
				SectionDescription.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SectionDescription.BackgroundTransparency = 1.000
				SectionDescription.BorderColor3 = Color3.fromRGB(0, 0, 0)
				SectionDescription.BorderSizePixel = 0
				SectionDescription.Position = UDim2.new(0.218999997, 0, 0.354999989, 0)
				SectionDescription.Size = UDim2.new(1, 0, 0.194999993, 0)
				SectionDescription.ZIndex = 5
				SectionDescription.Font = Enum.Font.GothamBold
				SectionDescription.Text = SectionDescriptions or "Save The Setting"
				SectionDescription.TextColor3 = Color3.fromRGB(255, 255, 255)
				SectionDescription.TextScaled = true
				SectionDescription.TextSize = 14.000
				SectionDescription.TextTransparency = 0.500
				SectionDescription.TextWrapped = true
				SectionDescription.TextXAlignment = Enum.TextXAlignment.Left

				Frame.Parent = Header
				Frame.AnchorPoint = Vector2.new(0.5, 0.5)
				Frame.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
				Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Frame.BorderSizePixel = 0
				Frame.Position = UDim2.new(0.5, 0, 0.899999976, 0)
				Frame.Size = UDim2.new(0.949999988, 0, 0.0250000004, 0)
				Frame.ZIndex = 5

				UICorner_2.CornerRadius = UDim.new(0.5, 0)
				UICorner_2.Parent = Frame

				SectionFrame.ChildAdded:Connect(UpdateSiz)
				function SectionInfo:Update()
					return UpdateSiz()
				end

				function SectionInfo:AddLabel(LabelName)
					local SectionTitle = Instance.new("TextLabel")
					local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")

					SectionTitle.Name = "SectionTitle"
					SectionTitle.Parent = SectionFrame
					SectionTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					SectionTitle.BackgroundTransparency = 1.000
					SectionTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
					SectionTitle.BorderSizePixel = 0
					SectionTitle.Size = UDim2.new(0.92, 0, 0.5, 0)
					SectionTitle.ZIndex = 4
					SectionTitle.Font = Enum.Font.GothamBold
					SectionTitle.Text = LabelName or "SECTRION"
					SectionTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
					SectionTitle.TextScaled = true
					SectionTitle.TextSize = 14.000
					SectionTitle.TextWrapped = true
					SectionTitle.TextXAlignment = Enum.TextXAlignment.Left

					UIAspectRatioConstraint.Parent = SectionTitle
					UIAspectRatioConstraint.AspectRatio = 23.000
					UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

					SectionInfo:Update()

					local Config = {}

					function Config:Text(...)
						SectionTitle.Text = tostring(...)
					end

					function Config:Delete()
						SectionTitle:Destroy()
						UpdateSiz()
					end

					return Config
				end

				function SectionInfo:AddToggle(ToggleName:string,ToggleDefault:boolean,Callback)
					local Toggle = Instance.new("Frame")
					local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
					local MainFrame = Instance.new("Frame")
					local UICorner = Instance.new("UICorner")
					local Text = Instance.new("TextLabel")
					local System = Instance.new("Frame")
					local UICorner_2 = Instance.new("UICorner")
					local TurnOn = Instance.new("ImageLabel")
					local Box = Instance.new("Frame")
					local UIGradient = Instance.new("UIGradient")
					local UICorner_3 = Instance.new("UICorner")

					--Properties:

					Toggle.Name = "Toggle"
					Toggle.Parent = SectionFrame
					Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Toggle.BackgroundTransparency = 1.000
					Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Toggle.BorderSizePixel = 0
					Toggle.Size = UDim2.new(0.980000019, 0, 0.5, 0)
					Toggle.ZIndex = 5

					UIAspectRatioConstraint.Parent = Toggle
					UIAspectRatioConstraint.AspectRatio = 11.500
					UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

					MainFrame.Name = "MainFrame"
					MainFrame.Parent = Toggle
					MainFrame.AnchorPoint = Vector2.new(0.5, 0)
					MainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					MainFrame.BackgroundTransparency = 1.000
					MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
					MainFrame.BorderSizePixel = 0
					MainFrame.Position = UDim2.new(0.5, 0, 0, 0)
					MainFrame.Size = UDim2.new(0.949999988, 0, 1, 0)
					MainFrame.ZIndex = 6

					UICorner.CornerRadius = UDim.new(0, 3)
					UICorner.Parent = MainFrame

					Text.Name = "Text"
					Text.Parent = MainFrame
					Text.AnchorPoint = Vector2.new(0.5, 0.5)
					Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Text.BackgroundTransparency = 1.000
					Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Text.BorderSizePixel = 0
					Text.Position = UDim2.new(0.681999981, 0, 0.5, 0)
					Text.Size = UDim2.new(1.12300003, 0, 0.524999976, 0)
					Text.ZIndex = 6
					Text.Font = Enum.Font.GothamBold
					Text.Text = ToggleName or "Auto Fuck"
					Text.TextColor3 = Color3.fromRGB(255, 255, 255)
					Text.TextScaled = true
					Text.TextSize = 14.000
					Text.TextWrapped = true
					Text.TextXAlignment = Enum.TextXAlignment.Left

					System.Name = "System"
					System.Parent = MainFrame
					System.AnchorPoint = Vector2.new(0.5, 0.5)
					System.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
					System.BorderColor3 = Color3.fromRGB(0, 0, 0)
					System.BorderSizePixel = 0
					System.Position = UDim2.new(0.0419999994, 0, 0.5, 0)
					System.Size = UDim2.new(0.824999988, 0, 0.824999988, 0)
					System.SizeConstraint = Enum.SizeConstraint.RelativeYY
					System.ZIndex = 6

					UICorner_2.CornerRadius = UDim.new(0, 3)
					UICorner_2.Parent = System

					TurnOn.Name = "TurnOn"
					TurnOn.Parent = System
					TurnOn.AnchorPoint = Vector2.new(0.5, 0.5)
					TurnOn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					TurnOn.BackgroundTransparency = 1.000
					TurnOn.BorderColor3 = Color3.fromRGB(0, 0, 0)
					TurnOn.BorderSizePixel = 0
					TurnOn.Position = UDim2.new(0.5, 0, 0.5, 0)
					TurnOn.Size = UDim2.new(0.800000012, 0, 0.800000012, 0)
					TurnOn.ZIndex = 7
					TurnOn.Image = "rbxassetid://3944680095"
					TurnOn.ImageColor3 = Color3.fromRGB(0, 0, 0)
					TurnOn.ImageTransparency = 1.000

					Box.Name = "Box"
					Box.Parent = System
					Box.AnchorPoint = Vector2.new(0.5, 0.5)
					Box.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Box.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Box.BorderSizePixel = 0
					Box.Position = UDim2.new(0.5, 0, 0.5, 0)
					Box.ZIndex = 6

					UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Alc.Config.MainColor), ColorSequenceKeypoint.new(1.00, Alc.Config.DropColor)}
					UIGradient.Rotation = 45
					UIGradient.Parent = Box

					UICorner_3.CornerRadius = UDim.new(0, 4)
					UICorner_3.Parent = Box

					local function Onv(val)
						if val then
							TweenService:Create(TurnOn,TweenInfo.new(0.4),{
								ImageTransparency = 0
							}):Play()

							TweenService:Create(Box,TweenInfo.new(0.3),{
								Size = UDim2.fromScale(1,1)
							}):Play()

							TweenService:Create(TurnOn,TweenInfo.new(0.55),{
								ImageColor3 = Alc.Config.MainColor
							}):Play()
						else
							TweenService:Create(TurnOn,TweenInfo.new(0.4),{
								ImageTransparency = 1
							}):Play()

							TweenService:Create(Box,TweenInfo.new(0.3),{
								Size = UDim2.fromScale(0,0)
							}):Play()

							TweenService:Create(TurnOn,TweenInfo.new(0.555),{
								ImageColor3 = Color3.fromRGB(0, 0, 0)
							}):Play()
						end
					end

					Onv(ToggleDefault)

					cretate_button(MainFrame).MouseButton1Click:Connect(function()
						ToggleDefault = not ToggleDefault
						Onv(ToggleDefault)
						if Callback then
							Callback(ToggleDefault)
						end
					end)

					SectionInfo:Update()

					local Config = {}

					function Config:Text(...)
						Text.Text = tostring(...)
					end

					function Config:Value(V)
						ToggleDefault =V
						Onv(V)
						if Callback then
							Callback(ToggleDefault)
						end
					end

					function Config:Delete()
						Toggle:Destroy()
						UpdateSiz()
					end

					return Config
				end

				function SectionInfo:AddButton(ButtonName:string,callback)
					callback = callback or function()

					end

					local Button = Instance.new("Frame")
					local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
					local ButtonMainFrame = Instance.new("Frame")
					local UICorner = Instance.new("UICorner")
					local UIGradient = Instance.new("UIGradient")
					local Text = Instance.new("TextLabel")

					Button.Name = "Button"
					Button.Parent = SectionFrame
					Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Button.BackgroundTransparency = 1.000
					Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Button.BorderSizePixel = 0
					Button.Size = UDim2.new(0.980000019, 0, 0.5, 0)
					Button.ZIndex = 5

					UIAspectRatioConstraint.Parent = Button
					UIAspectRatioConstraint.AspectRatio = 11.500
					UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

					ButtonMainFrame.Name = "ButtonMainFrame"
					ButtonMainFrame.Parent = Button
					ButtonMainFrame.AnchorPoint = Vector2.new(0.5, 0)
					ButtonMainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					ButtonMainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
					ButtonMainFrame.BorderSizePixel = 0
					ButtonMainFrame.Position = UDim2.new(0.5, 0, 0, 0)
					ButtonMainFrame.Size = UDim2.new(0.949999988, 0, 1, 0)
					ButtonMainFrame.ZIndex = 6

					UICorner.CornerRadius = UDim.new(0, 3)
					UICorner.Parent = ButtonMainFrame

					UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Alc.Config.MainColor), ColorSequenceKeypoint.new(1.00, Alc.Config.DropColor)}
					UIGradient.Rotation = 90
					UIGradient.Parent = ButtonMainFrame

					Text.Name = "Text"
					Text.Parent = ButtonMainFrame
					Text.AnchorPoint = Vector2.new(0.5, 0.5)
					Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Text.BackgroundTransparency = 1.000
					Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Text.BorderSizePixel = 0
					Text.Position = UDim2.new(0.5, 0, 0.5, 0)
					Text.Size = UDim2.new(1, 0, 0.600000024, 0)
					Text.ZIndex = 6
					Text.Font = Enum.Font.GothamBold
					Text.Text = ButtonName or "Sea Event"
					Text.TextColor3 = Color3.fromRGB(255, 255, 255)
					Text.TextScaled = true
					Text.TextSize = 14.000
					Text.TextWrapped = true

					local c = cretate_button(ButtonMainFrame)

					c.MouseButton1Down:Connect(function()
						TweenService:Create(UIGradient,TweenInfo.new(0.1),{Offset = Vector2.new(0,1)}):Play()
					end)

					c.MouseButton1Up:Connect(function()
						TweenService:Create(UIGradient,TweenInfo.new(0.1),{Offset = Vector2.new(0,0)}):Play()
					end)

					c.MouseButton1Click:Connect(callback)

					local Config = {}

					function Config:Text(...)
						Text.Text = tostring(...)
					end

					function Config:Fire(...)
						callback(...)
					end

					function Config:Delete()
						Button:Destroy()
						UpdateSiz()
					end

					return Config
				end

				function SectionInfo:AddSlider(SliderName:string,SliderConfig:SliderConfig,Callback)
					SliderConfig = SliderConfig or {}
					SliderConfig.Max = SliderConfig.Max or math.random(100,200)
					SliderConfig.Min = SliderConfig.Min or 0
					SliderConfig.Default = SliderConfig.Default or math.random(1,SliderConfig.Max)
					SliderConfig.VALUE = SliderConfig.VALUE or ''

					Callback = Callback or function() end
					local Slider = Instance.new("Frame")
					local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
					local MainFrame = Instance.new("Frame")
					local Text = Instance.new("TextLabel")
					local System = Instance.new("Frame")
					local UICorner = Instance.new("UICorner")
					local Slide = Instance.new("Frame")
					local UICorner_2 = Instance.new("UICorner")
					local Control = Instance.new("Frame")
					local UICorner_3 = Instance.new("UICorner")
					local ValueText = Instance.new("TextLabel")

					--Properties:

					Slider.Name = "Slider"
					Slider.Parent = SectionFrame
					Slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Slider.BackgroundTransparency = 1.000
					Slider.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Slider.BorderSizePixel = 0
					Slider.Size = UDim2.new(0.980000019, 0, 0.5, 0)
					Slider.ZIndex = 5

					UIAspectRatioConstraint.Parent = Slider
					UIAspectRatioConstraint.AspectRatio = 12.000
					UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

					MainFrame.Name = "MainFrame"
					MainFrame.Parent = Slider
					MainFrame.AnchorPoint = Vector2.new(0.5, 0)
					MainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					MainFrame.BackgroundTransparency = 1.000
					MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
					MainFrame.BorderSizePixel = 0
					MainFrame.Position = UDim2.new(0.5, 0, 0, 0)
					MainFrame.Size = UDim2.new(0.949999988, 0, 1, 0)
					MainFrame.ZIndex = 6

					Text.Name = "Text"
					Text.Parent = MainFrame
					Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Text.BackgroundTransparency = 1.000
					Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Text.BorderSizePixel = 0
					Text.Position = UDim2.new(0.00999999978, 0, 0, 0)
					Text.Size = UDim2.new(0.959999979, 0, 0.5, 0)
					Text.ZIndex = 6
					Text.Font = Enum.Font.GothamBold
					Text.Text = SliderName or "Slider"
					Text.TextColor3 = Color3.fromRGB(255, 255, 255)
					Text.TextScaled = true
					Text.TextSize = 14.000
					Text.TextWrapped = true
					Text.TextXAlignment = Enum.TextXAlignment.Left

					System.Name = "System"
					System.Parent = MainFrame
					System.AnchorPoint = Vector2.new(0.5, 0.5)
					System.BackgroundColor3 = Color3.fromRGB(76, 81, 82)
					System.BorderColor3 = Color3.fromRGB(0, 0, 0)
					System.BorderSizePixel = 0
					System.Position = UDim2.new(0.5, 0, 0.699999988, 0)
					System.Size = UDim2.new(0.970000029, 0, 0.194999993, 0)
					System.ZIndex = 6

					UICorner.CornerRadius = UDim.new(1, 0)
					UICorner.Parent = System

					Slide.Name = "Slide"
					Slide.Parent = System
					Slide.BackgroundColor3 = Alc.Config.MainColor
					Slide.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Slide.BorderSizePixel = 0
					Slide.Size = UDim2.new(0.100000001, 0, 1, 0)
					Slide.ZIndex = 8

					UICorner_2.CornerRadius = UDim.new(1, 0)
					UICorner_2.Parent = Slide

					Control.Name = "Control"
					Control.Parent = Slide
					Control.AnchorPoint = Vector2.new(0.5, 0.5)
					Control.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Control.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Control.BorderSizePixel = 0
					Control.Position = UDim2.new(1, 0, 0.5, 0)
					Control.Size = UDim2.new(1.64999998, 0, 2.6500001, 0)
					Control.SizeConstraint = Enum.SizeConstraint.RelativeYY
					Control.ZIndex = 8

					UICorner_3.CornerRadius = UDim.new(0.5, 0)
					UICorner_3.Parent = Control

					ValueText.Name = "ValueText"
					ValueText.Parent = MainFrame
					ValueText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					ValueText.BackgroundTransparency = 1.000
					ValueText.BorderColor3 = Color3.fromRGB(0, 0, 0)
					ValueText.BorderSizePixel = 0
					ValueText.Position = UDim2.new(0.6910429, 0, 0, 0)
					ValueText.Size = UDim2.new(0.27895698, 0, 0, 0)
					ValueText.ZIndex = 6
					ValueText.Font = Enum.Font.GothamBold
					ValueText.Text = tostring(SliderConfig.Default)..tostring(SliderConfig.VALUE)
					ValueText.TextColor3 = Color3.fromRGB(255, 255, 255)
					ValueText.TextScaled = true
					ValueText.TextSize = 14.000
					ValueText.TextWrapped = true
					ValueText.TextXAlignment = Enum.TextXAlignment.Right
					ValueText.TextTransparency = 1

					TweenService:Create(Slide,TweenInfo.new(0.1),{Size = UDim2.fromScale((SliderConfig.Default / SliderConfig.Max),1)}):Play()

					local MouseDown = false

					local function update(Input)
						local SizeScale = math.clamp((((Input.Position.X) - System.AbsolutePosition.X) / System.AbsoluteSize.X), 0, 1)
						local Valuea = math.floor(((SliderConfig.Max - SliderConfig.Min) * SizeScale) + SliderConfig.Min)
						local Size = UDim2.fromScale(SizeScale, 1)
						ValueText.Text = tostring(Valuea)..tostring(SliderConfig.VALUE)
						TweenService:Create(Slide,TweenInfo.new(0.1),{Size = Size}):Play()

						Callback(Valuea)
					end

					MainFrame.InputBegan:Connect(function(Input)
						if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
							MouseDown = true

							TweenService:Create(ValueText,TweenInfo.new(0.1),{
								Size = UDim2.new(0.27895698, 0, 0.5, 0),
								TextTransparency = 0.1,
							}):Play()

							update(Input)

						end
					end)

					MainFrame.InputEnded:Connect(function(Input)
						if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
							MouseDown = false

							TweenService:Create(ValueText,TweenInfo.new(0.3),{
								Size = UDim2.new(0.27895698, 0, 0, 0),
								TextTransparency = 1,
							}):Play()
						end
					end)

					UserInputService.InputChanged:Connect(function(Input)
						if MouseDown then
							if (Input.UserInputType==Enum.UserInputType.MouseMovement or Input.UserInputType==Enum.UserInputType.Touch)  then
								update(Input)
							end
						end
					end)

					local Config = {}

					function Config:Text(...)
						Text.Text = tostring(...)
					end

					function Config:Value(new)
						ValueText.Text = tostring(new)..tostring(SliderConfig.VALUE)

						Callback(new)
					end

					function Config:Fire(...)
						Callback(...)
					end

					function Config:Delete()
						Button:Destroy()
						UpdateSiz()
					end

					return Config
				end

				function SectionInfo:AddDropdown(DropdownName:string,DropdownInfo:{any},Default:any,DropdownMax:number,callback)
					local Dropdown = Instance.new("Frame")
					local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
					local Text = Instance.new("TextLabel")
					local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
					local UIListLayout = Instance.new("UIListLayout")
					local DropFrame = Instance.new("Frame")
					local UIStroke = Instance.new("UIStroke")
					local UIGradient = Instance.new("UIGradient")
					local UICorner = Instance.new("UICorner")
					local Header = Instance.new("Frame")
					local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
					local Icon = Instance.new("ImageLabel")
					local SelectText = Instance.new("TextLabel")
					local UIGradient_2 = Instance.new("UIGradient")
					local UIListLayout_2 = Instance.new("UIListLayout")
					local ScrollingFrame = Instance.new("ScrollingFrame")
					local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
					local UIListLayout_3 = Instance.new("UIListLayout")
					callback = callback or function()

					end

					scrolling_connectY(ScrollingFrame)

					local function join(target)
						if typeof(target) ~= 'table' then
							return tostring(Default or 'None')
						end

						local l = ''

						for i,v in ipairs(target) do
							l = l..' '..tostring(v)..' ,'
						end

						l = l:sub(0,#l - 1)

						return l
					end

					Dropdown.Name = "Dropdown"
					Dropdown.Parent = SectionFrame
					Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Dropdown.BackgroundTransparency = 1.000
					Dropdown.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Dropdown.BorderSizePixel = 0
					Dropdown.Size = UDim2.new(0.980000019, 0, 0.5, 0)
					Dropdown.ZIndex = 5

					UIAspectRatioConstraint.Parent = Dropdown
					UIAspectRatioConstraint.AspectRatio = 6.500
					UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

					Text.Name = "Text"
					Text.Parent = Dropdown
					Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Text.BackgroundTransparency = 1.000
					Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Text.BorderSizePixel = 0
					Text.Size = UDim2.new(0.959999979, 0, 0.5, 0)
					Text.ZIndex = 6
					Text.Font = Enum.Font.GothamBold
					Text.Text = DropdownName or "Select Gays"
					Text.TextColor3 = Color3.fromRGB(255, 255, 255)
					Text.TextScaled = true
					Text.TextSize = 14.000
					Text.TextWrapped = true
					Text.TextXAlignment = Enum.TextXAlignment.Left

					UIAspectRatioConstraint_2.Parent = Text
					UIAspectRatioConstraint_2.AspectRatio = 22.000
					UIAspectRatioConstraint_2.AspectType = Enum.AspectType.ScaleWithParentSize

					UIListLayout.Parent = Dropdown
					UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
					UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
					UIListLayout.Padding = UDim.new(0, 3)

					DropFrame.Name = "DropFrame"
					DropFrame.Parent = Dropdown
					DropFrame.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
					DropFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
					DropFrame.BorderSizePixel = 0
					DropFrame.ClipsDescendants = true
					DropFrame.Position = UDim2.new(0.0200000405, 0, 0.373297691, 0)
					DropFrame.Size = UDim2.new(0.959999979, 0, 0.550000012, 0)
					DropFrame.ZIndex = 6

					UIStroke.Color = Color3.fromRGB(37, 37, 37)
					UIStroke.Parent = DropFrame

					UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.68), NumberSequenceKeypoint.new(0.20, 0.00), NumberSequenceKeypoint.new(0.80, 0.00), NumberSequenceKeypoint.new(1.00, 0.67)}
					UIGradient.Parent = UIStroke

					UICorner.CornerRadius = UDim.new(0, 2)
					UICorner.Parent = DropFrame

					Header.Name = "Header"
					Header.Parent = DropFrame
					Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Header.BackgroundTransparency = 1.000
					Header.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Header.BorderSizePixel = 0
					Header.Size = UDim2.new(0.925000012, 0, 1, 0)
					Header.ZIndex = 7

					UIAspectRatioConstraint_3.Parent = Header
					UIAspectRatioConstraint_3.AspectRatio = 12.000
					UIAspectRatioConstraint_3.AspectType = Enum.AspectType.ScaleWithParentSize

					Icon.Name = "Icon"
					Icon.Parent = Header
					Icon.AnchorPoint = Vector2.new(0.5, 0.5)
					Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Icon.BackgroundTransparency = 1.000
					Icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
					Icon.BorderSizePixel = 0
					Icon.Position = UDim2.new(0.939999998, 0, 0.5, 0)
					Icon.Size = UDim2.new(0.899999976, 0, 0.899999976, 0)
					Icon.SizeConstraint = Enum.SizeConstraint.RelativeYY
					Icon.ZIndex = 7
					Icon.Image = "rbxassetid://7733717447"

					SelectText.Name = "SelectText"
					SelectText.Parent = Header
					SelectText.AnchorPoint = Vector2.new(0.5, 0.5)
					SelectText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					SelectText.BackgroundTransparency = 1.000
					SelectText.BorderColor3 = Color3.fromRGB(0, 0, 0)
					SelectText.BorderSizePixel = 0
					SelectText.Position = UDim2.new(0.437301666, 0, 0.499999493, 0)
					SelectText.Size = UDim2.new(0.864019156, 0, 0.550000012, 0)
					SelectText.ZIndex = 8
					SelectText.Font = Enum.Font.GothamBold
					SelectText.Text = join(Default or 'None')
					SelectText.TextColor3 = Color3.fromRGB(255, 255, 255)
					SelectText.TextScaled = true
					SelectText.TextSize = 14.000
					SelectText.TextTransparency = 0.500
					SelectText.TextWrapped = true
					SelectText.TextXAlignment = Enum.TextXAlignment.Left

					UIGradient_2.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.00), NumberSequenceKeypoint.new(0.90, 0.00), NumberSequenceKeypoint.new(1.00, 1.00)}
					UIGradient_2.Parent = SelectText

					UIListLayout_2.Parent = DropFrame
					UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
					UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
					UIListLayout_2.Padding = UDim.new(0, 3)

					ScrollingFrame.Parent = DropFrame
					ScrollingFrame.Active = true
					ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					ScrollingFrame.BackgroundTransparency = 1.000
					ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
					ScrollingFrame.BorderSizePixel = 0
					ScrollingFrame.Size = UDim2.new(1, 0, 5.6500001, 0)
					ScrollingFrame.ZIndex = 6
					ScrollingFrame.ScrollBarThickness = 0

					UIAspectRatioConstraint_4.Parent = ScrollingFrame
					UIAspectRatioConstraint_4.AspectRatio = 1.950
					UIAspectRatioConstraint_4.AspectType = Enum.AspectType.ScaleWithParentSize

					UIListLayout_3.Parent = ScrollingFrame
					UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
					UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
					UIListLayout_3.Padding = UDim.new(0, 3)

					UIAspectRatioConstraint:GetPropertyChangedSignal("AspectRatio"):Connect(UpdateSiz)

					DropFrame:GetPropertyChangedSignal('Size'):Connect(function()
						if DropFrame.Size.Y.Scale >= 0.85 then
							ScrollingFrame.Visible = true
						else
							ScrollingFrame.Visible = false
						end
					end)

					local function toggleui(val)
						if val then
							TweenService:Create(UIAspectRatioConstraint,TweenInfo.new(0.3),{AspectRatio = 1.5}):Play()
							TweenService:Create(DropFrame,TweenInfo.new(0.3),{Size = UDim2.fromScale(0.96,0.9)}):Play()
							TweenService:Create(Icon,TweenInfo.new(0.3),{ImageColor3 = Alc.Config.MainColor,Size = UDim2.new(0.959999976, 0, 0.959999976, 0)}):Play()

						else
							TweenService:Create(UIAspectRatioConstraint,TweenInfo.new(0.3),{AspectRatio = 6.5}):Play()
							TweenService:Create(DropFrame,TweenInfo.new(0.3),{Size = UDim2.fromScale(0.96,0.55)}):Play()
							TweenService:Create(Icon,TweenInfo.new(0.3),{ImageColor3 = Color3.fromRGB(255, 255, 255),Size = UDim2.new(0.899999976, 0, 0.899999976, 0)}):Play()

						end
					end

					toggleui(false)

					local connectlist = {}
					local valnow = false

					if typeof(connectlist) ~= 'table' then
						connectlist = {connectlist}
					end

					local function getbutton(txt)
						local DropdownObject = Instance.new("Frame")
						local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
						local MainFrame = Instance.new("Frame")
						local UICorner = Instance.new("UICorner")
						local Text = Instance.new("TextLabel")
						local System = Instance.new("Frame")
						local UICorner_2 = Instance.new("UICorner")
						local TurnOn = Instance.new("ImageLabel")
						local Box = Instance.new("Frame")
						local UIGradient = Instance.new("UIGradient")
						local UICorner_3 = Instance.new("UICorner")

						DropdownObject.Name = "DropdownObject"

						DropdownObject.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						DropdownObject.BackgroundTransparency = 1.000
						DropdownObject.BorderColor3 = Color3.fromRGB(0, 0, 0)
						DropdownObject.BorderSizePixel = 0
						DropdownObject.Size = UDim2.new(0.980000019, 0, 0.5, 0)
						DropdownObject.ZIndex = 5

						UIAspectRatioConstraint.Parent = DropdownObject
						UIAspectRatioConstraint.AspectRatio = 11.500
						UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

						MainFrame.Name = "MainFrame"
						MainFrame.Parent = DropdownObject
						MainFrame.AnchorPoint = Vector2.new(0.5, 0)
						MainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						MainFrame.BackgroundTransparency = 1.000
						MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
						MainFrame.BorderSizePixel = 0
						MainFrame.Position = UDim2.new(0.409999996, 0, 0, 0)
						MainFrame.Size = UDim2.new(0.800000012, 0, 1, 0)
						MainFrame.ZIndex = 6

						UICorner.CornerRadius = UDim.new(0, 3)
						UICorner.Parent = MainFrame

						Text.Name = "Text"
						Text.Parent = MainFrame
						Text.AnchorPoint = Vector2.new(0.5, 0.5)
						Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Text.BackgroundTransparency = 1.000
						Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
						Text.BorderSizePixel = 0
						Text.Position = UDim2.new(0.75, 0, 0.5, 0)
						Text.Size = UDim2.new(1.12300003, 0, 0.524999976, 0)
						Text.ZIndex = 6
						Text.Font = Enum.Font.GothamBold
						Text.Text = tostring(txt)
						Text.TextColor3 = Color3.fromRGB(255, 255, 255)
						Text.TextScaled = true
						Text.TextSize = 14.000
						Text.TextWrapped = true
						Text.TextXAlignment = Enum.TextXAlignment.Left

						System.Name = "System"
						System.Parent = MainFrame
						System.AnchorPoint = Vector2.new(0.5, 0.5)
						System.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
						System.BorderColor3 = Color3.fromRGB(0, 0, 0)
						System.BorderSizePixel = 0
						System.Position = UDim2.new(0.109999999, 0, 0.5, 0)
						System.Size = UDim2.new(0.824999988, 0, 0.824999988, 0)
						System.SizeConstraint = Enum.SizeConstraint.RelativeYY
						System.ZIndex = 6

						UICorner_2.CornerRadius = UDim.new(0, 3)
						UICorner_2.Parent = System

						TurnOn.Name = "TurnOn"
						TurnOn.Parent = System
						TurnOn.AnchorPoint = Vector2.new(0.5, 0.5)
						TurnOn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						TurnOn.BackgroundTransparency = 1.000
						TurnOn.BorderColor3 = Color3.fromRGB(0, 0, 0)
						TurnOn.BorderSizePixel = 0
						TurnOn.Position = UDim2.new(0.5, 0, 0.5, 0)
						TurnOn.Size = UDim2.new(0.800000012, 0, 0.800000012, 0)
						TurnOn.ZIndex = 7
						TurnOn.Image = "rbxassetid://3944680095"
						TurnOn.ImageColor3 = Color3.fromRGB(0, 0, 0)
						TurnOn.ImageTransparency = 1.000

						Box.Name = "Box"
						Box.Parent = System
						Box.AnchorPoint = Vector2.new(0.5, 0.5)
						Box.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Box.BorderColor3 = Color3.fromRGB(0, 0, 0)
						Box.BorderSizePixel = 0
						Box.Position = UDim2.new(0.5, 0, 0.5, 0)
						Box.ZIndex = 6

						UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Alc.Config.MainColor), ColorSequenceKeypoint.new(1.00, Alc.Config.DropColor)}
						UIGradient.Rotation = 45
						UIGradient.Parent = Box

						UICorner_3.CornerRadius = UDim.new(0, 4)
						UICorner_3.Parent = Box

						local function toggleeffect(val)
							if val then
								TweenService:Create(TurnOn,TweenInfo.new(0.4),{
									ImageTransparency = 0
								}):Play()

								TweenService:Create(Box,TweenInfo.new(0.3),{
									Size = UDim2.fromScale(1,1)
								}):Play()

								TweenService:Create(TurnOn,TweenInfo.new(0.55),{
									ImageColor3 = Alc.Config.MainColor
								}):Play()
							else
								TweenService:Create(TurnOn,TweenInfo.new(0.4),{
									ImageTransparency = 1
								}):Play()

								TweenService:Create(Box,TweenInfo.new(0.3),{
									Size = UDim2.fromScale(0,0)
								}):Play()

								TweenService:Create(TurnOn,TweenInfo.new(0.555),{
									ImageColor3 = Color3.fromRGB(0, 0, 0)
								}):Play()
							end
						end

						return DropdownObject,toggleeffect
					end

					local function Reset()
						for i,v in ipairs(ScrollingFrame:GetChildren()) do
							if v:IsA('Frame') then
								v:Destroy()
							end
						end

						ScrollingFrame:SetAttribute('Key',tostring(math.random(1,1000)))

						for i,v in pairs(DropdownInfo) do
							local DropdownObject,toggleeffect = getbutton(tostring(v))
							local mytoggle = false
							local ind = 0
							DropdownObject.Parent = ScrollingFrame

							if i == Default or v == Default then
								toggleeffect(true)
								mytoggle = true
								table.insert(connectlist,v)
							else
								toggleeffect(false)
							end


							cretate_button(DropdownObject).MouseButton1Click:Connect(function()
								mytoggle = not mytoggle

								if mytoggle then
									if (#connectlist + 1) > DropdownMax then
										mytoggle = not mytoggle
										return
									end

									if not table.find(connectlist,v) then
										table.insert(connectlist,v)
										ind = #connectlist
									end


								else
									for i,c in ipairs(connectlist) do
										if c == v then
											table.remove(connectlist,i)
										end
									end


								end


								toggleeffect(mytoggle)

								SelectText.Text = join(connectlist)
								callback(connectlist,v)
							end)
						end
					end

					Reset()

					cretate_button(Header).MouseButton1Click:Connect(function()
						valnow = not valnow
						toggleui(valnow)
					end)

					local Config = {}

					function Config:Text(...)
						Text.Text = tostring(...)
					end

					function Config:Refresh(new)

						DropdownInfo = new

						Reset()
					end

					function Config:Fire(...)
						callback(...)
					end

					function Config:Delete()
						Button:Destroy()
						UpdateSiz()
					end

					return Config
				end

				return SectionInfo
			end


			return MainTab
		end

		return MenuAlc
	end

	local UIStroke = Instance.new("UIStroke")

	UIStroke.Color = Color3.fromRGB(37, 37, 37)
	UIStroke.Parent = CloseUI

	local dragToggle = nil
	local dragSpeed = 0.1
	local dragStart = nil
	local startPos = nil
	local valUI = true

	Frame:GetPropertyChangedSignal('Size'):Connect(function()
		if Frame.Size.X.Scale <= 0 then
			Frame.Visible = false
		else
			Frame.Visible = true
		end
	end)

	CloseUI:GetPropertyChangedSignal('Size'):Connect(function()
		if CloseUI.Size.X.Scale <= 0 then
			CloseUI.Visible = false
		else
			CloseUI.Visible = true
		end
	end)

	local function ToggleUI(val)
		if val then
			TweenService:Create(Frame,TweenInfo.new(0.5),{Size = Alc.Config["UI Size"]}):Play()
			TweenService:Create(CloseUI,TweenInfo.new(1,Enum.EasingStyle.Quint,Enum.EasingDirection.In),{Size = UDim2.fromScale(0,0)}):Play()
		else
			TweenService:Create(Frame,TweenInfo.new(1,Enum.EasingStyle.Quint,Enum.EasingDirection.In),{Size = UDim2.fromScale(0,0)}):Play()
			TweenService:Create(CloseUI,TweenInfo.new(0.5),{Size = UDim2.fromScale(1,1)}):Play()
		end
	end

	if UserInputService.TouchEnabled then
		task.spawn(function()
			local Toggle = Instance.new("ScreenGui")
			local Frames = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local UIStroke = Instance.new("UIStroke")
			local logo = Instance.new("ImageLabel")
			local DropShadow = Instance.new("ImageLabel")

			Toggle.Name = "Toggle"
			Toggle.Parent = Alc.CoreGui or game.Players.LocalPlayer:WaitForChild("PlayerGui")
			Toggle.ZIndexBehavior = Enum.ZIndexBehavior.Global

			Frames.Name = 'c4'
			Frames.Parent = Toggle
			Frames.AnchorPoint = Vector2.new(0.5, 0.5)
			Frames.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
			Frames.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Frames.BorderSizePixel = 0
			Frames.Position = UDim2.new(0.886243403, 0, 0.194968551, 0)
			Frames.Size = UDim2.new(0.200000003, 0, 0.200000003, 0)
			Frames.SizeConstraint = Enum.SizeConstraint.RelativeYY
			Frames.ZIndex = 67

			UICorner.Parent = Frames

			UIStroke.Color = Color3.fromRGB(121, 121, 121)
			UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			UIStroke.Parent = Frames

			logo.Name = "logo"
			logo.Parent = Frames
			logo.AnchorPoint = Vector2.new(0.5, 0.5)
			logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			logo.BackgroundTransparency = 1.010
			logo.BorderColor3 = Color3.fromRGB(0, 0, 0)
			logo.BorderSizePixel = 0
			logo.Position = UDim2.new(0.5, 0, 0.5, 0)
			logo.Size = UDim2.new(0.899999976, 0, 0.899999976, 0)
			logo.ZIndex = 68
			logo.Image = WindowLogo

			DropShadow.Name = "DropShadow"
			DropShadow.Parent = Frames
			DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
			DropShadow.BackgroundTransparency = 1.000
			DropShadow.BorderSizePixel = 0
			DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
			DropShadow.Size = UDim2.new(1, 47, 1, 47)
			DropShadow.ZIndex = 66
			DropShadow.Image = "rbxassetid://6015897843"
			DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
			DropShadow.ImageTransparency = 0.500
			DropShadow.ScaleType = Enum.ScaleType.Slice
			DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)

			local dragToggle = false
			local dragStart = nil
			local startPos = nil

			local old = Frames.Position
			local function dInput(input)
				local delta = input.Position - dragStart
				local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
					startPos.Y.Scale, startPos.Y.Offset + delta.Y)
				game:GetService('TweenService'):Create(Frames, TweenInfo.new(dragSpeed), {Position = position}):Play()
			end

			local but = cretate_button(Frames)
			but.ZIndex = 68
			but.MouseButton1Click:Connect(function()
				if old == Frames.Position then
					valUI = not valUI
					ToggleUI(valUI)
				end
			end)
			but.InputBegan:Connect(function(input)
				if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
					dragToggle = true
					dragStart = input.Position
					startPos = Frames.Position
					old = Frames.Position
					input.Changed:Connect(function()
						if input.UserInputState == Enum.UserInputState.End then
							dragToggle = false
						end
					end)
				end
			end)



			UserInputService.InputChanged:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
					if dragToggle then
						dInput(input)
					end
				end
			end)
		end)
	end

	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(Frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end

	Topbar.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = Frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)

	UserInputService.InputBegan:Connect(function(input,ty)
		if ty then
			return
		end

		if input.KeyCode == WindowAlc.Toggle then
			valUI = not valUI
			ToggleUI(valUI)
		end
	end)

	return WindowAlc
end
return Alc
