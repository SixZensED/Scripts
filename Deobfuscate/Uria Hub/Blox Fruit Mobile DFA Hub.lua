
if not game:IsLoaded() then
	local GameLoadGui = Instance.new("Message",workspace)
	GameLoadGui.Text = 'Wait Game Loading'
	game.Loaded:Wait()
	GameLoadGui:Destroy()
	task.wait()
end
local start = tick()
repeat wait() until game:IsLoaded()
repeat wait() until game:GetService("Players")
repeat wait() until game:GetService("Players").LocalPlayer
repeat wait() until game:GetService("Players").LocalPlayer.PlayerGui
repeat wait() until game:GetService("ReplicatedStorage").Effect.Container
s = game:GetService("Players").LocalPlayer.PlayerGui.Main.Settings.DisplayButton
a = game:GetService("Players").LocalPlayer.PlayerGui.Main.Settings
s.TextLabel.Text = "DFA Hub"
s.Notify.Text = "Enable or Disable UI script"

a.MouseButton1Click:Connect(function()
--   game:service('VirtualInputManager'):SendKeyEvent(true, "Delete", false, game)
-- game:service('VirtualInputManager'):SendKeyEvent(false, "Delete", false, game)
if s.Visible == true then
   s.Visible = false
   else
   s.Visible = true
end
end)
s.MouseButton1Click:Connect(function()
   game:service('VirtualInputManager'):SendKeyEvent(true, "Delete", false, game)
game:service('VirtualInputManager'):SendKeyEvent(false, "Delete", false, game)
end)
local httpService = game:GetService('HttpService')
local client = game:GetService('Players').LocalPlayer
local set_identity = (type(syn) == 'table' and syn.set_thread_identity) or setidentity or setthreadcontext
local executor = identifyexecutor and identifyexecutor() or 'Unknown'

local function fail(r) return client:Kick(r) end

local usedCache = shared.__urlcache and next(shared.__urlcache) ~= nil

shared.__urlcache = shared.__urlcache or {}
local function urlLoad(url)
    local success, result

    if shared.__urlcache[url] then
        success, result = true, shared.__urlcache[url]
    else
        success, result = pcall(game.HttpGet, game, url)
    end

    if (not success) then
        return fail(string.format('Failed to GET url %q for reason: %q', url, tostring(result)))
    end

    local fn, err = loadstring(result)
    if (type(fn) ~= 'function') then
        return fail(string.format('Failed to loadstring url %q for reason: %q', url, tostring(err)))
    end

    local results = { pcall(fn) }
    if (not results[1]) then
        return fail(string.format('Failed to initialize url %q for reason: %q', url, tostring(results[2])))
    end

    shared.__urlcache[url] = result
    return unpack(results, 2)
end
local Library = urlLoad("https://raw.githubusercontent.com/Aoldemort/dfa/main/ui")
local themeManager = urlLoad("https://raw.githubusercontent.com/Aoldemort/dfa/main/themeManager")
local metadata = urlLoad("https://raw.githubusercontent.com/Aoldemort/Uria/Library/metadata.lua")
local Window = Library:CreateWindow({
    Title = string.format('Dfa Hub - version %s | updated: %s', metadata.version, metadata.updated),
    AutoShow = true,
    TabPadding = 5,
    MenuFadeTime = 0,
    Center = true,
})
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local WindowFocusReleasedFunction = function()
RunService:Set3dRenderingEnabled(false)
game:GetService("Players").LocalPlayer.PlayerGui.Main.Blackscreen.Size = UDim2.new(500, 0, 500, 500)
return
end
local WindowFocusedFunction = function()
RunService:Set3dRenderingEnabled(true)
game:GetService("Players").LocalPlayer.PlayerGui.Main.Blackscreen.Size = UDim2.new(1, 0, 500, 500)
setfpscap(360)
return
end
local Initialize = function()
UserInputService.WindowFocusReleased:Connect(WindowFocusReleasedFunction)
UserInputService.WindowFocused:Connect(WindowFocusedFunction)
return
end
Initialize()
getgenv().Settings = {
	Main = {
		["Auto Farm Level"] = false,
		["Fast Auto Farm Level"] = false,
		["Distance Mob Aura"] = 1000, -- {Max : 5000} 
		["Mob Aura"] = false,
		["Auto New World"] = false,
		["Auto Saber"] = false,
		["Auto Pole"] = false,
		["Auto Pole Hop"] = false,
		["Auto Buy Ablility"] = false,
		["Auto SeaBeast"] = false,
		["Auto Third Sea"] = false,
		["Auto Factory"] = false,
		["Auto Factory Hop"] = false,
		["Auto Bartilo Quest"] = false,
		["Auto True Triple Katana"] = false,
		["Auto Rengoku"] = false,
		["Auto Swan Glasses"] = false,
		["Auto Dark Coat"] = false,
		["Auto Ectoplasm"] = false,
		["Auto Buy Legendary Sword"] = false,
		["Auto Buy Legendary Sword Hop"] = false,
		["Auto Buy Enchanment Haki"] = false,
		["Auto Holy Torch"] = false,
		["Auto Buddy Swords"] = false,
		["Auto Farm Boss Hallow"] = false,
		["Auto Rainbow Haki"] = false,
		["Auto Elite Hunter"] = false,
		["Auto Musketeer Hat"] = false,
		["Auto Buddy Sword"] = false,
		["Auto Farm Bone"] = false,
		["Farm Observation"] = false,
		["Farm Observation Hop"] = false,
		["Auto Ken-Haki V2"] = false,
		["Auto Cavander"] = false,
		["Auto Yama Sword"] = false,
		["Auto Tushita Sword"] = false,
		["Auto Serpent Bow"] = false,
		["Auto Dark Dagger"] = false,
		["Auto Cake Prince"] = false,
		["Auto Dough V2"] = false,
		["Auto Random Bone"] = false,
		["Auto Fish Tail Sea 1"] = false,
		["Auto Fish Tail Sea 3"] = false,
		["Auto Magma Ore Sea 2"] = false,
		["Auto Magma Ore Sea 1"] = false,
		["Auto Mystic Droplet"] = false,
		["Auto Dragon Scales"] = false,

	},
	FightingStyle = {
		["Auto God Human"] = false,
		["Auto Superhuman"] = false,
		["Auto Electric Claw"] = false,
		["Auto Death Step"] = false,
		["Auto Fully Death Step"] = false,
		["Auto SharkMan Karate"] = false,
		["Auto Fully SharkMan Karate"] = false,
		["Auto Dragon Talon"] = false,
	},
	Boss = {
		["Auto All Boss"] = false,
		["Auto All Boss Hop"] = false,
		["Auto Boss Select"] = false,
		["Select Boss"] = "",

		["Auto Quest"] = false,
	},
	Mastery = {
		["Select Multi Sword"] = {""},
		["Farm Mastery SwordList"] = false,
		["Auto Farm Fruit Mastery"] = false,
		["Auto Farm Gun Mastery"] = false,
		["Mob Health (%)"] = 15,
	},
	Evo = {
		["Auto Evo Race [Mink]"] = false,
		["Auto Evo Race [FishMan]"] = false,
		["Auto Evo Race [Human]"] = false,
		["Auto Evo Race [Sky]"] = false,
	},
	Configs = {
		["Double Quest"] = false,
		["Bypass TP"] = false,
		["Select Team"] = "Pirate", --{Pirate,Marine}
		["Fast Attack"] = true,
		["Fast Attack Type"] = "Normal", --{Normal,Fast,Slow}
		["Select Weapon"] = {},
		["Auto Haki"] = true,
		["Distance Auto Farm"] = 35, --{Max : 50}
		["Camera Shaker"] = false,
		["Skill Z"] = true,
		["Skill X"] = true,
		["Skill C"] = true,
		["Skill V"] = true,
		["Show Hitbox"] = false,
		["Bring Mob"] = true,
		["Disabled Damage"] = false,
	},
	Stat = {
		["Enabled Auto Stats"] = false,
		["Auto Stats Kaitun"] = false,

		["Select Stats"] = {"Melee"}, --{Max Stats,Melee,Defense,Sword,Devil Fruit,Gun}
		["Point Select"] = 3, --{Recommended , Max : 9}
		["Enabled Auto Redeem Code"] = false,
		["Select Level Redeem Code"] = 1, --{Max : 2400}
	},

	Misc = {
		["No Soru Cooldown"] = false,
		["No Dash Cooldown"] = false,

		["Infinities Geppo"] = false,
		["Infinities Energy"] = false,
		["Auto Rejoin"] = true,
	},
	Teleport = {
		["Teleport to Sea Beast"] = false,
	},

	Raids = {
		["Auto Raids"] = false,

		["Kill Aura"] = false,
		["Auto Awakened"] = false,
		["Auto Next Place"] = false,

		["Select Raids"] = {}, -- {"Flame","Ice","Quake","Light","Dark","String","Rumble","Magma","Human: Buddha","Sand","Bird: Phoenix","Dough"},
		["Select Mode Raids"] = {},
		["Auto Start Law Dungeon"] = false,
		["Auto Farm Law Dungeon"] = false,
	},

	Combat = {
		["Fov Size"] = 200,
		["Show Fov"] = false,
		["Aimbot Skill"] = false,
	},

	HUD = {
		["FPS"] = 60,
		["LockFPS"] = false,
		["Boost FPS Windows"] = false,
		['White Screen'] = false,
	},
	Devil_Fruit = {
		["Auto Store Fruits"] = false,
		["Auto Buy Random Fruits"] = false,
		["Select Devil Fruits"] = {}, -- {"Bomb-Bomb","Spike-Spike","Chop-Chop","Spring-Spring","Kilo-Kilo","Spin-Spin","Kilo-Kilo","Spin-Spin","Bird: Falcon","Smoke-Smoke","Flame-Flame","Ice-Ice","Sand-Sand","Dark-Dark","Revive-Revive","Diamond-Diamond","Light-Light","Love-Love","Rubber-Rubber","Barrier-Barrier","Magma-Magma","Door-Door","Quake-Quake","Human-Human: Buddha","String-String","Bird-Bird: Phoenix","Rumble-Rumble","Paw-Paw","Gravity-Gravity","Dough-Dough","Shadow-Shadow","Venom-Venom","Control-Control","Soul-Soul","Dragon-Dragon"}
		["Auto Buy Devil Fruits Sniper"] = false,
		["Bring Fruit Type"] = "Bring", -- Bring Tween
		["Bring Fruit"] = false,
	},
	Lock = {
		["Level Lock"] = 2400,
		["Auto Lock Level"] = false,
		["Beli Lock"] = 1000000,
		["Auto Lock Beli"] = false,
	},
}

getgenv().Load = function()
	Library:Notify('Loaded Settings.')
	if readfile and writefile and isfile and isfolder then
		if not isfolder("Dfa Hub") then
			makefolder("Dfa Hub")
		end
		if not isfolder("Dfa Hub/Blox Fruits/") then
			makefolder("Dfa Hub/Blox Fruits/")
		end
		if not isfile("Dfa Hub/Blox Fruits/US_" .. game.Players.LocalPlayer.Name .. ".json") then
			writefile("Dfa Hub/Blox Fruits/US_" .. game.Players.LocalPlayer.Name .. ".json", game:GetService("HttpService"):JSONEncode(getgenv().Settings))
		else
			local Decode = game:GetService("HttpService"):JSONDecode(readfile("Dfa Hub/Blox Fruits/US_" .. game.Players.LocalPlayer.Name .. ".json"))
			for i,v in pairs(Decode) do
				getgenv().Settings[i] = v
			end
		end
	else
		return warn("Status : Undetected Executor")
	end
end

getgenv().SaveSetting = function()
  --  Library:Notify('Saved Settings.')
	if readfile and writefile and isfile and isfolder then
		if not isfile("Dfa Hub/Blox Fruits/US_" .. game.Players.LocalPlayer.Name .. ".json") then
			getgenv().Load()
		else
			local Decode = game:GetService("HttpService"):JSONDecode(readfile("Dfa Hub/Blox Fruits/US_" .. game.Players.LocalPlayer.Name .. ".json"))
			local Array = {}
			for i,v in pairs(getgenv().Settings) do
				Array[i] = v
			end
			writefile("Dfa Hub/Blox Fruits/US_" .. game.Players.LocalPlayer.Name .. ".json", game:GetService("HttpService"):JSONEncode(Array))
		end
	else
		return warn("Status : Undetected Executor")
	end
end

getgenv().Load()

if not game:IsLoaded() then
	local Loaded = Instance.new("Message",workspace)
	Loaded.Text = 'Wait Game Loading'
	game.Loaded:Wait()
	Loaded:Destroy()
	task.wait(10)
end

repeat wait()
	if game.Players.LocalPlayer.Team == nil and game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Visible == true then
		pcall(function()
			if getgenv().Settings.Configs["Select Team"] == "Pirate" then
				for i,v in pairs({"MouseButton1Click", "MouseButton1Down", "Activated"}) do
					for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton[v])) do
						v.Function()
					end
				end
			elseif getgenv().Settings.Configs["Select Team"] == "Marine" then
				for i,v in pairs({"MouseButton1Click", "MouseButton1Down", "Activated"}) do
					for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton[v])) do
						v.Function()
					end
				end
			else
				for i,v in pairs({"MouseButton1Click", "MouseButton1Down", "Activated"}) do
					for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton[v])) do
						v.Function()
					end
				end
			end
		end)
	end
until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded()

-- [Place Id Check]
local id = game.PlaceId
if id == 2753915549 then World1 = true elseif id == 4442272183 then World2 = true elseif id == 7449423635 then World3 = true else game:Shutdown() end

--[Anti Lag]
if not LPH_OBFUSCATED then
    LPH_JIT_MAX = (function(...) return ... end)
    LPH_NO_VIRTUALIZE = (function(...) return ... end)
    LPH_NO_UPVALUES = (function(...) return ... end)
end

-- [Anti AFK]

game:GetService("Players").LocalPlayer.Idled:connect(function()
	game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	wait(1)
	game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

-- [Functions Equip Weapon]
function EquipWeapon(Tool)
	pcall(function()
		if game.Players.LocalPlayer.Backpack:FindFirstChild(Tool) then 
			local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(Tool) 
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
		end
	end)
end

function EquipWeaponSword()
	pcall(function()
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.ToolTip == "Sword" and v:IsA('Tool') then
				local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name) 
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
			end
		end
	end)
end


    function isnil(thing)
        return (thing == nil)
    end
    local function round(n)
        return math.floor(tonumber(n) + 0.5)
    end
    Number = math.random(1, 1000000)
    function PlrESP()
        if ESPPlayer then
            for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                if not isnil(v.Character) then
                    if not v.Character.Head:FindFirstChild('NameEsp'..v.Name) then
                        local BillboardGui = Instance.new("BillboardGui")
                        local ESP = Instance.new("TextLabel")
                        local HealthESP = Instance.new("TextLabel")
                        BillboardGui.Parent = v.Character.Head
                        BillboardGui.Name = 'NameEsp'..v.Name
                        BillboardGui.ExtentsOffset = Vector3.new(0, 1, 0)
                        BillboardGui.Size = UDim2.new(1,200,1,30)
                        BillboardGui.Adornee = v.Character.Head
                        BillboardGui.AlwaysOnTop = true
                        ESP.Name = "ESP"
                        ESP.Parent = BillboardGui
                        ESP.TextTransparency = 0
                        ESP.BackgroundTransparency = 1
                        ESP.Size = UDim2.new(0, 200, 0, 30)
                        ESP.Position = UDim2.new(0,25,0,0)
                        ESP.Font = Enum.Font.Gotham
                        ESP.Text = (v.Name ..' '.."[ "..round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M'.." ]")
                        if v.Team == game:GetService("Players").LocalPlayer.Team then
                            ESP.TextColor3 = Color3.new(0, 255, 255)
                        else
                            ESP.TextColor3 = Color3.new(255, 0, 0)
                        end
                        ESP.TextSize = 14
                        ESP.TextStrokeTransparency = 0.500
                        ESP.TextWrapped = true
                        HealthESP.Name = "HealthESP"
                        HealthESP.Parent = ESP
                        HealthESP.TextTransparency = 0
                        HealthESP.BackgroundTransparency = 1
                        HealthESP.Position = ESP.Position + UDim2.new(0, -25, 0, 15)
                        HealthESP.Size = UDim2.new(0, 200, 0, 30)
                        HealthESP.Font = Enum.Font.Gotham
                        HealthESP.TextColor3 = Color3.fromRGB(255, 0, 0)
                        HealthESP.TextSize = 14
                        HealthESP.TextStrokeTransparency = 0.500
                        HealthESP.TextWrapped = true
                        HealthESP.Text = "Health "..math.floor(v.Character.Humanoid.Health).."/"..math.floor(v.Character.Humanoid.MaxHealth)
                    else
                        v.Character.Head['NameEsp'..v.Name].ESP.Text = (v.Name ..' '..round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
                        v.Character.Head['NameEsp'..v.Name].ESP.HealthESP.Text = "Health "..math.floor(v.Character.Humanoid.Health).."/"..math.floor(v.Character.Humanoid.MaxHealth)
                        v.Character.Head:FindFirstChild('NameEsp'..v.Name).ESP.TextTransparency = 0
                        v.Character.Head:FindFirstChild('NameEsp'..v.Name).ESP.HealthESP.TextTransparency = 0
                    end
                end
            end
        else
            for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                if v.Character.Head:FindFirstChild('NameEsp'..v.Name) then
                    v.Character.Head:FindFirstChild('NameEsp'..v.Name).ESP.TextTransparency = 1
                    v.Character.Head:FindFirstChild('NameEsp'..v.Name).ESP.HealthESP.TextTransparency = 1
                end
            end
        end     
    end
    
    function IslandESP()
        for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
            pcall(function()
                if getgenv().IslandEsp then 
                    if v.Name ~= "Sea" then
                        if not v:FindFirstChild('NameEsp') then
                            local bill = Instance.new('BillboardGui',v)
                            bill.Name = 'NameEsp'
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1,200,1,30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel',bill)
                            name.Font = "GothamBold"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1,0,1,0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(80, 245, 245)
                        else
                            v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                        end
                    end
                else
                    if v:FindFirstChild('NameEsp')then
                        v:FindFirstChild('NameEsp'):Destroy()
                    end
                end
            end)
        end
    end
    
    function ChestSESP() 
        for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
            pcall(function()
                if string.find(v.Name,"Chest") then
                    if  getgenv().ChestEsp then
                        if string.find(v.Name,"Chest") then
                            if not v:FindFirstChild('NameEsp') then
                                local bill = Instance.new('BillboardGui',v)
                                bill.Name = 'NameEsp'
                                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                                bill.Size = UDim2.new(1,200,1,30)
                                bill.Adornee = v
                                bill.AlwaysOnTop = true
                                local name = Instance.new('TextLabel',bill)
                                name.Font = "GothamBold"
                                name.FontSize = "Size14"
                                name.TextWrapped = true
                                name.Size = UDim2.new(1,0,1,0)
                                name.TextYAlignment = 'Top'
                                name.BackgroundTransparency = 1
                                name.TextStrokeTransparency = 0.5
                                name.TextColor3 = Color3.fromRGB(0, 255, 250)
                            if v.Name == "Chest1" then
                                name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                            end
                            if v.Name == "Chest2" then
                                name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                            end
                        if v.Name == "Chest3" then
                            name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                        end
                        else
                            v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                        end
                    end
                else
                    if v:FindFirstChild('NameEsp') and not  getgenv().ChestEsp then
                    v:FindFirstChild('NameEsp'):Destroy()
                    end
                end
                end
            end)
        end
    end
    
    function UpdateBfEsp() 
        for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
            pcall(function()
                if  getgenv().DFEsp then
                    if string.find(v.Name, "Fruit") then   
                        if not v.Handle:FindFirstChild('NameEsp') then
                            local bill = Instance.new('BillboardGui',v.Handle)
                            bill.Name = 'NameEsp'
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1,200,1,30)
                            bill.Adornee = v.Handle
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel',bill)
                            name.Font = "GothamBold"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1,0,1,0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(255, 0, 0)
                            name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
                        else
                            v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
                        end
                    end
                else
                    if v.Handle:FindFirstChild('NameEsp') and not  getgenv().DFEsp then
                        v.Handle:FindFirstChild('NameEsp'):Destroy()
                        end
                end
                if v.Handle:FindFirstChild('NameEsp') and not  getgenv().DFEsp then
                        v.Handle:FindFirstChild('NameEsp'):Destroy()
                        end
            end)
        end
    end
    
    function FlowerESP() 
        for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
            pcall(function()
                if v.Name == "Flower2" or v.Name == "Flower1" then
                    if getgenv().FlowerEsp then 
                        if not v:FindFirstChild('NameEsp') then
                            local bill = Instance.new('BillboardGui',v)
                            bill.Name = 'NameEsp'
                            bill.ExtentsOffset = Vector3.new(0, 1, 0)
                            bill.Size = UDim2.new(1,200,1,30)
                            bill.Adornee = v
                            bill.AlwaysOnTop = true
                            local name = Instance.new('TextLabel',bill)
                            name.Font = "GothamBold"
                            name.FontSize = "Size14"
                            name.TextWrapped = true
                            name.Size = UDim2.new(1,0,1,0)
                            name.TextYAlignment = 'Top'
                            name.BackgroundTransparency = 1
                            name.TextStrokeTransparency = 0.5
                            name.TextColor3 = Color3.fromRGB(255, 0, 0)
                        if v.Name == "Flower1" then 
                            name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                            name.TextColor3 = Color3.fromRGB(0, 0, 255)
                        end
                        if v.Name == "Flower2" then
                            name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                            name.TextColor3 = Color3.fromRGB(255, 0, 0)
                        end
                    else
                        v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                    end
                    else
                        if v:FindFirstChild('NameEsp') then
                            v:FindFirstChild('NameEsp'):Destroy()
                        end
                    end
                end   
                if v:FindFirstChild('NameEsp') and not getgenv().FlowerEsp then
                     v:FindFirstChild('NameEsp'):Destroy()
                end
            end)
        end
    end
    
    
-- [Body Gyro]

LPH_JIT_MAX(function()
	task.spawn(function()
		game:GetService("RunService").Stepped:Connect(function()
			pcall(function()
				--[World 1]
				if getgenv().Settings.Main["Auto Farm Level"] or getgenv().Settings.Main["Auto New World"] or
					getgenv().Settings.Main["Auto Saber"] or getgenv().Settings.Main["Auto Pole"] or
					--[World 2]
					getgenv().Settings.Main["Auto Third Sea"] or getgenv().Settings.Main["Auto Bartilo Quest"] or getgenv().Settings.Main["Auto Dark Coat"] or getgenv().Settings.Main["Auto Swan Glasses"] or
					getgenv().Settings.Main["Auto True Triple Katana"] or getgenv().Settings.Main["Auto Rengoku"] or getgenv().Settings.Main["Auto Ectoplasm"]  or  getgenv().Settings.FightingStyle["Auto Fully Death Step"] or 
					getgenv().Settings.FightingStyle["Auto Fully SharkMan Karate"] or getgenv().Settings.Raids["Auto Farm Law Dungeon"] or  
					--[World 3]
					getgenv().Settings.Main["Auto Rainbow Haki"] or getgenv().Settings.Main["Auto Elite Hunter"] or getgenv().Settings.Main["Auto Musketeer Hat"] or getgenv().Settings.Main["Auto Buddy Sword"] or
					getgenv().Settings.Main["Auto Farm Bone"] or getgenv().Settings.Main["Auto Ken-Haki V2"] or getgenv().Settings.FightingStyle["Auto God Human"] or getgenv().Settings.Main["Auto Cavander"] or 
					getgenv().Settings.Main["Auto Cursed Dual Katana"] or getgenv().Settings.Main["Auto Yama Sword"] or getgenv().Settings.Main["Auto Tushita Sword"] or getgenv().Settings.Main["Auto Serpent Bow"] or
					getgenv().Settings.Main["Auto Dark Dagger"] or getgenv().Settings.Main["Auto Cake Prince"] or getgenv().Settings.Main["Auto Dough V2"] or getgenv().Settings.Main["Auto Holy Torch"] or
					getgenv().Settings.Main["Auto Buddy Swords"] or getgenv().Settings.Main["Auto Farm Boss Hallow"] or getgenv().Settings.Main["Mob Aura"] or getgenv().Settings.Main["Auto Quest Soul Guitar"] or getgenv().Settings.Main["Auto Quest Soul Guitar Hop"] or YamaQuest2 or YamaQuest1 or Auto_Cursed_Dual_Katana or
					Tushita_Quest2 or Tushita_Quest1 or AutoFarmMaterial or teleporttop or AutoFarmChest or 
					--[For God Human]
					--getgenv().Settings.Main["Auto Fish Tail Sea 1"] or getgenv().Settings.Main["Auto Fish Tail Sea 3"] or getgenv().Settings.Main["Auto Magma Ore Sea 2"] or 
					--getgenv().Settings.Main["Auto Magma Ore Sea 1"] or getgenv().Settings.Main["Auto Mystic Droplet"] or getgenv().Settings.Main["Auto Dragon Scales"] or 
					--[Boss]
					getgenv().Settings.Boss["Auto All Boss"] or getgenv().Settings.Boss["Auto Boss Select"] or
					--[Mastery]
					getgenv().Settings.Mastery["Auto Farm Fruit Mastery"] or getgenv().Settings.Mastery["Auto Farm Gun Mastery"] or getgenv().Settings.Mastery["Farm Mastery SwordList"] or
					--[Teleport]
					getgenv().Settings.Teleport["Teleport to Sea Beast"] or getgenv().Settings.Main["Auto SeaBeast"] or
					--[Raids]
					getgenv().Settings.Raids["Auto Raids"] or getgenv().Settings.Raids["Auto Next Place"] or getgenv().Teleport or getgenv().MysticIsland
					--[Bring Fruit]
					or getgenv().BringFound or getgenv().AutoFarmBounty or
					--[Evo Race]
					getgenv().Settings.Evo["Auto Evo Race [Mink]"] or getgenv().Settings.Evo["Auto Evo Race [FishMan]"] or getgenv().Settings.Evo["Auto Evo Race [Human]"] or getgenv().Settings.Evo["Auto Evo Race [Sky]"]
				then
				--	X=true
					if X then
						setfflag("HumanoidParallelRemoveNoPhysics", "False")
						setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
						game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
						if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == true then
							game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
						end
					else

						game.Players.LocalPlayer.Character.Humanoid:ChangeState(12)
						if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == true then
							game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
						end
						if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
							if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity1") then
								if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == true then
									game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
								end
								local BodyVelocity = Instance.new("BodyVelocity")
								BodyVelocity.Name = "BodyVelocity1"
								BodyVelocity.Parent =  game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
								BodyVelocity.MaxForce = Vector3.new(10000, 10000, 10000)
								BodyVelocity.Velocity = Vector3.new(0, 0, 0)
							end
						end
						for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
							if v:IsA("BasePart") then
								v.CanCollide = false    
							end
						end
					end
				else
					
					game.Players.LocalPlayer.Character:FindFirstChild("Highlight"):Destroy();
					if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity1") then
						game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity1"):Destroy()
					end
				end
			end)
		end)
	end)
end)()

-- [Bring Mob]

LPH_NO_VIRTUALIZE(function()
	task.spawn(function()
		while true do wait()
			if setscriptable then
				setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
			end
			if sethiddenproperty then
				sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
			end
		end
	end)
end)()

task.spawn(function()
	while task.wait() do
		pcall(function()
			if StartMagnet then
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if not string.find(v.Name,"Boss") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
						if InMyNetWork(v.HumanoidRootPart) then
							v.HumanoidRootPart.CFrame = PosMon * CFrame.new(0.02, 0, 0.01)
							v.Humanoid.JumpPower = 0
							v.Humanoid.WalkSpeed = 0
							v.HumanoidRootPart.Transparency = 1
							v.HumanoidRootPart.CanCollide = false
							v.Head.CanCollide = false
							if v.Humanoid:FindFirstChild("Animator") then
								v.Humanoid.Animator:Destroy()
							end
							v.Humanoid:ChangeState(11)
							v.Humanoid:ChangeState(14)
						end
					end
				end
			end
		end)
	end
end)


-- [require module]

local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
local CombatFrameworkR = getupvalues(CombatFramework)[2]
local RigController = require(game:GetService("Players")["LocalPlayer"].PlayerScripts.CombatFramework.RigController)
local RigControllerR = getupvalues(RigController)[2]
local realbhit = require(game.ReplicatedStorage.CombatFramework.RigLib)
local cooldownFast = tick()

-- [Disabled Damage Interface]
LPH_JIT_MAX(function()
	function DisabledDamage()
		spawn(function()
			while wait() do
				pcall(function()
					if getgenv().Settings.Configs["Disabled Damage"] then
						game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false
					else
						game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = true
					end
				end)
			end
		end)
	end
end)()

local plr = game.Players.LocalPlayer
local CbFw = debug.getupvalues(require(game.Players.LocalPlayer.PlayerScripts.CombatFramework))
local CbFw2 = CbFw[2]

task.spawn(function()
    local CombatFrameworkOld = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
    local CombatFrameworkR = getupvalues(CombatFrameworkOld)[2]
    local CameraShakerR = require(game.ReplicatedStorage.Util.CameraShaker)

    function maxincrement()
        return #CombatFrameworkR.activeController.anims.basic
    end

    spawn(function()
        local old
        old = hookmetamethod(game, "__namecall",function(self,...)
            local method = getnamecallmethod() local args = {...}
            if method:lower() == "fireserver" then
                if args[1] == "hit" then
                    args[3] = maxincrement()
                    return old(self,unpack(args))
                end 
            end
        return old(self,...)
        end) 
    end)
end)

function GetCurrentBlade() 
    local p13 = CbFw2.activeController
    local ret = p13.blades[1]
    if not ret then 
    return 
    end
    while ret.Parent ~= game.Players.LocalPlayer.Character do 
        ret = ret.Parent end
    return ret
end
spawn(function()
	while wait() do
		pcall(function()
			if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
			end
		end)
	end
end)
	
local SeraphFrame = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework")))[2]
local VirtualUser = game:GetService('VirtualUser')
local RigControllerR = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.RigController))[2]
local Client = game:GetService("Players").LocalPlayer
local DMG = require(Client.PlayerScripts.CombatFramework.Particle.Damage)

function SeraphFuckWeapon() 
	local p13 = SeraphFrame.activeController
	local wea = p13.blades[1]
	if not wea then return end
	while wea.Parent~=game.Players.LocalPlayer.Character do wea=wea.Parent end
	return wea
end

function getHits(Size)
	local Hits = {}
	local Enemies = workspace.Enemies:GetChildren()
	local Characters = workspace.Characters:GetChildren()
	for i=1,#Enemies do local v = Enemies[i]
		local Human = v:FindFirstChildOfClass("Humanoid")
		if Human and Human.RootPart and Human.Health > 0 and game.Players.LocalPlayer:DistanceFromCharacter(Human.RootPart.Position) < Size+5 then
			table.insert(Hits,Human.RootPart)
		end
	end
	for i=1,#Characters do local v = Characters[i]
		if v ~= game.Players.LocalPlayer.Character then
			local Human = v:FindFirstChildOfClass("Humanoid")
			if Human and Human.RootPart and Human.Health > 0 and game.Players.LocalPlayer:DistanceFromCharacter(Human.RootPart.Position) < Size+5 then
				table.insert(Hits,Human.RootPart)
			end
		end
	end
	return Hits
end
local r = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
local s = getupvalues(r)[2]
coroutine.wrap(function()
while true do
wait()
pcall(function()
for t, u in pairs(s.activeController.anims.basic) do
getgenv().increment = t
end
end)
end
end)()
local v = game:GetService("VirtualUser")
local function w()
task.spawn(function()
pcall(function()
s.activeController:attack()
end)
end)
end
getgenv().hit = function()
w()
end

function AttackNoCD()
        local AC = CbFw2.activeController
		local Animation = Instance.new("Animation")

        for i = 1,1 do tick()
            local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
                plr.Character,
                {plr.Character.HumanoidRootPart},
                60
            )
            local cac = {}
            local hash = {}
            for k, v in pairs(bladehit) do
                if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
                    table.insert(cac, v.Parent.HumanoidRootPart)
                    hash[v.Parent] = true
                end
            end
            bladehit = cac
            if #bladehit > 0 then
                local u8 = debug.getupvalue(AC.attack, 5)
                local u9 = debug.getupvalue(AC.attack, 6)
                local u7 = debug.getupvalue(AC.attack, 4)
                local u10 = debug.getupvalue(AC.attack, 7)
                local u12 = (u8 * 798405 + u7 * 727595) % u9
                local u13 = u7 * 798405
                (function()
                    u12 = (u12 * u9 + u13) % 1099511627776
                    u8 = math.floor(u12 / u9)
                    u7 = u12 - u8 * u9
                end)()
                u10 = u10 + 1
                debug.setupvalue(AC.attack, 5, u8)
                debug.setupvalue(AC.attack, 6, u9)
                debug.setupvalue(AC.attack, 4, u7)
                debug.setupvalue(AC.attack, 7, u10)
                pcall(function()
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						local Highlight = Instance.new("Highlight")
						Highlight.FillColor = Color3.new(255, 0, 0)
						Highlight.OutlineColor = Color3.new(255,0,0)
						Highlight.Parent = v
						end
                    if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then
						for k, v in pairs(AC.animator.anims.basic) do
							v:Play(.3,50,.3)
						end  
			--			AC:attack()
						for i,CombatFrameworkR in pairs(CbFw) do
                            pcall(function()
                                if i == 2 then
                                    CombatFrameworkR.activeController.increment = 4
                                    CombatFrameworkR.activeController.hitboxMagnitude = 55
                                    CombatFrameworkR.activeController.timeToNextAttack = tick()
                              --      game:GetService("VirtualUser"):CaptureController()
                             --       game:GetService("VirtualUser"):ClickButton1(Vector2.new(1300,760))
                                end
                            end)
                        end
                        game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetCurrentBlade()))
                        game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10)
                        game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, 2, "")
                    end
                end)
				
            end
        end
end



function InMyNetWork(object)
	if isnetworkowner then
		return isnetworkowner(object)
	else
		if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 200 then 
			return true
		end
		return false
	end
end

local function inmyself(name)
	return game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(name) or game:GetService("Players").LocalPlayer.Character:FindFirstChild(name)
end


function Com(com,...)
	local Remote = game:GetService('ReplicatedStorage').Remotes:FindFirstChild("Comm"..com)
	if Remote:IsA("RemoteEvent") then
		Remote:FireServer(...)
	elseif Remote:IsA("RemoteFunction") then
		Remote:InvokeServer(...)
	end
end


local function GetIsLand(...)
	local RealtargetPos = {...}
	local targetPos = RealtargetPos[1]
	local RealTarget
	if type(targetPos) == "vector" then
		RealTarget = targetPos
	elseif type(targetPos) == "userdata" then
		RealTarget = targetPos.Position
	elseif type(targetPos) == "number" then
		RealTarget = CFrame.new(unpack(RealtargetPos))
		RealTarget = RealTarget.p
	end

	local ReturnValue
	local CheckInOut = math.huge
	if game.Players.LocalPlayer.Team then
		for i,v in pairs(game.Workspace._WorldOrigin.PlayerSpawns:FindFirstChild(tostring(game.Players.LocalPlayer.Team)):GetChildren()) do 
			local ReMagnitude = (RealTarget - v:GetModelCFrame().p).Magnitude
			if ReMagnitude < CheckInOut then
				CheckInOut = ReMagnitude
				ReturnValue = v.Name
			end
		end
		if ReturnValue then
			return ReturnValue
		end 
	end
end


function BTP(Position)
	game.Players.LocalPlayer.Character.Head:Destroy()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
	wait(1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
	
end


local function toTarget(...)
	local RealtargetPos = {...}
	local targetPos = RealtargetPos[1]
	local RealTarget
	if type(targetPos) == "vector" then
		RealTarget = CFrame.new(targetPos)
	elseif type(targetPos) == "userdata" then
		RealTarget = targetPos
	elseif type(targetPos) == "number" then
		RealTarget = CFrame.new(unpack(RealtargetPos))
	end

	if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health == 0 then if tween then tween:Cancel() end repeat wait() until game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 wait(0.2) end

	local tweenfunc = {}
	local Distance = (RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude
	if (Distance > 100) then
		Speed = 325
	elseif (Distance < 100) then
		Speed = 10000000000
	end

	if getgenv().Settings.Configs["Bypass TP"] then
		if Distance > 3000 and not game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible == true then
			pcall(function()
				tween:Cancel()
				fkwarp = false

				if game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("SpawnPoint").Value == tostring(GetIsLand(RealTarget)) then 
					wait(.1)
					Com("F_","TeleportToSpawn")
				elseif game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("LastSpawnPoint").Value == tostring(GetIsLand(RealTarget)) then
					game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
					wait(0.1)
					repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
				else
					if game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
						if fkwarp == false then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RealTarget
						end
						fkwarp = true
					end
					wait(.08)
					game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
					repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
					wait(.1)
					
				end
				wait(0.2)

				return
			end)
		end
	end

	local tween_s = game:service"TweenService"
	local info = TweenInfo.new((RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude/Speed, Enum.EasingStyle.Linear)
	local tweenw, err = pcall(function()
		if not game.Players.LocalPlayer.Character:FindFirstChild("Highlight") then
		local Highlight = Instance.new("Highlight")
		Highlight.FillColor = Color3.new(0, 1, 0)
		Highlight.OutlineColor = Color3.new(0, 1, 0)
		Highlight.Parent = game.Players.LocalPlayer.Character;
		end
		tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = RealTarget})
		tween:Play()
	end)

	function tweenfunc:Stop()
		tween:Cancel()
	end 

	function tweenfunc:Wait()
		tween.Completed:Wait()
	end 

	return tweenfunc
end

function toTargetP(CFgo)
	if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health <= 0 or not game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") then tween:Cancel() repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") and game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 wait(7) return end
	if (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude <= 150 then
		pcall(function()
			tween:Cancel()

			game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = CFgo

			return
		end)
	end
	local tween_s = game:service"TweenService"
	local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude/325, Enum.EasingStyle.Linear)
	tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CFgo})
	tween:Play()

	local tweenfunc = {}

	function tweenfunc:Stop()
		tween:Cancel()
	end

	return tweenfunc
end


LPH_NO_VIRTUALIZE(function()
	function InfinitiesEnergy()
		game:GetService('Players').LocalPlayer.Character.Energy.Changed:connect(function()
			if getgenv().Settings.Misc["Infinities Energy"] then
				game:GetService('Players').LocalPlayer.Character.Energy.Value = game:GetService('Players').LocalPlayer.Character.Energy.MaxValue
			end 
		end)
	end
end)()



function getRoot(char)
	local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
	return rootPart
end

function r15(plr)
	if plr.Character:FindFirstChildOfClass('Humanoid').RigType == Enum.HumanoidRigType.R15 then
		return true
	end
end


function ClickCamera()
	game:GetService("VirtualUser"):CaptureController()
	game:GetService("VirtualUser"):ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
end
function Click()
	game:GetService("VirtualUser"):CaptureController()
	game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
end


local ServerHop =  loadstring(game:HttpGet("https://www.klgrth.io/paste/h8yq5/raw"))()

function Fast_Hop()
	pcall(function()
		for count = math.random(1, math.random(40, 75)), 100 do
			remote = game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer(count)
			for _i ,v in pairs(remote) do
				if tonumber(v['Count']) < 12 then
					game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, _i)
				end
			end    
		end
	end)
end

function RemoveFruit(str)
	return str:gsub(" Fruit", "")
end


local CodeApi = loadstring(game:HttpGet('https://pastebin.com/raw/EK13Njf3'))()


function comma_value(p1)
	local v1 = p1
	while true do
		local v2, v3 = string.gsub(v1, "^(-?%d+)(%d%d%d)", "%1,%2")
		v1 = v2
		if v3 ~= 0 then else
			break
		end	
	end
	return v1
end


local function CheckSeabeast()
    for i,v in pairs(game.Workspace.SeaBeasts:GetChildren()) do
        if v:FindFirstChild("HumanoidRootPart") then
            return v
        end
    end
    return false
end

local function myboat(NameBoat)
    for i,v in pairs(game:GetService("Workspace").Boats:GetChildren()) do 
        if #game:GetService("Workspace").Boats:GetChildren() > 0 then
            if v:FindFirstChild("Owner") then
                if tostring(v.Owner.Value) == game.Players.LocalPlayer.Name then
                    return v.Plank.CFrame * CFrame.new(0.1,-0.5,0)
                end
            end
        end
    end
    return false
end


function GetFightingStyle(Style)
	ReturnText = ""
	for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if v:IsA("Tool") then
			if v.ToolTip == Style then
				ReturnText = v.Name
			end
		end
	end
	for i ,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if v:IsA("Tool") then
			if v.ToolTip == Style then
				ReturnText = v.Name
			end
		end
	end
	if ReturnText ~= "" then
		return ReturnText
	else
		return "Not Have"
	end
end


local placeId = game.PlaceId
if placeId == 2753915549 then
	World1 = true
elseif placeId == 4442272183 then
	World2 = true
elseif placeId == 7449423635 then
	World3 = true
else
	game.Players.LocalPlayer:Kick("??????????????????????")
end


function CheckMasteryWeapon(NameWe,MasNum)
	if game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe) then
		if tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
			return "true DownTo"
		elseif tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
			return "true UpTo"
		end
	end
	if game.Players.LocalPlayer.Character:FindFirstChild(NameWe) then
		if tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
			return "true DownTo"
		elseif tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
			return "true UpTo"
		end
	end
	return "else"
end


function GetWeaponInventory(Weaponname)
	for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
		if type(v) == "table" then
			if v.Type == "Sword" then
				if v.Name == Weaponname then
					return true
				end
			end
		end
	end
	return false
end


function GetMaterial(matname)
	for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
		if type(v) == "table" then
			if v.Type == "Material" then
				if v.Name == matname then
					return v.Count
				end
			end
		end
	end
	return 0
end

local AllMaterial
if World1 then
	AllMaterial = {
		"Magma Ore",
		"Leather",
		"Scrap Metal",
		"Angel Wings",
		"Fish Tail"
	}
elseif World2 then
	AllMaterial = {
		"Magma Ore",
		"Scrap Metal",
		"Radioactive Material",
		"Vampire Fang",
		"Mystic Droplet",
	}
elseif World3 then
	AllMaterial = {
		"Mini Tusk",
		"Fish Tail",
		"Scrap Metal",
		"Dragon Scale",
		"Conjured Cocoa",
		"Demonic Wisp",
		"Gunpowder",
	}
end

table.sort(AllMaterial)


local function CustomFindFirstChild(tablename)
	for i,v in pairs(tablename) do
		if game:GetService("Workspace").Enemies:FindFirstChild(v) then
			return true
		end
	end
	return false
end


function isNumber(str)
	if tonumber(str) ~= nil or str == 'inf' then
		return true
	end
end



local Player = game:GetService('Players').LocalPlayer

local function CheckRig()
	if Player.Character then
		local Humanoid = Player.Character:WaitForChild('Humanoid')
		if Humanoid.RigType == Enum.HumanoidRigType.R15 then
			return 'R15'
		else
			return 'R6'
		end
	end
end

local function InitiateInvis()
	local Character = Player.Character
	local StoredCF = Character.PrimaryPart.CFrame

	if CheckRig() == 'R6' then
		local Clone = Character.HumanoidRootPart:Clone()
		Character.HumanoidRootPart:Destroy()
		Clone.Parent = Character
	else
		local Clone = Character.LowerTorso.Root:Clone()
		Character.LowerTorso.Root:Destroy()
		Clone.Parent = Character.LowerTorso
	end

end

function CheckQuest()
	local MyLevel = game.Players.LocalPlayer.Data.Level.Value
	if World1 then
	if ((MyLevel == 1) or (MyLevel <= 9)) then
	LevelFarm = 1
	Name = "Bandit [Lv. 5]"
	QuestName = "BanditQuest1"
	LevelQuest = 1
	NameMon = "Bandit"
	CFrameMon = CFrame.new(1060, 17, 1547)
	VectorMon = Vector3.new(1060, 17, 1547)
	CFrameQuest = CFrame.new(1060, 17, 1547)
	VectorQuest = Vector3.new(1060, 17, 1547)
	elseif ((MyLevel == 10) or (MyLevel <= 14)) then
	LevelFarm = 2
	Name = "Monkey [Lv. 14]"
	QuestName = "JungleQuest"
	LevelQuest = 1
	NameMon = "Monkey"
	CFrameMon = CFrame.new(-1496, 39, 35)
	VectorMon = Vector3.new(-1496, 39, 35)
	CFrameQuest = CFrame.new(-1496, 39, 35)
	VectorQuest = Vector3.new(-1496, 39, 35)
	elseif ((MyLevel == 15) or (MyLevel <= 29)) then
	LevelFarm = 3
	Name = "Gorilla [Lv. 20]"
	QuestName = "JungleQuest"
	LevelQuest = 2
	NameMon = "Gorilla"
	CFrameMon = CFrame.new(-1237, 6, -486)
	VectorMon = Vector3.new(-1237, 7, -486)
	CFrameQuest = CFrame.new(-1237, 6, -486)
	VectorQuest = Vector3.new(-1237, 6, -486)
	elseif ((MyLevel == 30) or (MyLevel <= 39)) then
	LevelFarm = 4
	Name = "Pirate [Lv. 35]"
	QuestName = "BuggyQuest1"
	LevelQuest = 1
	NameMon = "Pirate"
	CFrameMon = CFrame.new(-1115, 14, 3938)
	VectorMon = Vector3.new(-1115, 14, 3938)
	CFrameQuest = CFrame.new(-1140, 5, 3828)
	VectorQuest = Vector3.new(-1140, 5, 3828)
	elseif ((MyLevel == 40) or (MyLevel <= 59)) then
	LevelFarm = 5
	Name = "Brute [Lv. 45]"
	QuestName = "BuggyQuest1"
	LevelQuest = 2
	NameMon = "Brute"
	CFrameMon = CFrame.new(-1145, 15, 4350)
	VectorMon = Vector3.new(-1146, 15, 4350)
	CFrameQuest = CFrame.new(-1140, 5, 3828)
	VectorQuest = Vector3.new(-1140, 5, 3828)
	elseif ((MyLevel == 60) or (MyLevel <= 74)) then
	LevelFarm = 6
	Name = "Desert Bandit [Lv. 60]"
	QuestName = "DesertQuest"
	LevelQuest = 1
	NameMon = "Desert Bandit"
	CFrameMon = CFrame.new(932, 7, 4484)
	VectorMon = Vector3.new(932, 7, 4484)
	CFrameQuest = CFrame.new(897, 7, 4388)
	VectorQuest = Vector3.new(897, 7, 4388)
	elseif ((MyLevel == 75) or (MyLevel <= 89)) then
	LevelFarm = 7
	Name = "Desert Officer [Lv. 70]"
	QuestName = "DesertQuest"
	LevelQuest = 2
	NameMon = "Desert Officer"
	CFrameMon = CFrame.new(1572, 10, 4373)
	VectorMon = Vector3.new(1572, 10, 4373)
	CFrameQuest = CFrame.new(897, 7, 4388)
	VectorQuest = Vector3.new(897, 7, 4388)
	elseif ((MyLevel == 90) or (MyLevel <= 99)) then
	LevelFarm = 8
	Name = "Snow Bandit [Lv. 90]"
	QuestName = "SnowQuest"
	LevelQuest = 1
	NameMon = "Snow Bandits"
	CFrameMon = CFrame.new(1289, 150, -1442)
	VectorMon = Vector3.new(1289, 106, -1442)
	CFrameQuest = CFrame.new(1386, 87, -1297)
	VectorQuest = Vector3.new(1386, 87, -1297)
	elseif ((MyLevel == 100) or (MyLevel <= 119)) then
	LevelFarm = 9
	Name = "Snowman [Lv. 100]"
	QuestName = "SnowQuest"
	LevelQuest = 2
	NameMon = "Snowman"
	CFrameMon = CFrame.new(1289, 150, -1442)
	VectorMon = Vector3.new(1289, 106, -1442)
	CFrameQuest = CFrame.new(1386, 87, -1297)
	VectorQuest = Vector3.new(1386, 87, -1297)
	elseif ((MyLevel == 120) or (MyLevel <= 149)) then
	LevelFarm = 10
	Name = "Chief Petty Officer [Lv. 120]"
	QuestName = "MarineQuest2"
	LevelQuest = 1
	NameMon = "Chief Petty Officer"
	CFrameMon = CFrame.new(-4855, 23, 4308)
	VectorMon = Vector3.new(-4855, 23, 4308)
	CFrameQuest = CFrame.new(-5036, 29, 4325)
	VectorQuest = Vector3.new(-5036, 29, 4325)
	elseif ((MyLevel == 150) or (MyLevel <= 174)) then
	LevelFarm = 11
	Name = "Sky Bandit [Lv. 150]"
	QuestName = "SkyQuest"
	LevelQuest = 1
	NameMon = "Sky Bandit"
	CFrameMon = CFrame.new(-4981, 278, -2830)
	VectorMon = Vector3.new(-4981, 278, -2830)
	CFrameQuest = CFrame.new(-4842, 718, -2623)
	VectorQuest = Vector3.new(-4842, 718, -2623)
	elseif ((MyLevel == 175) or (MyLevel <= 189)) then
	LevelFarm = 12
	Name = "Dark Master [Lv. 175]"
	QuestName = "SkyQuest"
	LevelQuest = 2
	NameMon = "Dark Master"
	CFrameMon = CFrame.new(-5250, 389, -2272)
	VectorMon = Vector3.new(-5250, 389, -2272)
	CFrameQuest = CFrame.new(-4842, 718, -2623)
	VectorQuest = Vector3.new(-4842, 718, -2623)
	elseif ((MyLevel == 190) or (MyLevel <= 209)) then
	LevelFarm = 13
	Name = "Prisoner [Lv. 190]"
	QuestName = "PrisonerQuest"
	LevelQuest = 1
	NameMon = "Prisoner"
	CFrameMon = CFrame.new(5411, 96, 690)
	VectorMon = Vector3.new(5411, 96, 690)
	CFrameQuest = CFrame.new(5308, 2, 474)
	VectorQuest = Vector3.new(5308, 2, 474)
	elseif ((MyLevel == 210) or (MyLevel <= 249)) then
	LevelFarm = 14
	Name = "Dangerous Prisoner [Lv. 210]"
	QuestName = "PrisonerQuest"
	LevelQuest = 2
	NameMon = "Dangerous Prisoner"
	CFrameMon = CFrame.new(5411, 96, 690)
	VectorMon = Vector3.new(5411, 96, 690)
	CFrameQuest = CFrame.new(5308, 2, 474)
	VectorQuest = Vector3.new(5308, 2, 474)
	elseif ((MyLevel == 250) or (MyLevel <= 299)) then
	LevelFarm = 15
	Name = "Toga Warrior [Lv. 250]"
	QuestName = "ColosseumQuest"
	LevelQuest = 1
	NameMon = "Toga Warrior"
	CFrameMon = CFrame.new(-1824, 50, -2743)
	VectorMon = Vector3.new(-1824, 50, -2743)
	CFrameQuest = CFrame.new(-1576, 8, -2985)
	VectorQuest = Vector3.new(-1576, 8, -2985)
	elseif ((MyLevel == 300) or (MyLevel <= 329)) then
	LevelFarm = 16
	Name = "Military Soldier [Lv. 300]"
	QuestName = "MagmaQuest"
	LevelQuest = 1
	NameMon = "Military Soldier"
	CFrameMon = CFrame.new(-5408, 11, 8447)
	VectorMon = Vector3.new(-5408, 11, 8447)
	CFrameQuest = CFrame.new(-5316, 12, 8517)
	VectorQuest = Vector3.new(-5316, 12, 8517)
	elseif ((MyLevel == 330) or (MyLevel <= 374)) then
	LevelFarm = 17
	Name = "Military Spy [Lv. 325]"
	QuestName = "MagmaQuest"
	LevelQuest = 2
	NameMon = "Military Spy"
	CFrameMon = CFrame.new(-5815, 84, 8820)
	VectorMon = Vector3.new(-5815, 84, 8820)
	CFrameQuest = CFrame.new(-5316, 12, 8517)
	VectorQuest = Vector3.new(-5316, 12, 8517)
	elseif ((MyLevel == 375) or (MyLevel <= 399)) then
	LevelFarm = 18
	Name = "Fishman Warrior [Lv. 375]"
	QuestName = "FishmanQuest"
	LevelQuest = 1
	NameMon = "Fishman Warrior"
	CFrameMon = CFrame.new(60859, 19, 1501)
	VectorMon = Vector3.new(60859, 19, 1501)
	CFrameQuest = CFrame.new(61123, 19, 1569)
	VectorQuest = Vector3.new(61123, 19, 1569)
	elseif ((MyLevel == 400) or (MyLevel <= 449)) then
	LevelFarm = 19
	Name = "Fishman Commando [Lv. 400]"
	QuestName = "FishmanQuest"
	LevelQuest = 2
	NameMon = "Fishman Commando"
	CFrameMon = CFrame.new(61891, 19, 1470)
	VectorMon = Vector3.new(61891, 19, 1470)
	CFrameQuest = CFrame.new(61123, 19, 1569)
	VectorQuest = Vector3.new(61123, 19, 1569)
	elseif ((MyLevel == 450) or (MyLevel <= 474)) then
	LevelFarm = 20
	Name = "God's Guard [Lv. 450]"
	QuestName = "SkyExp1Quest"
	LevelQuest = 1
	NameMon = "God's Guards"
	CFrameMon = CFrame.new(-4698, 845, -1912)
	VectorMon = Vector3.new(-4698, 845, -1912)
	CFrameQuest = CFrame.new(-4722, 845, -1954)
	VectorQuest = Vector3.new(-4722, 846, -1954)
	elseif ((MyLevel == 475) or (MyLevel <= 524)) then
	LevelFarm = 21
	Name = "Shanda [Lv. 475]"
	QuestName = "SkyExp1Quest"
	LevelQuest = 2
	NameMon = "Shandas"
	CFrameMon = CFrame.new(-7685, 5567, -502)
	VectorMon = Vector3.new(-7685, 5567, -502)
	CFrameQuest = CFrame.new(-7862, 5546, -380)
	VectorQuest = Vector3.new(-7862, 5546, -380)
	elseif ((MyLevel == 525) or (MyLevel <= 549)) then
	LevelFarm = 22
	Name = "Royal Squad [Lv. 525]"
	QuestName = "SkyExp2Quest"
	LevelQuest = 1
	NameMon = "Royal Squad"
	CFrameMon = CFrame.new(-7670, 5607, -1460)
	VectorMon = Vector3.new(-7670, 5607, -1460)
	CFrameQuest = CFrame.new(-7904, 5636, -1412)
	VectorQuest = Vector3.new(-7904, 5636, -1412)
	elseif ((MyLevel == 550) or (MyLevel <= 624)) then
	LevelFarm = 23
	Name = "Royal Soldier [Lv. 550]"
	QuestName = "SkyExp2Quest"
	LevelQuest = 2
	NameMon = "Royal Soldier"
	CFrameMon = CFrame.new(-7828, 5607, -1744)
	VectorMon = Vector3.new(-7828, 5607, -1744)
	CFrameQuest = CFrame.new(-7904, 5636, -1412)
	VectorQuest = Vector3.new(-7904, 5636, -1412)
	elseif ((MyLevel == 625) or (MyLevel <= 649)) then
	LevelFarm = 24
	Name = "Galley Pirate [Lv. 625]"
	QuestName = "FountainQuest"
	LevelQuest = 1
	NameMon = "Galley Pirate"
	CFrameMon = CFrame.new(5589, 45, 3996)
	VectorMon = Vector3.new(5589, 45, 3996)
	CFrameQuest = CFrame.new(5256, 39, 4050)
	VectorQuest = Vector3.new(5256, 39, 4050)
	elseif (MyLevel >= 650) then
	LevelFarm = 25
	Name = "Galley Captain [Lv. 650]"
	QuestName = "FountainQuest"
	LevelQuest = 2
	NameMon = "Galley Captain"
	CFrameMon = CFrame.new(5649, 39, 4936)
	VectorMon = Vector3.new(5649, 39, 4936)
	CFrameQuest = CFrame.new(5256, 39, 4050)
	VectorQuest = Vector3.new(5256, 39, 4050)
	end
	end
	if World2 then
	if ((MyLevel == 700) or (MyLevel <= 724)) then
	LevelFarm = 1
	Name = "Raider [Lv. 700]"
	QuestName = "Area1Quest"
	LevelQuest = 1
	NameMon = "Raider"
	CFrameQuest = CFrame.new(-425, 73, 1837)
	VectorQuest = Vector3.new(-425, 73, 1837)
	CFrameMon = CFrame.new(-746, 39, 2390)
	VectorMon = Vector3.new(-746, 39, 2389)
	elseif ((MyLevel == 725) or (MyLevel <= 774)) then
	LevelFarm = 2
	Name = "Mercenary [Lv. 725]"
	QuestName = "Area1Quest"
	LevelQuest = 2
	NameMon = "Mercenary"
	CFrameQuest = CFrame.new(-425, 73, 1837)
	VectorQuest = Vector3.new(-425, 73, 1837)
	CFrameMon = CFrame.new(-874, 141, 1312)
	VectorMon = Vector3.new(-874, 141, 1312)
	elseif ((MyLevel == 775) or (MyLevel <= 799)) then
	LevelFarm = 3
	Name = "Swan Pirate [Lv. 775]"
	QuestName = "Area2Quest"
	LevelQuest = 1
	NameMon = "Swan Pirate"
	CFrameQuest = CFrame.new(634, 73, 918)
	VectorQuest = Vector3.new(634, 73, 918)
	CFrameMon = CFrame.new(878, 122, 1235)
	VectorMon = Vector3.new(878, 122, 1235)
	elseif ((MyLevel == 800) or (MyLevel <= 874)) then
	LevelFarm = 4
	Name = "Factory Staff [Lv. 800]"
	QuestName = "Area2Quest"
	LevelQuest = 2
	NameMon = "Factory Staff"
	CFrameQuest = CFrame.new(634, 73, 918)
	VectorQuest = Vector3.new(634, 73, 918)
	CFrameMon = CFrame.new(295, 73, -56)
	VectorMon = Vector3.new(295, 73, -56)
	elseif ((MyLevel == 875) or (MyLevel <= 899)) then
	LevelFarm = 5
	Name = "Marine Lieutenant [Lv. 875]"
	QuestName = "MarineQuest3"
	LevelQuest = 1
	NameMon = "Marine Lieutenant"
	CFrameMon = CFrame.new(-2806, 73, -3038)
	VectorMon = Vector3.new(-2806, 73, -3038)
	CFrameQuest = CFrame.new(-2443, 73, -3219)
	VectorQuest = Vector3.new(-2443, 73, -3219)
	elseif ((MyLevel == 900) or (MyLevel <= 949)) then
	LevelFarm = 6
	Name = "Marine Captain [Lv. 900]"
	QuestName = "MarineQuest3"
	LevelQuest = 2
	NameMon = "Marine Captain"
	CFrameMon = CFrame.new(-1869, 73, -3320)
	VectorMon = Vector3.new(-1869, 73, -3320)
	CFrameQuest = CFrame.new(-2443, 73, -3219)
	VectorQuest = Vector3.new(-2443, 73, -3219)
	elseif ((MyLevel == 950) or (MyLevel <= 974)) then
	LevelFarm = 7
	Name = "Zombie [Lv. 950]"
	QuestName = "ZombieQuest"
	LevelQuest = 1
	NameMon = "Zombie"
	CFrameMon = CFrame.new(-5736, 126, -728)
	VectorMon = Vector3.new(-5736, 126, -728)
	CFrameQuest = CFrame.new(-5494, 49, -795)
	VectorQuest = Vector3.new(-5494, 49, -794)
	elseif ((MyLevel == 975) or (MyLevel <= 999)) then
	LevelFarm = 8
	Name = "Vampire [Lv. 975]"
	QuestName = "ZombieQuest"
	LevelQuest = 2
	NameMon = "Vampire"
	CFrameMon = CFrame.new(-6033, 7, -1317)
	VectorMon = Vector3.new(-6033, 7, -1317)
	CFrameQuest = CFrame.new(-5494, 49, -795)
	VectorQuest = Vector3.new(-5494, 49, -795)
	elseif ((MyLevel == 1000) or (MyLevel <= 1049)) then
	LevelFarm = 9
	Name = "Snow Trooper [Lv. 1000]"
	QuestName = "SnowMountainQuest"
	LevelQuest = 1
	NameMon = "Snow Trooper"
	CFrameMon = CFrame.new(478, 402, -5362)
	VectorMon = Vector3.new(478, 402, -5362)
	CFrameQuest = CFrame.new(605, 402, -5371)
	VectorQuest = Vector3.new(605, 402, -5371)
	elseif ((MyLevel == 1050) or (MyLevel <= 1099)) then
	LevelFarm = 10
	Name = "Winter Warrior [Lv. 1050]"
	QuestName = "SnowMountainQuest"
	LevelQuest = 2
	NameMon = "Winter Warrior"
	CFrameMon = CFrame.new(1157, 430, -5188)
	VectorMon = Vector3.new(1157, 430, -5188)
	CFrameQuest = CFrame.new(605, 402, -5371)
	VectorQuest = Vector3.new(605, 402, -5371)
	elseif ((MyLevel == 1100) or (MyLevel <= 1124)) then
	LevelFarm = 11
	Name = "Lab Subordinate [Lv. 1100]"
	QuestName = "IceSideQuest"
	LevelQuest = 1
	NameMon = "Lab Subordinate"
	CFrameMon = CFrame.new(-5782, 42, -4484)
	VectorMon = Vector3.new(-5782, 42, -4484)
	CFrameQuest = CFrame.new(-6060, 16, -4905)
	VectorQuest = Vector3.new(-6060, 16, -4905)
	elseif ((MyLevel == 1125) or (MyLevel <= 1174)) then
	LevelFarm = 12
	Name = "Horned Warrior [Lv. 1125]"
	QuestName = "IceSideQuest"
	LevelQuest = 2
	NameMon = "Horned Warrior"
	CFrameMon = CFrame.new(-6406, 24, -5805)
	VectorMon = Vector3.new(-6406, 24, -5805)
	CFrameQuest = CFrame.new(-6060, 16, -4905)
	VectorQuest = Vector3.new(-6060, 16, -4905)
	elseif ((MyLevel == 1175) or (MyLevel <= 1199)) then
	LevelFarm = 13
	Name = "Magma Ninja [Lv. 1175]"
	QuestName = "FireSideQuest"
	LevelQuest = 1
	NameMon = "Magma Ninja"
	CFrameMon = CFrame.new(-5428, 78, -5959)
	VectorMon = Vector3.new(-5428, 78, -5959)
	CFrameQuest = CFrame.new(-5430, 16, -5295)
	VectorQuest = Vector3.new(-5430, 16, -5296)
	elseif ((MyLevel == 1200) or (MyLevel <= 1249)) then
	LevelFarm = 14
	Name = "Lava Pirate [Lv. 1200]"
	QuestName = "FireSideQuest"
	LevelQuest = 2
	NameMon = "Lava Pirate"
	CFrameMon = CFrame.new(-5270, 42, -4800)
	VectorMon = Vector3.new(-5270, 42, -4800)
	CFrameQuest = CFrame.new(-5430, 16, -5295)
	VectorQuest = Vector3.new(-5430, 16, -5296)
	elseif ((MyLevel == 1250) or (MyLevel <= 1274)) then
	LevelFarm = 15
	Name = "Ship Deckhand [Lv. 1250]"
	QuestName = "ShipQuest1"
	LevelQuest = 1
	NameMon = "Ship Deckhand"
	CFrameMon = CFrame.new(1198, 126, 33031)
	VectorMon = Vector3.new(1198, 126, 33031)
	CFrameQuest = CFrame.new(1038, 125, 32913)
	VectorQuest = Vector3.new(1038, 125, 32913)
	elseif ((MyLevel == 1275) or (MyLevel <= 1299)) then
	LevelFarm = 16
	Name = "Ship Engineer [Lv. 1275]"
	QuestName = "ShipQuest1"
	LevelQuest = 2
	NameMon = "Ship Engineer"
	CFrameMon = CFrame.new(918, 44, 32787)
	VectorMon = Vector3.new(918, 44, 32787)
	CFrameQuest = CFrame.new(1038, 125, 32913)
	VectorQuest = Vector3.new(1038, 125, 32913)
	elseif ((MyLevel == 1300) or (MyLevel <= 1324)) then
	LevelFarm = 17
	Name = "Ship Steward [Lv. 1300]"
	QuestName = "ShipQuest2"
	LevelQuest = 1
	NameMon = "Ship Steward"
	CFrameMon = CFrame.new(915, 130, 33419)
	VectorMon = Vector3.new(915, 130, 33419)
	CFrameQuest = CFrame.new(969, 125, 33245)
	VectorQuest = Vector3.new(969, 125, 33245)
	elseif ((MyLevel == 1325) or (MyLevel <= 1349)) then
	LevelFarm = 18
	Name = "Ship Officer [Lv. 1325]"
	QuestName = "ShipQuest2"
	LevelQuest = 2
	NameMon = "Ship Officer"
	CFrameMon = CFrame.new(916, 181, 33335)
	VectorMon = Vector3.new(916, 181, 33335)
	CFrameQuest = CFrame.new(969, 125, 33245)
	VectorQuest = Vector3.new(969, 125, 33245)
	elseif ((MyLevel == 1350) or (MyLevel <= 1374)) then
	LevelFarm = 19
	Name = "Arctic Warrior [Lv. 1350]"
	QuestName = "FrostQuest"
	LevelQuest = 1
	NameMon = "Arctic Warrior"
	CFrameMon = CFrame.new(6038, 29, -6231)
	VectorMon = Vector3.new(6038, 29, -6231)
	VectorQuest = Vector3.new(5669, 28, -6482)
	CFrameQuest = CFrame.new(5669, 28, -6482)
	elseif ((MyLevel == 1375) or (MyLevel <= 1424)) then
	LevelFarm = 20
	Name = "Snow Lurker [Lv. 1375]"
	QuestName = "FrostQuest"
	LevelQuest = 2
	NameMon = "Snow Lurker"
	CFrameMon = CFrame.new(5560, 42, -6826)
	VectorMon = Vector3.new(5560, 42, -6826)
	VectorQuest = Vector3.new(5669, 28, -6482)
	CFrameQuest = CFrame.new(5669, 28, -6482)
	elseif ((MyLevel == 1425) or (MyLevel <= 1449)) then
	LevelFarm = 21
	Name = "Sea Soldier [Lv. 1425]"
	QuestName = "ForgottenQuest"
	LevelQuest = 1
	NameMon = "Sea Soldier"
	CFrameMon = CFrame.new(-3022, 16, -9722)
	VectorMon = Vector3.new(-3022, 16, -9722)
	CFrameQuest = CFrame.new(-3054, 237, -10148)
	VectorQuest = Vector3.new(-3054, 237, -10148)
	elseif (MyLevel >= 1450) then
	LevelFarm = 22
	Name = "Water Fighter [Lv. 1450]"
	QuestName = "ForgottenQuest"
	LevelQuest = 2
	NameMon = "Water Fighter"
	CFrameMon = CFrame.new(-3385, 239, -10542)
	VectorMon = Vector3.new(-3385, 239, -10542)
	CFrameQuest = CFrame.new(-3054, 237, -10148)
	VectorQuest = Vector3.new(-3054, 237, -10148)
	end
	end
	if World3 then
	if ((MyLevel == 1500) or (MyLevel <= 1524)) then
	LevelFarm = 1
	Name = "Pirate Millionaire [Lv. 1500]"
	QuestName = "PiratePortQuest"
	LevelQuest = 1
	NameMon = "Pirate"
	CFrameMon = CFrame.new(-373, 75, 5550)
	VectorMon = Vector3.new(-373, 75, 5550)
	CFrameQuest = CFrame.new(-288, 44, 5576)
	VectorQuest = Vector3.new(-288, 44, 5576)
	elseif ((MyLevel == 1525) or (MyLevel <= 1574)) then
	LevelFarm = 2
	Name = "Pistol Billionaire [Lv. 1525]"
	QuestName = "PiratePortQuest"
	LevelQuest = 2
	NameMon = "Pistol"
	CFrameMon = CFrame.new(-469, 74, 5904)
	VectorMon = Vector3.new(-469, 74, 5904)
	CFrameQuest = CFrame.new(-288, 44, 5576)
	VectorQuest = Vector3.new(-288, 44, 5576)
	elseif ((MyLevel == 1575) or (MyLevel <= 1599)) then
	LevelFarm = 3
	Name = "Dragon Crew Warrior [Lv. 1575]"
	QuestName = "AmazonQuest"
	LevelQuest = 1
	NameMon = "Warrior"
	CFrameMon = CFrame.new(6339, 52, -1213)
	VectorMon = Vector3.new(6338, 52, -1213)
	CFrameQuest = CFrame.new(5835, 52, -1105)
	VectorQuest = Vector3.new(5835, 52, -1105)
	elseif ((MyLevel == 1600) or (MyLevel <= 1624)) then
	LevelFarm = 4
	Name = "Dragon Crew Archer [Lv. 1600]"
	QuestName = "AmazonQuest"
	LevelQuest = 2
	NameMon = "Archer"
	CFrameMon = CFrame.new(6594, 383, 139)
	VectorMon = Vector3.new(6594, 383, 139)
	CFrameQuest = CFrame.new(5835, 52, -1105)
	VectorQuest = Vector3.new(5835, 52, -1105)
	elseif ((MyLevel == 1625) or (MyLevel <= 1649)) then
	LevelFarm = 5
	Name = "Female Islander [Lv. 1625]"
	QuestName = "AmazonQuest2"
	LevelQuest = 1
	NameMon = "Female"
	CFrameMon = CFrame.new(5308, 819, 1047)
	VectorMon = Vector3.new(5308, 819, 1047)
	CFrameQuest = CFrame.new(5443, 602, 751)
	VectorQuest = Vector3.new(5443, 602, 751)
	elseif ((MyLevel == 1650) or (MyLevel <= 1699)) then
	LevelFarm = 6
	Name = "Giant Islander [Lv. 1650]"
	QuestName = "AmazonQuest2"
	LevelQuest = 2
	NameMon = "Giant Islanders"
	CFrameMon = CFrame.new(4951, 602, -68)
	VectorMon = Vector3.new(4951, 602, -68)
	CFrameQuest = CFrame.new(5443, 602, 751)
	VectorQuest = Vector3.new(5443, 602, 751)
	elseif ((MyLevel == 1700) or (MyLevel <= 1724)) then
	LevelFarm = 7
	Name = "Marine Commodore [Lv. 1700]"
	QuestName = "MarineTreeIsland"
	LevelQuest = 1
	NameMon = "Marine Commodore"
	CFrameMon = CFrame.new(2447, 73, -7470)
	VectorMon = Vector3.new(2447, 73, -7470)
	CFrameQuest = CFrame.new(2180, 29, -6737)
	VectorQuest = Vector3.new(2180, 29, -6737)
	elseif ((MyLevel == 1725) or (MyLevel <= 1774)) then
	LevelFarm = 8
	Name = "Marine Rear Admiral [Lv. 1725]"
	QuestName = "MarineTreeIsland"
	LevelQuest = 2
	NameMon = "Marine Rear Admiral"
	CFrameMon = CFrame.new(3671, 161, -6932)
	VectorMon = Vector3.new(3671, 161, -6932)
	CFrameQuest = CFrame.new(2180, 29, -6737)
	VectorQuest = Vector3.new(2180, 29, -6737)
	elseif ((MyLevel == 1775) or (MyLevel <= 1800)) then
	LevelFarm = 9
	Name = "Fishman Raider [Lv. 1775]"
	QuestName = "DeepForestIsland3"
	LevelQuest = 1
	NameMon = "Fishman Raider"
	CFrameMon = CFrame.new(-10560, 332, -8466)
	VectorMon = Vector3.new(-10560, 332, -8466)
	CFrameQuest = CFrame.new(-10584, 332, -8758)
	VectorQuest = Vector3.new(-10584, 332, -8758)
	elseif ((MyLevel == 1800) or (MyLevel <= 1824)) then
	LevelFarm = 10
	Name = "Fishman Captain [Lv. 1800]"
	QuestName = "DeepForestIsland3"
	LevelQuest = 2
	NameMon = "Fishman Captain"
	CFrameMon = CFrame.new(-10993, 332, -8940)
	VectorMon = Vector3.new(-10993, 332, -8940)
	CFrameQuest = CFrame.new(-10584, 332, -8758)
	VectorQuest = Vector3.new(-10584, 332, -8758)
	elseif ((MyLevel == 1825) or (MyLevel <= 1849)) then
	LevelFarm = 11
	Name = "Forest Pirate [Lv. 1825]"
	QuestName = "DeepForestIsland"
	LevelQuest = 1
	NameMon = "Forest Pirate"
	CFrameMon = CFrame.new(-13479, 333, -7905)
	VectorMon = Vector3.new(-13479, 333, -7905)
	CFrameQuest = CFrame.new(-13232, 333, -7627)
	VectorQuest = Vector3.new(-13232, 333, -7627)
	elseif ((MyLevel == 1850) or (MyLevel <= 1899)) then
	LevelFarm = 12
	Name = "Mythological Pirate [Lv. 1850]"
	QuestName = "DeepForestIsland"
	LevelQuest = 2
	NameMon = "Mythological Pirate"
	CFrameMon = CFrame.new(-13545, 470, -6917)
	VectorMon = Vector3.new(-13545, 470, -6917)
	CFrameQuest = CFrame.new(-13232, 333, -7627)
	VectorQuest = Vector3.new(-13232, 333, -7627)
	elseif ((MyLevel == 1900) or (MyLevel <= 1924)) then
	LevelFarm = 13
	Name = "Jungle Pirate [Lv. 1900]"
	QuestName = "DeepForestIsland2"
	LevelQuest = 1
	NameMon = "Jungle Pirate"
	CFrameMon = CFrame.new(-12107, 332, -10549)
	VectorMon = Vector3.new(-12106, 332, -10549)
	CFrameQuest = CFrame.new(-12684, 391, -9902)
	VectorQuest = Vector3.new(-12684, 391, -9902)
	elseif ((MyLevel == 1925) or (MyLevel <= 1974)) then
	LevelFarm = 14
	Name = "Musketeer Pirate [Lv. 1925]"
	QuestName = "DeepForestIsland2"
	LevelQuest = 2
	NameMon = "Musketeer Pirate"
	CFrameMon = CFrame.new(-13286, 392, -9769)
	VectorMon = Vector3.new(-13286, 392, -9768)
	CFrameQuest = CFrame.new(-12684, 391, -9902)
	VectorQuest = Vector3.new(-12684, 391, -9902)
	elseif ((MyLevel == 1975) or (MyLevel <= 1999)) then
	LevelFarm = 15
	Name = "Reborn Skeleton [Lv. 1975]"
	QuestName = "HauntedQuest1"
	LevelQuest = 1
	NameMon = "Reborn Skeleton"
	CFrameMon = CFrame.new(-8760, 142, 6039)
	VectorMon = Vector3.new(-8760, 142, 6039)
	CFrameQuest = CFrame.new(-9482, 142, 5567)
	VectorQuest = Vector3.new(-9482, 142, 5567)
	elseif ((MyLevel == 2000) or (MyLevel <= 2024)) then
	LevelFarm = 16
	Name = "Living Zombie [Lv. 2000]"
	QuestName = "HauntedQuest1"
	LevelQuest = 2
	NameMon = "Living Zombie"
	CFrameMon = CFrame.new(-10144, 140, 5932)
	VectorMon = Vector3.new(-10144, 140, 5932)
	CFrameQuest = CFrame.new(-9482, 142, 5567)
	VectorQuest = Vector3.new(-9482, 142, 5567)
	elseif ((MyLevel == 2025) or (MyLevel <= 2049)) then
	LevelFarm = 17
	Name = "Demonic Soul [Lv. 2025]"
	QuestName = "HauntedQuest2"
	LevelQuest = 1
	NameMon = "Demonic Soul"
	CFrameMon = CFrame.new(-9507, 172, 6158)
	VectorMon = Vector3.new(-9506, 172, 6158)
	CFrameQuest = CFrame.new(-9513, 172, 6079)
	VectorQuest = Vector3.new(-9513, 172, 6079)
	elseif ((MyLevel == 2050) or (MyLevel <= 2074)) then
	LevelFarm = 18
	Name = "Posessed Mummy [Lv. 2050]"
	QuestName = "HauntedQuest2"
	LevelQuest = 2
	NameMon = "Posessed Mummy"
	CFrameMon = CFrame.new(-9577, 6, 6223)
	VectorMon = Vector3.new(-9577, 6, 6223)
	CFrameQuest = CFrame.new(-9513, 172, 6079)
	VectorQuest = Vector3.new(-9513, 172, 6079)
	elseif ((MyLevel == 2075) or (MyLevel <= 2099)) then
	LevelFarm = 19
	Name = "Peanut Scout [Lv. 2075]"
	QuestName = "NutsIslandQuest"
	LevelQuest = 1
	NameMon = "Peanut Scout"
	CFrameMon = CFrame.new(-2124, 123, -10435)
	VectorMon = Vector3.new(-2124, 123, -10435)
	CFrameQuest = CFrame.new(-2104, 38, -10192)
	VectorQuest = Vector3.new(-2104, 38, -10192)
	elseif ((MyLevel == 2100) or (MyLevel <= 2124)) then
	LevelFarm = 20
	Name = "Peanut President [Lv. 2100]"
	QuestName = "NutsIslandQuest"
	LevelQuest = 2
	NameMon = "Peanut President"
	CFrameMon = CFrame.new(-2124, 123, -10435)
	VectorMon = Vector3.new(-2124, 123, -10435)
	CFrameQuest = CFrame.new(-2104, 38, -10192)
	VectorQuest = Vector3.new(-2104, 38, -10192)
	elseif ((MyLevel == 2125) or (MyLevel <= 2149)) then
	LevelFarm = 21
	Name = "Ice Cream Chef [Lv. 2125]"
	QuestName = "IceCreamIslandQuest"
	LevelQuest = 1
	NameMon = "Ice Cream Chef"
	CFrameMon = CFrame.new(-641, 127, -11062)
	VectorMon = Vector3.new(-641, 127, -11062)
	CFrameQuest = CFrame.new(-822, 66, -10965)
	VectorQuest = Vector3.new(-822, 66, -10965)
	elseif ((MyLevel == 2150) or (MyLevel <= 2199)) then
	LevelFarm = 22
	Name = "Ice Cream Commander [Lv. 2150]"
	QuestName = "IceCreamIslandQuest"
	LevelQuest = 2
	NameMon = "Ice Cream Commander"
	CFrameMon = CFrame.new(-641, 127, -11062)
	VectorMon = Vector3.new(-641, 127, -11062)
	CFrameQuest = CFrame.new(-822, 66, -10965)
	VectorQuest = Vector3.new(-822, 66, -10965)
	elseif ((MyLevel == 2200) or (MyLevel <= 2224)) then
	LevelFarm = 23
	Name = "Cookie Crafter [Lv. 2200]"
	QuestName = "CakeQuest1"
	LevelQuest = 1
	NameMon = "Cookie Crafter"
	CFrameMon = CFrame.new(-2365, 38, -12099)
	VectorMon = Vector3.new(-2365, 38, -12099)
	CFrameQuest = CFrame.new(-2020, 38, -12025)
	VectorQuest = Vector3.new(-2020, 38, -12025)
	elseif ((MyLevel == 2225) or (MyLevel <= 2249)) then
	LevelFarm = 24
	Name = "Cake Guard [Lv. 2225]"
	QuestName = "CakeQuest1"
	LevelQuest = 2
	NameMon = "Cake Guard"
	CFrameMon = CFrame.new(-1651, 38, -12308)
	VectorMon = Vector3.new(-1651, 38, -12308)
	CFrameQuest = CFrame.new(-2020, 38, -12025)
	VectorQuest = Vector3.new(-2020, 38, -12025)
	elseif ((MyLevel == 2250) or (MyLevel <= 2274)) then
	LevelFarm = 25
	Name = "Baking Staff [Lv. 2250]"
	QuestName = "CakeQuest2"
	LevelQuest = 1
	NameMon = "Baking Staff"
	CFrameMon = CFrame.new(-1870, 38, -12938)
	VectorMon = Vector3.new(-1870, 38, -12938)
	CFrameQuest = CFrame.new(-1926, 38, -12850)
	VectorQuest = Vector3.new(-1926, 38, -12850)
	elseif ((MyLevel == 2275) or (MyLevel <= 2299)) then
	LevelFarm = 26
	Name = "Head Baker [Lv. 2275]"
	QuestName = "CakeQuest2"
	LevelQuest = 2
	NameMon = "Head Baker"
	CFrameMon = CFrame.new(-1926, 88, -12850)
	VectorMon = CFrame.new(-1870, 38, -12938)
	CFrameQuest = CFrame.new(-1926, 38, -12850)
	VectorQuest = Vector3.new(-1926, 38, -12850)
	elseif ((MyLevel == 2300) or (MyLevel <= 2324)) then
	LevelFarm = 27
	Name = "Cocoa Warrior [Lv. 2300]"
	QuestName = "ChocQuest1"
	LevelQuest = 1
	NameMon = "Cocoa Warrior"
	CFrameMon = CFrame.new(231, 23, -12194)
	VectorMon = CFrame.new(231, 23, -12194)
	CFrameQuest = CFrame.new(231, 23, -12194)
	VectorQuest = Vector3.new(231, 23, -12194)
	elseif ((MyLevel == 2325) or (MyLevel <= 2349)) then
	LevelFarm = 28
	Name = "Chocolate Bar Battler [Lv. 2325]"
	QuestName = "ChocQuest1"
	LevelQuest = 2
	NameMon = "Chocolate Bar Battler"
	CFrameMon = CFrame.new(231, 23, -12194)
	VectorMon = CFrame.new(231, 23, -12194)
	CFrameQuest = CFrame.new(231, 23, -12194)
	VectorQuest = Vector3.new(231, 23, -12194)
	elseif ((MyLevel == 2350) or (MyLevel <= 2374)) then
	LevelFarm = 29
	Name = "Sweet Thief [Lv. 2350]"
	QuestName = "ChocQuest2"
	LevelQuest = 1
	NameMon = "Sweet Thief"
	CFrameMon = CFrame.new(71, 77, -12632)
	VectorMon = CFrame.new(71, 77, -12632)
	CFrameQuest = CFrame.new(151, 23, -12774)
	VectorQuest = Vector3.new(151, 23, -12774)
	elseif ((MyLevel == 2375) or (MyLevel <= 2400)) then
	LevelFarm = 30
	Name = "Candy Rebel [Lv. 2375]"
	QuestName = "ChocQuest2"
	LevelQuest = 2
	NameMon = "Candy Rebel"
	CFrameMon = CFrame.new(134, 77, -12882)
	VectorMon = CFrame.new(134, 77, -12882)
	CFrameQuest = CFrame.new(151, 23, -12774)
	VectorQuest = Vector3.new(151, 23, -12774)
	elseif ((MyLevel == 2400) or (MyLevel <= 2425)) then
	LevelFarm = 31
	Name = "Candy Pirate [Lv. 2400]"
	QuestName = "CandyQuest1"
	LevelQuest = 1
	NameMon = "Candy Pirate"
	CFrameMon = CFrame.new(-1408.46521, 16.1423531, -14552.2041, 0.90175873, -8.1721694e-8, -0.432239741, 7.812645e-8, 1, -2.6074616e-8, 0.432239741, -1.0256343e-8, 0.90175873)
	VectorQuest = Vector3.new(-1408.46521, 16.1423531, -14552.2041, 0.90175873, -8.1721694e-8, -0.432239741, 7.812645e-8, 1, -2.6074616e-8, 0.432239741, -1.0256343e-8, 0.90175873)
	CFrameQuest = CFrame.new(-1151.48987, 16.1422901, -14445.6904, -0.316594511, -6.8569825e-8, -0.948560953, -2.0534307e-8, 1, -6.543467e-8, 0.948560953, -1.2382168e-9, -0.316594511)
	VectorQuest = Vector3.new(-1151.48987, 16.1422901, -14445.6904, -0.316594511, -6.8569825e-8, -0.948560953, -2.0534307e-8, 1, -6.543467e-8, 0.948560953, -1.2382168e-9, -0.316594511)
	elseif (MyLevel >= 2425) then
	LevelFarm = 32
	Name = "Snow Demon [Lv. 2425]"
	QuestName = "CandyQuest1"
	LevelQuest = 2
	NameMon = "Snow Demon"
	CFrameMon = CFrame.new(-782, 382, -14474)
	VectorQuest = Vector3.new(-782, 382, -14474)
	CFrameQuest = CFrame.new(-782, 382, -14474)
	VectorQuest = Vector3.new(-782, 382, -14474)
	end
	end
	end
	function CheckOldQuest(LevelFarm)
	if World1 then
	if (LevelFarm == 1) then
	Name = "Bandit [Lv. 5]"
	QuestName = "BanditQuest1"
	LevelQuest = 1
	NameMon = "Bandit"
	CFrameMon = CFrame.new(1060, 17, 1547)
	VectorMon = Vector3.new(1060, 17, 1547)
	CFrameQuest = CFrame.new(1060, 17, 1547)
	VectorQuest = Vector3.new(1060, 17, 1547)
	elseif (LevelFarm == 2) then
	Name = "Monkey [Lv. 14]"
	QuestName = "JungleQuest"
	LevelQuest = 1
	NameMon = "Monkey"
	CFrameMon = CFrame.new(-1496, 39, 35)
	VectorMon = Vector3.new(-1496, 39, 35)
	CFrameQuest = CFrame.new(-1602, 37, 152)
	VectorQuest = Vector3.new(-1602, 37, 152)
	elseif (LevelFarm == 3) then
	Name = "Gorilla [Lv. 20]"
	QuestName = "JungleQuest"
	LevelQuest = 2
	NameMon = "Gorilla"
	CFrameMon = CFrame.new(-1237, 6, -486)
	VectorMon = Vector3.new(-1237, 7, -486)
	CFrameQuest = CFrame.new(-1602, 37, 152)
	VectorQuest = Vector3.new(-1602, 37, 152)
	elseif (LevelFarm == 4) then
	Name = "Pirate [Lv. 35]"
	QuestName = "BuggyQuest1"
	LevelQuest = 1
	NameMon = "Pirate"
	CFrameMon = CFrame.new(-1115, 14, 3938)
	VectorMon = Vector3.new(-1115, 14, 3938)
	CFrameQuest = CFrame.new(-1140, 5, 3828)
	VectorQuest = Vector3.new(-1140, 5, 3828)
	elseif (LevelFarm == 5) then
	Name = "Brute [Lv. 45]"
	QuestName = "BuggyQuest1"
	LevelQuest = 2
	NameMon = "Brute"
	CFrameMon = CFrame.new(-1145, 15, 4350)
	VectorMon = Vector3.new(-1146, 15, 4350)
	CFrameQuest = CFrame.new(-1140, 5, 3828)
	VectorQuest = Vector3.new(-1140, 5, 3828)
	elseif (LevelFarm == 6) then
	Name = "Desert Bandit [Lv. 60]"
	QuestName = "DesertQuest"
	LevelQuest = 1
	NameMon = "Desert Bandit"
	CFrameMon = CFrame.new(932, 7, 4484)
	VectorMon = Vector3.new(932, 7, 4484)
	CFrameQuest = CFrame.new(897, 7, 4388)
	VectorQuest = Vector3.new(897, 7, 4388)
	elseif (LevelFarm == 7) then
	Name = "Desert Officer [Lv. 70]"
	QuestName = "DesertQuest"
	LevelQuest = 2
	NameMon = "Desert Officer"
	CFrameMon = CFrame.new(1572, 10, 4373)
	VectorMon = Vector3.new(1572, 10, 4373)
	CFrameQuest = CFrame.new(897, 7, 4388)
	VectorQuest = Vector3.new(897, 7, 4388)
	elseif (LevelFarm == 8) then
	Name = "Snow Bandit [Lv. 90]"
	QuestName = "SnowQuest"
	LevelQuest = 1
	NameMon = "Snow Bandits"
	CFrameMon = CFrame.new(1289, 150, -1442)
	VectorMon = Vector3.new(1289, 106, -1442)
	CFrameQuest = CFrame.new(1386, 87, -1297)
	VectorQuest = Vector3.new(1386, 87, -1297)
	elseif (LevelFarm == 9) then
	Name = "Snowman [Lv. 100]"
	QuestName = "SnowQuest"
	LevelQuest = 2
	NameMon = "Snowman"
	CFrameMon = CFrame.new(1289, 150, -1442)
	VectorMon = Vector3.new(1289, 106, -1442)
	CFrameQuest = CFrame.new(1386, 87, -1297)
	VectorQuest = Vector3.new(1386, 87, -1297)
	elseif (LevelFarm == 10) then
	Name = "Chief Petty Officer [Lv. 120]"
	QuestName = "MarineQuest2"
	LevelQuest = 1
	NameMon = "Chief Petty Officer"
	CFrameMon = CFrame.new(-4855, 23, 4308)
	VectorMon = Vector3.new(-4855, 23, 4308)
	CFrameQuest = CFrame.new(-5036, 29, 4325)
	VectorQuest = Vector3.new(-5036, 29, 4325)
	elseif (LevelFarm == 11) then
	Name = "Sky Bandit [Lv. 150]"
	QuestName = "SkyQuest"
	LevelQuest = 1
	NameMon = "Sky Bandit"
	CFrameMon = CFrame.new(-4981, 278, -2830)
	VectorMon = Vector3.new(-4981, 278, -2830)
	CFrameQuest = CFrame.new(-4842, 718, -2623)
	VectorQuest = Vector3.new(-4842, 718, -2623)
	elseif (LevelFarm == 12) then
	Name = "Dark Master [Lv. 175]"
	QuestName = "SkyQuest"
	LevelQuest = 2
	NameMon = "Dark Master"
	CFrameMon = CFrame.new(-5250, 389, -2272)
	VectorMon = Vector3.new(-5250, 389, -2272)
	CFrameQuest = CFrame.new(-4842, 718, -2623)
	VectorQuest = Vector3.new(-4842, 718, -2623)
	elseif (LevelFarm == 13) then
	Name = "Prisoner [Lv. 190]"
	QuestName = "PrisonerQuest"
	LevelQuest = 1
	NameMon = "Prisoner"
	CFrameMon = CFrame.new(5411, 96, 690)
	VectorMon = Vector3.new(5411, 96, 690)
	CFrameQuest = CFrame.new(5308, 2, 474)
	VectorQuest = Vector3.new(5308, 2, 474)
	elseif (LevelFarm == 14) then
	Name = "Dangerous Prisoner [Lv. 210]"
	QuestName = "PrisonerQuest"
	LevelQuest = 2
	NameMon = "Dangerous Prisoner"
	CFrameMon = CFrame.new(5411, 96, 690)
	VectorMon = Vector3.new(5411, 96, 690)
	CFrameQuest = CFrame.new(5308, 2, 474)
	VectorQuest = Vector3.new(5308, 2, 474)
	elseif (LevelFarm == 15) then
	Name = "Toga Warrior [Lv. 250]"
	QuestName = "ColosseumQuest"
	LevelQuest = 1
	NameMon = "Toga Warrior"
	CFrameMon = CFrame.new(-1770, 8, -2777)
	VectorMon = Vector3.new(-1770, 8, -2777)
	CFrameQuest = CFrame.new(-1576, 8, -2985)
	VectorQuest = Vector3.new(-1576, 8, -2985)
	elseif (LevelFarm == 16) then
	Name = "Military Soldier [Lv. 300]"
	QuestName = "MagmaQuest"
	LevelQuest = 1
	NameMon = "Military Soldier"
	CFrameMon = CFrame.new(-5408, 11, 8447)
	VectorMon = Vector3.new(-5408, 11, 8447)
	CFrameQuest = CFrame.new(-5316, 12, 8517)
	VectorQuest = Vector3.new(-5316, 12, 8517)
	elseif (LevelFarm == 17) then
	Name = "Military Spy [Lv. 325]"
	QuestName = "MagmaQuest"
	LevelQuest = 2
	NameMon = "Military Spy"
	CFrameMon = CFrame.new(-5815, 84, 8820)
	VectorMon = Vector3.new(-5815, 84, 8820)
	CFrameQuest = CFrame.new(-5316, 12, 8517)
	VectorQuest = Vector3.new(-5316, 12, 8517)
	elseif (LevelFarm == 18) then
	Name = "Fishman Warrior [Lv. 375]"
	QuestName = "FishmanQuest"
	LevelQuest = 1
	NameMon = "Fishman Warrior"
	CFrameMon = CFrame.new(60859, 19, 1501)
	VectorMon = Vector3.new(60859, 19, 1501)
	CFrameQuest = CFrame.new(61123, 19, 1569)
	VectorQuest = Vector3.new(61123, 19, 1569)
	elseif (LevelFarm == 19) then
	Name = "Fishman Commando [Lv. 400]"
	QuestName = "FishmanQuest"
	LevelQuest = 2
	NameMon = "Fishman Commando"
	CFrameMon = CFrame.new(61891, 19, 1470)
	VectorMon = Vector3.new(61891, 19, 1470)
	CFrameQuest = CFrame.new(61123, 19, 1569)
	VectorQuest = Vector3.new(61123, 19, 1569)
	elseif (LevelFarm == 20) then
	Name = "God's Guard [Lv. 450]"
	QuestName = "SkyExp1Quest"
	LevelQuest = 1
	NameMon = "God's Guards"
	CFrameMon = CFrame.new(-4698, 845, -1912)
	VectorMon = Vector3.new(-4698, 845, -1912)
	CFrameQuest = CFrame.new(-4722, 845, -1954)
	VectorQuest = Vector3.new(-4722, 846, -1954)
	elseif (LevelFarm == 21) then
	Name = "Shanda [Lv. 475]"
	QuestName = "SkyExp1Quest"
	LevelQuest = 2
	NameMon = "Shandas"
	CFrameMon = CFrame.new(-7685, 5567, -502)
	VectorMon = Vector3.new(-7685, 5567, -502)
	CFrameQuest = CFrame.new(-7862, 5546, -380)
	VectorQuest = Vector3.new(-7862, 5546, -380)
	elseif (LevelFarm == 22) then
	Name = "Royal Squad [Lv. 525]"
	QuestName = "SkyExp2Quest"
	LevelQuest = 1
	NameMon = "Royal Squad"
	CFrameMon = CFrame.new(-7670, 5607, -1460)
	VectorMon = Vector3.new(-7670, 5607, -1460)
	CFrameQuest = CFrame.new(-7904, 5636, -1412)
	VectorQuest = Vector3.new(-7904, 5636, -1412)
	elseif (LevelFarm == 23) then
	Name = "Royal Soldier [Lv. 550]"
	QuestName = "SkyExp2Quest"
	LevelQuest = 2
	NameMon = "Royal Soldier"
	CFrameMon = CFrame.new(-7828, 5607, -1744)
	VectorMon = Vector3.new(-7828, 5607, -1744)
	CFrameQuest = CFrame.new(-7904, 5636, -1412)
	VectorQuest = Vector3.new(-7904, 5636, -1412)
	elseif (LevelFarm == 24) then
	Name = "Galley Pirate [Lv. 625]"
	QuestName = "FountainQuest"
	LevelQuest = 1
	NameMon = "Galley Pirate"
	CFrameMon = CFrame.new(5589, 45, 3996)
	VectorMon = Vector3.new(5589, 45, 3996)
	CFrameQuest = CFrame.new(5256, 39, 4050)
	VectorQuest = Vector3.new(5256, 39, 4050)
	elseif (LevelFarm == 25) then
	Name = "Galley Captain [Lv. 650]"
	QuestName = "FountainQuest"
	LevelQuest = 2
	NameMon = "Galley Captain"
	CFrameMon = CFrame.new(5649, 39, 4936)
	VectorMon = Vector3.new(5649, 39, 4936)
	CFrameQuest = CFrame.new(5256, 39, 4050)
	VectorQuest = Vector3.new(5256, 39, 4050)
	end
	end
	if World2 then
	if (LevelFarm == 1) then
	Name = "Raider [Lv. 700]"
	QuestName = "Area1Quest"
	LevelQuest = 1
	NameMon = "Raider"
	CFrameQuest = CFrame.new(-425, 73, 1837)
	VectorQuest = Vector3.new(-425, 73, 1837)
	CFrameMon = CFrame.new(-746, 39, 2390)
	VectorMon = Vector3.new(-746, 39, 2389)
	elseif (LevelFarm == 2) then
	Name = "Mercenary [Lv. 725]"
	QuestName = "Area1Quest"
	LevelQuest = 2
	NameMon = "Mercenary"
	CFrameQuest = CFrame.new(-425, 73, 1837)
	VectorQuest = Vector3.new(-425, 73, 1837)
	CFrameMon = CFrame.new(-874, 141, 1312)
	VectorMon = Vector3.new(-874, 141, 1312)
	elseif (LevelFarm == 3) then
	Name = "Swan Pirate [Lv. 775]"
	QuestName = "Area2Quest"
	LevelQuest = 1
	NameMon = "Swan Pirate"
	CFrameQuest = CFrame.new(634, 73, 918)
	VectorQuest = Vector3.new(634, 73, 918)
	CFrameMon = CFrame.new(878, 122, 1235)
	VectorMon = Vector3.new(878, 122, 1235)
	elseif (LevelFarm == 4) then
	Name = "Factory Staff [Lv. 800]"
	QuestName = "Area2Quest"
	LevelQuest = 2
	NameMon = "Factory Staff"
	CFrameQuest = CFrame.new(634, 73, 918)
	VectorQuest = Vector3.new(634, 73, 918)
	CFrameMon = CFrame.new(295, 73, -56)
	VectorMon = Vector3.new(295, 73, -56)
	elseif (LevelFarm == 5) then
	Name = "Marine Lieutenant [Lv. 875]"
	QuestName = "MarineQuest3"
	LevelQuest = 1
	NameMon = "Marine Lieutenant"
	CFrameMon = CFrame.new(-2806, 73, -3038)
	VectorMon = Vector3.new(-2806, 73, -3038)
	CFrameQuest = CFrame.new(-2443, 73, -3219)
	VectorQuest = Vector3.new(-2443, 73, -3219)
	elseif (LevelFarm == 6) then
	Name = "Marine Captain [Lv. 900]"
	QuestName = "MarineQuest3"
	LevelQuest = 2
	NameMon = "Marine Captain"
	CFrameMon = CFrame.new(-1869, 73, -3320)
	VectorMon = Vector3.new(-1869, 73, -3320)
	CFrameQuest = CFrame.new(-2443, 73, -3219)
	VectorQuest = Vector3.new(-2443, 73, -3219)
	elseif (LevelFarm == 7) then
	Name = "Zombie [Lv. 950]"
	QuestName = "ZombieQuest"
	LevelQuest = 1
	NameMon = "Zombie"
	CFrameMon = CFrame.new(-5736, 126, -728)
	VectorMon = Vector3.new(-5736, 126, -728)
	CFrameQuest = CFrame.new(-5494, 49, -795)
	VectorQuest = Vector3.new(-5494, 49, -794)
	elseif (LevelFarm == 8) then
	Name = "Vampire [Lv. 975]"
	QuestName = "ZombieQuest"
	LevelQuest = 2
	NameMon = "Vampire"
	CFrameMon = CFrame.new(-6033, 7, -1317)
	VectorMon = Vector3.new(-6033, 7, -1317)
	CFrameQuest = CFrame.new(-5494, 49, -795)
	VectorQuest = Vector3.new(-5494, 49, -795)
	elseif (LevelFarm == 9) then
	Name = "Snow Trooper [Lv. 1000]"
	QuestName = "SnowMountainQuest"
	LevelQuest = 1
	NameMon = "Snow Trooper"
	CFrameMon = CFrame.new(478, 402, -5362)
	VectorMon = Vector3.new(478, 402, -5362)
	CFrameQuest = CFrame.new(605, 402, -5371)
	VectorQuest = Vector3.new(605, 402, -5371)
	elseif (LevelFarm == 10) then
	Name = "Winter Warrior [Lv. 1050]"
	QuestName = "SnowMountainQuest"
	LevelQuest = 2
	NameMon = "Winter Warrior"
	CFrameMon = CFrame.new(1157, 430, -5188)
	VectorMon = Vector3.new(1157, 430, -5188)
	CFrameQuest = CFrame.new(605, 402, -5371)
	VectorQuest = Vector3.new(605, 402, -5371)
	elseif (LevelFarm == 11) then
	Name = "Lab Subordinate [Lv. 1100]"
	QuestName = "IceSideQuest"
	LevelQuest = 1
	NameMon = "Lab Subordinate"
	CFrameMon = CFrame.new(-5782, 42, -4484)
	VectorMon = Vector3.new(-5782, 42, -4484)
	CFrameQuest = CFrame.new(-6060, 16, -4905)
	VectorQuest = Vector3.new(-6060, 16, -4905)
	elseif (LevelFarm == 12) then
	Name = "Horned Warrior [Lv. 1125]"
	QuestName = "IceSideQuest"
	LevelQuest = 2
	NameMon = "Horned Warrior"
	CFrameMon = CFrame.new(-6406, 24, -5805)
	VectorMon = Vector3.new(-6406, 24, -5805)
	CFrameQuest = CFrame.new(-6060, 16, -4905)
	VectorQuest = Vector3.new(-6060, 16, -4905)
	elseif (LevelFarm == 13) then
	Name = "Magma Ninja [Lv. 1175]"
	QuestName = "FireSideQuest"
	LevelQuest = 1
	NameMon = "Magma Ninja"
	CFrameMon = CFrame.new(-5428, 78, -5959)
	VectorMon = Vector3.new(-5428, 78, -5959)
	CFrameQuest = CFrame.new(-5430, 16, -5295)
	VectorQuest = Vector3.new(-5430, 16, -5296)
	elseif (LevelFarm == 14) then
	Name = "Lava Pirate [Lv. 1200]"
	QuestName = "FireSideQuest"
	LevelQuest = 2
	NameMon = "Lava Pirate"
	CFrameMon = CFrame.new(-5270, 42, -4800)
	VectorMon = Vector3.new(-5270, 42, -4800)
	CFrameQuest = CFrame.new(-5430, 16, -5295)
	VectorQuest = Vector3.new(-5430, 16, -5296)
	elseif (LevelFarm == 15) then
	Name = "Ship Deckhand [Lv. 1250]"
	QuestName = "ShipQuest1"
	LevelQuest = 1
	NameMon = "Ship Deckhand"
	CFrameMon = CFrame.new(1198, 126, 33031)
	VectorMon = Vector3.new(1198, 126, 33031)
	CFrameQuest = CFrame.new(1038, 125, 32913)
	VectorQuest = Vector3.new(1038, 125, 32913)
	elseif (LevelFarm == 16) then
	Name = "Ship Engineer [Lv. 1275]"
	QuestName = "ShipQuest1"
	LevelQuest = 2
	NameMon = "Ship Engineer"
	CFrameMon = CFrame.new(918, 44, 32787)
	VectorMon = Vector3.new(918, 44, 32787)
	CFrameQuest = CFrame.new(1038, 125, 32913)
	VectorQuest = Vector3.new(1038, 125, 32913)
	elseif (LevelFarm == 17) then
	Name = "Ship Steward [Lv. 1300]"
	QuestName = "ShipQuest2"
	LevelQuest = 1
	NameMon = "Ship Steward"
	CFrameMon = CFrame.new(915, 130, 33419)
	VectorMon = Vector3.new(915, 130, 33419)
	CFrameQuest = CFrame.new(969, 125, 33245)
	VectorQuest = Vector3.new(969, 125, 33245)
	elseif (LevelFarm == 18) then
	Name = "Ship Officer [Lv. 1325]"
	QuestName = "ShipQuest2"
	LevelQuest = 2
	NameMon = "Ship Officer"
	CFrameMon = CFrame.new(916, 181, 33335)
	VectorMon = Vector3.new(916, 181, 33335)
	CFrameQuest = CFrame.new(969, 125, 33245)
	VectorQuest = Vector3.new(969, 125, 33245)
	elseif (LevelFarm == 19) then
	Name = "Arctic Warrior [Lv. 1350]"
	QuestName = "FrostQuest"
	LevelQuest = 1
	NameMon = "Arctic Warrior"
	CFrameMon = CFrame.new(6038, 29, -6231)
	VectorMon = Vector3.new(6038, 29, -6231)
	VectorQuest = Vector3.new(5669, 28, -6482)
	CFrameQuest = CFrame.new(5669, 28, -6482)
	elseif (LevelFarm == 20) then
	Name = "Snow Lurker [Lv. 1375]"
	QuestName = "FrostQuest"
	LevelQuest = 2
	NameMon = "Snow Lurker"
	CFrameMon = CFrame.new(5560, 42, -6826)
	VectorMon = Vector3.new(5560, 42, -6826)
	VectorQuest = Vector3.new(5669, 28, -6482)
	CFrameQuest = CFrame.new(5669, 28, -6482)
	elseif (LevelFarm == 21) then
	Name = "Sea Soldier [Lv. 1425]"
	QuestName = "ForgottenQuest"
	LevelQuest = 1
	NameMon = "Sea Soldier"
	CFrameMon = CFrame.new(-3022, 16, -9722)
	VectorMon = Vector3.new(-3022, 16, -9722)
	CFrameQuest = CFrame.new(-3054, 237, -10148)
	VectorQuest = Vector3.new(-3054, 237, -10148)
	elseif (LevelFarm == 22) then
	Name = "Water Fighter [Lv. 1450]"
	QuestName = "ForgottenQuest"
	LevelQuest = 2
	NameMon = "Water Fighter"
	CFrameMon = CFrame.new(-3385, 239, -10542)
	VectorMon = Vector3.new(-3385, 239, -10542)
	CFrameQuest = CFrame.new(-3054, 237, -10148)
	VectorQuest = Vector3.new(-3054, 237, -10148)
	end
	end
	if World3 then
	if (LevelFarm == 1) then
	Name = "Pirate Millionaire [Lv. 1500]"
	QuestName = "PiratePortQuest"
	LevelQuest = 1
	NameMon = "Pirate"
	CFrameMon = CFrame.new(-373, 75, 5550)
	VectorMon = Vector3.new(-373, 75, 5550)
	CFrameQuest = CFrame.new(-288, 44, 5576)
	VectorQuest = Vector3.new(-288, 44, 5576)
	elseif (LevelFarm == 2) then
	Name = "Pistol Billionaire [Lv. 1525]"
	QuestName = "PiratePortQuest"
	LevelQuest = 2
	NameMon = "Pistol"
	CFrameMon = CFrame.new(-469, 74, 5904)
	VectorMon = Vector3.new(-469, 74, 5904)
	CFrameQuest = CFrame.new(-288, 44, 5576)
	VectorQuest = Vector3.new(-288, 44, 5576)
	elseif (LevelFarm == 3) then
	Name = "Dragon Crew Warrior [Lv. 1575]"
	QuestName = "AmazonQuest"
	LevelQuest = 1
	NameMon = "Warrior"
	CFrameMon = CFrame.new(6339, 52, -1213)
	VectorMon = Vector3.new(6338, 52, -1213)
	CFrameQuest = CFrame.new(5835, 52, -1105)
	VectorQuest = Vector3.new(5835, 52, -1105)
	elseif (LevelFarm == 4) then
	Name = "Dragon Crew Archer [Lv. 1600]"
	QuestName = "AmazonQuest"
	LevelQuest = 2
	NameMon = "Archer"
	CFrameMon = CFrame.new(6594, 383, 139)
	VectorMon = Vector3.new(6594, 383, 139)
	CFrameQuest = CFrame.new(5835, 52, -1105)
	VectorQuest = Vector3.new(5835, 52, -1105)
	elseif (LevelFarm == 5) then
	Name = "Female Islander [Lv. 1625]"
	QuestName = "AmazonQuest2"
	LevelQuest = 1
	NameMon = "Female"
	CFrameMon = CFrame.new(5308, 819, 1047)
	VectorMon = Vector3.new(5308, 819, 1047)
	CFrameQuest = CFrame.new(5443, 602, 751)
	VectorQuest = Vector3.new(5443, 602, 751)
	elseif (LevelFarm == 6) then
	Name = "Giant Islander [Lv. 1650]"
	QuestName = "AmazonQuest2"
	LevelQuest = 2
	NameMon = "Giant Islanders"
	CFrameMon = CFrame.new(4951, 602, -68)
	VectorMon = Vector3.new(4951, 602, -68)
	CFrameQuest = CFrame.new(5443, 602, 751)
	VectorQuest = Vector3.new(5443, 602, 751)
	elseif (LevelFarm == 7) then
	Name = "Marine Commodore [Lv. 1700]"
	QuestName = "MarineTreeIsland"
	LevelQuest = 1
	NameMon = "Marine Commodore"
	CFrameMon = CFrame.new(2447, 73, -7470)
	VectorMon = Vector3.new(2447, 73, -7470)
	CFrameQuest = CFrame.new(2180, 29, -6737)
	VectorQuest = Vector3.new(2180, 29, -6737)
	elseif (LevelFarm == 8) then
	Name = "Marine Rear Admiral [Lv. 1725]"
	QuestName = "MarineTreeIsland"
	LevelQuest = 2
	NameMon = "Marine Rear Admiral"
	CFrameMon = CFrame.new(3671, 161, -6932)
	VectorMon = Vector3.new(3671, 161, -6932)
	CFrameQuest = CFrame.new(2180, 29, -6737)
	VectorQuest = Vector3.new(2180, 29, -6737)
	elseif (LevelFarm == 9) then
	Name = "Fishman Raider [Lv. 1775]"
	QuestName = "DeepForestIsland3"
	LevelQuest = 1
	NameMon = "Fishman Raider"
	CFrameMon = CFrame.new(-10560, 332, -8466)
	VectorMon = Vector3.new(-10560, 332, -8466)
	CFrameQuest = CFrame.new(-10584, 332, -8758)
	VectorQuest = Vector3.new(-10584, 332, -8758)
	elseif (LevelFarm == 10) then
	Name = "Fishman Captain [Lv. 1800]"
	QuestName = "DeepForestIsland3"
	LevelQuest = 2
	NameMon = "Fishman Captain"
	CFrameMon = CFrame.new(-10993, 332, -8940)
	VectorMon = Vector3.new(-10993, 332, -8940)
	CFrameQuest = CFrame.new(-10584, 332, -8758)
	VectorQuest = Vector3.new(-10584, 332, -8758)
	elseif (LevelFarm == 11) then
	Name = "Forest Pirate [Lv. 1825]"
	QuestName = "DeepForestIsland"
	LevelQuest = 1
	NameMon = "Forest Pirate"
	CFrameMon = CFrame.new(-13479, 333, -7905)
	VectorMon = Vector3.new(-13479, 333, -7905)
	CFrameQuest = CFrame.new(-13232, 333, -7627)
	VectorQuest = Vector3.new(-13232, 333, -7627)
	elseif (LevelFarm == 12) then
	Name = "Mythological Pirate [Lv. 1850]"
	QuestName = "DeepForestIsland"
	LevelQuest = 2
	NameMon = "Mythological Pirate"
	CFrameMon = CFrame.new(-13545, 470, -6917)
	VectorMon = Vector3.new(-13545, 470, -6917)
	CFrameQuest = CFrame.new(-13232, 333, -7627)
	VectorQuest = Vector3.new(-13232, 333, -7627)
	elseif (LevelFarm == 13) then
	Name = "Jungle Pirate [Lv. 1900]"
	QuestName = "DeepForestIsland2"
	LevelQuest = 1
	NameMon = "Jungle Pirate"
	CFrameMon = CFrame.new(-12107, 332, -10549)
	VectorMon = Vector3.new(-12106, 332, -10549)
	CFrameQuest = CFrame.new(-12684, 391, -9902)
	VectorQuest = Vector3.new(-12684, 391, -9902)
	elseif (LevelFarm == 14) then
	Name = "Musketeer Pirate [Lv. 1925]"
	QuestName = "DeepForestIsland2"
	LevelQuest = 2
	NameMon = "Musketeer Pirate"
	CFrameMon = CFrame.new(-13286, 392, -9769)
	VectorMon = Vector3.new(-13286, 392, -9768)
	CFrameQuest = CFrame.new(-12684, 391, -9902)
	VectorQuest = Vector3.new(-12684, 391, -9902)
	elseif (LevelFarm == 15) then
	Name = "Reborn Skeleton [Lv. 1975]"
	QuestName = "HauntedQuest1"
	LevelQuest = 1
	NameMon = "Reborn Skeleton"
	CFrameMon = CFrame.new(-8760, 142, 6039)
	VectorMon = Vector3.new(-8760, 142, 6039)
	CFrameQuest = CFrame.new(-9482, 142, 5567)
	VectorQuest = Vector3.new(-9482, 142, 5567)
	elseif (LevelFarm == 16) then
	Name = "Living Zombie [Lv. 2000]"
	QuestName = "HauntedQuest1"
	LevelQuest = 2
	NameMon = "Living Zombie"
	CFrameMon = CFrame.new(-10144, 140, 5932)
	VectorMon = Vector3.new(-10144, 140, 5932)
	CFrameQuest = CFrame.new(-9482, 142, 5567)
	VectorQuest = Vector3.new(-9482, 142, 5567)
	elseif (LevelFarm == 17) then
	Name = "Demonic Soul [Lv. 2025]"
	QuestName = "HauntedQuest2"
	LevelQuest = 1
	NameMon = "Demonic Soul"
	CFrameMon = CFrame.new(-9507, 172, 6158)
	VectorMon = Vector3.new(-9506, 172, 6158)
	CFrameQuest = CFrame.new(-9513, 172, 6079)
	VectorQuest = Vector3.new(-9513, 172, 6079)
	elseif (LevelFarm == 18) then
	Name = "Posessed Mummy [Lv. 2050]"
	QuestName = "HauntedQuest2"
	LevelQuest = 2
	NameMon = "Posessed Mummy"
	CFrameMon = CFrame.new(-9577, 6, 6223)
	VectorMon = Vector3.new(-9577, 6, 6223)
	CFrameQuest = CFrame.new(-9513, 172, 6079)
	VectorQuest = Vector3.new(-9513, 172, 6079)
	elseif (LevelFarm == 19) then
	Name = "Peanut Scout [Lv. 2075]"
	QuestName = "NutsIslandQuest"
	LevelQuest = 1
	NameMon = "Peanut Scout"
	CFrameMon = CFrame.new(-2124, 123, -10435)
	VectorMon = Vector3.new(-2124, 123, -10435)
	CFrameQuest = CFrame.new(-2104, 38, -10192)
	VectorQuest = Vector3.new(-2104, 38, -10192)
	elseif (LevelFarm == 20) then
	Name = "Peanut President [Lv. 2100]"
	QuestName = "NutsIslandQuest"
	LevelQuest = 2
	NameMon = "Peanut President"
	CFrameMon = CFrame.new(-2124, 123, -10435)
	VectorMon = Vector3.new(-2124, 123, -10435)
	CFrameQuest = CFrame.new(-2104, 38, -10192)
	VectorQuest = Vector3.new(-2104, 38, -10192)
	elseif (LevelFarm == 21) then
	Name = "Ice Cream Chef [Lv. 2125]"
	QuestName = "IceCreamIslandQuest"
	LevelQuest = 1
	NameMon = "Ice Cream Chef"
	CFrameMon = CFrame.new(-641, 127, -11062)
	VectorMon = Vector3.new(-641, 127, -11062)
	CFrameQuest = CFrame.new(-822, 66, -10965)
	VectorQuest = Vector3.new(-822, 66, -10965)
	elseif (LevelFarm == 22) then
	Name = "Ice Cream Commander [Lv. 2150]"
	QuestName = "IceCreamIslandQuest"
	LevelQuest = 2
	NameMon = "Ice Cream Commander"
	CFrameMon = CFrame.new(-641, 127, -11062)
	VectorMon = Vector3.new(-641, 127, -11062)
	CFrameQuest = CFrame.new(-822, 66, -10965)
	VectorQuest = Vector3.new(-822, 66, -10965)
	elseif (LevelFarm == 23) then
	Name = "Cookie Crafter [Lv. 2200]"
	QuestName = "CakeQuest1"
	LevelQuest = 1
	NameMon = "Cookie Crafter"
	CFrameMon = CFrame.new(-2365, 38, -12099)
	VectorMon = Vector3.new(-2365, 38, -12099)
	CFrameQuest = CFrame.new(-2020, 38, -12025)
	VectorQuest = Vector3.new(-2020, 38, -12025)
	elseif (LevelFarm == 24) then
	Name = "Cake Guard [Lv. 2225]"
	QuestName = "CakeQuest1"
	LevelQuest = 2
	NameMon = "Cake Guard"
	CFrameMon = CFrame.new(-1651, 38, -12308)
	VectorMon = Vector3.new(-1651, 38, -12308)
	CFrameQuest = CFrame.new(-2020, 38, -12025)
	VectorQuest = Vector3.new(-2020, 38, -12025)
	elseif (LevelFarm == 25) then
	Name = "Baking Staff [Lv. 2250]"
	QuestName = "CakeQuest2"
	LevelQuest = 1
	NameMon = "Baking Staff"
	CFrameMon = CFrame.new(-1870, 38, -12938)
	VectorMon = Vector3.new(-1870, 38, -12938)
	CFrameQuest = CFrame.new(-1926, 38, -12850)
	VectorQuest = Vector3.new(-1926, 38, -12850)
	elseif (LevelFarm == 26) then
	Name = "Head Baker [Lv. 2275]"
	QuestName = "CakeQuest2"
	LevelQuest = 2
	NameMon = "Head Baker"
	CFrameMon = CFrame.new(-1926, 88, -12850)
	VectorMon = CFrame.new(-1870, 38, -12938)
	CFrameQuest = CFrame.new(-1926, 38, -12850)
	VectorQuest = Vector3.new(-1926, 38, -12850)
	elseif (LevelFarm == 27) then
	Name = "Cocoa Warrior [Lv. 2300]"
	QuestName = "ChocQuest1"
	LevelQuest = 1
	NameMon = "Cocoa Warrior"
	CFrameMon = CFrame.new(231, 23, -12194)
	VectorMon = CFrame.new(231, 23, -12194)
	CFrameQuest = CFrame.new(231, 23, -12194)
	VectorQuest = Vector3.new(231, 23, -12194)
	elseif (LevelFarm == 28) then
	Name = "Chocolate Bar Battler [Lv. 2325]"
	QuestName = "ChocQuest1"
	LevelQuest = 2
	NameMon = "Chocolate Bar Battler"
	CFrameMon = CFrame.new(231, 23, -12194)
	VectorMon = CFrame.new(231, 23, -12194)
	CFrameQuest = CFrame.new(231, 23, -12194)
	VectorQuest = Vector3.new(231, 23, -12194)
	elseif (LevelFarm == 29) then
	Name = "Sweet Thief [Lv. 2350]"
	QuestName = "ChocQuest2"
	LevelQuest = 1
	NameMon = "Sweet Thief"
	CFrameMon = CFrame.new(71, 77, -12632)
	VectorMon = CFrame.new(71, 77, -12632)
	CFrameQuest = CFrame.new(151, 23, -12774)
	VectorQuest = Vector3.new(151, 23, -12774)
	elseif (MyLevel == 30) then
	Name = "Candy Rebel [Lv. 2375]"
	QuestName = "ChocQuest2"
	LevelQuest = 2
	NameMon = "Candy Rebel"
	CFrameMon = CFrame.new(134, 77, -12882)
	VectorMon = CFrame.new(134, 77, -12882)
	CFrameQuest = CFrame.new(151, 23, -12774)
	VectorQuest = Vector3.new(151, 23, -12774)
	elseif (MyLevel == 31) then
	Name = "Candy Pirate [Lv. 2400]"
	QuestName = "CandyQuest1"
	LevelQuest = 1
	NameMon = "Candy Pirate"
	CFrameMon = CFrame.new(-1408.46521, 16.1423531, -14552.2041, 0.90175873, -8.1721694e-8, -0.432239741, 7.812645e-8, 1, -2.6074616e-8, 0.432239741, -1.0256343e-8, 0.90175873)
	VectorQuest = Vector3.new(-1408.46521, 16.1423531, -14552.2041, 0.90175873, -8.1721694e-8, -0.432239741, 7.812645e-8, 1, -2.6074616e-8, 0.432239741, -1.0256343e-8, 0.90175873)
	CFrameQuest = CFrame.new(-1151.48987, 16.1422901, -14445.6904, -0.316594511, -6.8569825e-8, -0.948560953, -2.0534307e-8, 1, -6.543467e-8, 0.948560953, -1.2382168e-9, -0.316594511)
	VectorQuest = Vector3.new(-1151.48987, 16.1422901, -14445.6904, -0.316594511, -6.8569825e-8, -0.948560953, -2.0534307e-8, 1, -6.543467e-8, 0.948560953, -1.2382168e-9, -0.316594511)
	elseif (MyLevel >= 32) then
	Name = "Snow Demon [Lv. 2425]"
	QuestName = "CandyQuest1"
	LevelQuest = 2
	NameMon = "Snow Demon"
	CFrameMon = CFrame.new(-782, 382, -14474)
	VectorQuest = Vector3.new(-782, 382, -14474)
	CFrameQuest = CFrame.new(-1151.48987, 16.1422901, -14445.6904, -0.316594511, -6.8569825e-8, -0.948560953, -2.0534307e-8, 1, -6.543467e-8, 0.948560953, -1.2382168e-9, -0.316594511)
	VectorQuest = Vector3.new(-1151.48987, 16.1422901, -14445.6904, -0.316594511, -6.8569825e-8, -0.948560953, -2.0534307e-8, 1, -6.543467e-8, 0.948560953, -1.2382168e-9, -0.316594511)
	end
	end
	end
	function CheckBossQuest()
	if (getgenv().Settings.Boss["Select Boss"] == "Saber Expert [Lv. 200] [Boss]") then
	MsBoss = "Saber Expert [Lv. 200] [Boss]"
	NameBoss = "Saber Expert"
	CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564, 0.858821094, 1.1384894e-8, 0.512275636, -4.8564925e-9, 1, -1.4082333e-8, -0.512275636, 9.6063415e-9, 0.858821094)
	elseif (getgenv().Settings.Boss["Select Boss"] == "The Saw [Lv. 100] [Boss]") then
	MsBoss = "The Saw [Lv. 100] [Boss]"
	NameBoss = "The Saw"
	CFrameBoss = CFrame.new(-683.519897, 13.8534927, 1610.87854, -0.290192783, 6.883658e-8, 0.956968188, 6.984136e-8, 1, -5.0753112e-8, -0.956968188, 5.2107776e-8, -0.290192783)
	elseif (getgenv().Settings.Boss["Select Boss"] == "Greybeard [Lv. 750] [Raid Boss]") then
	MsBoss = "Greybeard [Lv. 750] [Raid Boss]"
	NameBoss = "Greybeard"
	CFrameBoss = CFrame.new(-4955.72949, 80.8163834, 4305.82666, -0.433646321, -1.0339429e-8, 0.901083171, -3.0443168e-8, 1, -3.1763308e-9, -0.901083171, -2.8809229e-8, -0.433646321)
	elseif (getgenv().Settings.Boss["Select Boss"] == "The Gorilla King [Lv. 25] [Boss]") then
	MsBoss = "The Gorilla King [Lv. 25] [Boss]"
	NameBoss = "The Gorilla King"
	NameQuestBoss = "JungleQuest"
	LevelQuestBoss = 3
	CFrameQuestBoss = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -0.000004708589, -0.997892559, 1.4143188e-7, 1, -0.0000047093367, 0.997892559, 1.6444218e-7, 0.0648873374)
	CFrameBoss = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.666025e-8, 0.950426519, -3.372755e-8, 1, 7.065018e-8, -0.950426519, -5.4024174e-8, 0.310949147)
	elseif (getgenv().Settings.Boss["Select Boss"] == "Bobby [Lv. 55] [Boss]") then
	MsBoss = "Bobby [Lv. 55] [Boss]"
	NameBoss = "Bobby"
	NameQuestBoss = "BuggyQuest1"
	LevelQuestBoss = 3
	CFrameQuestBoss = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.585705e-9, 0.280922383, -4.0631033e-8, 1, -1.11807175e-7, -0.280922383, -1.18718916e-7, -0.959730506)
	CFrameBoss = CFrame.new(-1147.65173, 32.5966301, 4156.02588, 0.956680477, -1.7710995e-10, -0.29113996, 5.165309e-10, 1, 1.088978e-9, 0.29113996, -1.1921868e-9, 0.956680477)
	elseif (getgenv().Settings.Boss["Select Boss"] == "Yeti [Lv. 110] [Boss]") then
	MsBoss = "Yeti [Lv. 110] [Boss]"
	NameBoss = "Yeti"
	NameQuestBoss = "SnowQuest"
	LevelQuestBoss = 3
	CFrameQuestBoss = CFrame.new(1384.90247, 87.3078308, -1296.6825, 0.280209213, 2.7203518e-8, -0.959938943, -6.756908e-8, 1, 8.615171e-9, 0.959938943, 6.2448144e-8, 0.280209213)
	CFrameBoss = CFrame.new(1221.7356, 138.046906, -1488.84082, 0.349343032, -9.4924594e-8, 0.936994851, 6.294782e-8, 1, 7.783843e-8, -0.936994851, 3.1789465e-8, 0.349343032)
	elseif (getgenv().Settings.Boss["Select Boss"] == "Mob Leader [Lv. 120] [Boss]") then
	MsBoss = "Mob Leader [Lv. 120] [Boss]"
	NameBoss = "Mob Leader"
	CFrameBoss = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-8, 0.371961564, -7.6181664e-8, 1, 4.4447486e-8, -0.371961564, 1.2921643e-8, -0.92824)
	elseif (getgenv().Settings.Boss["Select Boss"] == "Vice Admiral [Lv. 130] [Boss]") then
	MsBoss = "Vice Admiral [Lv. 130] [Boss]"
	NameBoss = "Vice Admiral"
	NameQuestBoss = "MarineQuest2"
	LevelQuestBoss = 2
	CFrameQuestBoss = CFrame.new(-5035.42285, 28.6520386, 4324.50293, -0.0611100644, -8.083958e-8, 0.998130739, -1.5741659e-8, 1, 8.0027185e-8, -0.998130739, -1.082177e-8, -0.0611100644)
	CFrameBoss = CFrame.new(-5078.45898, 99.6520691, 4402.1665, -0.555574954, -9.886306e-11, 0.831466436, -6.355083e-8, 1, -4.2344926e-8, -0.831466436, -7.636616e-8, -0.555574954)
	elseif (getgenv().Settings.Boss["Select Boss"] == "Warden [Lv. 175] [Boss]") then
	MsBoss = "Warden [Lv. 175] [Boss]"
	NameBoss = "Warden"
	NameQuestBoss = "ImpelQuest"
	LevelQuestBoss = 1
	CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.6830374e-8, -0.842635691, 1.3800175e-8, 1, -8.813008e-8, 0.842635691, -5.908516e-8, -0.538484037)
	CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-8, 0.330433697, 3.4781863e-8, 1, 3.8165815e-8, -0.330433697, -2.452891e-8, 0.943829298)
	elseif (getgenv().Settings.Boss["Select Boss"] == "Chief Warden [Lv. 200] [Boss]") then
	MsBoss = "Chief Warden [Lv. 200] [Boss]"
	NameBoss = "Chief Warden"
	NameQuestBoss = "ImpelQuest"
	LevelQuestBoss = 2
	CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.6830374e-8, -0.842635691, 1.3800175e-8, 1, -8.813008e-8, 0.842635691, -5.908516e-8, -0.538484037)
	CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-8, 0.330433697, 3.4781863e-8, 1, 3.8165815e-8, -0.330433697, -2.452891e-8, 0.943829298)
	elseif (getgenv().Settings.Boss["Select Boss"] == "Swan [Lv. 225] [Boss]") then
	MsBoss = "Swan [Lv. 225] [Boss]"
	NameBoss = "Swan"
	NameQuestBoss = "ImpelQuest"
	LevelQuestBoss = 3
	CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.6830374e-8, -0.842635691, 1.3800175e-8, 1, -8.813008e-8, 0.842635691, -5.908516e-8, -0.538484037)
	CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-8, 0.330433697, 3.4781863e-8, 1, 3.8165815e-8, -0.330433697, -2.452891e-8, 0.943829298)
	elseif (getgenv().Settings.Boss["Select Boss"] == "Magma Admiral [Lv. 350] [Boss]") then
	MsBoss = "Magma Admiral [Lv. 350] [Boss]"
	NameBoss = "Magma Admiral"
	NameQuestBoss = "MagmaQuest"
	LevelQuestBoss = 3
	CFrameQuestBoss = CFrame.new(-5317.07666, 12.2721891, 8517.41699, 0.51175487, -2.655088e-8, -0.859131515, -3.9113157e-8, 1, -5.4202676e-8, 0.859131515, 6.134183e-8, 0.51175487)
	CFrameBoss = CFrame.new(-5530.12646, 22.8769703, 8859.91309, 0.857838571, 2.2341439e-8, 0.513919294, 1.5368913e-8, 1, -6.9126585e-8, -0.513919294, 6.719784e-8, 0.857838571)
	elseif (getgenv().Settings.Boss["Select Boss"] == "Fishman Lord [Lv. 425] [Boss]") then
	MsBoss = "Fishman Lord [Lv. 425] [Boss]"
	NameBoss = "Fishman Lord"
	NameQuestBoss = "FishmanQuest"
	LevelQuestBoss = 3
	CFrameQuestBoss = CFrame.new(61123.0859, 18.5066795, 1570.18018, 0.927145958, 1.0624845e-7, 0.374700129, -6.982194e-8, 1, -1.10790765e-7, -0.374700129, 7.655694e-8, 0.927145958)
	CFrameBoss = CFrame.new(61351.7773, 31.0306778, 1113.31409, 0.999974668, 0, -0.00714713801, 0, 1.00000012, 0, 0.00714714266, 0, 0.999974549)
	elseif (getgenv().Settings.Boss["Select Boss"] == "Wysper [Lv. 500] [Boss]") then
	MsBoss = "Wysper [Lv. 500] [Boss]"
	NameBoss = "Wysper"
	NameQuestBoss = "SkyExp1Quest"
	LevelQuestBoss = 3
	CFrameQuestBoss = CFrame.new(-7862.94629, 5545.52832, -379.833954, 0.462944925, 1.4583809e-8, -0.886386991, 1.0534996e-8, 1, 2.1955342e-8, 0.886386991, -1.95022e-8, 0.462944925)
	CFrameBoss = CFrame.new(-7925.48389, 5550.76074, -636.178345, 0.716468513, -1.2291529e-9, 0.697619379, 3.3738143e-9, 1, -1.7030475e-9, -0.697619379, 3.5738184e-9, 0.716468513)
	elseif (getgenv().Settings.Boss["Select Boss"] == "Thunder God [Lv. 575] [Boss]") then
	MsBoss = "Thunder God [Lv. 575] [Boss]"
	NameBoss = "Thunder God"
	NameQuestBoss = "SkyExp2Quest"
	LevelQuestBoss = 3
	CFrameQuestBoss = CFrame.new(-7902.78613, 5635.99902, -1411.98706, -0.0361216255, -1.1689591e-7, 0.999347389, 1.4453396e-9, 1, 1.1702449e-7, -0.999347389, 5.6715117e-9, -0.0361216255)
	CFrameBoss = CFrame.new(-7917.53613, 5616.61377, -2277.78564, 0.965189934, 4.8056343e-8, -0.261550069, -6.730899e-8, 1, -6.465153e-8, 0.261550069, 8.000568e-8, 0.965189934)
	elseif (getgenv().Settings.Boss["Select Boss"] == "Cyborg [Lv. 675] [Boss]") then
	MsBoss = "Cyborg [Lv. 675] [Boss]"
	NameBoss = "Cyborg"
	NameQuestBoss = "FountainQuest"
	LevelQuestBoss = 3
	CFrameQuestBoss = CFrame.new(5253.54834, 38.5361786, 4050.45166, -0.0112687312, -9.936779e-8, -0.999936521, 2.5529137e-10, 1, -9.9376955e-8, 0.999936521, -1.3751221e-9, -0.0112687312)
	CFrameBoss = CFrame.new(6041.82813, 52.7112198, 3907.45142, -0.563162148, 1.7380525e-9, -0.826346457, -5.946327e-8, 1, 4.2628024e-8, 0.826346457, 7.314375e-8, -0.563162148)
	elseif (getgenv().Settings.Boss["Select Boss"] == "Diamond [Lv. 750] [Boss]") then
	MsBoss = "Diamond [Lv. 750] [Boss]"
	NameBoss = "Diamond"
	NameQuestBoss = "Area1Quest"
	LevelQuestBoss = 3
	CFrameQuestBoss = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.4216593e-8, 0.967323601, -6.001478e-8, 1, 3.042729e-8, -0.967323601, -6.57684e-8, 0.253544956)
	CFrameBoss = CFrame.new(-1736.26587, 198.627731, -236.412857, -0.997808516, 0, -0.0661673471, 0, 1, 0, 0.0661673471, 0, -0.997808516)
	elseif (getgenv().Settings.Boss["Select Boss"] == "Jeremy [Lv. 850] [Boss]") then
	MsBoss = "Jeremy [Lv. 850] [Boss]"
	NameBoss = "Jeremy"
	NameQuestBoss = "Area2Quest"
	LevelQuestBoss = 3
	CFrameQuestBoss = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.960749e-10, -0.999488771, 1.3632653e-10, 1, 8.9217234e-10, 0.999488771, -1.0773209e-10, -0.0319722369)
	CFrameBoss = CFrame.new(2203.76953, 448.966034, 752.731079, -0.0217453763, 0, -0.999763548, 0, 1, 0, 0.999763548, 0, -0.0217453763)
	elseif (getgenv().Settings.Boss["Select Boss"] == "Fajita [Lv. 925] [Boss]") then
	MsBoss = "Fajita [Lv. 925] [Boss]"
	NameBoss = "Fajita"
	NameQuestBoss = "MarineQuest3"
	LevelQuestBoss = 3
	CFrameQuestBoss = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.232984e-8, -0.486752301, 5.643834e-8, 1, -1.4322079e-8, 0.486752301, -3.99824e-8, -0.873540044)
	CFrameBoss = CFrame.new(-2297.40332, 115.449463, -3946.53833, 0.961227536, -1.466458e-9, -0.275756449, -2.3212845e-9, 1, -1.3409443e-8, 0.275756449, 1.3529635e-8, 0.961227536)
	elseif (getgenv().Settings.Boss["Select Boss"] == "Don Swan [Lv. 1000] [Boss]") then
	MsBoss = "Don Swan [Lv. 1000] [Boss]"
	NameBoss = "Don Swan"
	CFrameBoss = CFrame.new(2288.802, 15.1870775, 863.034607, 0.99974072, -8.412472e-8, -0.0227668174, 8.477473e-8, 1, 2.758501e-8, 0.0227668174, -2.9507907e-8, 0.99974072)
	elseif (getgenv().Settings.Boss["Select Boss"] == "Smoke Admiral [Lv. 1150] [Boss]") then
	MsBoss = "Smoke Admiral [Lv. 1150] [Boss]"
	NameBoss = "Smoke Admiral"
	NameQuestBoss = "IceSideQuest"
	LevelQuestBoss = 3
	CFrameQuestBoss = CFrame.new(-6059.96191, 15.9868021, -4904.7373, -0.444992423, -3.0874483e-9, 0.895534337, -3.640988e-8, 1, -1.4644522e-8, -0.895534337, -3.9122998e-8, -0.444992423)
	CFrameBoss = CFrame.new(-5115.72754, 23.7664986, -5338.2207, 0.251453817, 1.4834506e-8, -0.967869282, 4.0279698e-8, 1, 2.5791698e-8, 0.967869282, -4.5470895e-8, 0.251453817)
	elseif (getgenv().Settings.Boss["Select Boss"] == "Cursed Captain [Lv. 1325] [Raid Boss]") then
	MsBoss = "Cursed Captain [Lv. 1325] [Raid Boss]"
	NameBoss = "Cursed Captain"
	CFrameBoss = CFrame.new(916.928589, 181.092773, 33422, -0.999505103, 9.263105e-9, 0.0314563364, 8.429162e-9, 1, -2.6643713e-8, -0.0314563364, -2.6365377e-8, -0.999505103)
	elseif (getgenv().Settings.Boss["Select Boss"] == "Darkbeard [Lv. 1000] [Raid Boss]") then
	MsBoss = "Darkbeard [Lv. 1000] [Raid Boss]"
	NameBoss = "Darkbeard"
	CFrameBoss = CFrame.new(3876.00366, 24.6882591, -3820.21777, -0.976951957, 4.9735633e-8, 0.213458836, 4.5733536e-8, 1, -2.3686862e-8, -0.213458836, -1.3378704e-8, -0.976951957)
	elseif (getgenv().Settings.Boss["Select Boss"] == "Order [Lv. 1250] [Raid Boss]") then
	MsBoss = "Order [Lv. 1250] [Raid Boss]"
	NameBoss = "Order"
	CFrameBoss = CFrame.new(-6221.15039, 16.2351036, -5045.23584, -0.380726993, 7.414635e-8, 0.924687505, 5.8560477e-8, 1, -5.6073855e-8, -0.924687505, 3.2801314e-8, -0.380726993)
	elseif (getgenv().Settings.Boss["Select Boss"] == "Awakened Ice Admiral [Lv. 1400] [Boss]") then
	MsBoss = "Awakened Ice Admiral [Lv. 1400] [Boss]"
	NameBoss = "Awakened Ice Admiral"
	NameQuestBoss = "FrostQuest"
	LevelQuestBoss = 3
	CFrameQuestBoss = CFrame.new(5669.33203, 28.2118053, -6481.55908, 0.921275556, -1.2532083e-8, 0.388910472, 4.722308e-8, 1, -7.9641424e-8, -0.388910472, 9.173725e-8, 0.921275556)
	CFrameBoss = CFrame.new(6407.33936, 340.223785, -6892.521, 0.49051559, -5.253102e-8, -0.871432424, -2.7614602e-8, 1, -7.582506e-8, 0.871432424, 6.125763e-8, 0.49051559)
	elseif (getgenv().Settings.Boss["Select Boss"] == "Tide Keeper [Lv. 1475] [Boss]") then
	MsBoss = "Tide Keeper [Lv. 1475] [Boss]"
	NameBoss = "Tide Keeper"
	NameQuestBoss = "ForgottenQuest"
	LevelQuestBoss = 3
	CFrameQuestBoss = CFrame.new(-3053.89648, 236.881363, -10148.2324, -0.985987961, -3.5850474e-9, 0.16681771, -3.0783291e-9, 1, 3.2961256e-9, -0.16681771, 2.7364198e-9, -0.985987961)
	CFrameBoss = CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-8, 0.885206044, 4.0332897e-9, 1, 1.3534751e-8, -0.885206044, -2.7260627e-9, 0.465199202)
	elseif (getgenv().Settings.Boss["Select Boss"] == "Stone [Lv. 1550] [Boss]") then
	MsBoss = "Stone [Lv. 1550] [Boss]"
	NameBoss = "Stone"
	NameQuestBoss = "PiratePortQuest"
	LevelQuestBoss = 3
	CFrameQuestBoss = CFrame.new(-290, 44, 5577)
	CFrameBoss = CFrame.new(-1085, 40, 6779)
	elseif (getgenv().Settings.Boss["Select Boss"] == "Island Empress [Lv. 1675] [Boss]") then
	MsBoss = "Island Empress [Lv. 1675] [Boss]"
	NameBoss = "Island Empress"
	NameQuestBoss = "AmazonQuest2"
	LevelQuestBoss = 3
	CFrameQuestBoss = CFrame.new(5443, 602, 752)
	CFrameBoss = CFrame.new(5659, 602, 244)
	elseif (getgenv().Settings.Boss["Select Boss"] == "Kilo Admiral [Lv. 1750] [Boss]") then
	MsBoss = "Kilo Admiral [Lv. 1750] [Boss]"
	NameBoss = "Kilo Admiral"
	NameQuestBoss = "MarineTreeIsland"
	LevelQuestBoss = 3
	CFrameQuestBoss = CFrame.new(2178, 29, -6737)
	CFrameBoss = CFrame.new(2846, 433, -7100)
	elseif (getgenv().Settings.Boss["Select Boss"] == "Captain Elephant [Lv. 1875] [Boss]") then
	MsBoss = "Captain Elephant [Lv. 1875] [Boss]"
	NameBoss = "Captain Elephant"
	NameQuestBoss = "DeepForestIsland"
	LevelQuestBoss = 3
	CFrameQuestBoss = CFrame.new(-13232, 333, -7631)
	CFrameBoss = CFrame.new(-13221, 325, -8405)
	elseif (getgenv().Settings.Boss["Select Boss"] == "Beautiful Pirate [Lv. 1950] [Boss]") then
	MsBoss = "Beautiful Pirate [Lv. 1950] [Boss]"
	NameBoss = "Beautiful Pirate"
	NameQuestBoss = "DeepForestIsland2"
	LevelQuestBoss = 3
	CFrameQuestBoss = CFrame.new(-12686, 391, -9902)
	CFrameBoss = CFrame.new(5182, 23, -20)
	elseif (getgenv().Settings.Boss["Select Boss"] == "Cake Queen [Lv. 2175] [Boss]") then
	MsBoss = "Cake Queen [Lv. 2175] [Boss]"
	NameBoss = "Cake Queen"
	NameQuestBoss = "IceCreamIslandQuest"
	LevelQuestBoss = 3
	CFrameQuestBoss = CFrame.new(-716, 382, -11010)
	CFrameBoss = CFrame.new(-821, 66, -10965)
	elseif (getgenv().Settings.Boss["Select Boss"] == "rip_indra True Form [Lv. 5000] [Raid Boss]") then
	MsBoss = "rip_indra True Form [Lv. 5000] [Raid Boss]"
	NameBoss = "rip_indra True Form"
	CFrameBoss = CFrame.new(-5359, 424, -2735)
	elseif (getgenv().Settings.Boss["Select Boss"] == "Longma [Lv. 2000] [Boss]") then
	MsBoss = "Longma [Lv. 2000] [Boss]"
	NameBoss = "Longma"
	CFrameBoss = CFrame.new(-10248.3936, 353.79129, -9306.34473)
	elseif (getgenv().Settings.Boss["Select Boss"] == "Soul Reaper [Lv. 2100] [Raid Boss]") then
	MsBoss = "Soul Reaper [Lv. 2100] [Raid Boss]"
	NameBoss = "Soul Reaper"
	CFrameBoss = CFrame.new(-9515.62109, 315.925537, 6691.12012)
	end
	end
	function GetBossName()
	for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
	if not getgenv().GetBoss then
	if ((v.Name == "The Gorilla King [Lv. 25] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 20)) then
	getgenv().Settings.Boss["Select Boss"] = "The Gorilla King [Lv. 25] [Boss]"
	elseif ((v.Name == "Bobby [Lv. 55] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 55)) then
	getgenv().Settings.Boss["Select Boss"] = "Bobby [Lv. 55] [Boss]"
	elseif ((v.Name == "Yeti [Lv. 110] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 105)) then
	getgenv().Settings.Boss["Select Boss"] = "Yeti [Lv. 110] [Boss]"
	elseif ((v.Name == "Mob Leader [Lv. 120] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 120)) then
	getgenv().Settings.Boss["Select Boss"] = "Mob Leader [Lv. 120] [Boss]"
	elseif ((v.Name == "Vice Admiral [Lv. 130] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 130)) then
	getgenv().Settings.Boss["Select Boss"] = "Vice Admiral [Lv. 130] [Boss]"
	elseif ((v.Name == "Warden [Lv. 175] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 175)) then
	getgenv().Settings.Boss["Select Boss"] = "Warden [Lv. 175] [Boss]"
	elseif ((v.Name == "Saber Expert [Lv. 200] [Boss]") and (game.Workspace.Map.Jungle.Final.Part.Transparency == 1)) then
	getgenv().Settings.Boss["Select Boss"] = "Saber Expert [Lv. 200] [Boss]"
	elseif ((v.Name == "Chief Warden [Lv. 200] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 200)) then
	getgenv().Settings.Boss["Select Boss"] = "Chief Warden [Lv. 200] [Boss]"
	elseif ((v.Name == "Swan [Lv. 225] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 250)) then
	getgenv().Settings.Boss["Select Boss"] = "Swan [Lv. 225] [Boss]"
	elseif ((v.Name == "Magma Admiral [Lv. 350] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 350)) then
	getgenv().Settings.Boss["Select Boss"] = "Magma Admiral [Lv. 350] [Boss]"
	elseif ((v.Name == "Fishman Lord [Lv. 425] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 425)) then
	getgenv().Settings.Boss["Select Boss"] = "Fishman Lord [Lv. 425] [Boss]"
	elseif ((v.Name == "Wysper [Lv. 500] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 500)) then
	getgenv().Settings.Boss["Select Boss"] = "Wysper [Lv. 500] [Boss]"
	elseif ((v.Name == "Thunder God [Lv. 575] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 575)) then
	getgenv().Settings.Boss["Select Boss"] = "Thunder God [Lv. 575] [Boss]"
	elseif ((v.Name == "Cyborg [Lv. 675] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 675)) then
	getgenv().Settings.Boss["Select Boss"] = "Cyborg [Lv. 675] [Boss]"
	elseif ((v.Name == "Diamond [Lv. 750] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 750)) then
	getgenv().Settings.Boss["Select Boss"] = "Diamond [Lv. 750] [Boss]"
	elseif ((v.Name == "Jeremy [Lv. 850] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 850)) then
	getgenv().Settings.Boss["Select Boss"] = "Jeremy [Lv. 850] [Boss]"
	elseif ((v.Name == "Fajita [Lv. 925] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 925)) then
	getgenv().Settings.Boss["Select Boss"] = "Fajita [Lv. 925] [Boss]"
	elseif ((v.Name == "Don Swan [Lv. 1000] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 1000) and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor", "1") == 0)) then
	getgenv().Settings.Boss["Select Boss"] = "Don Swan [Lv. 1000] [Boss]"
	elseif ((v.Name == "Smoke Admiral [Lv. 1150] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 1150)) then
	getgenv().Settings.Boss["Select Boss"] = "Smoke Admiral [Lv. 1150] [Boss]"
	elseif ((v.Name == "Cursed Captain [Lv. 1325] [Raid Boss]") and (game.Players.localPlayer.Data.Level.Value >= 1325)) then
	getgenv().Settings.Boss["Select Boss"] = "Cursed Captain [Lv. 1325] [Raid Boss]"
	elseif ((v.Name == "Awakened Ice Admiral [Lv. 1400] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 1400)) then
	getgenv().Settings.Boss["Select Boss"] = "Awakened Ice Admiral [Lv. 1400] [Boss]"
	elseif ((v.Name == "Tide Keeper [Lv. 1475] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 1475)) then
	getgenv().Settings.Boss["Select Boss"] = "Tide Keeper [Lv. 1475] [Boss]"
	elseif ((v.Name == "Stone [Lv. 1550] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 1550)) then
	getgenv().Settings.Boss["Select Boss"] = "Stone [Lv. 1550] [Boss]"
	elseif ((v.Name == "Island Empress [Lv. 1675] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 1675)) then
	getgenv().Settings.Boss["Select Boss"] = "Island Empress [Lv. 1675] [Boss]"
	elseif ((v.Name == "Kilo Admiral [Lv. 1750] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 1750)) then
	getgenv().Settings.Boss["Select Boss"] = "Kilo Admiral [Lv. 1750] [Boss]"
	elseif ((v.Name == "Captain Elephant [Lv. 1875] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 1875)) then
	getgenv().Settings.Boss["Select Boss"] = "Captain Elephant [Lv. 1875] [Boss]"
	elseif ((v.Name == "Beautiful Pirate [Lv. 1950] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 1950)) then
	getgenv().Settings.Boss["Select Boss"] = "Beautiful Pirate [Lv. 1950] [Boss]"
	elseif ((v.Name == "Cake Queen [Lv. 2175] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 2175)) then
	getgenv().Settings.Boss["Select Boss"] = "Cake Queen [Lv. 2175] [Boss]"
	end
	end
	end
	end

local function CheckMaterial(v1)
	if World1 then 
		if (v1=="Magma Ore") then 
			MaterialMob={"Military Soldier [Lv. 300]","Military Spy [Lv. 325]"}
			CFrameMon=CFrame.new( -5815,84,8820)
		elseif ((v1=="Leather") or (v1=="Scrap Metal")) then 
			MaterialMob={"Brute [Lv. 45]"}
			CFrameMon=CFrame.new( -1145,15,4350)
		elseif (v1=="Angel Wings") then 
			MaterialMob={"God's Guard [Lv. 450]"}
			CFrameMon=CFrame.new( -4698,845, -1912)
		elseif (v1=="Fish Tail") then 
			MaterialMob={"Fishman Warrior [Lv. 375]","Fishman Commando [Lv. 400]"}
			CFrameMon=CFrame.new(61123,19,1569)
		end 
	end 
	if World2 then 
		if (v1=="Magma Ore") then 
			MaterialMob={"Magma Ninja [Lv. 1175]"}
			CFrameMon=CFrame.new( -5428,78, -5959)
		elseif (v1=="Scrap Metal") then
			MaterialMob={"Swan Pirate [Lv. 775]"}
			CFrameMon=CFrame.new(878,122,1235)
		elseif (v1=="Radioactive Material") then 
			MaterialMob={"Factory Staff [Lv. 800]"}
			CFrameMon=CFrame.new(295,73, -56)
		elseif (v1=="Vampire Fang") then 
			MaterialMob={"Vampire [Lv. 975]"}
			CFrameMon=CFrame.new( -6033,7, -1317)
		elseif (v1=="Mystic Droplet") then 
			MaterialMob={"Water Fighter [Lv. 1450]","Sea Soldier [Lv. 1425]"}
			CFrameMon=CFrame.new( -3385,239, -10542)
		end 
	end 
	if World3 then 
		if (v1=="Mini Tusk") then 
			MaterialMob={"Mythological Pirate [Lv. 1850]"}
			CFrameMon=CFrame.new( -13545,470, -6917)
		elseif (v1=="Fish Tail") then 
			MaterialMob={"Fishman Raider [Lv. 1775]","Fishman Captain [Lv. 1800]"}
			CFrameMon=CFrame.new( -10993,332, -8940)
		elseif (v1=="Scrap Metal") then 
			MaterialMob={"Jungle Pirate [Lv. 1900]"}
			CFrameMon=CFrame.new( -12107,332, -10549)
		elseif (v1=="Dragon Scale") then 
			MaterialMob={"Dragon Crew Archer [Lv. 1600]","Dragon Crew Warrior [Lv. 1575]"}
			CFrameMon=CFrame.new(6594,383,139)
		elseif (v1=="Conjured Cocoa") then 
			MaterialMob={"Cocoa Warrior [Lv. 2300]","Chocolate Bar Battler [Lv. 2325]","Sweet Thief [Lv. 2350]","Candy Rebel [Lv. 2375]"}
			CFrameMon=CFrame.new(620.6344604492188,78.93644714355469, -12581.369140625)
		elseif (v1=="Demonic Wisp") then MaterialMob={"Demonic Soul [Lv. 2025]"}
			CFrameMon=CFrame.new( -9507,172,6158)
		elseif (v1=="Gunpowder") then MaterialMob={"Pistol Billionaire [Lv. 1525]"}
			CFrameMon=CFrame.new( -469,74,5904)
		end 
	end 
end

Library:Notify("Loading User Interface.")
local Tabs = {
['General'] = Window:AddTab('General'), 
['Automatics'] = Window:AddTab('Items'), 
['Players'] = Window:AddTab('Players'), 
['Misceallaneous'] = Window:AddTab('Misceallaneous'), 
['Miscellaneous'] = Window:AddTab('Configuration'),
}

local Mainautoframx = Tabs['General']:AddLeftTabbox()
local Mainautofram = Mainautoframx:AddTab('\\\\\  Auto Farm Level  //')

Mainautofram:AddToggle('AutoFarmLevel', {
Text = 'Auto Farm Level',
Default = getgenv().Settings.Main["Auto Farm Level"],
}):OnChanged(function(value)
getgenv().Settings.Main["Auto Farm Level"] = value
Auto_Farm_Level = value
if (value == false) then
toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
end
getgenv().SaveSetting()
end)

AttackRandomType = 1
LPH_NO_VIRTUALIZE(function()
	task.spawn(function()
		while wait() do 
			AttackRandomType = math.random(1,5)
	--		wait(0.3)
		end
	end)
end)()

getgenv().RedeemCodeLocalFastAutoFarm = false
LPH_JIT_MAX(function()
	function AutoFarmLevel()
		GetQuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title
		GetQuest = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
		local MyLevel = game.Players.LocalPlayer.Data.Level.Value

		if getgenv().Settings.Main["Auto Farm Level"] and (MyLevel >= 15 and MyLevel <= 300) then
			if getgenv().Settings.Configs["Auto Haki"] then
				if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
				end
			end
			if getgenv().RedeemCodeLocalFastAutoFarm == false then
				function Redeem(value)
					game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(value)
				end
				for i,v in pairs(CodeApi) do
					Redeem(v) 
				end
				wait()
				getgenv().RedeemCodeLocalFastAutoFarm = true
			end
			if MyLevel >= 15 and MyLevel <= 70 then
				local CFrameMon = CFrame.new(-7682, 5608, -447)
				if game:GetService("Workspace").Enemies:FindFirstChild("Shanda [Lv. 475]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if getgenv().Settings.Main["Auto Farm Level"] and v.Name == "Shanda [Lv. 475]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
							repeat wait()
								FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,1))
								if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
									if FarmtoTarget then FarmtoTarget:Stop() end
									StartMagnet = true
									PosMon = v.HumanoidRootPart.CFrame
									if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
										game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
										game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
									end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 40, 0)
									Fast = true
									EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
								end
							until not (game:GetService("Workspace").Enemies:FindFirstChild("Shanda [Lv. 475]")) or not (getgenv().Settings.Main["Auto Farm Level"] or getgenv().Settings.Main["Auto Farm Level"]) or v.Humanoid.Health <= 0 or not v.Parent
							StartMagnet = false
							Fast = false
						end
					end
				else
					Modstween = toTarget(CFrameMon)
					if World1 and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude >1500 then
						if Modstween then Modstween:Stop() end wait(.5)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))						elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
						if Modstween then Modstween:Stop() end
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
					end 
				end
			elseif MyLevel >= 70 and MyLevel <= 300 then
				if GetQuest.Visible == false then
					if not tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")):find("We heard some") then 
						local CFrameMon = CFrame.new(-7682, 5608, -447)
						if game:GetService("Workspace").Enemies:FindFirstChild("Shanda [Lv. 475]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if getgenv().Settings.Main["Auto Farm Level"] and v.Name == "Shanda [Lv. 475]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
									repeat wait()
										FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,1))
										if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
											if FarmtoTarget then FarmtoTarget:Stop() end
											StartMagnet = true
											PosMon = v.HumanoidRootPart.CFrame
											if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
												game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
												game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
											end
											if AttackRandomType == 1 then
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 60, 1)
											elseif AttackRandomType == 2 then
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 60)
											elseif AttackRandomType == 3 then
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(1, 1, -60)
											elseif AttackRandomType == 4 then
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(60, 1, 0)
											elseif AttackRandomType == 5 then
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(-60, 1, 0)
											else
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 60, 1)
											end
											Fast = true
											EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
										end
									until not (game:GetService("Workspace").Enemies:FindFirstChild("Shanda [Lv. 475]")) or not (getgenv().Settings.Main["Auto Farm Level"] or getgenv().Settings.Main["Auto Farm Level"]) or v.Humanoid.Health <= 0 or not v.Parent
									StartMagnet = false
									Fast = false
								end
							end
						else
							Modstween = toTarget(CFrameMon)
							if World1 and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude >1500 then
								if Modstween then Modstween:Stop() end wait(.5)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))								elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
								if Modstween then Modstween:Stop() end
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
							end 
						end
					end
				elseif GetQuest.Visible == true then
					local AllPlayersTableSkipFarm = {}
				--	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
					for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
						table.insert(AllPlayersTableSkipFarm,v.Name)
					end
					if table.find(AllPlayersTableSkipFarm,GetQuestTitle.Text:split(" ")[2]) then
						for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
							if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,v.Name) then
								if getgenv().Settings.Main["Auto Farm Level"] and getgenv().Settings.Main["Auto Farm Level"] and v.Name == GetQuestTitle.Text:split(" ")[2] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
									repeat wait()
										if World1 and (Vector3.new(61163.8515625, 11.6796875, 1819.7841796875) - v.HumanoidRootPart.Position).magnitude < 5000 then
											if FarmtoTarget then FarmtoTarget:Stop() end
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
										elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 150 then
											FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame)
										elseif v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
											if FarmtoTarget then FarmtoTarget:Stop() end
											if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.PvpDisabled.Visible == true then
												local args = {
													[1] = "EnablePvp"
												}

												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											end
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												local args = {
													[1] = "Buso"
												}
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											end
											-- game:GetService('VirtualUser'):CaptureController()
											-- game:GetService('VirtualUser'):ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
											-- if CombatFrameworkR.activeController.hitboxMagnitude ~= 55 and CombatFrameworkR.activeController and CombatFrameworkR.activeController.equipped then
											--     CombatFrameworkR.activeController.hitboxMagnitude = 55
											-- end
											if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
												game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
												game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
											end
											if AttackRandomType == 1 then
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 7, 1)
											elseif AttackRandomType == 2 then
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 7)
											elseif AttackRandomType == 3 then
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(1, 1, -7)
											elseif AttackRandomType == 4 then
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(7, 1, 0)
											elseif AttackRandomType == 5 then
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(-7, 1, 0)
											else
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 7, 1)
											end
											EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
											Fast=true
											wait(.1)
											 game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
											 game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
											game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
											game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
										end
									until not getgenv().Settings.Main["Auto Farm Level"] or not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,v.Name) or v.Humanoid.Health <= 0 or not v.Parent or GetQuest.Visible == false
								end
							end
						end
					else
						if game:GetService("Workspace").Enemies:FindFirstChild(Name) then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if getgenv().Settings.Main["Auto Farm Level"] and v.Name == Name and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
									if string.find(GetQuestTitle.Text, QuestName) then
										repeat wait()
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 150 then
												FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,1))
											elseif v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
												if FarmtoTarget then FarmtoTarget:Stop() end
												StartMagnet = true
												PosMon = v.HumanoidRootPart.CFrame
												if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
													game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
													game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
												end
												if AttackRandomType == 1 then
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(10, 40, 0)
												elseif AttackRandomType == 2 then
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 40, 10)
												elseif AttackRandomType == 3 then
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(10, 40, 0)
												elseif AttackRandomType == 4 then
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 40, 10)
												elseif AttackRandomType == 5 then
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(10, 40, 0)
												else
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 40, 10)
												end
												Fast = true
												EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
											end
										until not game:GetService("Workspace").Enemies:FindFirstChild(Name) or not getgenv().Settings.Main["Auto Farm Level"] or not string.find(GetQuestTitle.Text, QuestName) or v.Humanoid.Health <= 0 or not v.Parent or GetQuest.Visible == false
										Fast = false
										StartMagnet = false
									else
										Com("F_","AbandonQuest")
									end
								end
							end
						else
							StartMagnet = false
							if not string.find(GetQuestTitle.Text, NameCheckQuest) then Com("F_","AbandonQuest") end
							Modstween = toTarget(CFrameMon)
							if World1 and (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
								if Questtween then Questtween:Stop() end wait(.5)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
							elseif World1 and not (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
								if Questtween then Questtween:Stop() end wait(.5)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
							elseif World2 and string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
								if Questtween then Questtween:Stop() end
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
							elseif World2 and not string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
								if Questtween then Questtween:Stop() end
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
							elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
								if Modstween then Modstween:Stop() end
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
							end 
						end
					end
				end
			end
		else
			if not string.find(GetQuestTitle.Text, NameMon) then game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("AbandonQuest") end
			if GetQuest.Visible == false then
				StartMagnet = false
				Fast = false
				Questtween = toTarget(CFrameQuest.Position,CFrameQuest)
				if World1 and (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
					if Questtween then Questtween:Stop() end wait(.5)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
				elseif World1 and not (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
					if Questtween then Questtween:Stop() end wait(.5)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
				elseif World2 and string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
					if Questtween then Questtween:Stop() end
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
				elseif World2 and not string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
					if Questtween then Questtween:Stop() end
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
				elseif (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
					if Questtween then Questtween:Stop() end
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
					wait(1)
					if game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
						Com("F_","StartQuest", QuestName, LevelQuest)
						
					end
				end
			elseif GetQuest.Visible == true then
				if game:GetService("Workspace").Enemies:FindFirstChild(Name) then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if getgenv().Settings.Main["Auto Farm Level"] and v.Name == Name and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
							if string.find(GetQuestTitle.Text, NameMon) then
								repeat wait()
									FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,getgenv().Settings.Configs["Distance Auto Farm"],0))
									if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
										if FarmtoTarget then FarmtoTarget:Stop() end
										if getgenv().Settings.Configs["Auto Haki"] then
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
											end
										end
										if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().Settings.Configs["Select Weapon"]) then
											wait()
											EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
										end
										StartMagnet = true
										Fast = true
										if game.Players.LocalPlayer.Data.Level.Value >= 20 and game.Players.LocalPlayer.Data.Level.Value <= 90 then
											getgenv().Settings.Configs["Fast Attack Type"] = "Slow"
										else
											getgenv().Settings.Configs["Fast Attack Type"] = "Fast"
										end
										if not getgenv().Settings.Configs["Fast Attack"] then
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										end
												v.HumanoidRootPart.Transparency = 1
										v.Humanoid.JumpPower = 0
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid:ChangeState(11)
										v.Humanoid:ChangeState(14)
										PosMon = v.HumanoidRootPart.CFrame
										if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
											game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
											game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
										end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,getgenv().Settings.Configs["Distance Auto Farm"],0)
									end
								until not game:GetService("Workspace").Enemies:FindFirstChild(Name) or not getgenv().Settings.Main["Auto Farm Level"] or not string.find(GetQuestTitle.Text, NameMon) or v.Humanoid.Health <= 0 or not v.Parent or GetQuest.Visible == false
								StartMagnet = false
								Fast = false
							else
								Com("F_","AbandonQuest")
							end
						end
					end
				else
					StartMagnet = false
					Fast = false
					if not string.find(GetQuestTitle.Text, NameMon) then Com("F_","AbandonQuest") end
					Modstween = toTarget(CFrameMon.Position,CFrameMon)
					if World1 and (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
						if Modstween then Modstween:Stop() end wait(.5)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
					elseif World1 and not (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
						if Modstween then Modstween:Stop() end wait(.5)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
					elseif World2 and string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
						if Modstween then Modstween:Stop() end wait(.5)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
					elseif World2 and not string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
						if Modstween then Modstween:Stop() end wait(.5)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
					elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
						if Modstween then Modstween:Stop() end
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
					end 
				end
			end
		end
	end
end)()

-- [Check Notification]

LPH_JIT_MAX(function()
	function CheckNotifyComplete()
		for i, v in pairs(game:GetService("Players")["LocalPlayer"].PlayerGui:FindFirstChild("Notifications"):GetChildren()) do
			if v.Name == "NotificationTemplate" then
				if string.lower(v.Text):find("quest completed") then
					pcall(function()
						v:Destroy()
					end)
					return true
				end
			end
		end
		return false
	end
end)()

local NoLoopDuplicate = false
local SubQuest = false
local oldmob = Name
local oldcheckquest = NameMon

LPH_JIT_MAX(function()
	task.spawn(function()
		while wait(.1) do
			pcall(function()
				if getgenv().Settings.Main["Auto Farm Level"] then
					if getgenv().Settings.Configs["Double Quest"] then 
						if SubQuest == true then 
							if LevelFarm then 
								if tonumber(LevelFarm-1) ~= 0 then 
									CheckOldQuest(tonumber(LevelFarm-1))
								end
							end
						else
							CheckQuest()
							oldmob = Name
							oldcheckquest = NameMon
							task.spawn(function()
								if NoLoopDuplicate == false then 
									if CheckNotifyComplete() and getgenv().Settings.Main["Auto Farm Level"] then
										NoLoopDuplicate = true 
										while wait() do
											SubQuest = true
											if CheckNotifyComplete() or getgenv().Settings.Main["Auto Farm Level"] == false then
												break
											end
										end
										SubQuest = false
										NoLoopDuplicate = false
									end
								end
							end)
							if SubQuest == true then  
								if LevelFarm then 
									if tonumber(LevelFarm-1) ~= 0 then 
										CheckOldQuest(tonumber(LevelFarm-1))
									end
								end
							end
						end
					else
						CheckQuest()
					end
					AutoFarmLevel()
				end
			end)
		end
	end)
end)()
Mainautofram:AddToggle('Hello', {
Text = '- Double Quest',
Default = getgenv().Settings.Configs["Double Quest"],
}):OnChanged(function(value)
getgenv().Settings.Configs["Double Quest"] = value
getgenv().SaveSetting()
end)
if World1 == true then
Mainautofram:AddToggle('AutoFarmLevel', {
Text = '- Auto New World',
Default = getgenv().Settings.Main["Auto New World"],
}):OnChanged(function(value)
getgenv().Settings.Main["Auto New World"] = value
if (value == false) then
wait()
toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
wait()
end
getgenv().SaveSetting()
task.spawn(function()
	while task.wait() do
pcall(function()
if getgenv().Settings.Main["Auto New World"] then
if (game.Players.LocalPlayer.Data.Level.Value >= 700) then
if Auto_Farm_Level then
getgenv().Settings.Main["Auto Farm Level"] = false
end
if ((game.Workspace.Map.Ice.Door.CanCollide == true) and (game.Workspace.Map.Ice.Door.Transparency == 0)) then
wait(0.5)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress", "Detective")
EquipWeapon("Key")
repeat
wait()
toTarget(CFrame.new(1347.7124, 37.3751602, -1325.6488))
until ((CFrame.new(1347.7124, 37.3751602, -1325.6488).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) or not getgenv().Settings.Main["Auto New World"] 
wait(3)
elseif ((game.Workspace.Map.Ice.Door.CanCollide == false) and (game.Workspace.Map.Ice.Door.Transparency == 1)) then
if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") then
for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if ((v.Name == "Ice Admiral [Lv. 700] [Boss]") and (v.Humanoid.Health > 0)) then
repeat
wait()

if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().Settings.Configs["Select Weapon"]) then
wait()
EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
end
toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, getgenv().Settings.Configs["Distance Auto Farm"], 0))
Fast = true
if not getgenv().Settings.Configs["Fast Attack"] then
game:GetService("VirtualUser"):CaptureController()
game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
end
if getgenv().Settings.Configs["Show Hitbox"] then
v.HumanoidRootPart.Transparency = fabox_LocalTransparency
else
v.HumanoidRootPart.Transparency = 1
end
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
until (v.Humanoid.Health <= 0) or not v.Parent 
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
end
end
else
toTarget(CFrame.new(1347.7124, 37.3751602, -1325.6488))
end
else
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
end
end
end
end)
end
end)
end)
end
if World2 == true then
Mainautofram:AddToggle('Hello', {
Text = '- Auto Third World',
Default = getgenv().Settings.Main["Auto Third Sea"],
}):OnChanged(function(value)
getgenv().Settings.Main["Auto Third Sea"] = value
if (value == false) then
wait()
toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
wait()
end
getgenv().SaveSetting()
task.spawn(function()
	while task.wait() do
pcall(function()
if getgenv().Settings.Main["Auto Third Sea"] then
if (game.Players.LocalPlayer.Data.Level.Value >= 1500) then
if Auto_Farm_Level then
getgenv().Settings.Main["Auto Farm Level"] = false
end
if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 3) then
if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess ~= nil) then
Com("F_", "TravelZou")
if (game:GetService("ReplicatedStorage").Remotes['CommF_']:InvokeServer("ZQuestProgress", "Check") == 0) then
if game.Workspace.Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") then
for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
if ((v.Name == "rip_indra [Lv. 1500] [Boss]") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
repeat
wait()
if ((v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300) then
Farmtween = toTarget(v.HumanoidRootPart.Position, v.HumanoidRootPart.CFrame)
elseif ((v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300) then
if Farmtween then
Farmtween:Stop()
end
Fast = true

if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().Settings.Configs["Select Weapon"]) then
wait()
EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
end
PosMon = v.HumanoidRootPart.CFrame
if not getgenv().Settings.Configs["Fast Attack"] then
game:GetService("VirtualUser"):CaptureController()
game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
end
if getgenv().Settings.Configs["Show Hitbox"] then
v.HumanoidRootPart.Transparency = fabox_LocalTransparency
else
v.HumanoidRootPart.Transparency = 1
end

toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, getgenv().Settings.Configs["Distance Auto Farm"], 0))
end
until not getgenv().Settings.Main["Auto Third Sea"] or not v.Parent or (v.Humanoid.Health <= 0) 
wait(0.5)
Check = 2
repeat
wait()
Com("F_", "TravelZou")
until Check == 1 
Fast = false
end
end
else
Com("F_", "ZQuestProgress", "Check")
Com("F_", "ZQuestProgress", "Begin")
end
elseif (game:GetService("ReplicatedStorage").Remotes['CommF_']:InvokeServer("ZQuestProgress", "Check") == 1) then
Com("F_", "TravelZou")
elseif game.Workspace.Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
if ((v.Name == "Don Swan [Lv. 1000] [Boss]") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
repeat
wait()
if ((v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300) then
Farmtween = toTarget(v.HumanoidRootPart.Position, v.HumanoidRootPart.CFrame)
elseif ((v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300) then
if Farmtween then
Farmtween:Stop()
end
Fast = true

if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().Settings.Configs["Select Weapon"]) then
wait()
EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
end
PosMon = v.HumanoidRootPart.CFrame
if not getgenv().Settings.Configs["Fast Attack"] then
game:GetService("VirtualUser"):CaptureController()
game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
end
if getgenv().Settings.Configs["Show Hitbox"] then
v.HumanoidRootPart.Transparency = fabox_LocalTransparency
else
v.HumanoidRootPart.Transparency = 1
end
toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, getgenv().Settings.Configs["Distance Auto Farm"], 0))
end
until not getgenv().Settings.Main["Auto Third Sea"] or not v.Parent or (v.Humanoid.Health <= 0) 
Fast = false
end
end
else
TweenDonSwanthireworld = toTarget(CFrame.new(2288.802, 15.1870775, 863.034607).Position, CFrame.new(2288.802, 15.1870775, 863.034607))
if ((CFrame.new(2288.802, 15.1870775, 863.034607).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300) then
if TweenDonSwanthireworld then
TweenDonSwanthireworld:Stop()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2288.802, 15.1870775, 863.034607)
end
end
end
elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil) then
TabelDevilFruitStore = {}
TabelDevilFruitOpen = {}
for i, v in pairs(game:GetService("ReplicatedStorage").Remotes['CommF_']:InvokeServer("getInventoryFruits")) do
for i1, v1 in pairs(v) do
if (i1 == "Name") then
table.insert(TabelDevilFruitStore, v1)
end
end
end
for i, v in next, game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("GetFruits") do
if (v.Price >= 1000000) then
table.insert(TabelDevilFruitOpen, v.Name)
end
end
for i, DevilFruitOpenDoor in pairs(TabelDevilFruitOpen) do
for i1, DevilFruitStore in pairs(TabelDevilFruitStore) do
if ((DevilFruitOpenDoor == DevilFruitStore) and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil)) then
if not game.Players.LocalPlayer.Backpack:FindFirstChild(DevilFruitStore) then
Com("F_", "LoadFruit", DevilFruitStore)
else
Com("F_", "TalkTrevor", "1")
Com("F_", "TalkTrevor", "2")
Com("F_", "TalkTrevor", "3")
end
end
end
end
Com("F_", "TalkTrevor", "1")
Com("F_", "TalkTrevor", "2")
Com("F_", "TalkTrevor", "3")
end
elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 0) then
if (string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and (game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true)) then
if game.Workspace.Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
if (v.Name == "Swan Pirate [Lv. 775]") then
pcall(function()
repeat
wait()
if ((v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300) then
Farmtween = toTarget(v.HumanoidRootPart.Position, v.HumanoidRootPart.CFrame)
elseif ((v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300) then
if Farmtween then
Farmtween:Stop()
end
Fast = true
StartMagnet = true

if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().Settings.Configs["Select Weapon"]) then
wait()
EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
end
PosMon = v.HumanoidRootPart.CFrame
if not getgenv().Settings.Configs["Fast Attack"] then
game:GetService("VirtualUser"):CaptureController()
game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
end
if getgenv().Settings.Configs["Show Hitbox"] then
v.HumanoidRootPart.Transparency = fabox_LocalTransparency
else
v.HumanoidRootPart.Transparency = 1
end
toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, getgenv().Settings.Configs["Distance Auto Farm"], 0))
end
until not v.Parent or (v.Humanoid.Health <= 0) or (getgenv().Settings.Main["Auto Third Sea"] == false) or (game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false) 
Fast = false
StartMagnet = false
end)
end
end
else
Questtween = toTarget(CFrame.new(1057.92761, 137.614319, 1242.08069).Position, CFrame.new(1057.92761, 137.614319, 1242.08069))
if ((CFrame.new(1057.92761, 137.614319, 1242.08069).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300) then
if Bartilotween then
Bartilotween:Stop()
end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1057.92761, 137.614319, 1242.08069)
end
end
else
Bartilotween = toTarget(CFrame.new(-456.28952, 73.0200958, 299.895966).Position, CFrame.new(-456.28952, 73.0200958, 299.895966))
if ((CFrame.new(-456.28952, 73.0200958, 299.895966).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300) then
if Bartilotween then
Bartilotween:Stop()
end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-456.28952, 73.0200958, 299.895966)
Com("F_", "StartQuest", "BartiloQuest", 1)
end
end
elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 1) then
if game.Workspace.Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
if (v.Name == "Jeremy [Lv. 850] [Boss]") then
repeat
wait()
if ((v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300) then
Farmtween = toTarget(v.HumanoidRootPart.Position, v.HumanoidRootPart.CFrame)
elseif ((v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300) then
if Farmtween then
Farmtween:Stop()
end
Fast = true

if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().Settings.Configs["Select Weapon"]) then
wait()
EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
end
PosMon = v.HumanoidRootPart.CFrame
if not getgenv().Settings.Configs["Fast Attack"] then
game:GetService("VirtualUser"):CaptureController()
game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
end
if getgenv().Settings.Configs["Show Hitbox"] then
v.HumanoidRootPart.Transparency = fabox_LocalTransparency
else
v.HumanoidRootPart.Transparency = 1
end
toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, getgenv().Settings.Configs["Distance Auto Farm"], 0))
end
until not v.Parent or (v.Humanoid.Health <= 0) or (getgenv().Settings.Main["Auto Third Sea"] == false) 
Fast = false
end
end
else
Bartilotween = toTarget(CFrame.new(2099.88159, 448.931, 648.997375).Position, CFrame.new(2099.88159, 448.931, 648.997375))
if ((CFrame.new(2099.88159, 448.931, 648.997375).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300) then
if Bartilotween then
Bartilotween:Stop()
end
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2099.88159, 448.931, 648.997375)
end
end
elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 2) then
if ((CFrame.new(-1836, 11, 1714).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300) then
Bartilotween = toTarget(CFrame.new(-1836, 11, 1714).Position, CFrame.new(-1836, 11, 1714))
elseif ((CFrame.new(-1836, 11, 1714).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300) then
if Bartilotween then
Bartilotween:Stop()
end
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1836, 11, 1714)
wait(0.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1850.49329, 13.1789551, 1750.89685)
wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.87305, 19.3777466, 1712.01807)
wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1803.94324, 16.5789185, 1750.89685)
wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.55835, 16.8604317, 1724.79541)
wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1869.54224, 15.987854, 1681.00659)
wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1800.0979, 16.4978027, 1684.52368)
wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1819.26343, 14.795166, 1717.90625)
wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1813.51843, 14.8604736, 1724.79541)
end
end
end
end
end)
end
end)
end)
Mainautofram:AddToggle('AutoFarmLevel', {
	Text = '- Auto Factory',
	Default = false,
	}):OnChanged(function(value)
		getgenv().AutoFactory = value
	end)
	spawn(function()
		while wait() do
			pcall(function()
				if getgenv().AutoFactory then
					if game:GetService("Workspace").Enemies:FindFirstChild("Core") then
						for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if ((v.Name == "Core") and (v.Humanoid.Health > 0)) then
								repeat
									task.wait()
									AutoHaki()
									EquipWeapon(getgenv().SelectWeapon)
									toTarget(CFrame.new(448.46756, 199.356781, -441.389252))
									game:GetService("VirtualUser"):CaptureController()
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670), workspace.CurrentCamera.CFrame)
								until (v.Humanoid.Health <= 0) or (getgenv().AutoFactory == false) 
							end
						end
					else
						toTarget(CFrame.new(448.46756, 199.356781, -441.389252))
					end
				end
			end)
		end
	end)
end

Mainautofram:AddLabel("      \\\\\  Misceallaneous  //")

Mainautofram:AddToggle('AutoFarmLevel', {
	Text = 'Auto Buy Legendary Swords',
	Default = false,
	}):OnChanged(function(value)
		getgenv().Settings.Main["Auto Buy Legendary Sword"] = value
	end)

Mainautofram:AddLabel("      \\\\\  Fighting Style //")

local SupComplete = false
local EClawComplete = false
local TalComplete = false
local SharkComplete = false
local DeathComplete = false
local GodComplete = false
function GetAllMeleeFarm()
if (SupComplete == false) then
local args = {[1]="BuySuperhuman"}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
if (CheckMasteryWeapon("Superhuman", 400) == "true UpTo") then
SupComplete = true
end
end
wait(0.5)
if (EClawComplete == false) then
local string_1 = "BuyElectricClaw"
local Target = game:GetService("ReplicatedStorage").Remotes['CommF_']
Target:InvokeServer(string_1)
if (CheckMasteryWeapon("Electric Claw", 400) == "true UpTo") then
EClawComplete = true
end
end
wait(0.5)
if (TalComplete == false) then
game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon")
if (CheckMasteryWeapon("Dragon Talon", 400) == "true UpTo") then
TalComplete = true
end
end
wait(0.5)
if (SharkComplete == false) then
local args = {[1]="BuySharkmanKarate"}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
if (CheckMasteryWeapon("Sharkman Karate", 400) == "true UpTo") then
SharkComplete = true
end
end
wait(0.5)
if (DeathComplete == false) then
local args = {[1]="BuyDeathStep"}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
if (CheckMasteryWeapon("Death Step", 400) == "true UpTo") then
DeathComplete = true
end
end
if (GodComplete == false) then
local args = {[1]="BuyGodhuman"}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
if (CheckMasteryWeapon("Godhuman", 350) == "true UpTo") then
GodComplete = true
end
end
end


Mainautofram:AddToggle('Hello', {
Text = 'Auto God Human',
Default = getgenv().Settings.FightingStyle["Auto God Human"],
}):OnChanged(function(value)
getgenv().Settings.FightingStyle["Auto God Human"] = value
BuyGodhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman", true))
if BuyGodhuman then
if (BuyGodhuman ~= 1) then
GetAllMeleeFarm()
end
end
getgenv().SaveSetting()
task.spawn(function()
	while task.wait() do
pcall(function()
if getgenv().Settings.FightingStyle["Auto God Human"] then
BuyGodhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman", true))
if BuyGodhuman then
if (BuyGodhuman == 1) then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
getgenv().Settings.FightingStyle["Auto God Human"] = false
end
end
if not HasTalon then
BuyDragonTalon = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true))
if BuyDragonTalon then
if (BuyDragonTalon == 1) then
HasTalon = true
end
end
end
if not HasSuperhuman then
BuySuperhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman", true))
if BuySuperhuman then
if (BuySuperhuman == 1) then
HasSuperhuman = true
end
end
end
if not HasKarate then
BuySharkmanKarate = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true))
if BuySharkmanKarate then
if (BuySharkmanKarate == 1) then
HasKarate = true
end
end
end
if not HasDeathStep then
BuyDeathStep = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep", true))
if BuyDeathStep then
if (BuyDeathStep == 1) then
HasDeathStep = true
end
end
end
if not HasElectricClaw then
BuyElectricClaw = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", true))
if BuyElectricClaw then
if (BuyElectricClaw == 1) then
HasElectricClaw = true
end
end
end
if not HasSuperhuman then
if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
if (not game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") and not game.Players.LocalPlayer.Character:FindFirstChild("Combat")) then
if (not game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and not game.Players.LocalPlayer.Character:FindFirstChild("Black Leg")) then
if (not game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and not game.Players.LocalPlayer.Character:FindFirstChild("Electro")) then
if (not game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and not game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate")) then
if (not game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and not game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw")) then
if (not game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") and not game.Players.LocalPlayer.Character:FindFirstChild("Superhuman")) then
local args = {[1]="BuyElectro"}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
end
end
end
end
end
getgenv().Settings.Configs["Select Weapon"] = GetFightingStyle("Melee")
if (game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat")) then
local args = {[1]="BuyElectro"}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
if (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300)) then
local args = {[1]="BuyBlackLeg"}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
if (game.Players.LocalPlayer.Character:FindFirstChild("Electro") and (game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300)) then
local args = {[1]="BuyBlackLeg"}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
if (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300)) then
local args = {[1]="BuyFishmanKarate"}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
if (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300)) then
local args = {[1]="BuyFishmanKarate"}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
if (game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300)) then
local args = {[1]="BlackbeardReward",[2]="DragonClaw",[3]="2"}
HaveDragonClaw = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
if (getgenv().Settings.FightingStyle["Auto God Human"] and (game.Players.LocalPlayer.Data.Fragments.Value <= 1500) and (HaveDragonClaw == 0)) then
if (game.Players.LocalPlayer.Data.Level.Value > 1100) then
if Auto_Farm_Level then
getgenv().Settings.Main["Auto Farm Level"] = false
end
end
else
if Auto_Farm_Level then
getgenv().Settings.Main["Auto Farm Level"] = true
end
local args = {[1]="BlackbeardReward",[2]="DragonClaw",[3]="2"}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
end
if (game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and (game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300)) then
local args = {[1]="BlackbeardReward",[2]="DragonClaw",[3]="2"}
HaveDragonClaw = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
if (getgenv().Settings.FightingStyle["Auto God Human"] and (game.Players.LocalPlayer.Data.Fragments.Value <= 1500) and (HaveDragonClaw == 0)) then
if (game.Players.LocalPlayer.Data.Level.Value > 1100) then
if Auto_Farm_Level then
getgenv().Settings.Main["Auto Farm Level"] = false
end
end
else
if Auto_Farm_Level then
getgenv().Settings.Main["Auto Farm Level"] = true
end
local args = {[1]="BlackbeardReward",[2]="DragonClaw",[3]="2"}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
if Auto_Farm_Level then
getgenv().Settings.Main["Auto Farm Level"] = true
end
end
end
if (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300)) then
if Auto_Farm_Level then
getgenv().Settings.Main["Auto Farm Level"] = true
end
local args = {[1]="BuySuperhuman"}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
if (game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and (game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300)) then
if Auto_Farm_Level then
getgenv().Settings.Main["Auto Farm Level"] = true
end
local args = {[1]="BuySuperhuman"}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
end
elseif not HasKarate then
if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
if (not game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and not game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate")) then
if (not game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and not game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate")) then
local args = {[1]="BuyFishmanKarate"}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
end
if (game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 400)) then
if ((game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true) == "I lost my house keys, could you help me find them? Thanks.") and not game.Players.LocalPlayer.Character:FindFirstChild("Water Key") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key")) then
if World2 then
KillSharkMan = true
if Auto_Farm_Level then
getgenv().Settings.Main["Auto Farm Level"] = false
end
else
KillSharkMan = false
if Auto_Farm_Level then
getgenv().Settings.Main["Auto Farm Level"] = true
end
end
elseif (tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true)) == 1) then
KillSharkMan = false
if Auto_Farm_Level then
getgenv().Settings.Main["Auto Farm Level"] = true
end
local args = {[1]="BuySharkmanKarate"}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
elseif (game.Players.LocalPlayer.Character:FindFirstChild("Water Key") or game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key")) then
KillSharkMan = false
if Auto_Farm_Level then
getgenv().Settings.Main["Auto Farm Level"] = true
end
local args = {[1]="BuySharkmanKarate"}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
end
if (game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and (game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 400)) then
if ((game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true) == "I lost my house keys, could you help me find them? Thanks.") and not game.Players.LocalPlayer.Character:FindFirstChild("Water Key") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key")) then
if World2 then
KillSharkMan = true
if Auto_Farm_Level then
getgenv().Settings.Main["Auto Farm Level"] = false
end
else
if Auto_Farm_Level then
getgenv().Settings.Main["Auto Farm Level"] = true
end
KillSharkMan = false
end
elseif (tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true)) == 1) then
KillSharkMan = false
if Auto_Farm_Level then
getgenv().Settings.Main["Auto Farm Level"] = true
end
local args = {[1]="BuySharkmanKarate"}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
elseif (game.Players.LocalPlayer.Character:FindFirstChild("Water Key") or game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key")) then
KillSharkMan = false
if Auto_Farm_Level then
getgenv().Settings.Main["Auto Farm Level"] = true
end
local args = {[1]="BuySharkmanKarate"}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
end
getgenv().Settings.Configs["Select Weapon"] = GetFightingStyle("Melee")
end
elseif not HasDeathStep then
if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
if (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 400)) then
local args = {[1]="BuyDeathStep"}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
if (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 400)) then
local args = {[1]="BuyDeathStep"}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
getgenv().Settings.Configs["Select Weapon"] = GetFightingStyle("Melee")
end
elseif not HasTalon then
if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
getgenv().Settings.Configs["Select Weapon"] = GetFightingStyle("Melee")
if (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 400) and (game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0)) then
if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 3) then
local string_1 = "Bones"
local string_2 = "Buy"
local number_1 = 1
local number_2 = 1
local Target = game:GetService("ReplicatedStorage").Remotes['CommF_']
Target:InvokeServer(string_1, string_2, number_1, number_2)
local string_1 = "BuyDragonTalon"
local bool_1 = true
local Target = game:GetService("ReplicatedStorage").Remotes['CommF_']
Target:InvokeServer(string_1, bool_1)
elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1) then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
else
local string_1 = "Bones"
local string_2 = "Buy"
local number_1 = 1
local number_2 = 1
local Target = game:GetService("ReplicatedStorage").Remotes['CommF_']
Target:InvokeServer(string_1, string_2, number_1, number_2)
end
end
if (game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and (game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 400) and (game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0)) then
if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 3) then
local string_1 = "Bones"
local string_2 = "Buy"
local number_1 = 1
local number_2 = 1
local Target = game:GetService("ReplicatedStorage").Remotes['CommF_']
Target:InvokeServer(string_1, string_2, number_1, number_2)
local string_1 = "BuyDragonTalon"
local bool_1 = true
local Target = game:GetService("ReplicatedStorage").Remotes['CommF_']
Target:InvokeServer(string_1, bool_1)
elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1) then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
else
local string_1 = "Bones"
local string_2 = "Buy"
local number_1 = 1
local number_2 = 1
local Target = game:GetService("ReplicatedStorage").Remotes['CommF_']
Target:InvokeServer(string_1, string_2, number_1, number_2)
end
end
end
elseif not HasElectricClaw then
if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
getgenv().Settings.Configs["Select Weapon"] = GetFightingStyle("Melee")
if (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400)) then
local v175 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", true)
if (v175 == 4) then
local v176 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start")
if (v176 == nil) then
game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12548, 337, -7481)
end
else
local string_1 = "BuyElectricClaw"
local Target = game:GetService("ReplicatedStorage").Remotes['CommF_']
Target:InvokeServer(string_1)
end
end
if (game.Players.LocalPlayer.Character:FindFirstChild("Electro") and (game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400)) then
local v175 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", true)
if (v175 == 4) then
local v176 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start")
if (v176 == nil) then
game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12548, 337, -7481)
end
else
local string_1 = "BuyElectricClaw"
local Target = game:GetService("ReplicatedStorage").Remotes['CommF_']
Target:InvokeServer(string_1)
end
end
end
end
if ((BuyGodhuman ~= 1) and HasSuperhuman and HasTalon and HasKarate and HasDeathStep and HasElectricClaw) then
if (HasSuperhuman and not SupComplete) then
local args = {[1]="BuySuperhuman"}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
wait(0.2)
if ((CheckMasteryWeapon("Superhuman", 400) == "true UpTo") or ((CheckMasteryWeapon("Superhuman", 400) == "true") and (SupComplete == false))) then
SupComplete = true
end
elseif (HasTalon and not TalComplete) then
local args = {[1]="BuyDragonTalon"}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
wait(0.2)
if ((CheckMasteryWeapon("Dragon Talon", 400) == "true UpTo") or ((CheckMasteryWeapon("Superhuman", 400) == "true") and (TalComplete == false))) then
TalComplete = true
end
elseif (HasKarate and not SharkComplete) then
local args = {[1]="BuySharkmanKarate"}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
wait(0.2)
if ((CheckMasteryWeapon("Sharkman Karate", 400) == "true UpTo") or ((CheckMasteryWeapon("Superhuman", 400) == "true") and (SharkComplete == false))) then
SharkComplete = true
end
elseif (HasDeathStep and not DeathComplete) then
local args = {[1]="BuyDeathStep"}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
wait(0.2)
if ((CheckMasteryWeapon("Death Step", 400) == "true UpTo") or ((CheckMasteryWeapon("Superhuman", 400) == "true") and (DeathComplete == false))) then
DeathComplete = true
end
elseif (HasElectricClaw and not EClawComplete) then
local args = {[1]="BuyElectricClaw"}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
wait(0.2)
if ((CheckMasteryWeapon("Electric Claw", 400) == "true UpTo") or ((CheckMasteryWeapon("Superhuman", 400) == "true") and (EClawComplete == false))) then
EClawComplete = true
end
end
end
if ((BuyGodhuman ~= 1) and SupComplete and EClawComplete and TalComplete and SharkComplete and DeathComplete and (not game.Players.LocalPlayer.Character:FindFirstChild("Godhuman") or not game.Players.LocalPlayer.Backpack:FindFirstChild("Godhuman"))) then
if (GetMaterial("Fish Tail") >= 20) then
if (GetMaterial("Magma Ore") >= 20) then
if (GetMaterial("Dragon Scale") >= 10) then
if (GetMaterial("Mystic Droplet") >= 10) then
Com("F_", "BuyGodhuman")
BuyGodhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman", true))
if BuyGodhuman then
if (BuyGodhuman == 1) then
getgenv().Settings.FightingStyle["Auto God Human"] = false
end
end
if Auto_Farm_Level then
getgenv().Settings.Main["Auto Farm Level"] = true
end
elseif not World2 then
Com("F_", "TravelDressrosa")
elseif World2 then
if Auto_Farm_Level then
getgenv().Settings.Main["Auto Farm Level"] = false
end
CheckMaterial("Mystic Droplet")
if CustomFindFirstChild(MaterialMob) then
for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if (getgenv().Settings.FightingStyle["Auto God Human"] and table.find(MaterialMob, v.Name) and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.Humanoid.Health > 0)) then
repeat
wait()
FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1))
if (v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and ((v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150)) then
if FarmtoTarget then
FarmtoTarget:Stop()
end
Fast = true
EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
spawn(function()
for i, v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if (v2.Name == v.Name) then
spawn(function()
if InMyNetWork(v2.HumanoidRootPart) then
v2.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
v2.Humanoid.JumpPower = 0
v2.Humanoid.WalkSpeed = 0
v2.HumanoidRootPart.CanCollide = false
v2.Humanoid:ChangeState(11)
end
end)
end
end
end)
if (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150)) then
game:service("VirtualInputManager"):SendKeyEvent(true, "V", false, game)
game:service("VirtualInputManager"):SendKeyEvent(false, "V", false, game)
end
toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, getgenv().Settings.Configs["Distance Auto Farm"], 0))
end
until not CustomFindFirstChild(MaterialMob) or not getgenv().Settings.FightingStyle["Auto God Human"] or (v.Humanoid.Health <= 0) or not v.Parent 
Fast = false
end
end
else
Fast = false
Modstween = toTarget(CFrameMon.Position, CFrameMon)
if (World1 and (table.find(MaterialMob, "Fishman Commando [Lv. 400]")) and ((CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000)) then
if Modstween then
Modstween:Stop()
end
wait(0.5)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
elseif (World1 and not (table.find(MaterialMob, "Fishman Commando [Lv. 400]")) and ((CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000)) then
if Modstween then
Modstween:Stop()
end
wait(0.5)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
elseif (World1 and (table.find(MaterialMob, "God's Guard [Lv. 450]")) and ((CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000)) then
if Modstween then
Modstween:Stop()
end
wait(0.5)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
elseif ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150) then
if Modstween then
Modstween:Stop()
end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
end
end
end
elseif not World3 then
Com("F_", "TravelZou")
elseif World3 then
if Auto_Farm_Level then
getgenv().Settings.Main["Auto Farm Level"] = false
end
CheckMaterial("Dragon Scale")
if CustomFindFirstChild(MaterialMob) then
for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if (getgenv().Settings.FightingStyle["Auto God Human"] and table.find(MaterialMob, v.Name) and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.Humanoid.Health > 0)) then
repeat
wait()
FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, getgenv().Settings.Configs["Distance Auto Farm"], 0))
if (v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and ((v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150)) then
if FarmtoTarget then
FarmtoTarget:Stop()
end
Fast = true
EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
spawn(function()
for i, v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if (v2.Name == v.Name) then
spawn(function()
if InMyNetWork(v2.HumanoidRootPart) then
v2.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
v2.Humanoid.JumpPower = 0
v2.Humanoid.WalkSpeed = 0
v2.HumanoidRootPart.CanCollide = false
v2.Humanoid:ChangeState(11)
end
end)
end
end
end)
if (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150)) then
game:service("VirtualInputManager"):SendKeyEvent(true, "V", false, game)
game:service("VirtualInputManager"):SendKeyEvent(false, "V", false, game)
end
toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, getgenv().Settings.Configs["Distance Auto Farm"], 0))
end
until not CustomFindFirstChild(MaterialMob) or not getgenv().Settings.FightingStyle["Auto God Human"] or (v.Humanoid.Health <= 0) or not v.Parent 
Fast = false
end
end
else
Fast = false
Modstween = toTarget(CFrameMon.Position, CFrameMon)
if (World1 and (table.find(MaterialMob, "Fishman Commando [Lv. 400]")) and ((CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000)) then
if Modstween then
Modstween:Stop()
end
wait(0.5)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
elseif (World1 and not (table.find(MaterialMob, "Fishman Commando [Lv. 400]")) and ((CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000)) then
if Modstween then
Modstween:Stop()
end
wait(0.5)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
elseif (World1 and (table.find(MaterialMob, "God's Guard [Lv. 450]")) and ((CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000)) then
if Modstween then
Modstween:Stop()
end
wait(0.5)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
elseif ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150) then
if Modstween then
Modstween:Stop()
end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
end
end
end
elseif not World1 then
Com("F_", "TravelMain")
elseif World1 then
if Auto_Farm_Level then
getgenv().Settings.Main["Auto Farm Level"] = false
end
CheckMaterial("Magma Ore")
if CustomFindFirstChild(MaterialMob) then
for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if (getgenv().Settings.FightingStyle["Auto God Human"] and table.find(MaterialMob, v.Name) and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.Humanoid.Health > 0)) then
repeat
wait()
FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, getgenv().Settings.Configs["Distance Auto Farm"], 0))
if (v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and ((v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150)) then
if FarmtoTarget then
FarmtoTarget:Stop()
end
Fast = true
EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
spawn(function()
for i, v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if (v2.Name == v.Name) then
spawn(function()
if InMyNetWork(v2.HumanoidRootPart) then
v2.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
v2.Humanoid.JumpPower = 0
v2.Humanoid.WalkSpeed = 0
v2.HumanoidRootPart.CanCollide = false
v2.Humanoid:ChangeState(11)
end
end)
end
end
end)
if (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150)) then
game:service("VirtualInputManager"):SendKeyEvent(true, "V", false, game)
game:service("VirtualInputManager"):SendKeyEvent(false, "V", false, game)
end
toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, getgenv().Settings.Configs["Distance Auto Farm"], 0))
end
until not CustomFindFirstChild(MaterialMob) or not getgenv().Settings.FightingStyle["Auto God Human"] or (v.Humanoid.Health <= 0) or not v.Parent 
Fast = false
end
end
else
Fast = false
Modstween = toTarget(CFrameMon.Position, CFrameMon)
if (World1 and (table.find(MaterialMob, "Fishman Commando [Lv. 400]")) and ((CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000)) then
if Modstween then
Modstween:Stop()
end
wait(0.5)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
elseif (World1 and not (table.find(MaterialMob, "Fishman Commando [Lv. 400]")) and ((CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000)) then
if Modstween then
Modstween:Stop()
end
wait(0.5)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
elseif (World1 and (table.find(MaterialMob, "God's Guard [Lv. 450]")) and ((CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000)) then
if Modstween then
Modstween:Stop()
end
wait(0.5)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
elseif ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150) then
if Modstween then
Modstween:Stop()
end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
end
end
end
elseif not World1 then
Com("F_", "TravelMain")
elseif World1 then
if Auto_Farm_Level then
getgenv().Settings.Main["Auto Farm Level"] = false
end
CheckMaterial("Fish Tail")
if CustomFindFirstChild(MaterialMob) then
for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if (getgenv().Settings.FightingStyle["Auto God Human"] and table.find(MaterialMob, v.Name) and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.Humanoid.Health > 0)) then
repeat
wait()
FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, getgenv().Settings.Configs["Distance Auto Farm"], 0))
if (v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and ((v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150)) then
if FarmtoTarget then
FarmtoTarget:Stop()
end
Fast = true
EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
spawn(function()
for i, v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if (v2.Name == v.Name) then
spawn(function()
if InMyNetWork(v2.HumanoidRootPart) then
v2.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
v2.Humanoid.JumpPower = 0
v2.Humanoid.WalkSpeed = 0
v2.HumanoidRootPart.CanCollide = false
v2.Humanoid:ChangeState(11)
end
end)
end
end
end)
if (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150)) then
game:service("VirtualInputManager"):SendKeyEvent(true, "V", false, game)
game:service("VirtualInputManager"):SendKeyEvent(false, "V", false, game)
end
toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, getgenv().Settings.Configs["Distance Auto Farm"], 0))
end
until not CustomFindFirstChild(MaterialMob) or not getgenv().Settings.FightingStyle["Auto God Human"] or (v.Humanoid.Health <= 0) or not v.Parent 
Fast = false
end
end
else
Fast = false
Modstween = toTarget(CFrameMon.Position, CFrameMon)
if (World1 and (table.find(MaterialMob, "Fishman Commando [Lv. 400]")) and ((CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000)) then
if Modstween then
Modstween:Stop()
end
wait(0.5)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
elseif (World1 and not (table.find(MaterialMob, "Fishman Commando [Lv. 400]")) and ((CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000)) then
if Modstween then
Modstween:Stop()
end
wait(0.5)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
elseif (World1 and (table.find(MaterialMob, "God's Guard [Lv. 450]")) and ((CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000)) then
if Modstween then
Modstween:Stop()
end
wait(0.5)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
elseif ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150) then
if Modstween then
Modstween:Stop()
end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
end
end
end
end
end
end)
end
end)
end)
task.spawn(function()
	while task.wait() do
pcall(function()
if (getgenv().Settings.FightingStyle["Auto God Human"] and World2) then
if (game.Workspace.Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") or game.ReplicatedStorage:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]")) then
if ((KillSharkMan == true) and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true) == "I lost my house keys, could you help me find them? Thanks.")) then
if KillFish then
KillFish:Stop()
end
Com("F_", "SetSpawnPoint")
for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
if (v.Name == "Tide Keeper [Lv. 1475] [Boss]") then
repeat
wait()
if game.Workspace.Enemies:FindFirstChild(v.Name) then
if ((v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 200) then
Farmtween = toTarget(v.HumanoidRootPart.CFrame)
elseif ((v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 200) then
if Farmtween then
Farmtween:Stop()
end
Fast = true

if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().Settings.Configs["Select Weapon"]) then
wait()
EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
end
if not getgenv().Settings.Configs["Fast Attack"] then
game:GetService("VirtualUser"):CaptureController()
game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
end
if getgenv().Settings.Configs["Show Hitbox"] then
v.HumanoidRootPart.Transparency = fabox_LocalTransparency
else
v.HumanoidRootPart.Transparency = 1
end
toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, getgenv().Settings.Configs["Distance Auto Farm"], 0))
if (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150)) then
game:service("VirtualInputManager"):SendKeyEvent(true, "V", false, game)
game:service("VirtualInputManager"):SendKeyEvent(false, "V", false, game)
end
end
end
until not v.Parent or not getgenv().Settings.FightingStyle["Auto God Human"] or (KillSharkMan == false) or (v.Humanoid.Health == 0) or game.Players.LocalPlayer.Character:FindFirstChild("Water Key") or game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key") 
Fast = false
end
end
end
elseif game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then
KillFish = toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper [Lv. 1475] [Boss]").HumanoidRootPart.CFrame)
elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true) == "I lost my house keys, could you help me find them? Thanks.") then
ServerHop:Teleport()
end
end
end)
end
end)

Mainautofram:AddToggle('Hello', {
Text = 'Auto Superhuman',
Default =  getgenv().Settings.Main["Auto Superhuman"],
}):OnChanged(function(value)
getgenv().Settings.FightingStyle["Auto Superhuman"] = value
getgenv().SaveSetting()
task.spawn(function()
	while task.wait() do
pcall(function()
if getgenv().Settings.FightingStyle["Auto Superhuman"] then
if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
if (not game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") and not game.Players.LocalPlayer.Character:FindFirstChild("Combat")) then
if (not game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and not game.Players.LocalPlayer.Character:FindFirstChild("Black Leg")) then
if (not game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and not game.Players.LocalPlayer.Character:FindFirstChild("Electro")) then
if (not game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and not game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate")) then
if (not game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and not game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw")) then
if (not game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") and not game.Players.LocalPlayer.Character:FindFirstChild("Superhuman")) then
local args = {[1]="BuyElectro"}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
end
end
end
end
end
getgenv().Settings.Configs["Select Weapon"] = GetFightingStyle("Melee")
if (game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat")) then
local args = {[1]="BuyElectro"}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
if (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300)) then
local args = {[1]="BuyBlackLeg"}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
if (game.Players.LocalPlayer.Character:FindFirstChild("Electro") and (game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300)) then
local args = {[1]="BuyBlackLeg"}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
if (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300)) then
local args = {[1]="BuyFishmanKarate"}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
if (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300)) then
local args = {[1]="BuyFishmanKarate"}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
if (game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300)) then
local args = {[1]="BlackbeardReward",[2]="DragonClaw",[3]="2"}
HaveDragonClaw = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
if (getgenv().Settings.FightingStyle["Auto Superhuman"] and (game.Players.LocalPlayer.Data.Fragments.Value <= 1500) and (HaveDragonClaw == 0)) then
if (game.Players.LocalPlayer.Data.Level.Value > 1100) then
getgenv().Settings.Raids["Select Raids"] = "Flame"
getgenv().Settings.Raids["Auto Raids"] = true
if Auto_Farm_Level then
getgenv().Settings.Main["Auto Farm Level"] = false
end
end
else
getgenv().Settings.Raids["Auto Raids"] = false
if Auto_Farm_Level then
getgenv().Settings.Main["Auto Farm Level"] = true
end
local args = {[1]="BlackbeardReward",[2]="DragonClaw",[3]="2"}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
getgenv().Settings.Raids["Auto Raids"] = false
if Auto_Farm_Level then
getgenv().Settings.Main["Auto Farm Level"] = true
end
end
end
if (game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and (game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300)) then
local args = {[1]="BlackbeardReward",[2]="DragonClaw",[3]="2"}
HaveDragonClaw = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
if (getgenv().Settings.FightingStyle["Auto Superhuman"] and (game.Players.LocalPlayer.Data.Fragments.Value <= 1500) and (HaveDragonClaw == 0)) then
if (game.Players.LocalPlayer.Data.Level.Value > 1100) then
getgenv().Settings.Raids["Select Raids"] = "Flame"
getgenv().Settings.Raids["Auto Raids"] = true
if Auto_Farm_Level then
getgenv().Settings.Main["Auto Farm Level"] = false
end
end
else
getgenv().Settings.Raids["Auto Raids"] = false
if Auto_Farm_Level then
getgenv().Settings.Main["Auto Farm Level"] = true
end
local args = {[1]="BlackbeardReward",[2]="DragonClaw",[3]="2"}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
getgenv().Settings.Raids["Auto Raids"] = false
if Auto_Farm_Level then
getgenv().Settings.Main["Auto Farm Level"] = true
end
end
end
if (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300)) then
Auto_Farm_Level = getgenv().Settings.Main["Auto Farm Level"]
local args = {[1]="BuySuperhuman"}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
if (game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and (game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300)) then
Auto_Farm_Level = getgenv().Settings.Main["Auto Farm Level"]
local args = {[1]="BuySuperhuman"}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
end
end
end)
end
end)
end)

Mainautofram:AddToggle('Hello', {
Text = 'Auto Electric Claw',
Default =  getgenv().Settings.FightingStyle["Auto Electric Claw"],
}):OnChanged(function(value)
getgenv().Settings.FightingStyle["Auto Electric Claw"] = value
getgenv().SaveSetting()
if getgenv().Settings.FightingStyle["Auto Electric Claw"] then
Com("F_", "BuyElectro")
end
task.spawn(function()
	while task.wait() do
pcall(function()
if getgenv().Settings.FightingStyle["Auto Electric Claw"] then
if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
if (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value < 400)) then
getgenv().Settings.Configs["Select Weapon"] = "Electro"
end
if (game.Players.LocalPlayer.Character:FindFirstChild("Electro") and (game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value < 400)) then
getgenv().Settings.Configs["Select Weapon"] = "Electro"
end
if (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400)) then
local v175 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw", true)
if (v175 == 4) then
local v176 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start")
if (v176 == nil) then
game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12548, 337, -7481)
end
else
local string_1 = "BuyElectricClaw"
local Target = game:GetService("ReplicatedStorage").Remotes['CommF_']
Target:InvokeServer(string_1)
end
end
if (game.Players.LocalPlayer.Character:FindFirstChild("Electro") and (game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400)) then
local v175 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw", true)
if (v175 == 4) then
local v176 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start")
if (v176 == nil) then
game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12548, 337, -7481)
end
else
local string_1 = "BuyElectricClaw"
local Target = game:GetService("ReplicatedStorage").Remotes['CommF_']
Target:InvokeServer(string_1)
end
end
end
end
end)
end
end)
end)

Mainautofram:AddToggle('Hello', {
Text = 'Auto Death Step',
Default =  getgenv().Settings.FightingStyle["Auto Death Step"],
}):OnChanged(function(value)
getgenv().Settings.FightingStyle["Auto Death Step"] = value
getgenv().SaveSetting()
if getgenv().Settings.FightingStyle["Auto Death Step"] then
Com("F_", "BuyBlackLeg")
end
task.spawn(function()
	while task.wait() do
pcall(function()
if getgenv().Settings.FightingStyle["Auto Death Step"] then
if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
if (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 400)) then
local args = {[1]="BuyDeathStep"}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
getgenv().Settings.Configs["Select Weapon"] = "Death Step"
end
if (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 400)) then
local args = {[1]="BuyDeathStep"}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
getgenv().Settings.Configs["Select Weapon"] = "Death Step"
end
if (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value < 400)) then
getgenv().Settings.Configs["Select Weapon"] = "Black Leg"
end
end
elseif getgenv().Settings.FightingStyle["Auto Fully Death Step"] then
if ((game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 400)) or (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 400))) then
if (game:GetService("Workspace").Map.IceCastle.Hall.LibraryDoor.PhoeyuDoor.Transparency == 0) then
if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Library Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Library Key")) then
EquipWeapon("Library Key")
repeat
wait()
toTarget(CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375))
until ((CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) or not getgenv().Settings.FightingStyle["Auto Death Step"] 
if ((CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) then
wait(1.2)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep", true)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
wait(0.5)
end
elseif ((game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 450)) or (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 450))) then
if (game:GetService("ReplicatedStorage"):FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]")) then
if game:GetService("Workspace").Enemies:FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]") then
for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if (v.Name == "Awakened Ice Admiral [Lv. 1400] [Boss]") then
repeat
wait()
if game.Workspace.Enemies:FindFirstChild(v.Name) then
if ((v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 200) then
Farmtween = toTarget(v.HumanoidRootPart.CFrame)
elseif ((v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 200) then
if Farmtween then
Farmtween:Stop()
end
Fast = true

if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().Settings.Configs["Select Weapon"]) then
wait()
EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
end
if not getgenv().Settings.Configs["Fast Attack"] then
game:GetService("VirtualUser"):CaptureController()
game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
end
if getgenv().Settings.Configs["Show Hitbox"] then
v.HumanoidRootPart.Transparency = fabox_LocalTransparency
else
v.HumanoidRootPart.Transparency = 1
end
toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, getgenv().Settings.Configs["Distance Auto Farm"], 0))
if (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150)) then
game:service("VirtualInputManager"):SendKeyEvent(true, "V", false, game)
game:service("VirtualInputManager"):SendKeyEvent(false, "V", false, game)
end
end
end
until not v.Parent or (v.Humanoid.Health <= 0) or (getgenv().Settings.FightingStyle["Auto Death Step"] == false) or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Library Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Library Key") 
Fast = false
end
end
else
toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]").HumanoidRootPart.CFrame)
end
end
end
end
else
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
end
end
end)
end
end)
end)

Mainautofram:AddToggle('Hello', {
Text = 'Auto SharkMan Karate',
Default =  getgenv().Settings.FightingStyle["Auto SharkMan Karate"],
}):OnChanged(function(value)
getgenv().Settings.FightingStyle["Auto SharkMan Karate"] = value
getgenv().SaveSetting()
if getgenv().Settings.FightingStyle["Auto SharkMan Karate"] then
Com("F_", "BuySharkmanKarate")
end
task.spawn(function()
	while task.wait() do
pcall(function()
if getgenv().Settings.FightingStyle["Auto SharkMan Karate"] then
if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sharkman Karate")) then
if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 400)) then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
getgenv().Settings.Configs["Select Weapon"] = "Sharkman Karate"
end
if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") and (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 400)) then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
getgenv().Settings.Configs["Select Weapon"] = "Sharkman Karate"
end
if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 400)) then
getgenv().Settings.Configs["Select Weapon"] = "Fishman Karate"
end
else
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
end
end
elseif getgenv().Settings.FightingStyle["Auto Fully SharkMan Karate"] then
if ((game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and (game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 400)) or (game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 400))) then
if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate"), "keys") then
if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key")) then
repeat
wait()
toTarget(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365)
until ((CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) or not getgenv().Auto_Fully_SharkMan_Karate 
if ((CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) then
wait(1.2)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
wait(0.5)
end
elseif ((game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 400)) or (game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 400))) then
if (game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]")) then
if game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then
for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if (v.Name == "Tide Keeper [Lv. 1475] [Boss]") then
repeat
wait()
if game.Workspace.Enemies:FindFirstChild(v.Name) then
if ((v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 200) then
Farmtween = toTarget(v.HumanoidRootPart.CFrame)
elseif ((v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 200) then
if Farmtween then
Farmtween:Stop()
end
Fast = true

if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().Settings.Configs["Select Weapon"]) then
wait()
EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
end
if not getgenv().Settings.Configs["Fast Attack"] then
game:GetService("VirtualUser"):CaptureController()
game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
end
if getgenv().Settings.Configs["Show Hitbox"] then
v.HumanoidRootPart.Transparency = fabox_LocalTransparency
else
v.HumanoidRootPart.Transparency = 1
end
toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, getgenv().Settings.Configs["Distance Auto Farm"], 0))
if (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150)) then
game:service("VirtualInputManager"):SendKeyEvent(true, "V", false, game)
game:service("VirtualInputManager"):SendKeyEvent(false, "V", false, game)
end
end
end
until not v.Parent or (v.Humanoid.Health <= 0) or (getgenv().Settings.FightingStyle["Auto Death Step"] == false) or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Library Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Library Key") 
Fast = false
end
end
else
toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper [Lv. 1475] [Boss]").HumanoidRootPart.CFrame)
end
end
end
else
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
end
else
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
end
end
end)
end
end)
end)

Mainautofram:AddToggle('Hello', {
Text = 'Auto Dragon Talon',
Default =  getgenv().Settings.FightingStyle["Auto Dragon Talon"],
}):OnChanged(function(value)
getgenv().Settings.FightingStyle["Auto Dragon Talon"] = value
getgenv().SaveSetting()
if getgenv().Settings.FightingStyle["Auto Dragon Talon"] then
Com("F_", "BlackbeardReward", "DragonClaw", "2")
end
task.spawn(function()
	while task.wait() do
pcall(function()
if getgenv().Settings.FightingStyle["Auto Dragon Talon"] then
if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
if (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 399) and (game.Players.LocalPlayer.Character.Humanoid.Health > 0)) then
getgenv().Settings.Configs["Select Weapon"] = "Dragon Claw"
end
if (game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and (game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value <= 399) and (game.Players.LocalPlayer.Character.Humanoid.Health > 0)) then
getgenv().Settings.Configs["Select Weapon"] = "Dragon Claw"
end
if (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and (game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 400) and (game.Players.LocalPlayer.Character.Humanoid.Health > 0)) then
getgenv().Settings.Configs["Select Weapon"] = "Dragon Claw"
if (game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 3) then
local string_1 = "Bones"
local string_2 = "Buy"
local number_1 = 1
local number_2 = 1
local Target = game:GetService("ReplicatedStorage").Remotes['CommF_']
Target:InvokeServer(string_1, string_2, number_1, number_2)
local string_1 = "BuyDragonTalon"
local bool_1 = true
local Target = game:GetService("ReplicatedStorage").Remotes['CommF_']
Target:InvokeServer(string_1, bool_1)
elseif (game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1) then
game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon")
else
local string_1 = "BuyDragonTalon"
local bool_1 = true
local Target = game:GetService("ReplicatedStorage").Remotes['CommF_']
Target:InvokeServer(string_1, bool_1)
local string_1 = "BuyDragonTalon"
local Target = game:GetService("ReplicatedStorage").Remotes['CommF_']
Target:InvokeServer(string_1)
end
end
if (game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and (game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 400) and (game.Players.LocalPlayer.Character.Humanoid.Health > 0)) then
getgenv().Settings.Configs["Select Weapon"] = "Dragon Claw"
if (game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 3) then
local string_1 = "Bones"
local string_2 = "Buy"
local number_1 = 1
local number_2 = 1
local Target = game:GetService("ReplicatedStorage").Remotes['CommF_']
Target:InvokeServer(string_1, string_2, number_1, number_2)
local string_1 = "BuyDragonTalon"
local bool_1 = true
local Target = game:GetService("ReplicatedStorage").Remotes['CommF_']
Target:InvokeServer(string_1, bool_1)
elseif (game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1) then
game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon")
else
local string_1 = "BuyDragonTalon"
local bool_1 = true
local Target = game:GetService("ReplicatedStorage").Remotes['CommF_']
Target:InvokeServer(string_1, bool_1)
local string_1 = "BuyDragonTalon"
local Target = game:GetService("ReplicatedStorage").Remotes['CommF_']
Target:InvokeServer(string_1)
end
end
end
end
end)
end
end)
end)

local Bossesx = Tabs['General']:AddLeftTabbox()
local Bosses = Bossesx:AddTab('\\\\\  Auto Farm Bosses  //')
if World1 then
Biss = {"The Gorilla King [Lv. 25] [Boss]","Bobby [Lv. 55] [Boss]","Yeti [Lv. 110] [Boss]","Mob Leader [Lv. 120] [Boss]","Vice Admiral [Lv. 130] [Boss]","Warden [Lv. 175] [Boss]","Saber Expert [Lv. 200] [Boss]","Chief Warden [Lv. 200] [Boss]","Swan [Lv. 225] [Boss]","Magma Admiral [Lv. 350] [Boss]","Fishman Lord [Lv. 425] [Boss]","Wysper [Lv. 500] [Boss]","Thunder God [Lv. 575] [Boss]","Cyborg [Lv. 675] [Boss]"}
elseif World2 then
Biss = {"Diamond [Lv. 750] [Boss]","Jeremy [Lv. 850] [Boss]","Fajita [Lv. 925] [Boss]","Don Swan [Lv. 1000] [Boss]","Smoke Admiral [Lv. 1150] [Boss]","Cursed Captain [Lv. 1325] [Raid Boss]","Awakened Ice Admiral [Lv. 1400] [Boss]","Tide Keeper [Lv. 1475] [Boss]"}
elseif World3 then
Biss = {"Stone [Lv. 1550] [Boss]","Island Empress [Lv. 1675] [Boss]","Kilo Admiral [Lv. 1750] [Boss]","Captain Elephant [Lv. 1875] [Boss]","Beautiful Pirate [Lv. 1950] [Boss]","Cake Queen [Lv. 2175] [Boss]"}
end

Bosses:AddDropdown('Bosses', {
Values = Biss,
Default = '',
Multi = false,
Text = 'Select Boss',
}):OnChanged(function(value)
getgenv().Settings.Boss["Select Boss"] = value
end)

Bosses:AddToggle('BM', {
Text = 'Auto Farm Boss',
Default = getgenv().Settings.Boss["Auto Boss Select"],
}):OnChanged(function(value)
getgenv().Settings.Boss["Auto Boss Select"] = value
getgenv().SaveSetting()
if (value == false) then
wait()
toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
wait()
end
end)

task.spawn(function()
	while task.wait() do
if getgenv().Settings.Boss["Auto Boss Select"] then
pcall(function()
CheckBossQuest()
if ((MsBoss == "Soul Reaper [Lv. 2100] [Raid Boss]") or (MsBoss == "Longma [Lv. 2000] [Boss]") or (MsBoss == "Don Swan [Lv. 1000] [Boss]") or (MsBoss == "Cursed Captain [Lv. 1325] [Raid Boss]") or (MsBoss == "Order [Lv. 1250] [Raid Boss]") or (MsBoss == "rip_indra True Form [Lv. 5000] [Raid Boss]")) then
if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if (v.Name == MsBoss) then
repeat
wait()

if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().Settings.Configs["Select Weapon"]) then
wait()
EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
end
Fast = true
v.Humanoid.JumpPower = 0
v.Humanoid.WalkSpeed = 0
toTarget(v.HumanoidRootPart.CFrame * CFrame.new(1, 30, 0))
PosMon = v.HumanoidRootPart.CFrame
until (getgenv().Settings.Boss["Auto Boss Select"] == false) or not v.Parent or (v.Humanoid.Health <= 0) 
end
end
else
toTarget(CFrameBoss)
end
elseif getgenv().Settings.Boss["Auto Quest"] then
CheckBossQuest()
if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
end
if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) then
repeat
wait()
toTarget(CFrameQuestBoss)
until ((CFrameQuestBoss.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) or not getgenv().Settings.Boss["Auto Boss Select"] 
if ((CFrameQuestBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4) then
wait(1.1)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuestBoss, LevelQuestBoss)
end
elseif (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if (v.Name == MsBoss) then
repeat
wait()
if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then

if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().Settings.Configs["Select Weapon"]) then
wait()
EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
end
StartMagnet = true
Fast = true
toTarget(v.HumanoidRootPart.CFrame * CFrame.new(1, 30, 0))
PosMon = v.HumanoidRootPart.CFrame
else
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
end
until (getgenv().Settings.Boss["Auto Boss Select"] == false) or not v.Parent or (v.Humanoid.Health <= 0) 
end
end
else
toTarget(CFrameBoss)
end
end
elseif game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if (v.Name == MsBoss) then
repeat
wait()

if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().Settings.Configs["Select Weapon"]) then
wait()
EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
end
Fast = true
toTarget(v.HumanoidRootPart.CFrame * CFrame.new(1, 30, 0))
PosMon = v.HumanoidRootPart.CFrame
until (getgenv().Settings.Boss["Auto Boss Select"] == false) or not v.Parent or (v.Humanoid.Health <= 0) 
end
end
else
toTarget(CFrameBoss)
end
end)
end
end
end)

Bosses:AddToggle('BM', {
Text = 'Auto Farm All Boss',
Default = getgenv().Settings.Boss["Auto All Boss"],
}):OnChanged(function(value)
getgenv().Settings.Boss["Auto All Boss"] = value
getgenv().SaveSetting()
getgenv().GetBoss = false
MsBoss = ""
if (value == false) then
wait()
toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
wait()
end
end)


task.spawn(function()
	while task.wait() do
if getgenv().Settings.Boss["Auto All Boss"] then
GetBossName()
end
end
end)
task.spawn(function()
	while task.wait() do
if getgenv().Settings.Boss["Auto All Boss"] then
pcall(function()
CheckBossQuest()
if ((MsBoss == "Soul Reaper [Lv. 2100] [Raid Boss]") or (MsBoss == "Longma [Lv. 2000] [Boss]") or (MsBoss == "Don Swan [Lv. 1000] [Boss]") or (MsBoss == "Cursed Captain [Lv. 1325] [Raid Boss]") or (MsBoss == "Order [Lv. 1250] [Raid Boss]") or (MsBoss == "rip_indra True Form [Lv. 5000] [Raid Boss]")) then
if (game:GetService("ReplicatedStorage"):FindFirstChild(MsBoss) or game:GetService("Workspace").Enemies:FindFirstChild(MsBoss)) then
if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if (v.Name == MsBoss) then
repeat
wait()
getgenv().GetBoss = true

if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().Settings.Configs["Select Weapon"]) then
wait()
EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
end
Fast = true
stanboss = true
toTarget(v.HumanoidRootPart.CFrame * CFrame.new(1, 30, 0))
PosMon = v.HumanoidRootPart.CFrame
until (getgenv().Settings.Boss["Auto All Boss"] == false) or not v.Parent or (v.Humanoid.Health <= 0) 
getgenv().GetBoss = false
end
end
else
getgenv().GetBoss = true
toTarget(CFrameBoss)
end
else
getgenv().GetBoss = false
end
elseif getgenv().Settings.Boss["Auto Quest"] then
CheckBossQuest()
if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
end
if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) then
getgenv().GetBoss = true
repeat
wait()
toTarget(CFrameQuestBoss)
until ((CFrameQuestBoss.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) or not getgenv().Settings.Boss["Auto All Boss"] 
if ((CFrameQuestBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4) then
wait(1.1)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuestBoss, LevelQuestBoss)
end
elseif (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
if (game:GetService("ReplicatedStorage"):FindFirstChild(MsBoss) or game:GetService("Workspace").Enemies:FindFirstChild(MsBoss)) then
if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if (v.Name == MsBoss) then
repeat
wait()
getgenv().GetBoss = true
if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then

if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().Settings.Configs["Select Weapon"]) then
wait()
EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
end
Fast = true
stanboss = true
toTarget(v.HumanoidRootPart.CFrame * CFrame.new(1, 30, 0))
PosMon = v.HumanoidRootPart.CFrame
else
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
end
until (getgenv().Settings.Boss["Auto All Boss"] == false) or not v.Parent or (v.Humanoid.Health <= 0) 
getgenv().GetBoss = false
end
end
else
getgenv().GetBoss = true
toTarget(CFrameBoss)
end
else
getgenv().GetBoss = false
end
end
elseif (game:GetService("ReplicatedStorage"):FindFirstChild(MsBoss) or game:GetService("Workspace").Enemies:FindFirstChild(MsBoss)) then
if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if (v.Name == MsBoss) then
repeat
wait()
getgenv().GetBoss = true
if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().Settings.Configs["Select Weapon"]) then
wait()
EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
end
Fast = true
stanboss = true
toTarget(v.HumanoidRootPart.CFrame * CFrame.new(1, 30, 0))
PosMon = v.HumanoidRootPart.CFrame
until (getgenv().Settings.Boss["Auto All Boss"] == false) or not v.Parent or (v.Humanoid.Health <= 0) 
getgenv().GetBoss = false
end
end
else
getgenv().GetBoss = true
toTarget(CFrameBoss)
end
else
getgenv().GetBoss = false
end
end)
end
end
end)

task.spawn(function()
	while task.wait() do
		pcall(function()
			if stanboss then
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							v.Humanoid.JumpPower = 0
							v.Humanoid.WalkSpeed = 0
							v.Humanoid:ChangeState(11)
							v.Humanoid:ChangeState(14)
				end
			end
		end)
	end
end)

Bosses:AddToggle('BM', {
Text = 'Auto Get Quest Boss',
Default = getgenv().Settings.Boss["Auto Quest"],
}):OnChanged(function(value)
getgenv().Settings.Boss["Auto Quest"] = value
getgenv().SaveSetting()
end)

-- local EliteHunter = Tabs.General:AddRightTabbox('\\\\\ Elite Hunter //')

local EliteHunterx = Tabs['General']:AddRightTabbox()
local EliteHunter = EliteHunterx:AddTab('\\\\\  Elite Hunter  //')


local Elite_Hunter_Status = EliteHunter:AddLabel("Status : N/Q")
spawn(function()
	while task.wait() do
pcall(function()
if (game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]")) then
Elite_Hunter_Status:SetText("Status : Spawned")
else
Elite_Hunter_Status:SetText("Status : Not Spawned")
end
end)
end
end)

local EliteProgress = EliteHunter:AddLabel("")
spawn(function()
pcall(function()
	while task.wait() do
EliteProgress:SetText("Elite Progress : " .. game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter", "Progress"))
end
end)
end)

EliteHunter:AddToggle('BM', {
Text = 'Auto Kill Elite  Hunter',
Default = getgenv().Settings.Main["Auto Elite Hunter"],
}):OnChanged(function(value)
getgenv().Settings.Main["Auto Elite Hunter"]= value
getgenv().SaveSetting()
if value == false then
toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
end
end)
task.spawn(function()
	while wait() do
		pcall(function()
			if getgenv().Settings.Main["Auto Elite Hunter"] then
				if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
					if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Diablo") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Urban") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Deandre") then
						for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
							if string.find(v.Name,"Diablo") then
								EliteHunter = toTarget(v.HumanoidRootPart.CFrame)
								if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
									if EliteHunter then
										EliteHunter:Stop()
									end
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
								end
							end	
							if string.find(v.Name,"Urban") then
								EliteHunter = toTarget(v.HumanoidRootPart.CFrame)
								if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
									if EliteHunter then
										EliteHunter:Stop()
									end
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
								end
							end	
							if string.find(v.Name,"Deandre") then
								EliteHunter = toTarget(v.HumanoidRootPart.CFrame)
								if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
									if EliteHunter then
										EliteHunter:Stop()
									end
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
								end
							end	
						end
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if getgenv().Settings.Main["Auto Elite Hunter"] and string.find(v.Name,"Diablo") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat wait()
									if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >150 then
										Farmtween = toTarget(v.HumanoidRootPart.CFrame)
									elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
										if Farmtween then
											Farmtween:Stop()
										end
										if AttackRandomType == 1 then
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1)
										elseif AttackRandomType == 2 then
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30)
										elseif AttackRandomType == 3 then
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(1, 1, -30)
										elseif AttackRandomType == 4 then
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0)
										elseif AttackRandomType == 5 then
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0)
										else
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1)
										end
										Fast = true
										EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
									end 
								until not getgenv().Settings.Main["Auto Elite Hunter"] or not v.Parent or v.Humanoid.Health <= 0
								Fast = false
							end
							if getgenv().Settings.Main["Auto Elite Hunter"] and string.find(v.Name,"Urban") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat wait()
									if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >150 then
										Farmtween = toTarget(v.HumanoidRootPart.CFrame)
									elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
										if Farmtween then
											Farmtween:Stop()
										end
										if AttackRandomType == 1 then
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1)
										elseif AttackRandomType == 2 then
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30)
										elseif AttackRandomType == 3 then
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(1, 1, -30)
										elseif AttackRandomType == 4 then
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0)
										elseif AttackRandomType == 5 then
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0)
										else
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1)
										end
										Fast = true
										EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
									end 
								until not getgenv().Settings.Main["Auto Elite Hunter"] or not v.Parent or v.Humanoid.Health <= 0
								Fast = false
							end
							if getgenv().Settings.Main["Auto Elite Hunter"] and string.find(v.Name,"Deandre") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat wait()
									if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >150 then
										Farmtween = toTarget(v.HumanoidRootPart.CFrame)
									elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
										if Farmtween then
											Farmtween:Stop()
										end
										if AttackRandomType == 1 then
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1)
										elseif AttackRandomType == 2 then
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30)
										elseif AttackRandomType == 3 then
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(1, 1, -30)
										elseif AttackRandomType == 4 then
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0)
										elseif AttackRandomType == 5 then
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0)
										else
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1)
										end
										Fast = true
										EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
									end 
								until not getgenv().Settings.Main["Auto Elite Hunter"] or not v.Parent or v.Humanoid.Health <= 0
								Fast = false
							end
						end
					else
						local string_1 = "EliteHunter"
						local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"]
						Target:InvokeServer(string_1)
					end
				else
					local string_1 = "EliteHunter"
					local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"]
					Target:InvokeServer(string_1)
				end
			end
		end)
	end
end)
-- local Essenntials = Tabs.General:AddRightTabbox('\\\\\ Essenntials //')

local Essenntialsx = Tabs['General']:AddRightTabbox()
local Essenntials = Essenntialsx:AddTab('\\\\\ Essenntials //')

Essenntials:AddToggle('BM', {
Text = 'Auto Farm Bone',
Default = getgenv().Settings.Main["Auto Farm Bone"],
}):OnChanged(function(value)
getgenv().Settings.Main["Auto Farm Bone"] = value
if (value == false) then
wait()
toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
wait()
end
getgenv().SaveSetting()
end)

task.spawn(function()
	while wait() do
		pcall(function()
			if getgenv().Settings.Main["Auto Farm Bone"] then
				if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul [Lv. 2025]") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]" then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat wait()
									StartMagnet = true
									Fast = true
									if getgenv().Settings.Configs["Auto Haki"] then
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
										end
									end
									if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().Settings.Configs["Select Weapon"]) then
										wait()
										EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
									end
									PosMon = v.HumanoidRootPart.CFrame
									if not getgenv().Settings.Configs["Fast Attack"] then
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									end
											if getgenv().Settings.Configs["Show Hitbox"] then
										v.HumanoidRootPart.Transparency = tonumber(getgenv().Hitbox_LocalTransparency)
									else
										v.HumanoidRootPart.Transparency = 1
									end
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid:ChangeState(11)
									toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,getgenv().Settings.Configs["Distance Auto Farm"],0))
								until not getgenv().Settings.Main["Auto Farm Bone"] or v.Humanoid.Health <= 0 or not v.Parent or v.Humanoid.Health <= 0
								StartMagnet = false
								Fast = false
							end
						end
					end
				else
					toTarget(CFrame.new(-9504.8564453125, 172.14292907714844, 6057.259765625))
				end
			end
		end)
	end
end)
Essenntials:AddToggle('BM', {
Text = 'Auto Trade With Death King',
Default = getgenv().Settings.Main["Auto Random Bone"],
}):OnChanged(function(value)
getgenv().Settings.Main["Auto Random Bone"] = value
getgenv().SaveSetting()
end)

task.spawn(function()
	while wait(0) do
		if getgenv().Settings.Main["Auto Random Bone"] then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
		end
	end
end)

Essenntials:AddToggle('BM', {
Text = 'Auto Buy Legendary Sword',
Default =  getgenv().Settings.Main["Auto Buy Legendary Sword"],
}):OnChanged(function(value)
getgenv().Settings.Main["Auto Buy Legendary Sword"] = value
getgenv().SaveSetting()
end)

task.spawn(function()
	while wait() do
		pcall(function()
			if getgenv().Settings.Main["Auto Buy Legendary Sword"] then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","1")
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","2")
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","3")
				if getgenv().Settings.Main["Auto Buy Legendary Sword Hop"] then
					wait(15)
					Fast_Hop()
				end
			end
		end)
	end
end)

Essenntials:AddToggle('BM', {
Text = 'Auto Buy Enchanment Haki',
Default = getgenv().Settings.Main["Auto Buy Enchanment Haki"],
}):OnChanged(function(value)
getgenv().Settings.Main["Auto Buy Enchanment Haki"] = value
getgenv().SaveSetting()
end)

task.spawn(function()
	while task.wait() do
pcall(function()
if getgenv().Settings.Main["Auto Buy Enchanment Haki"] then
local args = {
[1] = "ColorsDealer",
[2] = "2"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
end)
end
end)

Essenntials:AddToggle('BM', {
Text = 'Auto Farm Chest',
Default = false,
}):OnChanged(function(value)
AutoFarmChest = value
if value == false then
toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
end
getgenv().SaveSetting()
end)

getgenv().MagnitudeAdd = 0
spawn(function()
while wait() do 
if AutoFarmChest then
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do 
if v.Name:find("Chest") then
if game:GetService("Workspace"):FindFirstChild(v.Name) then
if (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5000+getgenv().MagnitudeAdd then
repeat wait()
if game:GetService("Workspace"):FindFirstChild(v.Name) then
toTargetP(v.CFrame)
end
until AutoFarmChest == false or not v.Parent
toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
getgenv().MagnitudeAdd = getgenv().MagnitudeAdd+1500
break
end
end
end
end
end
end
end)

local SettingsBox = Tabs['General']:AddRightTabbox()
local Settingsn = SettingsBox:AddTab('\\\\\  Settings  //')

Weapon = {"Melee","Sword","Fruit"}

Settingsn:AddDropdown('Weapon', {
Values = Weapon,
Default = 'Melee',
Multi = false,
Text = 'Select Weapon',
}):OnChanged(function(value)
SelectWeapon = value
end)
task.spawn(function()
	while task.wait() do
pcall(function()
if (SelectWeapon == "Melee") then
for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if (v.ToolTip == "Melee") then
if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
getgenv().Settings.Configs["Select Weapon"] = v.Name
end
end
end
elseif (SelectWeapon == "Sword") then
for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if (v.ToolTip == "Sword") then
if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
getgenv().Settings.Configs["Select Weapon"] = v.Name
end
end
end
elseif (SelectWeapon == "Fruit") then
for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if (v.ToolTip == "Blox Fruit") then
if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
getgenv().Settings.Configs["Select Weapon"] = v.Name
end
end
end
else
for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if (v.ToolTip == "Melee") then
if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
getgenv().Settings.Configs["Select Weapon"] = v.Name
end
end
end
end
end)
end
end)
Fasta = {"Very Fast","Normal","Slow"}

Settingsn:AddDropdown('Weapon', {
	Values = Fasta,
	Default = 'Normal',
	Multi = false,
	Text = 'Select Attack Type',
	}):OnChanged(function(value)
		getgenv().Settings.Configs["Fast Attack Type"] = value
		getgenv().SaveSetting()
	end)
require(game.ReplicatedStorage.Util.CameraShaker):Stop()
cooldownFast=tick()
task.spawn(function()
    while wait(.05) do 
        pcall(function()
		  if tick() - cooldownFast > 0.1 then wait(0.05) cooldownFast = tick() end 
			if Fast then
				AttackNoCD()
		end
        end)
    end
end)
bs = tick()
task.spawn(function()
    while task.wait(.05) do
        if Fast then
            pcall(function()
                for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Humanoid.Health > 0 then
                        if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 60 then
							getgenv().hit()
                        end
                    end
                end
            end)
        end
    end
end)

Sta0ts = {
"Melee",
"Defense",
"Sword",
"Gun",
"Devil Fruit"
}
Settingsn:AddDropdown('AddTab', {
Values = Sta0ts,
Default = "Melee",
Multi = false,
Text = 'Select Stats',
}):OnChanged(function(a)
AutoStats = a
task.spawn(function()
	while task.wait() do
pcall(function()
if AutoStats == "Melee" then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Melee",2450)
elseif AutoStats == "Defense" then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Defense",2450)
elseif AutoStats == "Sword" then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Sword",2450)
elseif AutoStats == "Gun" then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Gun",2450)
elseif AutoStats == "Devil Fruit" then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Demon Fruit",2450)
end
end)
end
end)
end)

spawn(function()
	while task.wait() do
pcall(function()
if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
end
end)
end
end)
Settingsn:AddToggle('BypassTp', {
Text = 'Fast Island Teleport',
Default = getgenv().Settings.Configs["Bypass TP"],
}):OnChanged(function(value)
getgenv().Settings.Configs["Bypass TP"] = value
getgenv().SaveSetting()
end)
Settingsn:AddToggle('BM', {
Text = 'Disabled Damage',
Default = getgenv().Settings.Configs["Disabled Damage"],
}):OnChanged(function(value)
getgenv().Settings.Configs["Disabled Damage"] = value
DisabledDamage()
getgenv().SaveSetting()
end)
	Settingsn:AddButton('Redeem All Exp Boost Code', function()
		function Redeem(value)
			game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(value)
		end
		for i, v in pairs(CodeApi) do
			Redeem(v)
		end	end)

	-- local Loaf = Tabs.General:AddRightTabbox('\\\\\ Loaf Event //')

	local localfunctionax = Tabs['General']:AddRightTabbox()
local Loaf = localfunctionax:AddTab('\\\\\  Loaf Event  //')
	
	local MobKilled = Loaf:AddLabel('Need Kill Mods :')
	
	spawn(function()
		while task.wait() do
	pcall(function()
	if (string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88) then
	MobKilled:SetText("Need Kill Mods : " .. string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 39, 41))
	elseif (string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87) then
	MobKilled:SetText("Need Kill Mods : " .. string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 39, 40))
	elseif (string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86) then
	MobKilled:SetText("Need Kill Mods : " .. string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 39, 39))
	else
	MobKilled:SetText("Boss Is Spawning")
	end
	end)
	end
	end)
	
	Loaf:AddToggle('BM', {
	Text = 'Auto Cake Prince',
	Default = getgenv().Settings.Main["Auto Cake Prince"],
	}):OnChanged(function(value)
	getgenv().Settings.Main["Auto Cake Prince"] = value
	if (value == false) then
	toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
	getgenv().SaveSetting()
	end)

	task.spawn(function()
		while wait() do
			if getgenv().Settings.Main["Auto Cake Prince"] then
				pcall(function()
					if game.ReplicatedStorage:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
						if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if getgenv().Settings.Main["Auto Cake Prince"] and v.Name == "Cake Prince [Lv. 2300] [Raid Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
									repeat wait()
										if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
											Farmtween = toTarget(v.HumanoidRootPart.CFrame)
										elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
											if Farmtween then
												Farmtween:Stop()
											end
											Fast = true
											if getgenv().Settings.Configs["Auto Haki"] then
												if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
												end
											end
											if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().Settings.Configs["Select Weapon"]) then
												wait()
												EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
											end
											PosMon = v.HumanoidRootPart.CFrame
											if not getgenv().Settings.Configs["Fast Attack"] then
												game:GetService'VirtualUser':CaptureController()
												game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
											end
														if getgenv().Settings.Configs["Show Hitbox"] then
												v.HumanoidRootPart.Transparency = tonumber(getgenv().Hitbox_LocalTransparency)
											else
												v.HumanoidRootPart.Transparency = 1
											end
											v.Humanoid.JumpPower = 0
											v.Humanoid.WalkSpeed = 0
											v.HumanoidRootPart.CanCollide = false
											v.Humanoid:ChangeState(11)
											toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,getgenv().Settings.Configs["Distance Auto Farm"],0))
										end
									until not getgenv().Settings.Main["Auto Cake Prince"] or not v.Parent or v.Humanoid.Health <= 0
									Fast = false
								end
							end
						else
							if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 and (CFrame.new(-1990.672607421875, 4532.99951171875, -14973.6748046875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >= 2000 then
								Fast = false
								Questtween = toTarget(CFrame.new(-2151.82153, 149.315704, -12404.9053))
								if (CFrame.new(-2151.82153, 149.315704, -12404.9053).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
									if Questtween then Questtween:Stop() end
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2151.82153, 149.315704, -12404.9053)
									wait(.1)
								end
							end 
						end
					else
						if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker [Lv. 2275]") then
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if (v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
									repeat wait()
										if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
											Farmtween = toTarget(v.HumanoidRootPart.CFrame)
										elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
											if Farmtween then
												Farmtween:Stop()
											end
											Fast = true
											StartMagnet = true
											if getgenv().Settings.Configs["Auto Haki"] then
												if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
												end
											end
											if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().Settings.Configs["Select Weapon"]) then
												wait()
												EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
											end
											PosMon = v.HumanoidRootPart.CFrame
											if not getgenv().Settings.Configs["Fast Attack"] then
												game:GetService'VirtualUser':CaptureController()
												game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
											end
														if getgenv().Settings.Configs["Show Hitbox"] then
												v.HumanoidRootPart.Transparency = tonumber(getgenv().Hitbox_LocalTransparency)
											else
												v.HumanoidRootPart.Transparency = 1
											end
											v.Humanoid.JumpPower = 0
											v.Humanoid.WalkSpeed = 0
											v.HumanoidRootPart.CanCollide = false
											v.Humanoid:ChangeState(11)
											toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,getgenv().Settings.Configs["Distance Auto Farm"],0))
										end
									until not getgenv().Settings.Main["Auto Cake Prince"] or not v.Parent or v.Humanoid.Health <= 0
									StartMagnet = false
									Fast = false
								end
							end
						else
							toTarget(CFrame.new(-2077, 252, -12373))
						end
					end
				end)
			end
		end
	end)

	DoughMob = {"Cookie Crafter [Lv. 2200]","Cake Guard [Lv. 2225]","Baking Staff [Lv. 2250]"}
	--local VV = Tabs.General:AddRightTabbox('\\\\\ Sea Beast //')

	local VVx = Tabs['General']:AddRightTabbox()
local VV = VVx:AddTab('\\\\\ Sea Beast //')
	

	VV:AddToggle('BM', {
		Text = 'Auto Teleport to Sea Beast',
		Default = getgenv().Settings.Configs["Disabled Damage"],
		}):OnChanged(function(value)
			getgenv().Settings.Teleport["Teleport to Sea Beast"] = value
			if value == false then
				wait()
				toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				wait()
			end
			getgenv().SaveSetting()
		end)
		task.spawn(function()
			while wait() do
				pcall(function()
					if getgenv().Settings.Teleport["Teleport to Sea Beast"] then
						for i,v in pairs(game.Workspace.SeaBeasts:GetChildren()) do
							if v:FindFirstChild("HumanoidRootPart") then
								toTarget(v.HumanoidRootPart.CFrame * CFrame.new(1,500,1))
							end
						end
					end
				end)
			end
		end)
 --local Msg = Tabs.General:AddRightTabbox('\\\\\ Mixed Setting //')

 local Msgx = Tabs['General']:AddRightTabbox()
 local Msg = Msgx:AddTab('\\\\\  Mixed Setting  //')
	 

 Msg:AddToggle('BM', {
	Text = 'Auto Castle Raid',
	Default = getgenv().Settings.Configs["Disabled Damage"],
	}):OnChanged(function(value)
		getgenv().AutoCastleRaid = value
	end)

	spawn(function()
		while wait() do
			if getgenv().AutoCastleRaid then
				pcall(function()
					if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if getgenv().AutoCastleRaid and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
									repeat wait()
										v.HumanoidRootPart.CanCollide = false
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									until v.Humanoid.Health <= 0 or not v.Parent or getgenv().AutoCastleRaid == false
								end
							end
						end
					else
						toTarget(CFrame.new(-5545.1240234375, 313.800537109375, -2976.616455078125))
					end
				end)
			end
		end
	end)

	Msg:AddToggle('BM', {
		Text = 'Auto Farm Race V.4',
		Default = false,
		}):OnChanged(function(value)
			getgenv().AutoFarmRacev4 = value
		end)

		
task.spawn(function()
	while task.wait() do
pcall(function()
if getgenv().AutoFarmRacev4 then
if (game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul [Lv. 2025]") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]")) then
for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if ((v.Name == "Reborn Skeleton [Lv. 1975]") or (v.Name == "Living Zombie [Lv. 2000]") or (v.Name == "Demonic Soul [Lv. 2025]") or (v.Name == "Posessed Mummy [Lv. 2050]")) then
if (v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.Humanoid.Health > 0)) then
repeat
local vim = game:GetService('VirtualInputManager')
local function pressKey(key)
vim:SendKeyEvent(true, key, false, game)
end
local function releaseKey(key)
vim:SendKeyEvent(false, key, false, game)
end
pressKey(Enum.KeyCode.Y) 
releaseKey(Enum.KeyCode.Y)
wait()
StartMagnet = true
Fast = true

if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().Settings.Configs["Select Weapon"]) then
wait()
EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
end
PosMon = v.HumanoidRootPart.CFrame
if not getgenv().Settings.Configs["Fast Attack"] then
game:GetService("VirtualUser"):CaptureController()
game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
end
if getgenv().Settings.Configs["Show Hitbox"] then
v.HumanoidRootPart.Transparency = fabox_LocalTransparency
else
v.HumanoidRootPart.Transparency = 1
end
toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, getgenv().Settings.Configs["Distance Auto Farm"], 0))
until not getgenv().AutoFarmRacev4 or (v.Humanoid.Health <= 0) or not v.Parent or (v.Humanoid.Health <= 0) 
StartMagnet = false
Fast = false
end
end
end
else
toTarget(CFrame.new(-9504.8564453125, 172.14292907714844, 6057.259765625))
end
end
end)
end
end)
--[[
Msg:AddToggle('BM', {
	Text = 'Auto Farm Race V.4',
	Default = false,
	}):OnChanged(function(value)
		getgenv().AutoFarmRacev4 = value
	end)
]]

local Masx = Tabs['General']:AddLeftTabbox()
local Mas = Masx:AddTab('\\\\\  Mastery  //')
task.spawn(function()
	local gg = getrawmetatable(game)
	local old = gg.__namecall
	setreadonly(gg,false)
	gg.__namecall = newcclosure(function(...)
		local method = getnamecallmethod()
		local args = {...}
		if tostring(method) == "FireServer" then
			if tostring(args[1]) == "RemoteEvent" then
				if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
					if UseSkillMasteryDevilFruit and getgenv().Settings.Mastery["Auto Farm Fruit Mastery"] then
						if type(args[2]) == "vector" then 
							args[2] = PositionSkillMasteryDevilFruit
						else
							args[2] = CFrame.new(PositionSkillMasteryDevilFruit)
						end
						return old(unpack(args))
					end
				end
			end
		end
		return old(...)
	end)
end)

task.spawn(function()
	local gt = getrawmetatable(game)
	local old = gt.__namecall
	setreadonly(gt,false)
	gt.__namecall = newcclosure(function(...)
		local args = {...}
		if getnamecallmethod() == "InvokeServer" then 
			if SelectWeaponGun then
				if SelectWeaponGun == "Soul Guitar" then
					if tostring(args[2]) == "TAP" then
						if getgenv().Settings.Mastery["Auto Farm Gun Mastery"] and UseSkillMasteryGun then
							args[3] = PositionSkillMasteryGun
						end
					end
				end
			end
		end
		return old(unpack(args))
	end)
	setreadonly(gt,true)
end)

LPH_NO_VIRTUALIZE(function()
	task.spawn(function()
		while wait() do
			for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
				if v:IsA("Tool") then
					if v:FindFirstChild("RemoteFunctionShoot") then 
						SelectWeaponGun = v.Name
					end
				end
			end
		end
	end)
end)()

function AutoFarmMasteryGun()
	if game:GetService("Workspace").Enemies:FindFirstChild(Name) then
		for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
			if getgenv().Settings.Mastery["Auto Farm Gun Mastery"] and v.Name == Name and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
				repeat wait()
					FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
					if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
						if FarmtoTarget then FarmtoTarget:Stop() end
						StartMagnet = true
						PosMon = v.HumanoidRootPart.CFrame
						if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
							game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
							game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
						end
						HealthMin = v.Humanoid.MaxHealth*getgenv().Settings.Mastery["Mob Health (%)"]/100
						PositionSkillMasteryGun = v.HumanoidRootPart.Position
						if v.Humanoid.Health <= HealthMin and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
							EquipWeapon(SelectWeaponGun)
							UseSkillMasteryGun = true
							-- v.HumanoidRootPart.CanCollide = false
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
							if game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectWeaponGun) and game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectWeaponGun):FindFirstChild("RemoteFunctionShoot") then
								Click()
								local args = {
									[1] = v.HumanoidRootPart.Position,
									[2] = v.HumanoidRootPart
								}
								game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
							end 
						else
							UseSkillMasteryGun = false
							Click()
							EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 15, 0)
						end
					end
				until not game:GetService("Workspace").Enemies:FindFirstChild(Name) or not getgenv().Settings.Mastery["Auto Farm Gun Mastery"] or v.Humanoid.Health <= 0 or not v.Parent
				UseSkillMasteryGun = false
				StartMagnet = false
			end
		end
	else
		StartMagnet = false
		Modstween = toTarget(CFrameMon)
		if World1 and (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
			if Modstween then Modstween:Stop() end wait(.5)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
		elseif World1 and not (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
			if Modstween then Modstween:Stop() end wait(.5)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
		elseif World1 and (Name == "God's Guard [Lv. 450]" or Name == "Sky Bandit [Lv. 150]" or Name == "Dark Master [Lv. 175]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000 then
			if Modstween then Modstween:Stop() end wait(.5)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
		elseif World1 and (Name == "Shanda [Lv. 475]" or Name == "Royal Squad [Lv. 525]"or Name == "Royal Soldier [Lv. 550]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 5000 then
			if Modstween then Modstween:Stop() end wait(.5)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
		elseif World2 and string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
			if Modstween then Modstween:Stop() end
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
		elseif World2 and not string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
			if Modstween then Modstween:Stop() end
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
		elseif (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
			if Modstween then Modstween:Stop() end wait(.5)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
		end 
	end
end

function AutoFarmMasteryDevilFruit()
	if game:GetService("Workspace").Enemies:FindFirstChild(Name) then
		for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
			if getgenv().Settings.Mastery["Auto Farm Fruit Mastery"] and v.Name == Name and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
				repeat wait()
					FarmtoTarget = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
					if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
						if FarmtoTarget then FarmtoTarget:Stop() end
						StartMagnet = true
						PosMon = v.HumanoidRootPart.CFrame
						HealthMin = v.Humanoid.MaxHealth*getgenv().Settings.Mastery["Mob Health (%)"]/100
						if v.Humanoid.Health <= HealthMin and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
							EquipWeapon(game.Players.LocalPlayer.Data.DevilFruit.Value)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 40, 10)
							if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
								PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
								UseSkillMasteryDevilFruit = true
								if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
									MasteryDevilFruit = require(game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].Data)
									DevilFruitMastery = game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].Level.Value
								elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
									MasteryDevilFruit = require(game:GetService("Players").LocalPlayer.Backpack[game.Players.LocalPlayer.Data.DevilFruit.Value].Data)
									DevilFruitMastery = game:GetService("Players").LocalPlayer.Backpack[game.Players.LocalPlayer.Data.DevilFruit.Value].Level.Value
								end
								if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon-Dragon") then
									if getgenv().Settings.Configs["Skill Z"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.Z then
										game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
										wait(.1)
										game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
									end
									if getgenv().Settings.Configs["Skill X"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.X then
										game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
										wait(.1)
										game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
									end   
								elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha") then
									if getgenv().Settings.Configs["Skill Z"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and game.Players.LocalPlayer.Character.HumanoidRootPart.Size == Vector3.new(7.6, 7.676, 3.686) and DevilFruitMastery >= MasteryDevilFruit.Lvl.Z then
									else
										game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
										wait(.1)
										game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
									end
									if getgenv().Settings.Configs["Skill X"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.X then
										game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
										wait(.1)
										game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
									end
									if getgenv().Settings.Configs["Skill C"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.C then
										game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
										wait(.1)
										game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
									end  
								elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom-Venom") then
									if getgenv().Settings.Configs["Skill Z"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.Z then
										game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
										wait(4)
										game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
									end
									if getgenv().Settings.Configs["Skill X"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.X then
										game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
										wait(.1)
										game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
									end
									if getgenv().Settings.Configs["Skill C"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.C then
										game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
										wait(.1)
										game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
									end
								elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
									game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).MousePos.Value = v.HumanoidRootPart.Position
									if getgenv().Settings.Configs["Skill Z"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.Z then
										game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
										wait(.1)
										game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
									end
									if getgenv().Settings.Configs["Skill X"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.X then
										game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
										wait(.1)
										game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
									end
									if getgenv().Settings.Configs["Skill C"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.C then
										game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
										wait(.1)
										game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
									end
									if getgenv().Settings.Configs["Skill V"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.V then
										game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
										wait(.1)
										game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
									end
								end
							end
						else
							game:GetService('VirtualUser'):CaptureController()
							game:GetService('VirtualUser'):ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
							UseSkillMasteryDevilFruit = false
							EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
							v.HumanoidRootPart.Size = Vector3.new(60,60,60)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
						end
					end
				until not game:GetService("Workspace").Enemies:FindFirstChild(Name) or not getgenv().Settings.Mastery["Auto Farm Fruit Mastery"] or v.Humanoid.Health <= 0 or not v.Parent
				StartMagnet = false
			end
		end
	else
		StartMagnet = false
		Modstween = toTarget(CFrameMon.Position,CFrameMon)
		if World1 and (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
			if Modstween then Modstween:Stop() end wait(.5)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
		elseif World1 and not (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
			if Modstween then Modstween:Stop() end wait(.5)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
		elseif World1 and (Name == "God's Guard [Lv. 450]" or Name == "Sky Bandit [Lv. 150]" or Name == "Dark Master [Lv. 175]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000 then
			if Modstween then Modstween:Stop() end wait(.5)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
		elseif World1 and (Name == "Shanda [Lv. 475]" or Name == "Royal Squad [Lv. 525]"or Name == "Royal Soldier [Lv. 550]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 5000 then
			if Modstween then Modstween:Stop() end wait(.5)
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
		elseif World2 and string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
			if Modstween then Modstween:Stop() end
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
		elseif World2 and not string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
			if Modstween then Modstween:Stop() end
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
		elseif (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
			if Modstween then Modstween:Stop() end wait(.5)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
		end 
	end
end

function CheckMasteryWeapon(NameWe,MasNum)
	if game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe) then
		if tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
			return "true DownTo"
		elseif tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
			return "true UpTo"
		end
	end
	if game.Players.LocalPlayer.Character:FindFirstChild(NameWe) then
		if tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
			return "true DownTo"
		elseif tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
			return "true UpTo"
		end
	end
	return "else"
end

Mas:AddToggle('BM', {
Text = 'Auto Fruit Mastery',
Default = getgenv().Settings.Mastery["Auto Farm Fruit Mastery"],
}):OnChanged(function(value)
getgenv().Settings.Mastery["Auto Farm Fruit Mastery"] = value
if value == false then
wait()
toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
wait()
end
getgenv().SaveSetting()
end)
Mas:AddToggle('BM', {
Text = 'Auto Gun Mastery',
Default =  getgenv().Settings.Mastery["Auto Farm Gun Mastery"],
}):OnChanged(function(value)
getgenv().Settings.Mastery["Auto Farm Gun Mastery"] = value
if value == false then
toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
end
getgenv().SaveSetting()
end)

Mas:AddDivider()

Mas:AddLabel("Settings")

Mas:AddSlider('Health', {
Text = 'Mob Health (%)',
Default = getgenv().Settings.Mastery["Mob Health (%)"],
Min = 0,
Max = 100,
Rounding = 1,
Compact = false,
Callback = function(Value)
getgenv().Settings.Mastery["Mob Health (%)"] = value
getgenv().SaveSetting()
end
})

Mas:AddSlider('Health', {
Text = 'Distance X',
Default = 20,
Min = 0,
Max = 100,
Rounding = 1,
Compact = false,
Callback = function(Value)
Disx = value
getgenv().SaveSetting()
end
})

Mas:AddSlider('Health', {
Text = 'Distance Y',
Default = 0,
Min = 0,
Max = 100,
Rounding = 1,
Compact = false,
Callback = function(Value)
DisY = value
getgenv().SaveSetting()
end
})

Mas:AddSlider('Health', {
Text = 'Distance Z',
Default = 0,
Min = 0,
Max = 100,
Rounding = 1,
Compact = false,
Callback = function(Value)
Disz = value
getgenv().SaveSetting()
end
})
Mas:AddDivider()

Mas:AddToggle('BM', {
	Text = 'Skill Z',
	Default = getgenv().Settings.Configs["Skill Z"],
	}):OnChanged(function(value)
	getgenv().Settings.Configs["Skill Z"] = value
	getgenv().SaveSetting()
	end)
	Mas:AddToggle('BM', {
		Text = 'Skill X',
		Default = getgenv().Settings.Configs["Skill X"],
		}):OnChanged(function(value)
		getgenv().Settings.Configs["Skill X"] = value
		getgenv().SaveSetting()
		end)

		Mas:AddToggle('BM', {
			Text = 'Skill C',
			Default = getgenv().Settings.Configs["Skill C"],
			}):OnChanged(function(value)
			getgenv().Settings.Configs["Skill C"] = value
			getgenv().SaveSetting()
			end)

			Mas:AddToggle('BM', {
				Text = 'Skill V',
				Default = getgenv().Settings.Configs["Skill V"],
				}):OnChanged(function(value)
				getgenv().Settings.Configs["Skill V"] = value
				getgenv().SaveSetting()
				end)


				

local cdkbox = Tabs['Automatics']:AddLeftTabbox()
local CursedDual = cdkbox:AddTab('\\\\\  Cursed Dual Katana  //')
CursedDual:AddLabel("Tushita Quest")
CursedDual:AddToggle('BM', {
Text = 'Auto Cursed Dual Katana',
Default = false,
}):OnChanged(function(vu)
Auto_Cursed_Dual_Katanaa = vu
end)

spawn(function()
	while task.wait() do
pcall(function()
if Auto_Cursed_Dual_Katana then
if GetWeaponInventory("Cursed Dual Katana") == true then
if game.Players.LocalPlayer.Character:FindFirstChild("Cursed Dual Katana") or game.Players.LocalPlayer.Backpack:FindFirstChild("Cursed Dual Katana") then

else
print("Get Weapon")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Cursed Dual Katana")
end
else
if game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") or game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
if game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
if game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
EquipWeapon("Tushita")
else
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "Tushita" and v:IsA("Tool") then
if v.Level.Value >= 350 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Yama")
getgenv().Settings.Main["Auto Farm Bone"] = false
else
getgenv().Select_Weapon = "Tushita"
getgenv().Settings.Main["Auto Farm Bone"] = true
end
end
end
end
elseif game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
if game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
EquipWeapon("Yama")
else
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v.Name == "Yama" and v:IsA("Tool") then
if v.Level.Value >= 350 then
Auto_CDK_Quest = true
getgenv().Settings.Main["Auto Farm Bone"] = false
else
getgenv().Select_Weapon = "Yama"
getgenv().Settings.Main["Auto Farm Bone"] = true
end
end
end
end
end
else
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Tushita")
end  
end
end
end)
end
end)

spawn(function()
	while task.wait() do
pcall(function()
if Auto_CDK_Quest then
if GetMaterial("Alucard Fragment") == 0 then
Auto_Quest_Yama_1 = true
Auto_Quest_Yama_2 = false
Auto_Quest_Yama_3 = false
Auto_Quest_Tushita_1 = false
Auto_Quest_Tushita_2 = false
Auto_Quest_Tushita_3 = false
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
elseif GetMaterial("Alucard Fragment") == 1 then
Auto_Quest_Yama_1 = false
Auto_Quest_Yama_2 = true
Auto_Quest_Yama_3 = false
Auto_Quest_Tushita_1 = false
Auto_Quest_Tushita_2 = false
Auto_Quest_Tushita_3 = false
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
elseif GetMaterial("Alucard Fragment") == 2 then
Auto_Quest_Yama_1 = false
Auto_Quest_Yama_2 = false
Auto_Quest_Yama_3 = true
Auto_Quest_Tushita_1 = false
Auto_Quest_Tushita_2 = false
Auto_Quest_Tushita_3 = false
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
elseif GetMaterial("Alucard Fragment") == 3 then
Auto_Quest_Yama_1 = false
Auto_Quest_Yama_2 = false
Auto_Quest_Yama_3 = false
Auto_Quest_Tushita_1 = true
Auto_Quest_Tushita_2 = false
Auto_Quest_Tushita_3 = false
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
elseif GetMaterial("Alucard Fragment") == 4 then
Auto_Quest_Yama_1 = false
Auto_Quest_Yama_2 = false
Auto_Quest_Yama_3 = false
Auto_Quest_Tushita_1 = false
Auto_Quest_Tushita_2 = true
Auto_Quest_Tushita_3 = false
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
elseif GetMaterial("Alucard Fragment") == 5 then
Auto_Quest_Yama_1 = false
Auto_Quest_Yama_2 = false
Auto_Quest_Yama_3 = false
Auto_Quest_Tushita_1 = false
Auto_Quest_Tushita_2 = false
Auto_Quest_Tushita_3 = true
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
elseif GetMaterial("Alucard Fragment") == 6 then
if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") or game:GetService("Workspace").ReplicatedStorage:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") then
Auto_Quest_Yama_1 = false
Auto_Quest_Yama_2 = false
Auto_Quest_Yama_3 = false
Auto_Quest_Tushita_1 = false
Auto_Quest_Tushita_2 = false
Auto_Quest_Tushita_3 = false
if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == "Cursed Skeleton Boss [Lv. 2025] [Boss]" or v.Name == "Cursed Skeleton [Lv. 2200]" then
if v.Humanoid.Health > 0 then
v.HumanoidRootPart.CanCollide = false
v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end
end
end
end
else
if (CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
wait(1)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
wait(1)
toTarget(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875))
wait(1.5)
game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
wait(1.5)
toTarget(CFrame.new(-12253.5419921875, 598.8999633789062, -6546.8388671875))
else
toTarget(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875))
end
end
end
end
end)
end
end)

spawn(function()
	while task.wait() do
if Auto_Quest_Yama_1 then
pcall(function()
if game:GetService("Workspace").Enemies:FindFirstChild("Mythological Pirate [Lv. 1850]") then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == "Mythological Pirate [Lv. 1850]" then
repeat wait()
toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,0,-2))
until not Auto_CDK_Quest or not Auto_Cursed_Dual_Katana 
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
end
end
else
toTarget(CFrame.new(-13451.46484375, 543.712890625, -6961.0029296875))
end
end)
end
end
end)

spawn(function()
	while task.wait() do
pcall(function()
if Auto_Quest_Yama_2 then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v:FindFirstChild("HazeESP") then
v.HazeESP.Size = UDim2.new(50,50,50,50)
v.HazeESP.MaxDistance = "inf"
end
end
for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
if v:FindFirstChild("HazeESP") then
v.HazeESP.Size = UDim2.new(50,50,50,50)
v.HazeESP.MaxDistance = "inf"
end
end
end
end)
end
end)

spawn(function()
	while task.wait() do
pcall(function()
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if Auto_Quest_Yama_2 and v:FindFirstChild("HazeESP") and (v.HumanoidRootPart.Position - PosMonsEsp.Position).magnitude <= 300 then
v.HumanoidRootPart.CFrame = PosMonsEsp
v.HumanoidRootPart.CanCollide = false
v.HumanoidRootPart.Size = Vector3.new(50,50,50)
if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
local vc = Instance.new("BodyVelocity", v.HumanoidRootPart)
vc.MaxForce = Vector3.new(1, 1, 1) * math.huge
vc.Velocity = Vector3.new(0, 0, 0)
end
end
end
end)
end
end)

spawn(function()
	while task.wait() do
if Auto_Quest_Yama_2 then 
pcall(function() 
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v:FindFirstChild("HazeESP") then
repeat wait()
if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
BTP(y.HumanoidRootPart.CFrameMon* CFrame.new(0,20,0))
else
StartMagnet = true
Fast = true

if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().Settings.Configs["Select Weapon"]) then
wait()
EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
end
PosMonsEsp = v.HumanoidRootPart.CFrame
if not getgenv().Settings.Configs["Fast Attack"] then
game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end
if getgenv().Settings.Configs["Show Hitbox"] then
v.HumanoidRootPart.Transparency = fabox_LocalTransparency
else
v.HumanoidRootPart.Transparency = 1
end
v.Humanoid.JumpPower = 0
v.Humanoid.WalkSpeed = 0
v.HumanoidRootPart.CanCollide = false
v.Humanoid:ChangeState(11)
toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,20,0))
end  
until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_2 == false or not v.Parent or v.Humanoid.Health <= 0 or not v:FindFirstChild("HazeESP")
else
for x,y in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
if y:FindFirstChild("HazeESP") then
if (y.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
BTP(y.HumanoidRootPart.CFrameMon* CFrame.new(0,20,0))
else
toTarget(y.HumanoidRootPart.CFrame * CFrame.new(0,20,0))
end
end
end
end
end
end)
end
end
end)

spawn(function()
	while task.wait() do
if Auto_Quest_Yama_3 then
pcall(function()
if game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") then 
getgenv().Settings.Main["Auto Farm Bone"] = false
toTarget(game:GetService("Workspace").Map["Haunted Castle"].Summoner.Detection.CFrame)
elseif game:GetService("Workspace").Map:FindFirstChild("HellDimension") then
repeat wait()
if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Hell's Messenger [Lv. 2200] [Boss]") then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == "Cursed Skeleton [Lv. 2200]" or v.Name == "Cursed Skeleton [Lv. 2200] [Boss]" or v.Name == "Hell's Messenger [Lv. 2200] [Boss]" then
if v.Humanoid.Health > 0 then
repeat wait()
StartMagnet = true
Fast = true

if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().Settings.Configs["Select Weapon"]) then
wait()
EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
end
PosMonsEsp = v.HumanoidRootPart.CFrame
if not getgenv().Settings.Configs["Fast Attack"] then
game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end
if getgenv().Settings.Configs["Show Hitbox"] then
v.HumanoidRootPart.Transparency = fabox_LocalTransparency
else
v.HumanoidRootPart.Transparency = 1
end
v.Humanoid.JumpPower = 0
v.Humanoid.WalkSpeed = 0
v.HumanoidRootPart.CanCollide = false
v.Humanoid:ChangeState(11)
toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Yama_3 == false
end
end
end
else
wait(5)
toTarget(game:GetService("Workspace").Map.HellDimension.Torch1.CFrame)
wait(1.5)
game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
wait(1.5)
toTarget(game:GetService("Workspace").Map.HellDimension.Torch2.CFrame)
wait(1.5)
game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
wait(1.5) 
toTarget(game:GetService("Workspace").Map.HellDimension.Torch3.CFrame)
wait(1.5)
game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
wait(1.5) 
toTarget(game:GetService("Workspace").Map.HellDimension.Exit.CFrame)
end
until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_3 == false or GetMaterial("Alucard Fragment") == 3
else
if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") or game.ReplicatedStorage:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == "Soul Reaper [Lv. 2100] [Raid Boss]" then
if v.Humanoid.Health > 0 then
repeat wait()
toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,0,-2))
until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_3 == false or game:GetService("Workspace").Map:FindFirstChild("HellDimension")
end
end
end
else
toTarget(CFrame.new(-9570.033203125, 315.9346923828125, 6726.89306640625))
end
else
getgenv().Settings.Main["Auto Farm Bone"] = true
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
end
end
end)
end
end
end)

spawn(function() 
	while task.wait() do
if Auto_Quest_Tushita_1 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","BoatQuest",workspace.NPCs:FindFirstChild("Luxury Boat Dealer"))
end
end
end)

spawn(function()
	while task.wait() do
if Auto_Quest_Tushita_1 then
BTP(CFrame.new(-9546.990234375, 21.139892578125, 4686.1142578125))
wait(5)
BTP(CFrame.new(-6120.0576171875, 16.455780029296875, -2250.697265625))
wait(5)
BTP(CFrame.new(-9533.2392578125, 7.254445552825928, -8372.69921875))
end
end
end)

spawn(function()
	while task.wait() do
if Auto_Quest_Tushita_2 then
pcall(function()
if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if Auto_Quest_Tushita_2 and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
repeat wait()
v.HumanoidRootPart.CanCollide = false
v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Tushita_2 == false
end
end
end
else
toTarget(CFrame.new(-5545.1240234375, 313.800537109375, -2976.616455078125))
end
end)
end
end
end)

spawn(function()
	while task.wait() do
if Auto_Quest_Tushita_3 then
pcall(function()
if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") or game.ReplicatedStorage:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == "Cake Queen [Lv. 2175] [Boss]" then
if v.Humanoid.Health > 0 then
repeat wait()

if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().Settings.Configs["Select Weapon"]) then
wait()
EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
end
if not getgenv().Settings.Configs["Fast Attack"] then
game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end
if getgenv().Settings.Configs["Show Hitbox"] then
v.HumanoidRootPart.Transparency = fabox_LocalTransparency
else
v.HumanoidRootPart.Transparency = 1
end
v.Humanoid.JumpPower = 0
v.Humanoid.WalkSpeed = 0
v.HumanoidRootPart.CanCollide = false
v.Humanoid:ChangeState(11)
toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
until Auto_Cursed_Dual_Katana == false or Auto_Quest_Tushita_3 == false or game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension")
end
end
end
else
toTarget(CFrame.new(-709.3132934570312, 381.6005859375, -11011.396484375))
end
elseif game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension") then
repeat wait()
if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Heaven's Guardian [Lv. 2200] [Boss]") then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == "Cursed Skeleton [Lv. 2200]" or v.Name == "Cursed Skeleton [Lv. 2200] [Boss]" or v.Name == "Heaven's Guardian [Lv. 2200] [Boss]" then
if v.Humanoid.Health > 0 then
repeat wait()

if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().Settings.Configs["Select Weapon"]) then
wait()
EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
end
if not getgenv().Settings.Configs["Fast Attack"] then
game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end
if getgenv().Settings.Configs["Show Hitbox"] then
v.HumanoidRootPart.Transparency = fabox_LocalTransparency
else
v.HumanoidRootPart.Transparency = 1
end
v.Humanoid.JumpPower = 0
v.Humanoid.WalkSpeed = 0
v.HumanoidRootPart.CanCollide = false
v.Humanoid:ChangeState(11)
until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Tushita_3 == false
end
end
end
else
wait(5)
toTarget(game:GetService("Workspace").Map.HeavenlyDimension.Torch1.CFrame)
wait(1.5)
game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
wait(1.5)
toTarget(game:GetService("Workspace").Map.HeavenlyDimension.Torch2.CFrame)
wait(1.5)
game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
wait(1.5) 
toTarget(game:GetService("Workspace").Map.HeavenlyDimension.Torch3.CFrame)
wait(1.5)
game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
wait(1.5) 
toTarget(game:GetService("Workspace").Map.HeavenlyDimension.Exit.CFrame)
end
until Auto_Cursed_Dual_Katana == false or Auto_Quest_Tushita_3 == false or GetMaterial("Alucard Fragment") == 6
else
ServerHop:Teleport()
end
end)
end
end
end)

Tushita_Quest1 = nil

if Tushita_Quest1 == false then

CursedDual:AddToggle('BM', {
Text = 'Tushita Quest : 2',
Default = Tushita_Quest2,
}):OnChanged(function(value)
Tushita_Quest2 = value
if value == false then
wait()
toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
wait()
end
getgenv().SaveSetting()
task.spawn(function()
	while task.wait() do
pcall(function()
if Tushita_Quest2 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Tushita")
wait(1)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
wait(.5)
if game:GetService("Workspace").Enemies:GetChildren() then
toTarget(CFrame.new(-5523.9453125, 313.7913818359375, -2958.09765625))
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if Tushita_Quest2 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1000 then
repeat wait()
StartMagnet = true
Fast = true

if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().Settings.Configs["Select Weapon"]) then
wait()
EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
end
PosMon = v.HumanoidRootPart.CFrame
if not getgenv().Settings.Configs["Fast Attack"] then
game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end
if getgenv().Settings.Configs["Show Hitbox"] then
v.HumanoidRootPart.Transparency = fabox_LocalTransparency
else
v.HumanoidRootPart.Transparency = 1
end
v.Humanoid.JumpPower = 0
v.Humanoid.WalkSpeed = 0
v.HumanoidRootPart.CanCollide = false
v.Humanoid:ChangeState(11)
toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,getgenv().Settings.Configs["Distance Auto Farm"],0))
until v.Humanoid.Health <= 0 or not Tushita_Quest2
StartMagnet = false
Fast = false
end
end
end
end
end)
end
end)
end)

CursedDual:AddLabel("Use Auto Buddy Sword / Self-ignite torch / Mob Aura")

CursedDual:AddDivider()

CursedDual:AddLabel("Yama Quest")

CursedDual:AddToggle('BM', {
Text = 'Yama Quest : 1',
Default = YamaQuest1,
}):OnChanged(function(value)
YamaQuest1 = value
if value == false then
wait()
toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
wait()
end
getgenv().SaveSetting()
task.spawn(function()
	while task.wait() do
pcall(function()
if YamaQuest1 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Yama")
wait(.1)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
wait(.1)
toTarget(CFrame.new(-13284.16796875, 332.4040222167969, -7899.060546875))
end
end)
end
end)
end)

CursedDual:AddToggle('BM', {
Text = 'Yama Quest : 2',
Default = YamaQuest2,
}):OnChanged(function(value)
YamaQuest2 = value
if value == false then
wait()
toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
wait()
end
getgenv().SaveSetting()
task.spawn(function()
	while task.wait() do
pcall(function()
if YamaQuest2 then
for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
if YamaQuest2 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HazeESP") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
repeat wait()
StartMagnet = true
Fast = true

if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().Settings.Configs["Select Weapon"]) then
wait()
EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
end
PosMon = v.HumanoidRootPart.CFrame
if not getgenv().Settings.Configs["Fast Attack"] then
game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end
if getgenv().Settings.Configs["Show Hitbox"] then
v.HumanoidRootPart.Transparency = fabox_LocalTransparency
else
v.HumanoidRootPart.Transparency = 1
end
v.Humanoid.JumpPower = 0
v.Humanoid.WalkSpeed = 0
v.HumanoidRootPart.CanCollide = false
v.Humanoid:ChangeState(11)
toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,getgenv().Settings.Configs["Distance Auto Farm"],0))
until not YamaQuest2 or not v.Parent or v.Humanoid.Health <= 0
StartMagnet = false
Fast = false
end
end
end
end)
end
end)
end)

CursedDual:AddLabel("Walk up to the Halloween boss and kill afterward, light your torch and turn on the Auto Mob Aura.")

CursedDual:AddToggle('BM', {
Text = 'Mob Aura',
Default = MobAura,
}):OnChanged(function(value)
MobAura = value
if value == false then
wait()
toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
wait()
end
task.spawn(function()
	while task.wait() do
pcall(function()
if MobAura then
for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
if MobAura and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1000 then
repeat wait()
StartMagnet = true
Fast = true

if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().Settings.Configs["Select Weapon"]) then
wait()
EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
end
PosMon = v.HumanoidRootPart.CFrame
if not getgenv().Settings.Configs["Fast Attack"] then
game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end
if getgenv().Settings.Configs["Show Hitbox"] then
v.HumanoidRootPart.Transparency = fabox_LocalTransparency
else
v.HumanoidRootPart.Transparency = 1
end
v.Humanoid.JumpPower = 0
v.Humanoid.WalkSpeed = 0
v.HumanoidRootPart.CanCollide = false
v.Humanoid:ChangeState(11)
toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,getgenv().Settings.Configs["Distance Auto Farm"],0))
MagnetMobAura = true
if delay then
delay(1,function()
MagnetMobAura = true
end)
end 
until not MobAura or not v.Parent or v.Humanoid.Health <= 0
MagnetMobAura = false
Fast = false
StartMagnet = false
end
end
end
end)
end
end)
end)
task.spawn(function()
	while task.wait() do
pcall(function()
local MyLevel = game.Players.LocalPlayer.Data.Level.Value
if MobAura then
for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
if (v.HumanoidRootPart.Position-PosMonAura.Position).magnitude <= 350 then
v.HumanoidRootPart.CFrame = PosMonAura
v.Humanoid.JumpPower = 0
v.Humanoid.WalkSpeed = 0
v.HumanoidRootPart.CanCollide = false
if v.Humanoid:FindFirstChild("Animator") then
v.Humanoid.Animator:Destroy()
end
v.Humanoid:ChangeState(11)
end
end
end
end)
end
end)
end

local sgtbox = Tabs['Automatics']:AddRightTabbox()
local SoulGuitar = sgtbox:AddTab('\\\\\  Soul Guitar  //')


SoulGuitar:AddToggle('BM', {
Text = 'Auto Soul Guitar',
Default = false,
}):OnChanged(function(value)
AutoSoulGuitar = value
spawn(function()
while task.wait() do
pcall(function()
if AutoSoulGuitar then
if (GetWeaponInventory("Soul Guitar") == false) then
if ((CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5000) then
if game:GetService("Workspace").NPCs:FindFirstChild("Skeleton Machine") then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("soulGuitarBuy", true)
elseif (game:GetService("Workspace").Map["Haunted Castle"].Candle1.Transparency == 0) then
if (game:GetService("Workspace").Map["Haunted Castle"].Placard1.Left.Part.Transparency == 0) then
Quest2 = true
repeat
task.wait()
toTarget(CFrame.new(-8762.69140625, 176.84783935546875, 6171.3076171875))
until ((CFrame.new(-8762.69140625, 176.84783935546875, 6171.3076171875).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) or not AutoSoulGuitar 
wait(1)
fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard7.Left.ClickDetector)
wait(1)
fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard6.Left.ClickDetector)
wait(1)
fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard5.Left.ClickDetector)
wait(1)
fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard4.Right.ClickDetector)
wait(1)
fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard3.Left.ClickDetector)
wait(1)
fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard2.Right.ClickDetector)
wait(1)
fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard1.Right.ClickDetector)
wait(1)
elseif game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment1:FindFirstChild("ClickDetector") then
if game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part1:FindFirstChild("ClickDetector") then
Quest4 = true
repeat
task.wait()
toTarget(CFrame.new(-9553.5986328125, 65.62338256835938, 6041.58837890625))
until ((CFrame.new(-9553.5986328125, 65.62338256835938, 6041.58837890625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) or not AutoSoulGuitar 
wait(1)
toTarget(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.CFrame)
wait(1)
fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.ClickDetector)
wait(1)
toTarget(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.CFrame)
wait(1)
fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
wait(1)
fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
wait(1)
fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
wait(1)
toTarget(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.CFrame)
wait(1)
fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector)
wait(1)
fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector)
wait(1)
toTarget(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.CFrame)
wait(1)
fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.ClickDetector)
wait(1)
toTarget(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.CFrame)
wait(1)
fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
wait(1)
fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
wait(1)
fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
else
Quest3 = true
end
else
if game:GetService("Workspace").NPCs:FindFirstChild("Ghost") then
local args = {[1]="GuitarPuzzleProgress",[2]="Ghost"}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
if game.Workspace.Enemies:FindFirstChild("Living Zombie [Lv. 2000]") then
for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
if (v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.Humanoid.Health > 0)) then
if (v.Name == "Living Zombie [Lv. 2000]") then
EquipWeapon(getgenv().SelectWeapon)
toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
v.HumanoidRootPart.Transparency = 1
v.Humanoid.JumpPower = 0
v.Humanoid.WalkSpeed = 0
v.HumanoidRootPart.CanCollide = false
v.Humanoid:ChangeState(11)
v.Humanoid:ChangeState(14)
FarmPos = v.HumanoidRootPart.CFrame
MonFarm = v.Name
Click()
end
end
end
else
toTarget(CFrame.new(-10160.787109375, 138.6616973876953, 5955.03076171875))
end
end
elseif string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2), "Error") then
print("Go to Grave")
toTarget(CFrame.new(-8653.2060546875, 140.98487854003906, 6160.033203125))
elseif string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2), "Nothing") then
print("Wait Next Night")
else
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2, true)
end
else
toTarget(CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125))
end
end
end
end)
end
end)
end)

SoulGuitar:AddToggle('BM', {
Text = 'Auto Try Luck',
Default = false,
}):OnChanged(function(value)
TryLuck = value
end)

SoulGuitar:AddToggle('BM', {
Text = 'Auto Pray',
Default = false,
}):OnChanged(function(value)
Pray = value
end)

spawn(function()
while wait(0.1) do
if TryLuck then
toTarget(CFrame.new(-8652.99707, 143.450119, 6170.50879, -0.983064115, -2.4800553e-10, 0.18326205, -1.7891039e-9, 1, -8.243923e-9, -0.18326205, -8.43218e-9, -0.983064115))
wait()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 1)
end
end
end)
spawn(function()
while wait(0.1) do
if Pray then
toTarget(CFrame.new(-8652.99707, 143.450119, 6170.50879, -0.983064115, -2.4800553e-10, 0.18326205, -1.7891039e-9, 1, -8.243923e-9, -0.18326205, -8.43218e-9, -0.983064115))
wait()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2)
end
end
end)


local FWbox = Tabs['Automatics']:AddLeftTabbox()
local FirstWord = FWbox:AddTab('\\\\\ First Word //')


FirstWord:AddToggle('BM', {
Text = 'Auto Pole V.1',
Default = false,
}):OnChanged(function(value)
getgenv().Settings.Main["Auto Pole"] = value
if value == false then
wait()
toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
wait()
end
getgenv().SaveSetting()
task.spawn(function()
	while task.wait() do
pcall(function()
if getgenv().Settings.Main["Auto Pole"] then
if game.ReplicatedStorage:FindFirstChild("Thunder God [Lv. 575] [Boss]") or game.Workspace.Enemies:FindFirstChild("Thunder God [Lv. 575] [Boss]") then
for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
if v.Name == "Thunder God [Lv. 575] [Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
repeat wait()
if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
if Farmtween then Farmtween:Stop() end
StartMagnet = true
Fast = true

if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().Settings.Configs["Select Weapon"]) then
wait()
EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
end
toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,getgenv().Settings.Configs["Distance Auto Farm"],0))
PosMon = v.HumanoidRootPart.CFrame
if not getgenv().Settings.Configs["Fast Attack"] then
game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end
if getgenv().Settings.Configs["Show Hitbox"] then
v.HumanoidRootPart.Transparency = fabox_LocalTransparency
else
v.HumanoidRootPart.Transparency = 1
end
v.Humanoid.JumpPower = 0
v.Humanoid.WalkSpeed = 0
v.HumanoidRootPart.CanCollide = false
v.Humanoid:ChangeState(11)

end
until not getgenv().Settings.Main["Auto Pole"] or v.Humanoid.Health <= 0 or not v.Parent
StartMagnet = false
Fast = false
end
end
else
Questtween = toTarget(CFrame.new(-7900.66406, 5606.90918, -2267.46436).Position,CFrame.new(-7900.66406, 5606.90918, -2267.46436))
if (CFrame.new(-7900.66406, 5606.90918, -2267.46436).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
if Questtween then
Questtween:Stop()
end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7900.66406, 5606.90918, -2267.46436)
end
end
elseif game.ReplicatedStorage:FindFirstChild("Thunder God [Lv. 575] [Boss]") or game.Workspace.Enemies:FindFirstChild("Thunder God [Lv. 575] [Boss]") == false then
if phub then
local Player = game.Players.LocalPlayer
local Http = game:GetService("HttpService")
local TPS = game:GetService("TeleportService")
local Api = "https://games.roblox.com/v1/games/"
local _place,_id = game.PlaceId, game.JobId
local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=10"
function ListServers(cursor)
local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
return Http:JSONDecode(Raw)
end
while wait(time_to_wait) do
local Servers = ListServers()
local Server = Servers.data[math.random(1,#Servers.data)]
TPS:TeleportToPlaceInstance(_place, Server.id, Player)
end
end
end
end)
end
end)
end)

FirstWord:AddToggle('BM', {
Text = 'Auto Pole V.1 Hop',
Default = false,
}):OnChanged(function(value)
phub = value
end)

FirstWord:AddToggle('BM', {
Text = 'Auto Saber',
Default = false,
}):OnChanged(function(value)
getgenv().Settings.Main["Auto Saber"] = value
if value == false then
wait()
toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
wait()
end
getgenv().SaveSetting()
task.spawn(function()
	while task.wait() do
pcall(function()
if getgenv().Settings.Main["Auto Saber"] and game.Players.LocalPlayer.Data.Level.Value >= 200 and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Saber") and not game.Players.LocalPlayer.Character:FindFirstChild("Saber") then
if Auto_Farm_Level then
getgenv().Settings.Main["Auto Farm Level"] = false
end
if game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 0 then
if game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency == 0 then
if (CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate1.Button.CFrame
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate2.Button.CFrame
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate3.Button.CFrame
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate4.Button.CFrame
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate5.Button.CFrame
wait(1) 
else
toTarget(CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279))
end
else
if game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0 then
if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch") then
EquipWeapon("Torch")
toTarget(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587, -1.28799094e-09, 0.761243105, -5.70652914e-10, 1, 1.20584542e-09, -0.761243105, 3.47544882e-10, -0.648466587))
else
toTarget(CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 3.42372805e-05, -0.258850515, 0.965917408)) 
end
else
if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") ~= 0 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","GetCup")
wait(0.5)
EquipWeapon("Cup")
wait(0.5)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","FillCup",game:GetService("Players").LocalPlayer.Character.Cup)
wait(0)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") 
else
if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == nil then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
elseif  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 0 then
if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader [Lv. 120] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
toTarget(CFrame.new(-2967.59521, -4.91089821, 5328.70703, 0.342208564, -0.0227849055, 0.939347804, 0.0251603816, 0.999569714, 0.0150796166, -0.939287126, 0.0184739735, 0.342634559))
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == "Mob Leader [Lv. 120] [Boss]" then
repeat wait()
StartMagnet = true
Fast = true

if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().Settings.Configs["Select Weapon"]) then
wait()
EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
end
toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,getgenv().Settings.Configs["Distance Auto Farm"],0))
PosMon = v.HumanoidRootPart.CFrame
if not getgenv().Settings.Configs["Fast Attack"] then
game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end
if getgenv().Settings.Configs["Show Hitbox"] then
v.HumanoidRootPart.Transparency = fabox_LocalTransparency
else
v.HumanoidRootPart.Transparency = 1
end
v.Humanoid.JumpPower = 0
v.Humanoid.WalkSpeed = 0
v.HumanoidRootPart.CanCollide = false
v.Humanoid:ChangeState(11)
until v.Humanoid.Health <= 0 or getgenv().Settings.Main["Auto Saber"] == false
end
end
end
elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 1 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
wait(0.5)
EquipWeapon("Relic")
wait(0.5)
toTarget(CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.66906877e-09, 0.481375456, 2.53851997e-08, 1, -5.79995607e-08, -0.481375456, 6.30572643e-08, 0.876514494))
end
end
end
end
else
if game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert [Lv. 200] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
toTarget(CFrame.new(-1401.85046, 29.9773273, 8.81916237, 0.85820812, 8.76083845e-08, 0.513301849, -8.55007443e-08, 1, -2.77243419e-08, -0.513301849, -2.00944328e-08, 0.85820812))
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == "Saber Expert [Lv. 200] [Boss]" then
repeat wait()
StartMagnet = true
Fast = true

if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().Settings.Configs["Select Weapon"]) then
wait()
EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
end
toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,getgenv().Settings.Configs["Distance Auto Farm"],0))
PosMon = v.HumanoidRootPart.CFrame
if not getgenv().Settings.Configs["Fast Attack"] then
game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end
if getgenv().Settings.Configs["Show Hitbox"] then
v.HumanoidRootPart.Transparency = fabox_LocalTransparency
else
v.HumanoidRootPart.Transparency = 1
end
v.Humanoid.JumpPower = 0
v.Humanoid.WalkSpeed = 0
v.HumanoidRootPart.CanCollide = false
v.Humanoid:ChangeState(11)

until v.Humanoid.Health <= 0 or getgenv().Settings.Main["Auto Saber"] == false
if v.Humanoid.Health <= 0 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","PlaceRelic")
end
getgenv().Settings.Main["Auto Farm Level"] = true
end
end
end
end
end
end)
end
end)
end)
local SSbox = Tabs['Automatics']:AddLeftTabbox()

local SecondWord = SSbox:AddTab('\\\\\ Second Sea //')


SecondWord:AddToggle('BM', {
Text = 'Auto Dark Coat',
Default = false,
}):OnChanged(function(value)
getgenv().Settings.Main["Auto Dark Coat"] = value
if value == false then
wait()
toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
wait()
end
getgenv().SaveSetting()
task.spawn(function()
	while task.wait() do
pcall(function()
if getgenv().Settings.Main["Auto Dark Coat"] then
if game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard [Lv. 1000] [Raid Boss]") then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == ("Darkbeard [Lv. 1000] [Raid Boss]" or v.Name == "Darkbeard [Lv. 1000] [Raid Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
repeat wait()
StartMagnet = true
Fast = true

if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().Settings.Configs["Select Weapon"]) then
wait()
EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
end
PosMon = v.HumanoidRootPart.CFrame
if not getgenv().Settings.Configs["Fast Attack"] then
game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end
if getgenv().Settings.Configs["Show Hitbox"] then
v.HumanoidRootPart.Transparency = fabox_LocalTransparency
else
v.HumanoidRootPart.Transparency = 1
end
v.Humanoid.JumpPower = 0
v.Humanoid.WalkSpeed = 0
v.HumanoidRootPart.CanCollide = false
v.Humanoid:ChangeState(11)
toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,getgenv().Settings.Configs["Distance Auto Farm"],0))
until getgenv().Settings.Main["Auto Dark Coat"] == false or v.Humanoid.Health <= 0
StartMagnet = false
Fast = false
end
end
else
toTarget(CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531))
end
end
end)
end
end)
end)


SecondWord:AddToggle('BM', {
Text = 'Auto Ectoplasm',
Default = false,
}):OnChanged(function(value)
getgenv().Settings.Main["Auto Ectoplasm"] = value
if value == false then
wait()
toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
wait()
end
getgenv().SaveSetting()
task.spawn(function()
	while task.wait() do
pcall(function()
if getgenv().Settings.Main["Auto Ectoplasm"] then
if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand [Lv. 1250]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer [Lv. 1275]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward [Lv. 1300]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer [Lv. 1325]") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior [Lv. 1350]") then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == "Ship Deckhand [Lv. 1250]" or v.Name == "Ship Engineer [Lv. 1275]" or v.Name == "Ship Steward [Lv. 1300]" or v.Name == "Ship Officer [Lv. 1325]" or v.Name == "Arctic Warrior [Lv. 1350]" then
if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
repeat wait()
StartMagnet = true
Fast = true

if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().Settings.Configs["Select Weapon"]) then
wait()
EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
end
PosMon = v.HumanoidRootPart.CFrame
if not getgenv().Settings.Configs["Fast Attack"] then
game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end
if getgenv().Settings.Configs["Show Hitbox"] then
v.HumanoidRootPart.Transparency = fabox_LocalTransparency
else
v.HumanoidRootPart.Transparency = 1
end
v.Humanoid.JumpPower = 0
v.Humanoid.WalkSpeed = 0
v.HumanoidRootPart.CanCollide = false
v.Humanoid:ChangeState(11)
toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,getgenv().Settings.Configs["Distance Auto Farm"],0))
until not getgenv().Settings.Main["Auto Ectoplasm"] or not v.Parent or v.Humanoid.Health <= 0
StartMagnet = false
Fast = false
end
end
end
else
StartMagnet = false
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
end
end
end)
end
end)
end)

SecondWord:AddToggle('BM', {
Text = 'Auto True Triple Katana',
Default = false,
}):OnChanged(function(value)
getgenv().Settings.Main["Auto True Triple Katana"] = value
if value == false then
wait()
toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
wait()
end
getgenv().SaveSetting()
task.spawn(function()
	while task.wait() do
pcall(function()
if getgenv().Settings.Main["Auto True Triple Katana"] then
local string_1 = "MysteriousMan"
local string_2 = "2"
local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"]
Target:InvokeServer(string_1, string_2)  
end
end)
end
end)
end)

SecondWord:AddToggle('BM', {
Text = 'Auto Rengoku Swords',
Default = false,
}):OnChanged(function(value)
getgenv().Settings.Main["Auto Rengoku"] = value
if value == false then
toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
end
getgenv().SaveSetting()
task.spawn(function()
	while task.wait() do
pcall(function()
if getgenv().Settings.Main["Auto Rengoku"] then
if game.Players.LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game.Players.LocalPlayer.Character:FindFirstChild("Hidden Key") then
EquipWeapon("Hidden Key")
toTarget(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
elseif game.Workspace.Enemies:FindFirstChild("Snow Lurker [Lv. 1375]") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior [Lv. 1350]") then
for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
if (v.Name == "Snow Lurker [Lv. 1375]" or v.Name == "Arctic Warrior [Lv. 1350]") and v.Humanoid.Health > 0 then
repeat wait()
StartMagnet = true
Fast = true

if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().Settings.Configs["Select Weapon"]) then
wait()
EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
end
PosMon = v.HumanoidRootPart.CFrame
if not getgenv().Settings.Configs["Fast Attack"] then
game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end
if getgenv().Settings.Configs["Show Hitbox"] then
v.HumanoidRootPart.Transparency = fabox_LocalTransparency
else
v.HumanoidRootPart.Transparency = 1
end
v.Humanoid.JumpPower = 0
v.Humanoid.WalkSpeed = 0
v.HumanoidRootPart.CanCollide = false
v.Humanoid:ChangeState(11)
toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,getgenv().Settings.Configs["Distance Auto Farm"],0))
until game.Players.LocalPlayer.Backpack:FindFirstChild("Hidden Key") or not getgenv().Settings.Main["Auto Rengoku"] or not v.Parent or v.Humanoid.Health <= 0
StartMagnet = false
Fast = false
end
end
else
StartMagnet = false
Fast = false
toTarget(CFrame.new(5525.7045898438, 262.90060424805, -6755.1186523438))
end
end
end)
end
end)
end)


SecondWord:AddToggle('BM', {
Text = 'Auto Swan Glasses',
Default = false,
}):OnChanged(function(value)
getgenv().Settings.Main["Auto Swan Glasses"] = value
if value == false then
toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
end
getgenv().SaveSetting()
task.spawn(function()
	while task.wait() do
pcall(function()
if getgenv().Settings.Main["Auto Swan Glasses"] then
if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == "Don Swan [Lv. 1000] [Boss]" and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
repeat wait()
StartMagnet = true
Fast = true

if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().Settings.Configs["Select Weapon"]) then
wait()
EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
end
PosMon = v.HumanoidRootPart.CFrame
if not getgenv().Settings.Configs["Fast Attack"] then
game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end
if getgenv().Settings.Configs["Show Hitbox"] then
v.HumanoidRootPart.Transparency = fabox_LocalTransparency
else
v.HumanoidRootPart.Transparency = 1
end
v.Humanoid.JumpPower = 0
v.Humanoid.WalkSpeed = 0
v.HumanoidRootPart.CanCollide = false
v.Humanoid:ChangeState(11)
toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,getgenv().Settings.Configs["Distance Auto Farm"],0))
until not getgenv().Settings.Main["Auto Swan Glasses"] or v.Humanoid.Health <= 0
StartMagnet = false
Fast = false
end
end
else
repeat wait()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(2284.912109375, 15.537666320801, 905.48291015625)) 
until (CFrame.new(2284.912109375, 15.537666320801, 905.48291015625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 or not getgenv().Settings.Main["Auto Swan Glasses"]
end
end
end)
end
end)
end)

local FarmMaterail = Tabs['Automatics']:AddRightTabbox()
local Materail = FarmMaterail:AddTab('\\\\\  Farm Materail  //')


Materail:AddDropdown('AllMaterial', {
	Values = AllMaterial,
	Default = 'd',
	Multi = false,
	Text = 'Select Material',
	}):OnChanged(function(value)
		SelectModeMaterial = value
	end)

	
	Materail:AddToggle('BM', {
	Text = 'Auto Farm Materia',
	Default = false,
	}):OnChanged(function(x)
		AutoFarmMaterial = x
		if x == false then
			toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.Position,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
		end
		spawn(function()
			while wait() do 
				if AutoFarmMaterial then    
					xpcall(function()
						if (SelectModeMaterial~="") then 
							CheckMaterial(SelectModeMaterial)
							if CustomFindFirstChild(MaterialMob) then
								for v0,v1 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
									if (AutoFarmMaterial and table.find(MaterialMob,v1.Name) and v1:FindFirstChild("HumanoidRootPart") and v1:FindFirstChild("Humanoid") and (v1.Humanoid.Health>0)) then 
										repeat wait()
											FarmtoTarget=toTarget(v1.HumanoidRootPart.CFrame * CFrame.new(0,30,1))
											if (v1:FindFirstChild("HumanoidRootPart") and v1:FindFirstChild("Humanoid") and ((v1.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude<=150)) then 
												if FarmtoTarget then FarmtoTarget:Stop() end 
												Fast=true
												EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
												spawn(function()for v4,v5 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
														if (v5.Name==v1.Name) then 
															spawn(function()
																if InMyNetWork(v5.HumanoidRootPart) then 
																	v5.HumanoidRootPart.CFrame = v1.HumanoidRootPart.CFrame
																	v5.Humanoid.JumpPower=0
																	v5.Humanoid.WalkSpeed=0
																	v5.HumanoidRootPart.CanCollide=false
																	v5.Humanoid:ChangeState(14)
																	v5.Humanoid:ChangeState(11)
																end 
															end)
														end 
													end 
												end)
												if (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value>=150)) then 
													game:service("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
													game:service("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
												end 
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v1.HumanoidRootPart.CFrame * CFrame.new(0,30,1)
											end 
										until not CustomFindFirstChild(MaterialMob) or not AutoFarmMaterial or (v1.Humanoid.Health<=0) or not v1.Parent Fast=false
									end 
								end 
							else 
								Fast=false
								Modstween = toTarget(CFrameMon)
								if (World1 and (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and ((CFrameMon.Position-game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude>50000)) then 
									if Modstween then Modstween:Stop() end wait(0.5)game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625,11.6796875,1819.7841796875))
								elseif (World1 and not (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and ((CFrameMon.Position-game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude>50000)) then 
									if Modstween then Modstween:Stop()end wait(0.5)game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625,6.6796875, -1926.7841796875))
								elseif (World1 and (table.find(MaterialMob,"God's Guard [Lv. 450]")) and ((CFrameMon.Position-game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude>3000)) then 
									if Modstween then Modstween:Stop()end wait(0.5)game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new( -4607.8227539063,872.54248046875, -1667.5568847656))
								elseif ((CFrameMon.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude<=150) then 
									if Modstween then Modstween:Stop()end 
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
								end 
							end 
						end
					end,function(x)
						print("Auto Farm Material Error : "..x)
					end)
				else
					break
				end
			end
		end)
	end)

local mobaurax = Tabs['Automatics']:AddRightTabbox()
local mobaura = mobaurax:AddTab('\\\\\  Mob Aura  //')

mobaura:AddSlider('MySlider', {
    Text = 'Distance Mob Aura',
    Default = 1000,
    Min = 0,
    Max = 5000,
    Rounding = 0,

    Compact = false,
}):OnChanged(function(value)
	DistanceMobAura = value
end)

mobaura:AddToggle('BM', {
	Text = 'Mob Aura',
	Default = false,
	}):OnChanged(function(value)
		MobAura = value
		if value == false then
			wait()
			toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			wait()
		end
		task.spawn(function()
			while wait() do
				pcall(function()
					if MobAura then
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if MobAura and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= DistanceMobAura then
								repeat wait()
									StartMagnet = true
									Fast = true

									if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().Settings.Configs["Select Weapon"]) then
										wait()
										EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
									end
									PosMon = v.HumanoidRootPart.CFrame
									if not getgenv().Settings.Configs["Fast Attack"] then
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									end
									if getgenv().Settings.Configs["Show Hitbox"] then
										v.HumanoidRootPart.Transparency = fabox_LocalTransparency
									else
										v.HumanoidRootPart.Transparency = 1
									end
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.Humanoid:ChangeState(11)
									toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,getgenv().Settings.Configs["Distance Auto Farm"],0))
									MagnetMobAura = true
									if delay then
										delay(1,function()
											MagnetMobAura = true
										end)
									end 
								until not MobAura or not v.Parent or v.Humanoid.Health <= 0
								MagnetMobAura = false
								Fast = false
								StartMagnet = false
							end
						end
					end
				end)
			end
		end)
	end)

	task.spawn(function()
		while wait() do
			pcall(function()
				local MyLevel = game.Players.LocalPlayer.Data.Level.Value
				if MobAura then
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if (v.HumanoidRootPart.Position-PosMonAura.Position).magnitude <= 320 then
							v.HumanoidRootPart.CFrame = PosMonAura
							v.Humanoid.JumpPower = 0
							v.Humanoid.WalkSpeed = 0
							if v.Humanoid:FindFirstChild("Animator") then
								v.Humanoid.Animator:Destroy()
							end
							v.Humanoid:ChangeState(11)
						end
					end
				end
			end)
		end
	end)

local tsbox = Tabs['Automatics']:AddLeftTabbox()
local ThreeSea = tsbox:AddTab('\\\\\  Three Sea  //')

ThreeSea:AddToggle('BM', {
Text = 'Auto Holy Torch',
Default = false,
}):OnChanged(function(value)
getgenv().Settings.Main["Auto Holy Torch"] = value
if value == false then
toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
end
getgenv().SaveSetting()
task.spawn(function()
	while task.wait() do
if getgenv().Settings.Main["Auto Holy Torch"] then
repeat toTarget(CFrame.new(-10752, 417, -9366)) wait() until not getgenv().Settings.Main["Auto Holy Torch"] or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-10752, 417, -9366)).Magnitude <= 10
wait(1)
repeat toTarget(CFrame.new(-11672, 334, -9474)) wait() until not getgenv().Settings.Main["Auto Holy Torch"] or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-11672, 334, -9474)).Magnitude <= 10
wait(1)
repeat toTarget(CFrame.new(-12132, 521, -10655)) wait() until not getgenv().Settings.Main["Auto Holy Torch"] or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12132, 521, -10655)).Magnitude <= 10
wait(1)
repeat toTarget(CFrame.new(-13336, 486, -6985)) wait() until not getgenv().Settings.Main["Auto Holy Torch"] or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13336, 486, -6985)).Magnitude <= 10
wait(1)
repeat toTarget(CFrame.new(-13489, 332, -7925)) wait() until not getgenv().Settings.Main["Auto Holy Torch"] or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13489, 332, -7925)).Magnitude <= 10
else
toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
break
end
end
end)
end)

ThreeSea:AddToggle('BM', {
Text = 'Auto Holy Torch',
Default = false,
}):OnChanged(function(value)
getgenv().Settings.Main["Auto Holy Torch"] = value
if value == false then
toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
end
getgenv().SaveSetting()
task.spawn(function()
	while task.wait() do
if getgenv().Settings.Main["Auto Holy Torch"] then
repeat toTarget(CFrame.new(-10752, 417, -9366)) wait() until not getgenv().Settings.Main["Auto Holy Torch"] or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-10752, 417, -9366)).Magnitude <= 10
wait(1)
repeat toTarget(CFrame.new(-11672, 334, -9474)) wait() until not getgenv().Settings.Main["Auto Holy Torch"] or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-11672, 334, -9474)).Magnitude <= 10
wait(1)
repeat toTarget(CFrame.new(-12132, 521, -10655)) wait() until not getgenv().Settings.Main["Auto Holy Torch"] or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12132, 521, -10655)).Magnitude <= 10
wait(1)
repeat toTarget(CFrame.new(-13336, 486, -6985)) wait() until not getgenv().Settings.Main["Auto Holy Torch"] or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13336, 486, -6985)).Magnitude <= 10
wait(1)
repeat toTarget(CFrame.new(-13489, 332, -7925)) wait() until not getgenv().Settings.Main["Auto Holy Torch"] or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13489, 332, -7925)).Magnitude <= 10
else
toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
break
end
end
end)
end)

ThreeSea:AddToggle('BM', {
Text = 'Buddy Swords',
Default = false,
}):OnChanged(function(value)
getgenv().Settings.Main["Auto Buddy Swords"] = value
if value == false then
toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
end
getgenv().SaveSetting()
task.spawn(function()
	while task.wait() do
pcall(function()
if getgenv().Settings.Main["Auto Buddy Swords"] then
if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == ("Cake Queen [Lv. 2175] [Boss]" or v.Name == "Cake Queen [Lv. 2175] [Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
repeat wait()
StartMagnet = true
Fast = true

if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().Settings.Configs["Select Weapon"]) then
wait()
EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
end
PosMon = v.HumanoidRootPart.CFrame
if not getgenv().Settings.Configs["Fast Attack"] then
game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end
if getgenv().Settings.Configs["Show Hitbox"] then
v.HumanoidRootPart.Transparency = fabox_LocalTransparency
else
v.HumanoidRootPart.Transparency = 1
end
v.Humanoid.JumpPower = 0
v.Humanoid.WalkSpeed = 0
v.HumanoidRootPart.CanCollide = false
v.Humanoid:ChangeState(11)
toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,getgenv().Settings.Configs["Distance Auto Farm"],0))
until not getgenv().Settings.Main["Auto Buddy Swords"] or v.Humanoid.Health <= 0
StartMagnet = false
Fast = false
end
end
end
end
end)
end
end)
end)


ThreeSea:AddToggle('BM', {
Text = 'Auto Farm Boss Hallow',
Default = false,
}):OnChanged(function(value)
getgenv().Settings.Main["Auto Farm Boss Hallow"] = value
if value == false then
wait()
toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
wait()
end
getgenv().SaveSetting()
task.spawn(function()
	while task.wait() do
pcall(function()
if getgenv().Settings.Main["Auto Farm Boss Hallow"] then
if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if string.find(v.Name , "Soul Reaper") then
repeat wait()
StartMagnet = true
Fast = true

if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().Settings.Configs["Select Weapon"]) then
wait()
EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
end
PosMon = v.HumanoidRootPart.CFrame
if not getgenv().Settings.Configs["Fast Attack"] then
game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end
if getgenv().Settings.Configs["Show Hitbox"] then
v.HumanoidRootPart.Transparency = fabox_LocalTransparency
else
v.HumanoidRootPart.Transparency = 1
end
v.Humanoid.JumpPower = 0
v.Humanoid.WalkSpeed = 0
v.HumanoidRootPart.CanCollide = false
v.Humanoid:ChangeState(11)
toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,getgenv().Settings.Configs["Distance Auto Farm"],0))
until v.Humanoid.Health <= 0 or not getgenv().Settings.Main["Auto Farm Boss Hallow"]
StartMagnet = false
Fast = false
end
end
else
toTarget(CFrame.new(-9524.7890625, 315.80429077148, 6655.7192382813))
end
end
end)
end
end)
end)


ThreeSea:AddToggle('BM', {
Text = 'Auto Rainbow Haki',
Default = false,
}):OnChanged(function(value)
getgenv().Settings.Main["Auto Rainbow Haki"] = value
if value == false then
wait()
toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
wait()
end
getgenv().SaveSetting()
task.spawn(function()
	while task.wait() do
pcall(function()
if getgenv().Settings.Main["Auto Rainbow Haki"] then
if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
toTarget(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875))
if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
wait(1.5)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
end
elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Stone") then
if game:GetService("Workspace").Enemies:FindFirstChild("Stone [Lv. 1550] [Boss]") then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == "Stone [Lv. 1550] [Boss]" then
repeat wait()
StartMagnet = true
Fast = true

if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().Settings.Configs["Select Weapon"]) then
wait()
EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
end
PosMon = v.HumanoidRootPart.CFrame
if not getgenv().Settings.Configs["Fast Attack"] then
game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end
if getgenv().Settings.Configs["Show Hitbox"] then
v.HumanoidRootPart.Transparency = fabox_LocalTransparency
else
v.HumanoidRootPart.Transparency = 1
end
v.Humanoid.JumpPower = 0
v.Humanoid.WalkSpeed = 0
v.HumanoidRootPart.CanCollide = false
v.Humanoid:ChangeState(11)
toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,getgenv().Settings.Configs["Distance Auto Farm"],0))
until not getgenv().Settings.Main["Auto Rainbow Haki"] or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
StartMagnet = false
Fast = false
end
end
else
toTarget(CFrame.new(-1086.11621, 38.8425903, 6768.71436, 0.0231462717, -0.592676699, 0.805107772, 2.03251839e-05, 0.805323839, 0.592835128, -0.999732077, -0.0137055516, 0.0186523199))
end
elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Island Empress") then
if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == "Island Empress [Lv. 1675] [Boss]" then
repeat wait()
StartMagnet = true
Fast = true

if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().Settings.Configs["Select Weapon"]) then
wait()
EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
end
PosMon = v.HumanoidRootPart.CFrame
if not getgenv().Settings.Configs["Fast Attack"] then
game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end
if getgenv().Settings.Configs["Show Hitbox"] then
v.HumanoidRootPart.Transparency = fabox_LocalTransparency
else
v.HumanoidRootPart.Transparency = 1
end
v.Humanoid.JumpPower = 0
v.Humanoid.WalkSpeed = 0
v.HumanoidRootPart.CanCollide = false
v.Humanoid:ChangeState(11)
toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,getgenv().Settings.Configs["Distance Auto Farm"],0))
until not getgenv().Settings.Main["Auto Rainbow Haki"] or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
StartMagnet = false
Fast = false
end
end
else
toTarget(CFrame.new(5713.98877, 601.922974, 202.751251, -0.101080291, -0, -0.994878292, -0, 1, -0, 0.994878292, 0, -0.101080291))
end
elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Kilo Admiral") then
if game:GetService("Workspace").Enemies:FindFirstChild("Kilo Admiral [Lv. 1750] [Boss]") then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == "Kilo Admiral [Lv. 1750] [Boss]" then
repeat wait()
StartMagnet = true
Fast = true

if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().Settings.Configs["Select Weapon"]) then
wait()
EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
end
PosMon = v.HumanoidRootPart.CFrame
if not getgenv().Settings.Configs["Fast Attack"] then
game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end
if getgenv().Settings.Configs["Show Hitbox"] then
v.HumanoidRootPart.Transparency = fabox_LocalTransparency
else
v.HumanoidRootPart.Transparency = 1
end
v.Humanoid.JumpPower = 0
v.Humanoid.WalkSpeed = 0
v.HumanoidRootPart.CanCollide = false
v.Humanoid:ChangeState(11)
toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,getgenv().Settings.Configs["Distance Auto Farm"],0))
until not getgenv().Settings.Main["Auto Rainbow Haki"] or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
StartMagnet = false
Fast = false
end
end
else
toTarget(CFrame.new(2877.61743, 423.558685, -7207.31006, -0.989591599, -0, -0.143904909, -0, 1.00000012, -0, 0.143904924, 0, -0.989591479))
end
elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") then
if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
repeat wait()
StartMagnet = true
Fast = true

if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().Settings.Configs["Select Weapon"]) then
wait()
EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
end
PosMon = v.HumanoidRootPart.CFrame
if not getgenv().Settings.Configs["Fast Attack"] then
game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end
if getgenv().Settings.Configs["Show Hitbox"] then
v.HumanoidRootPart.Transparency = fabox_LocalTransparency
else
v.HumanoidRootPart.Transparency = 1
end
v.Humanoid.JumpPower = 0
v.Humanoid.WalkSpeed = 0
v.HumanoidRootPart.CanCollide = false
v.Humanoid:ChangeState(11)
toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,getgenv().Settings.Configs["Distance Auto Farm"],0))
until not getgenv().Settings.Main["Auto Rainbow Haki"] or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
StartMagnet = false
Fast = false
end
end
else
toTarget(CFrame.new(-13485.0283, 331.709259, -8012.4873, 0.714521289, 7.98849911e-08, 0.69961375, -1.02065748e-07, 1, -9.94383065e-09, -0.69961375, -6.43015241e-08, 0.714521289))
end
elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful Pirate") then
if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" then
repeat wait()
StartMagnet = true
Fast = true

if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().Settings.Configs["Select Weapon"]) then
wait()
EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
end
PosMon = v.HumanoidRootPart.CFrame
if not getgenv().Settings.Configs["Fast Attack"] then
game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end
if getgenv().Settings.Configs["Show Hitbox"] then
v.HumanoidRootPart.Transparency = fabox_LocalTransparency
else
v.HumanoidRootPart.Transparency = 1
end
v.Humanoid.JumpPower = 0
v.Humanoid.WalkSpeed = 0
v.HumanoidRootPart.CanCollide = false
v.Humanoid:ChangeState(11)
toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,getgenv().Settings.Configs["Distance Auto Farm"],0))
until not getgenv().Settings.Main["Auto Rainbow Haki"] or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
StartMagnet = false
Fast = false
end
end
else
toTarget(CFrame.new(5312.3598632813, 20.141201019287, -10.158538818359))
end
else
toTarget(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875))
if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
wait(1.5)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
end
end
end
end)
end
end)
end)


ThreeSea:AddToggle('BM', {
Text = 'Auto Musketeer Hat',
Default = false,
}):OnChanged(function(value)
getgenv().Settings.Main["Auto Musketeer Hat"] = value
if value == false then
wait()
toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
wait()
end
getgenv().SaveSetting()
task.spawn(function()
	while task.wait() do
pcall(function()
if getgenv().Settings.Main["Auto Musketeer Hat"] then
if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBandits == false then
if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Forest Pirate") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate [Lv. 1825]") then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == "Forest Pirate [Lv. 1825]" then
repeat wait()
StartMagnet = true
Fast = true

if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().Settings.Configs["Select Weapon"]) then
wait()
EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
end
PosMon = v.HumanoidRootPart.CFrame
if not getgenv().Settings.Configs["Fast Attack"] then
game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end
if getgenv().Settings.Configs["Show Hitbox"] then
v.HumanoidRootPart.Transparency = fabox_LocalTransparency
else
v.HumanoidRootPart.Transparency = 1
end
v.Humanoid.JumpPower = 0
v.Humanoid.WalkSpeed = 0
v.HumanoidRootPart.CanCollide = false
v.Humanoid:ChangeState(11)
toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,getgenv().Settings.Configs["Distance Auto Farm"],0))
until not getgenv().Settings.Main["Auto Musketeer Hat"] or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
StartMagnet = false
Fast = false
end
end
else
toTarget(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375))
end
else
toTarget(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
if (Vector3.new(-12443.8671875, 332.40396118164, -7675.4892578125) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
wait(1.5)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","CitizenQuest",1)
end
end
elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBoss == false then
if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
OldCFrameElephant = v.HumanoidRootPart.CFrame
repeat wait()
StartMagnet = true
Fast = true

if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().Settings.Configs["Select Weapon"]) then
wait()
EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
end
PosMon = v.HumanoidRootPart.CFrame
if not getgenv().Settings.Configs["Fast Attack"] then
game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end
if getgenv().Settings.Configs["Show Hitbox"] then
v.HumanoidRootPart.Transparency = fabox_LocalTransparency
else
v.HumanoidRootPart.Transparency = 1
end
v.Humanoid.JumpPower = 0
v.Humanoid.WalkSpeed = 0
v.HumanoidRootPart.CanCollide = false
v.Humanoid:ChangeState(11)
toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,getgenv().Settings.Configs["Distance Auto Farm"],0))
until not getgenv().Settings.Main["Auto Musketeer Hat"] or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
StartMagnet = false
Fast = false
end
end
else
toTarget(CFrame.new(-13374.889648438, 421.27752685547, -8225.208984375))
end
else
toTarget(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
if (CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
wait(1.5)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
end
end
elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen") == 2 then
toTarget(CFrame.new(-12512.138671875, 340.39279174805, -9872.8203125))
end
end
end)
end
end)
end)

local v4box = Tabs['Automatics']:AddRightTabbox()
local RaceV4 = v4box:AddTab('\\\\\  Race  //')

RaceV4:AddToggle('BM', {
	Text = 'Auto Evo Race [Mink]',
	Default = false,
	}):OnChanged(function(x)
		getgenv().Settings.Evo["Auto Evo Race [Mink]"] = value
		if value == false then
			toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
		end
		getgenv().SaveSetting()
	end)

	RaceV4:AddToggle('BM', {
		Text = 'Auto Evo Race [FishMan]',
		Default = false,
		}):OnChanged(function(x)
			getgenv().Settings.Evo["Auto Evo Race [FishMan]"] = value
			if value == false then
				toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			end
			getgenv().SaveSetting()
		end)

		RaceV4:AddToggle('BM', {
			Text = 'Auto Evo Race [Human]',
			Default = false,
			}):OnChanged(function(x)
				getgenv().Settings.Evo["Auto Evo Race [Human]"] = value
				if value == false then
					toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				end
				getgenv().SaveSetting()
			end)

			RaceV4:AddToggle('BM', {
				Text = 'Auto Evo Race [Sky]',
				Default = false,
				}):OnChanged(function(x)
					getgenv().Settings.Evo["Auto Evo Race [Sky]"] = value
					if value == false then
						toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
					end
					getgenv().SaveSetting()
				end)

				task.spawn(function()
					while wait() do
						pcall(function()
							if getgenv().Settings.Evo["Auto Evo Race [Mink]"] then
								if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") ~= -2 then
									if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 0 then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
									elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 1 then
										if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 1") then
											toTargetP(game.Workspace.Flower1.CFrame)
										elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 2") then
											toTargetP(game.Workspace.Flower2.CFrame)
										elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 3") then
											if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
												for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
													if v.Name == "Swan Pirate [Lv. 775]" then
														repeat wait()
															StartMagnet = true
															Fast=true
															if getgenv().Settings.Configs["Auto Haki"] then
																if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
																end
															end
															if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().Settings.Configs["Select Weapon"]) then
																wait()
																EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
															end
															PosMon = v.HumanoidRootPart.CFrame
															if not getgenv().Settings.Configs["Fast Attack"] then
																game:GetService'VirtualUser':CaptureController()
																game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
															end
															v.HumanoidRootPart.Size = Vector3.new(60,60,60)
															if getgenv().Settings.Configs["Show Hitbox"] then
																v.HumanoidRootPart.Transparency = tonumber(getgenv().Hitbox_LocalTransparency)
															else
																v.HumanoidRootPart.Transparency = 1
															end
															v.Humanoid.JumpPower = 0
															v.Humanoid.WalkSpeed = 0
															v.HumanoidRootPart.CanCollide = false
															v.Humanoid:ChangeState(11)
															toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,getgenv().Settings.Configs["Distance Auto Farm"],0))
														until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") or not v.Parent or v.Humanoid.Health <= 0 or getgenv().Settings.Evo["Auto Evo Race [Mink]"] == false
													end
												end
											else
												StartMagnet = false
												toTarget(CFrame.new(980.0985107421875, 121.331298828125, 1287.2093505859375))
											end
										end
									elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 2 then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
									end
								elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") == 0 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","2")
								elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") == 1 then
									for i,v in pairs(game:GetService("Workspace"):GetChildren()) do 
										if v.Name:find("Chest") then
											if game:GetService("Workspace"):FindFirstChild(v.Name) then
												if (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1500 then
													repeat wait()
														if game:GetService("Workspace"):FindFirstChild(v.Name) then
															toTargetP(v.CFrame)
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","3")
														end
													until getgenv().Settings.Evo["Auto Evo Race [Mink]"] == false or not v.Parent
													toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
												end
											end
										end
									end
								end
							elseif getgenv().Settings.Evo["Auto Evo Race [FishMan]"] then
								if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") ~= -2 then
									if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 0 then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
									elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 1 then
										if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 1") then
											toTarget(game.Workspace.Flower1.CFrame)
										elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 2") then
											toTarget(game.Workspace.Flower2.CFrame)
										elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 3") then
											if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
												for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
													if v.Name == "Swan Pirate [Lv. 775]" then
														repeat wait()
															StartMagnet = true
															Fast=true
															if getgenv().Settings.Configs["Auto Haki"] then
																if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
																end
															end
															if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().Settings.Configs["Select Weapon"]) then
																wait()
																EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
															end
															PosMon = v.HumanoidRootPart.CFrame
															if not getgenv().Settings.Configs["Fast Attack"] then
																game:GetService'VirtualUser':CaptureController()
																game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
															end
															v.HumanoidRootPart.Size = Vector3.new(60,60,60)
															if getgenv().Settings.Configs["Show Hitbox"] then
																v.HumanoidRootPart.Transparency = tonumber(getgenv().Hitbox_LocalTransparency)
															else
																v.HumanoidRootPart.Transparency = 1
															end
															v.Humanoid.JumpPower = 0
															v.Humanoid.WalkSpeed = 0
															v.HumanoidRootPart.CanCollide = false
															v.Humanoid:ChangeState(11)
															toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,getgenv().Settings.Configs["Distance Auto Farm"],0))
														until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") or not v.Parent or v.Humanoid.Health <= 0 or getgenv().Settings.Evo["Auto Evo Race [FishMan]"] == false
													end
												end
											else
												StartMagnet = false
												toTarget(CFrame.new(980.0985107421875, 121.331298828125, 1287.2093505859375))
											end
										end
									elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 2 then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
									end
								elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") == 0 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","2")
								elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") == 1 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","3")
									for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
										if v:FindFirstChild("HumanoidRootPart") then
											repeat wait()
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
											until not v.Parent or not getgenv().Setting_table.Fishman_Evo or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") == -2
										end
									end
								end
							elseif getgenv().Settings.Evo["Auto Evo Race [Human]"] then
								if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") ~= -2 then
									if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 0 then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
									elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 1 then
										if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 1") then
											toTarget(game.Workspace.Flower1.CFrame)
										elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 2") then
											toTarget(game.Workspace.Flower2.CFrame)
										elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 3") then
											if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
												for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
													if v.Name == "Swan Pirate [Lv. 775]" then
														repeat wait()
															StartMagnet = true
															Fast=true
															if getgenv().Settings.Configs["Auto Haki"] then
																if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
																end
															end
															if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().Settings.Configs["Select Weapon"]) then
																wait()
																EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
															end
															PosMon = v.HumanoidRootPart.CFrame
															if not getgenv().Settings.Configs["Fast Attack"] then
																game:GetService'VirtualUser':CaptureController()
																game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
															end
															v.HumanoidRootPart.Size = Vector3.new(60,60,60)
															if getgenv().Settings.Configs["Show Hitbox"] then
																v.HumanoidRootPart.Transparency = tonumber(getgenv().Hitbox_LocalTransparency)
															else
																v.HumanoidRootPart.Transparency = 1
															end
															v.Humanoid.JumpPower = 0
															v.Humanoid.WalkSpeed = 0
															v.HumanoidRootPart.CanCollide = false
															v.Humanoid:ChangeState(11)
															toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,getgenv().Settings.Configs["Distance Auto Farm"],0))
														until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") or not v.Parent or v.Humanoid.Health <= 0 or getgenv().Settings.Evo["Auto Evo Race [Human]"] == false
													end
												end
											else
												StartMagnet = false
												toTarget(CFrame.new(980.0985107421875, 121.331298828125, 1287.2093505859375))
											end
										end
									elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 2 then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
									end
								elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") == 0 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","2")
								elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") == 1 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","3")
									if game.Workspace.Enemies:FindFirstChild("Fajita [Lv. 925] [Boss]") then
										for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
											if v.Name == "Fajita [Lv. 925] [Boss]" then
												if v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
													repeat wait()
														StartMagnet = true
														Fast=true
														if getgenv().Settings.Configs["Auto Haki"] then
															if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
															end
														end
														if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().Settings.Configs["Select Weapon"]) then
															wait()
															EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
														end
														PosMon = v.HumanoidRootPart.CFrame
														if not getgenv().Settings.Configs["Fast Attack"] then
															game:GetService'VirtualUser':CaptureController()
															game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
														end
														v.HumanoidRootPart.Size = Vector3.new(60,60,60)
														if getgenv().Settings.Configs["Show Hitbox"] then
															v.HumanoidRootPart.Transparency = tonumber(getgenv().Hitbox_LocalTransparency)
														else
															v.HumanoidRootPart.Transparency = 1
														end
														v.Humanoid.JumpPower = 0
														v.Humanoid.WalkSpeed = 0
														v.HumanoidRootPart.CanCollide = false
														v.Humanoid:ChangeState(11)
														toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,getgenv().Settings.Configs["Distance Auto Farm"],0))
													until v.Humanoid.Health <= 0 or not v.Parent or not getgenv().Settings.Evo["Auto Evo Race [Human]"]
												end
											end
										end
									elseif game.ReplicatedStorage:FindFirstChild("Fajita [Lv. 925] [Boss]") then
										toTarget(game.ReplicatedStorage:FindFirstChild("Fajita [Lv. 925] [Boss]").HumanoidRootPart.CFrame*CFrame.new(0,30,0))
									elseif game.Workspace.Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
										for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
											if v.Name == "Jeremy [Lv. 850] [Boss]" then
												if v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
													repeat wait()
														StartMagnet = true
														Fast=true
														if getgenv().Settings.Configs["Auto Haki"] then
															if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
															end
														end
														if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().Settings.Configs["Select Weapon"]) then
															wait()
															EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
														end
														PosMon = v.HumanoidRootPart.CFrame
														if not getgenv().Settings.Configs["Fast Attack"] then
															game:GetService'VirtualUser':CaptureController()
															game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
														end
														v.HumanoidRootPart.Size = Vector3.new(60,60,60)
														if getgenv().Settings.Configs["Show Hitbox"] then
															v.HumanoidRootPart.Transparency = tonumber(getgenv().Hitbox_LocalTransparency)
														else
															v.HumanoidRootPart.Transparency = 1
														end
														v.Humanoid.JumpPower = 0
														v.Humanoid.WalkSpeed = 0
														v.HumanoidRootPart.CanCollide = false
														v.Humanoid:ChangeState(11)
														toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,getgenv().Settings.Configs["Distance Auto Farm"],0))
													until v.Humanoid.Health <= 0 or not v.Parent or not getgenv().Settings.Evo["Auto Evo Race [Human]"]
												end
											end
										end
									elseif game.ReplicatedStorage:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
										toTarget(game.ReplicatedStorage:FindFirstChild("Jeremy [Lv. 850] [Boss]").HumanoidRootPart.CFrame*CFrame.new(0,30,0))
									elseif game.Workspace.Enemies:FindFirstChild("Diamond [Lv. 750] [Boss]") then
										for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
											if v.Name == "Diamond [Lv. 750] [Boss]" then
												if v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
													repeat wait()
														StartMagnet = true
														Fast=true
														if getgenv().Settings.Configs["Auto Haki"] then
															if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
															end
														end
														if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().Settings.Configs["Select Weapon"]) then
															wait()
															EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
														end
														PosMon = v.HumanoidRootPart.CFrame
														if not getgenv().Settings.Configs["Fast Attack"] then
															game:GetService'VirtualUser':CaptureController()
															game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
														end
														v.HumanoidRootPart.Size = Vector3.new(60,60,60)
														if getgenv().Settings.Configs["Show Hitbox"] then
															v.HumanoidRootPart.Transparency = tonumber(getgenv().Hitbox_LocalTransparency)
														else
															v.HumanoidRootPart.Transparency = 1
														end
														v.Humanoid.JumpPower = 0
														v.Humanoid.WalkSpeed = 0
														v.HumanoidRootPart.CanCollide = false
														v.Humanoid:ChangeState(11)
														toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,getgenv().Settings.Configs["Distance Auto Farm"],0))
													until v.Humanoid.Health <= 0 or not v.Parent or not getgenv().Settings.Evo["Auto Evo Race [Human]"]
												end
											end
										end
									elseif game.ReplicatedStorage:FindFirstChild("Diamond [Lv. 750] [Boss]") then
										toTarget(game.ReplicatedStorage:FindFirstChild("Diamond [Lv. 750] [Boss]").HumanoidRootPart.CFrame*CFrame.new(0,30,0))
									end
								end
							elseif getgenv().Settings.Evo["Auto Evo Race [Sky]"] then
								if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") ~= -2 then
									if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 0 then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
									elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 1 then
										if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 1") then
											toTarget(game.Workspace.Flower1.CFrame)
										elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 2") then
											toTarget(game.Workspace.Flower2.CFrame)
										elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 3") then
											if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
												for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
													if v.Name == "Swan Pirate [Lv. 775]" then
														repeat wait()
															StartMagnet = true
															Fast=true
															if getgenv().Settings.Configs["Auto Haki"] then
																if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
																end
															end
															if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().Settings.Configs["Select Weapon"]) then
																wait()
																EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
															end
															PosMon = v.HumanoidRootPart.CFrame
															if not getgenv().Settings.Configs["Fast Attack"] then
																game:GetService'VirtualUser':CaptureController()
																game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
															end
															v.HumanoidRootPart.Size = Vector3.new(60,60,60)
															if getgenv().Settings.Configs["Show Hitbox"] then
																v.HumanoidRootPart.Transparency = tonumber(getgenv().Hitbox_LocalTransparency)
															else
																v.HumanoidRootPart.Transparency = 1
															end
															v.Humanoid.JumpPower = 0
															v.Humanoid.WalkSpeed = 0
															v.HumanoidRootPart.CanCollide = false
															v.Humanoid:ChangeState(11)
															toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,getgenv().Settings.Configs["Distance Auto Farm"],0))
														until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") or not v.Parent or v.Humanoid.Health <= 0 or getgenv().Settings.Evo["Auto Evo Race [Sky]"] == false
													end
												end
											else
												StartMagnet = false
												toTarget(CFrame.new(980.0985107421875, 121.331298828125, 1287.2093505859375))
											end
										end
									elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 2 then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
									end
								elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") == 0 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","2")
								elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") == 1 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","3")
									for i,v in pairs(game.Players:GetChildren()) do
										if v.Name ~= game.Players.LocalPlayer.Name and tostring(v.Data.Race.Value) == "Skypiea" then
											repeat wait()
												StartMagnet = true
												Fast=true
												if getgenv().Settings.Configs["Auto Haki"] then
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
													end
												end
												if not game.Players.LocalPlayer.Character:FindFirstChild(getgenv().Settings.Configs["Select Weapon"]) then
													wait()
													EquipWeapon(getgenv().Settings.Configs["Select Weapon"])
												end
												PosMon = v.HumanoidRootPart.CFrame
												if not getgenv().Settings.Configs["Fast Attack"] then
													game:GetService'VirtualUser':CaptureController()
													game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												end
												v.HumanoidRootPart.Size = Vector3.new(60,60,60)
												if getgenv().Settings.Configs["Show Hitbox"] then
													v.HumanoidRootPart.Transparency = tonumber(getgenv().Hitbox_LocalTransparency)
												else
													v.HumanoidRootPart.Transparency = 1
												end
												v.Humanoid.JumpPower = 0
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid:ChangeState(11)
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,getgenv().Settings.Configs["Distance Auto Farm"],0))
											until v.Humanoid.Health <= 0 or getgenv().Settings.Evo["Auto Evo Race [Sky]"] == false
										end
									end
								end
							end
						end)
					end
				end)

RaceV4:AddDivider()


local FM = RaceV4:AddLabel("...")
local Mirragecheck = RaceV4:AddLabel("...")
task.spawn(function()
while task.wait() do
pcall(function()
if (game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149431") then
FM:SetText("🌑 : Full Moon 100%")
elseif (game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149052") then
FM:SetText("🌒 : Full Moon 75%")
elseif (game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709143733") then
FM:SetText("🌓 : Full Moon 50%")
elseif (game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709150401") then
FM:SetText("🌗 : Full Moon 25%")
elseif (game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149680") then
FM:SetText("🌖 : Full Moon 15%")
else
FM:SetText("🌚 : Full Moon 0%")
end
end)
end
end)

spawn(function()
pcall(function()
	while task.wait() do
if game.Workspace._WorldOrigin.Locations:FindFirstChild("Mirage Island") then
Mirragecheck:SetText("🏝️ : Mirage Island is Spawning")
else
Mirragecheck:SetText("🏝️ : Mirage Island Not Found ❌")
end
end
end)
end)

RaceV4:AddToggle('BM', {
Text = 'Teleport To Gear',
Default = false,
}):OnChanged(function(x)
tpGear = x
end)

if tpGear then
toTarget(game:GetService("Workspace").Map.MysticIsland:FindFirstChildOfClass("MeshPart").CFrame)

end

spawn(function()
pcall(function()
	while task.wait() do
if getgenv().Mirage then
if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
function toTargetWait(a)
local b = (a.p - game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude
tweenrach = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), TweenInfo.new(b / 250, Enum.EasingStyle.Linear), {CFrame=a})
tweenrach:Play()
end
toTargetWait(workspace.Map.MysticIsland.PrimaryPart.CFrame * CFrame.new(0, 250, 0))
if getgenv().MirageHop then
wait(6)
Hop()
end
end
end
end
end)
end)

RaceV4:AddToggle('BM', {
	Text = 'Teleport To Trial Door',
	Default = false,
	Tooltip = 'Coming Soon!', -- Information shown when you hover over the toggle
	}):OnChanged(function(x)
	-- Soon
	end)

	RaceV4:AddToggle('BM', {
		Text = 'Auto Pull Lever',
		Default = false,
		Tooltip = 'Coming Soon!', -- Information shown when you hover over the toggle
		}):OnChanged(function(x)
		-- Soon
		end)

		RaceV4:AddToggle('BM', {
			Text = 'Auto Ancientone Quest',
			Default = false,
			Tooltip = 'Coming Soon!', -- Information shown when you hover over the toggle
			}):OnChanged(function(x)
			-- Soon
			end)

			RaceV4:AddToggle('BM', {
				Text = 'Auto Active Ability',
				Default = false,
				Tooltip = 'Coming Soon!', -- Information shown when you hover over the toggle
				}):OnChanged(function(x)
				-- Soon
				end)

				RaceV4:AddToggle('BM', {
					Text = 'Auto Complete Trial',
					Default = false,
					Tooltip = 'Coming Soon!', -- Information shown when you hover over the toggle
					}):OnChanged(function(x)
					-- Soon
					end)
					function isnil(thing)
						return (thing == nil)
					end
					local function round(n)
						return math.floor(tonumber(n) + 0.5)
					end
					Number = math.random(1, 1000000)
					
					function UpdateIslandMirageESP() 
						for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
							pcall(function()
								if MirageIslandESP then 
									if v.Name == "Mirage Island" then
										if not v:FindFirstChild('NameEsp') then
											local bill = Instance.new('BillboardGui',v)
											bill.Name = 'NameEsp'
											bill.ExtentsOffset = Vector3.new(0, 1, 0)
											bill.Size = UDim2.new(1,200,1,30)
											bill.Adornee = v
											bill.AlwaysOnTop = true
											local name = Instance.new('TextLabel',bill)
											name.Font = "Code"
											name.FontSize = "Size14"
											name.TextWrapped = true
											name.Size = UDim2.new(1,0,1,0)
											name.TextYAlignment = 'Top'
											name.BackgroundTransparency = 1
											name.TextStrokeTransparency = 0.5
											name.TextColor3 = Color3.fromRGB(80, 245, 245)
										else
											v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
										end
									end
								else
									if v:FindFirstChild('NameEsp') then
										v:FindFirstChild('NameEsp'):Destroy()
									end
								end
							end)
						end
					end
					RaceV4:AddButton('Teleporting To Temple Of Time', function()
						Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
						end)
					
						RaceV4:AddButton('Teleporting To Lever', function()
							Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
							end)
					local Miragex = Tabs['Automatics']:AddLeftTabbox()
					local Mirage = Miragex:AddTab('\\\\\  Mirage Island //')
					Mirage:AddToggle('BM', {
						Text = 'Teleport To Mirage Island',
						Default = false,
						}):OnChanged(function(value)
						getgenv().Mirage = value
						end)
						
	
						Mirage:AddToggle('BM', {
						Text = 'Esp Mirage Island',
						Default = false,
					--	Tooltip = 'Coming Soon!', -- Information shown when you hover over the toggle
						}):OnChanged(function(x)
							MirageIslandESP = vu
							while MirageIslandESP do wait()
								UpdateIslandMirageESP()
							end
												end)
												Mirage:AddDivider()
												
												Mirage:AddInput('MyTextbox', {
    Default = 'Link Web Hook',
    Numeric = false, -- true / false, only allows numbers
    Finished = false, -- true / false, only calls callback when you press enter

    Text = 'Link Web Hook',
--    Tooltip = 'This is a tooltip', -- Information shown when you hover over the textbox

    Placeholder = 'Link Here', -- placeholder text when the box is empty
    -- MaxLength is also an option which is the max length of the text

    Callback = function(x)
        getgenv().set.wephook = x
    end
})

												Mirage:AddToggle('BM', {
													Text = 'Auto Webhook When found Mirage Island',
													Default = false,
												--	Tooltip = 'Coming Soon!', -- Information shown when you hover over the toggle
													}):OnChanged(function(x)
														getgenv().WebMytic = x
																			end)


						
spawn(function()
    while wait() do
        pcall(function()
            if getgenv().WebMytic then
                if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Mirage Island") then
                    local Moon
                    local Job = game.JobId
                    local PlayerCount = #game.Players:GetPlayers()
                    if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Mirage Island")then
                        Mirage = "True"
                    else
                        Mirage = "False"
                    end
                    if game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149431" then
                        Moon = "Full Moon 100%"
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149052" then
                        Moon = "Full Moon 75%"
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709143733" then
                        Moon = "Full Moon 50%"
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709150401" then
                        Moon = "Full Moon 25%"
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149680" then
                        Moon = "Full Moon 10%"
                    else
                        Moon = "Full Moon 0%"
                    end
                    Infomation = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)
                    NameGames = Infomation.Name 
                    if getgenv().set.wephook ~= "" then
                        pcall(function()
                            local url =
                            getgenv().set.wephook
                            local data = {
                            ["content"] = "@everyone",
                            ["embeds"] = {
                                {   
                                    ["author"] = {
                                        ["name"] = "Check Full Moon"
                                    },
                                    ["type"] = "rich",
                                    ["title"] = "Notify Mirage Island Found",
                                    ["color"] = tonumber(0x78da),
                                    ["fields"] = {
                                        {
                                            ["name"] = "Moon Status:",
                                            ["value"] = "```"..Moon.."```"
                                        },
                                        {
                                            ["name"] = "Mirage Island Spawn:",
                                            ["value"] = "```"..Mirage.."```"
                                        },
                                        {
                                            ["name"] = "Players In Server:",
                                            ["value"] = "```"..PlayerCount.."/12".."```"
                                        },
                                        {
                                            ["name"] = "Job Id:",
                                            ["value"] = "```"..Job.."```"
                                        },
                                        {
                                            ["name"] = "Server JobId:",
                                            ["value"] = "```".."game.ReplicatedStorage['__ServerBrowser']:InvokeServer('teleport',"..Job..")".."```"
                                        }
                                    }
                                }
                            }
                        }
                        local newdata = game:GetService("HttpService"):JSONEncode(data)
                        
                        local headers = {
                                ["content-type"] = "application/json"
                        }
                        request = http_request or request or HttpPost or syn.request
                        local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
                        request(abcdef)
                        end)
                    else
                        print("Invaild Url")
                    end
                end
            end
        end)
    end
end)													



local dpx = Tabs['Players']:AddLeftTabbox()
local DestroyPlayers = dpx:AddTab('\\\\\  Destroy Players  //')

DestroyPlayers:AddDropdown('MyPlayerDropdown', {
    SpecialType = 'Player',
    Text = 'Selact Player',
  --  Tooltip = 'This is a tooltip', -- Information shown when you hover over the dropdown

    Callback = function(value)
		SelectPlayer = value
    end
})

DestroyPlayers:AddToggle('BM', {
		Text = 'Teleport to Player',
		Default = false,
		}):OnChanged(function(value)
			teleporttop = value
		end)

spawn(function()
	while wait() do
		if teleporttop then
			pcall(function()
				if game.Players:FindFirstChild(SelectPlayer) then
					toTarget(game.Players[SelectPlayer].Character.HumanoidRootPart.CFrame)
				end
			end)
		end
	end
end)

DestroyPlayers:AddToggle('BM', {
	Text = 'Teleport to Player',
	Default = false,
	}):OnChanged(function(value)
		teleporttop = value
	end)


DestroyPlayers:AddToggle('BM', {
	Text = 'Spectate Player',
	Default = false,
	}):OnChanged(function(value)
		SpectatorPlayer = value
		if value == false then
			toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
		end
	end)

	task.spawn(function()
		while wait() do
			if SpectatorPlayer then
				pcall(function()
					if game.Players:FindFirstChild(SelectPlayer) then
						game.Workspace.Camera.CameraSubject = game.Players:FindFirstChild(SelectPlayer).Character.Humanoid
					end
				end)
			else
				game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
			end
		end
	end)
	local AutoFarmBountyVisualx = Tabs['Players']:AddLeftTabbox()
	local AutoFarmBountyVisual = AutoFarmBountyVisualx:AddTab('\\\\\  Auto Farm Bounty Visual  //')

	local Current = AutoFarmBountyVisual:AddLabel("Current Bounties :")
	local Bounty = tostring(game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value)
	local sub = string.sub 
	local len = string.len
	spawn(function()
		while wait() do
			pcall(function()
				if len(Bounty) == 4 then
					Bounty1 = sub(Bounty,1,1).."."..sub(Bounty,2,3).."K"
				elseif len(Bounty) == 5 then
					Bounty1 = sub(Bounty,1,2).."."..sub(Bounty,3,4).."K"
				elseif len(Bounty) == 6 then
					Bounty1 = sub(Bounty,1,3).."."..sub(Bounty,4,5).."K"
				elseif len(Bounty) == 7 then
					Bounty1 = sub(Bounty,1,1).."."..sub(Bounty,2,3).."M"
				elseif len(Bounty) == 8 then
					Bounty1 = sub(Bounty,1,2).."."..sub(Bounty,3,4).."M"
				elseif len(Bounty) <= 3 then
					Bounty1 = Bounty
				end
					Current:SetText("Current Bounty : "..Bounty1)
			end)
		end
	end)

	local Earned = AutoFarmBountyVisual:AddLabel("Earned Bounty : 0")

	local OldBounty = game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value
    local Bounty = tostring(game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value)
    local Earned = tostring(game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value - OldBounty)
    local sub = string.sub 
    local len = string.len
    spawn(function()
        while wait() do
            pcall(function()
                if len(Earned) == 4 then
                    Earned1 = sub(Earned,1,1).."."..sub(Earned,2,3).."K"
                elseif len(Earned) == 5 then
                    Earned1 = sub(Earned,1,2).."."..sub(Earned,3,4).."K"
                elseif len(Earned) == 6 then
                    Earned1 = sub(Earned,1,3).."."..sub(Earned,4,5).."K"
                elseif len(Earned) == 7 then
                    Earned1 = sub(Earned,1,1).."."..sub(Earned,2,3).."M"
                elseif len(Earned) == 8 then
                    Earned1 = sub(Earned,1,2).."."..sub(Earned,3,4).."M"
                elseif len(Earned) <= 3 then
                    Earned1 = Earned
                end
                Earn:SetText("Earned : "..tonumber(Earned1))
            end)
        end
    end)
	local AutoFarmBountyx = Tabs['Players']:AddLeftTabbox()
	local AutoFarmBounty = AutoFarmBountyx:AddTab('\\\\\  Auto Farm Bounty  //')

	AutoFarmBounty:AddToggle('BM', {
		Text = 'Auto Farm Bounty',
		Default = false,
		}):OnChanged(function(value)
			getgenv().AutoFarmBounty = value
		end)

		local Delay = 1

CastlePostoMansion = CFrame.new(-5084.8447265625, 316.48101806641, -3145.3752441406)
MansiontoCastlePos = CFrame.new(-12464.596679688, 376.30590820312, -7567.2626953125)
Castletophydra = CFrame.new(-5095.33984375, 316.48101806641, -3168.3134765625)
HydratoCastle = CFrame.new(5741.869140625, 611.94750976562, -282.61154174805)
spawn(function()
while wait(0.1) do
pcall(function()
if getgenv().AutoFarmBounty then
for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
if v.Name ~= game.Players.LocalPlayer.Name then
if v:WaitForChild("Humanoid").Health > 0 and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude <= 17000 then
plyselecthunthelpold = v.Humanoid.Health
repeat task.wait()
NameTarget = v.Name
if tostring(game.Players.LocalPlayer.Team) == "Pirates" then
	toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,0,15))
            elseif tostring(game.Players.LocalPlayer.Team) == "Marines" then
if game.Players[NameTarget].Team ~= game.Players.LocalPlayer.Team then
	toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,0,15))
end
end
spawn(function()
if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150 then
    spawn(function()
    Melee()
    SY()
    SC()
    SZ()
    SX()
    wait(2)
    Sword()
    SZ()
    SX()
    wait(2)
    Gun()
    SZ()
    SX()
    end)
end
end)
v.HumanoidRootPart.CanCollide = false
TargetSelectHunt = v.Humanoid
until getgenv().AutoFarmBounty == false or v.Humanoid.Health == 0 or not v:FindFirstChild("HumanoidRootPart") or not v:FindFirstChild("Humanoid") or not v.Parent or NextplySelect == true
NextplySelect = false
StartCheckTarget = false
end
end
end
end
end)
end
end)

function Melee()
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if v:IsA("Tool") then
        if v.ToolTip == "Melee" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
        end
    end
end
end
function Sword()
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") then
            if v.ToolTip == "Sword" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
            end
        end
    end
    end

        function SY()
            game:GetService("VirtualInputManager"):SendKeyEvent(true,"Y",false,game)
            game:GetService("VirtualInputManager"):SendKeyEvent(false,"Y",false,game)
        end

function SZ()
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
    game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
end

function SX()
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
    game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
end

function SC()
    game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
    game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
end


spawn(function()
pcall(function()
while wait() do
if getgenv().AutoFarmBounty then
if TargetSelectHunt ~= nil then
if StartCheckTarget then
wait(6.5)
if TargetSelectHunt.Health == TargetSelectHunt.MaxHealth or TargetSelectHunt.Health >= plyselecthunthelpold then
NextplySelect = true
TargetSelectHunt = nil
end
end
end
end
end
end)
end)

spawn(function()
pcall(function()
while wait(.1) do
if getgenv().AutoFarmBounty then
if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
end
end
end
end)
end)

spawn(function()
while wait() do
if getgenv().AutoFarmBounty then
pcall(function()
wait(150)
Hop()
Hop()
Hop()
Hop()
Hop()
end)
end
end
end)

	spawn(function()
		pcall(function()
			game:GetService("RunService").RenderStepped:connect(function()
				if getgenv().AutoFarmBounty and TargetPlayerAim ~= nil and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and game.Players.LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name]:FindFirstChild("MousePos") then
					local args = {
						[1] = game:GetService("Players"):FindFirstChild(TargetPlayerAim).Character.HumanoidRootPart.Position
					}
					game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
				end
			end)
		end)
	end)
	AutoFarmBounty:AddToggle('BM', {
		Text = 'Esp Players',
		Default = false,
		}):OnChanged(function(value)
			ESPPlayer = value
		end)
	function isnil(thing)
		return (thing == nil)
	end
	local function round(n)
		return math.floor(tonumber(n) + 0.5)
	end
	Number = math.random(1, 1000000)
	function UpdatePlayerChams()
		for i,v in pairs(game:GetService'Players':GetChildren()) do
			pcall(function()
				if not isnil(v.Character) then
					if ESPPlayer then
						if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
							local bill = Instance.new('BillboardGui',v.Character.Head)
							bill.Name = 'NameEsp'..Number
							bill.ExtentsOffset = Vector3.new(0, 1, 0)
							bill.Size = UDim2.new(1,200,1,30)
							bill.Adornee = v.Character.Head
							bill.AlwaysOnTop = true
							local name = Instance.new('TextLabel',bill)
							name.Font = Enum.Font.GothamSemibold
							name.FontSize = "Size14"
							name.TextWrapped = true
							name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
							name.Size = UDim2.new(1,0,1,0)
							name.TextYAlignment = 'Top'
							name.BackgroundTransparency = 1
							name.TextStrokeTransparency = 0.5
							if v.Team == game.Players.LocalPlayer.Team then
								name.TextColor3 = Color3.new(0,255,0)
							else
								name.TextColor3 = Color3.new(255,0,0)
							end
						else
							v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
						end
					else
						if v.Character.Head:FindFirstChild('NameEsp'..Number) then
							v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
						end
					end
				end
			end)
		end
	end
	spawn(function()
		while wait() do
			if ESPPlayer then
				UpdatePlayerChams()
		end
	end
	end)
	local Aimbox = Tabs['Players']:AddLeftTabbox()
	local Aimbot = Aimbox:AddTab('\\\\\  Aimbot  //')

	
local lp = game:GetService('Players').LocalPlayer
local mouse = lp:GetMouse()
task.spawn(function()
	while wait() do
		if getgenv().Settings.Combat["Aimbot Skill"] then
			pcall(function()
				local MaxDist, Closest = math.huge
				for i,v in pairs(game:GetService("Players"):GetChildren()) do 
					local Head = v.Character:FindFirstChild("HumanoidRootPart")
					local Pos, Vis = game.Workspace.CurrentCamera.WorldToScreenPoint(game.Workspace.CurrentCamera, Head.Position)
					local MousePos, TheirPos = Vector2.new(mouse.X, mouse.Y), Vector2.new(Pos.X, Pos.Y)
					local Dist = (TheirPos - MousePos).Magnitude
					if Dist < MaxDist and Dist <= tonumber(getgenv().Settings.Combat["Fov Size"]) and v.Name ~= game.Players.LocalPlayer.Name then
						MaxDist = Dist
						getgenv().Aim_Players = v
					end
				end
			end)
		end
	end
end)

task.spawn(function()
	local gg = getrawmetatable(game)
	local old = gg.__namecall
	setreadonly(gg,false)
	gg.__namecall = newcclosure(function(...)
		local method = getnamecallmethod()
		local args = {...}
		if tostring(method) == "FireServer" then
			if tostring(args[1]) == "RemoteEvent" then
				if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
					if getgenv().Settings.Combat["Aimbot Skill"] then
						args[2] = getgenv().Aim_Players.Character.HumanoidRootPart.Position
						return old(unpack(args))
					end
				end
			end
		end
		return old(...)
	end)
end)

local Circle = Drawing.new("Circle")
Circle.Color =  Color3.fromRGB(255, 255, 255)
Circle.Thickness = 1
Circle.Radius = 250
Circle.NumSides = 460
Circle.Filled = false
Circle.Transparency = 1

LPH_NO_VIRTUALIZE(function()
	game:GetService("RunService").Stepped:Connect(function()
		Circle.Radius = tonumber(getgenv().Settings.Combat["Fov Size"])
		Circle.Thickness = 1
		Circle.NumSides = 460
		Circle.Position = game:GetService('UserInputService'):GetMouseLocation()
		if getgenv().Settings.Combat["Show Fov"] then
			Circle.Visible = true
		else
			Circle.Visible = false
		end
	end)
end)()

Aimbot:AddSlider('MySlider', {
    Text = 'Fov Size',
    Default = 0,
    Min = 300,
    Max = 1000,
    Rounding = 1,
    Compact = false,
    Callback = function(Value)
		getgenv().Settings.Combat["Fov Size"] = Value
		getgenv().SaveSetting()
	    end
})

Aimbot:AddToggle('BM', {
	Text = 'Show Fov',
	Default = false,
	}):OnChanged(function(value)
		getgenv().Settings.Combat["Show Fov"] = value
	end)
 
	Aimbot:AddToggle('BM', {
		Text = 'Aimbot Skill',
		Default = false,
		}):OnChanged(function(value)
			getgenv().Settings.Combat["Aimbot Skill"] = value
		end)

		
local gg = getrawmetatable(game)
local old = gg.__namecall
setreadonly(gg,false)
gg.__namecall = newcclosure(function(...)
	local method = getnamecallmethod()
	local args = {...}
	if tostring(method) == "FireServer" then
		if tostring(args[1]) == "RemoteEvent" then
			if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
				if Skillaimbot then
					args[2] = AimBotSkillPosition
					return old(unpack(args))
				end
			end
		end
	end
	return old(...)
end)

LPH_NO_VIRTUALIZE(function()
	task.spawn(function()
		while wait() do
			for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
				if v:IsA("Tool") then
					if v:FindFirstChild("RemoteFunctionShoot") then 
						SelectToolWeaponGun = v.Name
					end
				end
			end
			for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
				if v:IsA("Tool") then
					if v:FindFirstChild("RemoteFunctionShoot") then 
						SelectToolWeaponGun = v.Name
					end
				end
			end
		end
	end)
end)()

--[aimbot skill]

task.spawn(function()
	while wait() do
		if Skillaimbot then
			if game.Players:FindFirstChild(SelectPlayer) and game.Players:FindFirstChild(SelectPlayer).Character:FindFirstChild("HumanoidRootPart") and game.Players:FindFirstChild(SelectPlayer).Character:FindFirstChild("Humanoid") and game.Players:FindFirstChild(SelectPlayer).Character.Humanoid.Health > 0 then
				AimBotSkillPosition = game.Players:FindFirstChild(SelectPlayer).Character:FindFirstChild("HumanoidRootPart").Position
			end
		end
	end
end)

--[aimbot gun]

local lp = game:GetService('Players').LocalPlayer
local mouse = lp:GetMouse()
mouse.Button1Down:Connect(function()
	if Aimbot and game.Players.LocalPlayer.Character:FindFirstChild(SelectToolWeaponGun) and game:GetService("Players"):FindFirstChild(SelectPlayer) then
		tool = game:GetService("Players").LocalPlayer.Character[SelectToolWeaponGun]
		v17 = workspace:FindPartOnRayWithIgnoreList(Ray.new(tool.Handle.CFrame.p, (game:GetService("Players"):FindFirstChild(SelectPlayer).Character.HumanoidRootPart.Position - tool.Handle.CFrame.p).unit * 100), { game.Players.LocalPlayer.Character, workspace._WorldOrigin })
		game:GetService("Players").LocalPlayer.Character[SelectToolWeaponGun].RemoteFunctionShoot:InvokeServer(game:GetService("Players"):FindFirstChild(SelectPlayer).Character.HumanoidRootPart.Position, (require(game.ReplicatedStorage.Util).Other.hrpFromPart(v17)))
	end 
end)

local buyFightingStylex = Tabs['Players']:AddLeftTabbox()
local buyFightingStyle = buyFightingStylex:AddTab('\\\\\  Fighting Style  //')

buyFightingStyle:AddButton('Buy Black Leg', function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
end)
buyFightingStyle:AddButton('Buy Electro', function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
end)
buyFightingStyle:AddButton('Buy Fishman Karate', function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
end)
buyFightingStyle:AddButton('Buy Dragon Claw', function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
end)
buyFightingStyle:AddButton('Buy Superhuman', function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
end)
buyFightingStyle:AddButton('Buy Death Step', function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
end)
buyFightingStyle:AddButton('Buy Sharkman Karate', function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
end)
buyFightingStyle:AddButton('Buy Electric Claw', function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true)
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
end)
buyFightingStyle:AddButton('Buy Dragon Talon', function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true)
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
end)
buyFightingStyle:AddButton('Buy Godhuman', function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true)
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
end)

local IslandTeleportx = Tabs['Players']:AddRightTabbox()
local IslandTeleport = IslandTeleportx:AddTab('\\\\\  Island Teleport  //')


Locations = {}
for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
    table.insert(Locations,v.Name)
end
IslandTeleport:AddDropdown('SelectLocation', {
    Values = Locations,
    Default = nil,
    Multi = false,
    Text = 'Select Island',
}):OnChanged(function(value)
	getgenv().Island = value
end)

IslandTeleport:AddToggle('BM', {
	Text = 'Teleport To Island',
	Default = false,
	}):OnChanged(function(value)
	    getgenv().Teleport = value
		for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
		    if v.Name == getgenv().Island and getgenv().Teleport then
		        repeat wait()
		            toTarget(v.CFrame * CFrame.new(0,40,0))
		        until not getgenv().Teleport or game.Players.LocalPlayer.Character.Humanoid.CFrame == v.CFrame
		    end
		end
		if getgenv().Teleport == false then
		    toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
		end
		end)

		local Dungeonx = Tabs['Players']:AddRightTabbox()
local Dungeon = Dungeonx:AddTab('\\\\\  Auto Dungeon  //')
Dungeonm = {"Flame","Ice","Quake","Light","Dark","String","Rumble","Magma","Human: Buddha","Sand","Bird: Phoenix","Dough"}
Dungeon:AddDropdown('SelectLocation', {
    Values = Dungeonm,
    Default = nil,
    Multi = false,
    Text = 'Select Dungeon',
}):OnChanged(function(value)
	getgenv().Settings.Raids["Select Raids"] = value
	getgenv().SaveSetting()
end)

Dungeon:AddToggle('BM', {
	Text = 'Auto Clear Dungeon',
	Default = false,
	}):OnChanged(function(value)
		getgenv().Settings.Raids["Auto Raids"] = value
		if value == false then
			toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
		end
		getgenv().SaveSetting()
		end)

		Dungeon:AddToggle('BM', {
			Text = 'Auto Awakened',
			Default = false,
			}):OnChanged(function(value)
				getgenv().Settings.Raids["Auto Awakened"] = value
				getgenv().SaveSetting()
				end)
				
function CheckFruit()
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if v:IsA("Tool") and string.find(v.Name,"Fruit") then
			return true
		end
	end
	for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if v:IsA("Tool") and string.find(v.Name,"Fruit") then
			return true
		end
	end
end

task.spawn(function()
	while wait() do
		pcall(function()
			if getgenv().Settings.Raids["Auto Raids"] and getgenv().Settings.Raids["Select Mode Raids"] == "Normal" then
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then

				else
					local args = {
						[1] = "RaidsNpc",
						[2] = "Select",
						[3] = tostring(getgenv().Settings.Raids["Select Raids"])
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
			elseif getgenv().Settings.Raids["Auto Raids"] and getgenv().Settings.Raids["Select Mode Raids"] == "Hop" then 
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then

				else
					getgenv().Settings.Devil_Fruit["Bring Fruit"] = true
					wait(10)
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") and game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false then
						
					elseif game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == true then

					elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then

					else
						Fast_Hop()
					end
				end
			elseif getgenv().Settings.Raids["Auto Raids"] and getgenv().Settings.Raids["Select Mode Raids"] == "Loop" then 
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then

				else
					getgenv().Settings.Devil_Fruit["Bring Fruit"] = true
					wait(10)
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") and game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false then
						
					elseif game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == true then

					elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then

					else
						FindFruit = false
						if CheckFruit() ~= true and not game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") and not game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip")
							and game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false then
								if Storr then getgenv().Settings.Devil_Fruit["Auto Store Fruits"] = false end
							for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryFruits")) do
								if v.Price < 1000000 then 
									FindFruit = true
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit",v.Name)
								end
							end
						end	
						if CheckFruit() == true and not game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") and not game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") 
							and game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false then
							FindFruit = true
							local args = {
								[1] = "RaidsNpc",
								[2] = "Select",
								[3] = tostring(getgenv().Settings.Raids["Select Raids"])
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							if Storr then getgenv().Settings.Devil_Fruit["Auto Store Fruits"] = true end
						end
					end
				end
			end
		end)
	end
end)

task.spawn(function()
	while wait() do
		pcall(function()
			if getgenv().Settings.Raids["Auto Raids"] then 
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") and game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false then
					if World2 then
						fireclickdetector(Workspace.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
					elseif World3 then
						fireclickdetector(Workspace.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
					end
					wait(5)         
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
					if game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == true then				
						repeat wait()
							if game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false then

							elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
								game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame = CFrame.new(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame.x,60,game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame.z)
								if (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350 then
									Farmtween = toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame)
								elseif (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
									if Farmtween then
										Farmtween:Stop()
									end
									toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 5"].CFrame*CFrame.new(4,65,10))
								end
							elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
								game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame = CFrame.new(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame.x,60,game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame.z)
								if (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350 then
									Farmtween = toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame)
								elseif (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
									if Farmtween then
										Farmtween:Stop()
									end
									toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 4"].CFrame*CFrame.new(4,65,10))
								end
							elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
								game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame = CFrame.new(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame.x,60,game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame.z)
								if (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350 then
									Farmtween = toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame)
								elseif (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
									if Farmtween then
										Farmtween:Stop()
									end
									toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 3"].CFrame*CFrame.new(4,65,10))
								end
							elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
								game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame = CFrame.new(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame.x,60,game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame.z)
								if (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350 then
									Farmtween = toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame)
								elseif (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
									if Farmtween then
										Farmtween:Stop()
									end
									toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 2"].CFrame*CFrame.new(4,65,10))
								end
							elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
								game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame = CFrame.new(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame.x,60,game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame.z)
								if (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350 then
									Farmtween = toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame)
								elseif (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
									if Farmtween then
										Farmtween:Stop()
									end
									toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 1"].CFrame*CFrame.new(4,65,10))
								end
							end
						until not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") or game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false
					end  
				else
					if getgenv().Settings.Raids["Auto Awakened"] then	
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
					end
					local args = {
						[1] = "RaidsNpc",
						[2] = "Select",
						[3] = tostring(getgenv().Settings.Raids["Select Raids"])
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
			end
		end)
	end
end)

task.spawn(function()
	while wait() do
		pcall(function()
			if getgenv().Settings.Raids["Auto Raids"] then
				for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
					if game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == true then
						if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
							repeat wait()
								v.Humanoid.Health = 0
							until not getgenv().Settings.Raids["Auto Raids"] or not RaidSuperhuman or not v.Parent or v.Humanoid.Health <= 0
						end
					end
				end
			end
		end)
	end
end)

local Modifyx = Tabs['Players']:AddRightTabbox()
local Modify = Modifyx:AddTab('\\\\\  Modify  //')

Modify:AddToggle('BM', {
	Text = 'Semi Evolve Race',
	Default = false,
	}):OnChanged(function(value)
		SemiEvolveRace = value
		task.spawn(function()
			while SemiEvolveRace do
				wait(0.01)
				local args = {
					[1] = "ActivateAbility"
				}
				
				game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommE"):FireServer(unpack(args))
			end
		end)
		end)


Modify:AddToggle('BM', {
	Text = 'Semi Mink Race',
	Default = false,
	}):OnChanged(function(value)
		getgenv().InfinitieAbilitiesMink = value
		task.spawn(function()
			if getgenv().InfinitieAbilitiesMink then
				local Agility = game:GetService("ReplicatedStorage").FX["Agility"]:Clone()
				Agility.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
			else
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart["Agility"]:Destroy()
			end
		end)
		end)

		Modify:AddToggle('BM', {
			Text = 'Semi Nostun',
			Default = false,
			}):OnChanged(function(value)
				getgenv().Nostun=value
				spawn(function()
					while task.wait() do
						pcall(function()
							if getgenv().Nostun then
			   game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("BodyVelocity"):Destroy()
							end
						end)
					end
				end)
				end)
				Modify:AddToggle('BM', {
					Text = 'Damage Aura',
					Default = false,
					}):OnChanged(function(value)
						getgenv().DamageAura=value
						spawn(function()
							while getgenv().DamageAura do
								wait(0.01)
Fast=true
							end
						end)
						end)
						Modify:AddToggle('BM', {
							Text = 'Infinities Energy',
							Default = false,
							}):OnChanged(function(value)
								getgenv().Settings.Misc["Infinities Energy"]=value
								end)
								Modify:AddToggle('BM', {
									Text = 'Walk On Water',
									Default = false,
									}):OnChanged(function(value)
										WalkOnWater=value
										spawn(function()
											while WalkOnWater do
												wait(0.01)
				if WalkOnWater then
					game:GetService("Workspace")["_WorldOrigin"]["Foam"].CanCollide = true
				else
					game:GetService("Workspace")["_WorldOrigin"]["Foam"].CanCollide = false

				end
											end
										end)
										end)
										Modify:AddButton('Infinit Range Observation Haki', function()
											ame.Players.LocalPlayer.VisionRadius.Value = math.huge
										end)
										local Espx = Tabs['Players']:AddRightTabbox()
										local Espfff = Espx:AddTab('\\\\\  Esp  //')
										Espfff:AddToggle('BM', {
											Text = 'Flower Esp (World 2 Only)',
											Default = false,
											}):OnChanged(function(value)
												getgenv().FlowerEsp = value
											end)	
											Espfff:AddToggle('BM', {
												Text = 'Demon Fruit Esp',
												Default = false,
												}):OnChanged(function(value)
													getgenv().DFEsp = value
												end)										
												Espfff:AddToggle('BM', {
													Text = 'Island Esp',
													Default = false,
													}):OnChanged(function(value)
														getgenv().IslandEsp = value
													end)	
													Espfff:AddToggle('BM', {
														Text = 'Chest Esp',
														Default = false,
														}):OnChanged(function(value)
															getgenv().ChestEsp = value

														end)	

										spawn(function()
											while getgenv().ChestEsp do wait()
												ChestSESP()
											end
											if getgenv().ChestEsp == false then
												v:FindFirstChild('NameEsp'..Number):Destroy()
											end
											while getgenv().IslandEsp do wait()
												IslandESP()
											end
											if getgenv().IslandEsp == false then
												v:FindFirstChild('NameEsp'):Destroy()
											end
											while getgenv().DFEsp do wait()
												UpdateBfEsp()
											end
											while getgenv().FlowerEsp do wait()
												FlowerESP()
											end
											if getgenv().FlowerEsp == false then
												v:FindFirstChild('NameEsp'..Number):Destroy()
											end
										end)

										local NoCooldown = Tabs['Players']:AddRightTabbox()
										local NoCooldownx = NoCooldown:AddTab('\\\\\  No Cooldown  //')
										NoCooldownx:AddToggle('BM', {
											Text = 'No Dash Cooldown',
											Default = false,
											}):OnChanged(function(value)
												getgenv().Settings.Misc["No Dash Cooldown"] = value
											end)	
											NoCooldownx:AddToggle('BM', {
												Text = 'No Soru Cooldown',
												Default = false,
												}):OnChanged(function(value)
													getgenv().Settings.Misc["No Soru Cooldown"] = value
												end)	
												NoCooldownx:AddToggle('BM', {
													Text = 'Infinities Geppo',
													Default = false,
													}):OnChanged(function(value)
														getgenv().Settings.Misc["Infinities Geppo"] = value
end)
local Worldtp = Tabs['Misceallaneous']:AddLeftTabbox()
local WorldTeleprot = Worldtp:AddTab('\\\\\  World Teleprot  //')

WorldTeleprot:AddButton({
    Text = 'Main',
    Func = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
    end,
    DoubleClick = false,
})
WorldTeleprot:AddButton({
    Text = 'Dressrosa',
    Func = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
    end,
    DoubleClick = false,
})
WorldTeleprot:AddButton({
    Text = 'Zou',
    Func = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
    end,
    DoubleClick = false,
})
local GenerateImgesx = Tabs['Misceallaneous']:AddLeftTabbox()
local GenerateImges = GenerateImgesx:AddTab('\\\\\  Generate Imges  //')

GenerateImges:AddButton({
    Text = 'Kaitun Screen Capture',
    Func = function()
		local cac = require(game:GetService("Players").LocalPlayer.PlayerGui.Main.UIController.Inventory)
		local Inventory = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")
		local Items = {}
		local RaityLevel = {"Mythical","Legendary","Rare","Uncommon","Common"}
		local RaityColor =  {
			["Common"] = Color3.fromRGB(179, 179, 179),
			["Uncommon"] = Color3.fromRGB(92, 140, 211),
			["Rare"] =  Color3.fromRGB(140, 82, 255),
			["Legendary"] = Color3.fromRGB(213, 43, 228) ,
			["Mythical"] =  Color3.fromRGB(238, 47, 50)
		}
		function GetRaity(color)
			for k,v in pairs(RaityColor) do 
				if v==color then return k end
			end
		end

		for k,v in pairs(Inventory) do 
			Items[v.Name] = v
		end

		local total = #getupvalue(cac.UpdateRender,4)
		local rac = {}
		local allitem = {}
		local total2 = 0
		while total2<total do 
			local i = 0
			while i < 25000 and total2<total do 
				game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.CanvasPosition = Vector2.new(0,i)
				for k,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.Frame:GetChildren()) do 
					if v:IsA("Frame") and not rac[v.ItemName.Text] and v.ItemName.Visible==true then 
						local vaihuhu = GetRaity(v.Background.BackgroundColor3)
						if vaihuhu then
							print("Rac")
							if not allitem[vaihuhu] then 
								allitem[vaihuhu] = {}
							end
							table.insert(allitem[vaihuhu],v:Clone())
						end
						total2=total2+1
						rac[v.ItemName.Text] = true
					end
				end
				i=i+20
			end
			wait()
		end
		function GetXY(vec) 
			return vec*100
		end

		local tvk = Instance.new("UIListLayout")
		tvk.FillDirection = Enum.FillDirection.Vertical
		tvk.SortOrder = 2
		tvk.Padding = UDim.new(0,10)

		local Left = Instance.new("Frame",game.Players.LocalPlayer.PlayerGui.BubbleChat)
		Left.BackgroundTransparency = 1
		Left.Size = UDim2.new(.5,0,1,0) 
		tvk.Parent = Left

		local Right = Instance.new("Frame",game.Players.LocalPlayer.PlayerGui.BubbleChat)
		Right.BackgroundTransparency = 1
		Right.Size = UDim2.new(.5,0,1,0) 
		Right.Position = UDim2.new(.6,0,0,0)
		tvk:Clone().Parent = Right
		for k,v in pairs(allitem) do 
			local cac = Instance.new("Frame",Left)
			cac.BackgroundTransparency = 1
			cac.Size = UDim2.new(1,0,0,0) 
			cac.LayoutOrder = table.find(RaityLevel,k)

			local cac2 = Instance.new("Frame",Right)
			cac2.BackgroundTransparency = 1
			cac2.Size = UDim2.new(1,0,0,0) 
			cac2.LayoutOrder = table.find(RaityLevel,k)

			local tvk = Instance.new("UIGridLayout",cac)
			tvk.CellPadding = UDim2.new(.005,0,.005,0)
			tvk.CellSize =  UDim2.new(0,70,0,70)
			tvk.FillDirectionMaxCells = 100
			tvk.FillDirection = Enum.FillDirection.Horizontal

			local ccc = tvk:Clone()
			ccc.Parent = cac2
			for k,v in pairs(v) do 
				if Items[v.ItemName.Text] and Items[v.ItemName.Text].Mastery then 
					if v.ItemLine2.Text~="Accessory" then 
						local bucac = v.ItemName:Clone()
						bucac.BackgroundTransparency = 1
						bucac.TextSize = 10
						bucac.TextXAlignment  = 2
						bucac.TextYAlignment  = 2
						bucac.ZIndex  = 5
						bucac.Text = Items[v.ItemName.Text].Mastery
						bucac.Size = UDim2.new(.5,0,.5,0)
						bucac.Position = UDim2.new(.5,0,.5,0)
						bucac.Parent = v
					end
					v.Parent = cac
				elseif v.ItemLine2.Text == "Blox Fruit" then 
					v.Parent = cac2
				end
			end
			cac.AutomaticSize = 2
			cac2.AutomaticSize = 2
		end
		local ListHuhu = {
			["Superhuman"] = Vector2.new(3,2),
			["DeathStep"] = Vector2.new(4,3),
			["ElectricClaw"] = Vector2.new(2,0),
			["SharkmanKarate"] = Vector2.new(0,0),
			["DragonTalon"] = Vector2.new(1,5)
		}
		local MeleeG = Instance.new("Frame",Left)
		MeleeG.BackgroundTransparency = 1
		MeleeG.Size = UDim2.new(1,0,0,0) 
		MeleeG.LayoutOrder = table.find(RaityLevel,k)
		MeleeG.AutomaticSize=2
		MeleeG.LayoutOrder = 100
		local tvk = Instance.new("UIGridLayout",MeleeG)
		tvk.CellPadding = UDim2.new(.005,0,.005,0)
		tvk.CellSize =  UDim2.new(0,70,0,70)
		tvk.FillDirectionMaxCells = 100
		tvk.FillDirection = Enum.FillDirection.Horizontal

		local cac = {"Superhuman","ElectricClaw","DragonTalon","SharkmanKarate","DeathStep","GodHuman"}
		for k,v in pairs(cac) do
			if ListHuhu[v] and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buy"..v,true) == 1 then 
				local huhu = Instance.new("ImageLabel",MeleeG)
				huhu.Image = "rbxassetid://9945562382"
				huhu.ImageRectSize = Vector2.new(100,100)
				huhu.ImageRectOffset = ListHuhu[v]*100
			end
		end
		function formatNumber(v)
			return tostring(v):reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "")
		end
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli.Position = UDim2.new(0,800,0,500)
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Level.Position = UDim2.new(0,800,0,550)

		local thieunang = game:GetService("Players").LocalPlayer.PlayerGui.Main.Fragments:Clone()
		thieunang.Parent = game:GetService("Players").LocalPlayer.PlayerGui.BubbleChat
		thieunang.Position = UDim2.new(0,800,0.63,0)
		local n = formatNumber(game.Players.LocalPlayer.Data.Fragments.Value)
		thieunang.Text = " "..n
		print("Done")
		pcall(function() 
			game:GetService("Players").LocalPlayer.PlayerGui.Main.MenuButton:Destroy()
		end)
		pcall(function() 
			game:GetService("Players").LocalPlayer.PlayerGui.Main.HP:Destroy()
		end)
		pcall(function() 
			game:GetService("Players").LocalPlayer.PlayerGui.Main.Energy:Destroy()
		end)
		for k,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main:GetChildren()) do 
			if v:IsA("ImageButton") then 
				v:Destroy()
			end
		end
		pcall(function() 
			game:GetService("Players").LocalPlayer.PlayerGui.Main.Compass:Destroy()
		end)
        end,
    DoubleClick = false,
})


GenerateImges:AddButton({
    Text = 'Destroy Screen Kaitun (Re Join)',
    Func = function()
		game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").localPlayer)
        end,
    DoubleClick = false,
})

local Dungeonxd = Tabs['Misceallaneous']:AddLeftTabbox()
local Dungeonxe = Dungeonxd:AddTab('\\\\\  Raid  //')

Dungeonxe:AddButton({
    Text = 'Buy Chip',
    Func = function()
        local args = {
            [1] = "getInventory"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
                end,
    DoubleClick = false,
})

Dungeonxe:AddButton({
    Text = 'Start Raid ',
    Func = function()
        if World2 then
            fireclickdetector(Workspace.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
        elseif World3 then
            fireclickdetector(Workspace.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
        end
                   end,
    DoubleClick = false,
})

local DevilFruitsx = Tabs['Misceallaneous']:AddLeftTabbox()
local DevilFruits = DevilFruitsx:AddTab('\\\\\  Devil Fruit  //')
local Remote_GetFruits = game.ReplicatedStorage:FindFirstChild("Remotes").CommF_:InvokeServer("GetFruits");

Table_DevilFruitSniper = {}
ShopDevilSell = {}

for i,v in next,Remote_GetFruits do
	table.insert(Table_DevilFruitSniper,v.Name)
	if v.OnSale then 
		table.insert(ShopDevilSell,v.Name)
	end
end
task.spawn(function()
	while wait() do
		if getgenv().Settings.Devil_Fruit["Auto Buy Devil Fruits Sniper"] then
			pcall(function()
				local string_1 = "PurchaseRawFruit";
				local string_2 = getgenv().Settings.Devil_Fruit["Select Devil Fruits"];
				local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
				Target:InvokeServer(string_1, string_2);
			end)
		end                              
	end
end)
task.spawn(function()
	while wait() do
		if getgenv().Settings.Devil_Fruit["Auto Buy Random Fruits"] then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
			wait(15)
		end
	end
end) 

													Library:OnUnload(function()
														print('Unloaded!')
														Library.Unloaded = true
end)

local SaveManager = {} do
    SaveManager.Ignore = {}
    SaveManager.Parser = {
        Toggle = {
            Save = function(idx, object) 
                return { type = 'Toggle', idx = idx, value = object.Value } 
            end,
            Load = function(idx, data)
                if Toggles[idx] then 
                    Toggles[idx]:SetValue(data.value)
                end
            end,
        },
        Slider = {
            Save = function(idx, object)
                return { type = 'Slider', idx = idx, value = tostring(object.Value) }
            end,
            Load = function(idx, data)
                if Options[idx] then 
                    Options[idx]:SetValue(data.value)
                end
            end,
        },
        Dropdown = {
            Save = function(idx, object)
                return { type = 'Dropdown', idx = idx, value = object.Value, mutli = object.Multi }
            end,
            Load = function(idx, data)
                if Options[idx] then 
                    Options[idx]:SetValue(data.value)
                end
            end,
        },
        ColorPicker = {
            Save = function(idx, object)
                return { type = 'ColorPicker', idx = idx, value = object.Value:ToHex() }
            end,
            Load = function(idx, data)
                if Options[idx] then 
                    Options[idx]:SetValueRGB(Color3.fromHex(data.value))
                end
            end,
        },
        KeyPicker = {
            Save = function(idx, object)
                return { type = 'KeyPicker', idx = idx, mode = object.Mode, key = object.Value }
            end,
            Load = function(idx, data)
                if Options[idx] then 
                    Options[idx]:SetValue({ data.key, data.mode })
                end
            end,
        }
    }

    function SaveManager:Save(name)
        local fullPath = 'Dfa Hub/Blox Fruits/' .. name .. '.json'

        local data = {
            version = 2,
            objects = {}
        }

        for idx, toggle in next, Toggles do
            if self.Ignore[idx] then continue end
            table.insert(data.objects, self.Parser[toggle.Type].Save(idx, toggle))
        end

        for idx, option in next, Options do
            if not self.Parser[option.Type] then continue end
            if self.Ignore[idx] then continue end

            table.insert(data.objects, self.Parser[option.Type].Save(idx, option))
        end 

        local success, encoded = pcall(httpService.JSONEncode, httpService, data)
        if not success then
            return false, 'failed to encode data'
        end

        writefile(fullPath, encoded)
        return true
    end

    function SaveManager:Load(name)
        local file = 'Dfa Hub/Blox Fruits/' .. name .. '.json'
        if not isfile(file) then return false, 'invalid file' end

        local success, decoded = pcall(httpService.JSONDecode, httpService, readfile(file))
        if not success then return false, 'decode error' end
        if decoded.version ~= 2 then return false, 'invalid version' end

        for _, option in next, decoded.objects do
            if self.Parser[option.type] then
                self.Parser[option.type].Load(option.idx, option)
            end
        end

        return true
    end

    function SaveManager.Refresh()
        local list = listfiles('Dfa Hub/Blox Fruits/')

        local out = {}
        for i = 1, #list do
            local file = list[i]
            if file:sub(-5) == '.json' then
                -- i hate this but it has to be done ...

                local pos = file:find('.json', 1, true)
                local start = pos

                local char = file:sub(pos, pos)
                while char ~= '/' and char ~= '\\' and char ~= '' do
                    pos = pos - 1
                    char = file:sub(pos, pos)
                end

                if char == '/' or char == '\\' then
                    table.insert(out, file:sub(pos + 1, start - 1))
                end
            end
        end
        
        Options.ConfigList.Values = out
        Options.ConfigList:SetValues()
        Options.ConfigList:Display()

        return out
    end

    function SaveManager:Delete(name)
        local file = 'Dfa Hub/Blox Fruits/' .. name .. '.json'
        if not isfile(file) then return false, string.format('Config %q does not exist', name) end

        local succ, err = pcall(delfile, file)
        if not succ then
            return false, string.format('error occured during file deletion: %s', err)
        end

        return true
    end

    function SaveManager:SetIgnoreIndexes(list)
        for i = 1, #list do 
            table.insert(self.Ignore, list[i])
        end
    end

    function SaveManager.Check()
        local list = listfiles('Dfa Hub/Blox Fruits/')

        for _, file in next, list do
            if isfolder(file) then continue end

            local data = readfile(file)
            local success, decoded = pcall(httpService.JSONDecode, httpService, data)

            if success and type(decoded) == 'table' and decoded.version ~= 2 then
                pcall(delfile, file)
            end
        end
    end
end
local Configsg = Tabs['Miscellaneous']:AddRightTabbox()
local Configs = Configsg:AddTab('\\\\\  Configs  //')

    local function addRichText(label)
        label.TextLabel.RichText = true
    end

local Miscg = Tabs['Miscellaneous']:AddLeftTabbox()
local Misc = Miscg:AddTab('\\\\\  Miscellaneous  //')
addRichText(Misc:AddLabel(metadata.message or 'no message found!'))

    Misc:AddDivider()
    Misc:AddButton('Unload script', function() pcall(shared._unload) end)
    Misc:AddButton('Copy discord', function()
        if pcall(setclipboard, "https://discord.gg/X6AkwkAFUW") then
            Library:Notify('Successfully copied discord link to your clipboard!', 5)
        end
    end)

    Misc:AddLabel('Menu toggle'):AddKeyPicker('MenuToggle', { Default = 'Delete', NoUI = true })

    Library.ToggleKeybind = Options.MenuToggle

if type(readfile) == 'function' and type(writefile) == 'function' and type(makefolder) == 'function' and type(isfolder) == 'function' then
    makefolder('funky_friday_autoplayer')
    makefolder('funky_friday_autoplayer\\configs')

    Configs:AddDropdown('ConfigList', { Text = 'Config list', Values = {}, AllowNull = true })
    Configs:AddInput('ConfigName',    { Text = 'Config name' })

    Configs:AddDivider()

    Configs:AddButton('Save config', function()
        local name = Options.ConfigName.Value
        if name:gsub(' ', '') == '' then
            return Library:Notify('Invalid config name.', 3)
        end

        local success, err = SaveManager:Save(name)
        if not success then
            return Library:Notify(tostring(err), 5)
        end

        Library:Notify(string.format('Saved config %q', name), 5)
        task.defer(SaveManager.Refresh)
    end)



    Configs:AddButton('Load', function()
        local name = Options.ConfigList.Value
        local success, err = SaveManager:Load(name)
        if not success then
            return Library:Notify(tostring(err), 5)
        end

        Library:Notify(string.format('Loaded config %q', name), 5)
    end):AddButton('Delete', function()
        local name = Options.ConfigList.Value
        if name:gsub(' ', '') == '' then
            return Library:Notify('Invalid config name.', 3)
        end

        local success, err = SaveManager:Delete(name)
        if not success then
            return Library:Notify(tostring(err), 5)
        end

        Library:Notify(string.format('Deleted config %q', name), 5)

        task.spawn(Options.ConfigList.SetValue, Options.ConfigList, nil)
        task.defer(SaveManager.Refresh)
    end)

    Configs:AddButton('Refresh list', SaveManager.Refresh)

    task.defer(SaveManager.Refresh)
    task.defer(SaveManager.Check)
else
    Configs:AddLabel('Your exploit is missing file functions so you are unable to use configs.', true)
    --UI:Notify('Failed to create configs tab due to your exploit missing certain file functions.', 2)
end

-- Themes
do
    local latestThemeIndex = 0
    for i, theme in next, themeManager.BuiltInThemes do
        if theme[1] > latestThemeIndex then
            latestThemeIndex = theme[1]
        end
    end

    latestThemeIndex = latestThemeIndex + 1

    themeManager:SetLibrary(Library)
    themeManager:SetFolder('funky_friday_autoplayer')
	local themeManagerx = Tabs['Miscellaneous']:AddLeftTabbox()
	themeManager:ApplyToGroupbox(themeManagerx:AddTab('\\\\\  Theme  //'))

    SaveManager:SetIgnoreIndexes({ 
        "BackgroundColor", "MainColor", "AccentColor", "OutlineColor", "FontColor", -- themes
        "ThemeManager_ThemeList", 'ThemeManager_CustomThemeList', 'ThemeManager_CustomThemeName', -- themes
    })
end

local Servergroubx = Tabs['Miscellaneous']:AddRightTabbox()
local Servergroub = Servergroubx:AddTab('\\\\\  Server  //')

local x = Servergroub:AddButton({
    Text = 'Rejoin',
    Func = function()
		game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").localPlayer)
	    end,
    DoubleClick = false,
})

x:AddButton({
Text = 'Server Hop',
Func = function()
local Player = game.Players.LocalPlayer    
local Http = game:GetService("HttpService")
local TPS = game:GetService("TeleportService")
local Api = "https://games.roblox.com/v1/games/"
local _place,_id = game.PlaceId, game.JobId
local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=10"
function ListServers(cursor)
local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
return Http:JSONDecode(Raw)
end
while wait(time_to_wait) do
local Servers = ListServers()
local Server = Servers.data[math.random(1,#Servers.data)]
TPS:TeleportToPlaceInstance(_place, Server.id, Player)
end
end,
DoubleClick = false,
})

Servergroub:AddDivider()

Servergroub:AddInput('jobs',{ 
Text = 'Jobid' }):OnChanged(function(x)
   jobs = x
end)

 Servergroub:AddButton({
    Text = 'Coppy Jobid',
    Func = function()
		game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").localPlayer)
	    end,
    DoubleClick = false,
        Tooltip = game.JobId,
})

 Servergroub:AddButton({
    Text = 'Join Jobid',
    Func = function()
game.ReplicatedStorage['__ServerBrowser']:InvokeServer('teleport',jobs,game.Players.LocalPlayer)
	    end,
    DoubleClick = false,
})

Library:Notify(string.format('Loaded script in %.4f second(s)!', tick() - start), 3)
