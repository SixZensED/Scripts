--// Decompiled Code. 
--SCRIPT
game:GetService("Players").LocalPlayer.Idled:connect(
    function()
        game:GetService("VirtualUser"):Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        wait(1)
        game:GetService("VirtualUser"):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    end)

	getgenv().Notification = loadstring(game:HttpGet"https://raw.githubusercontent.com/L1ZOT/Project-PJM/main/Notifycation")()

-----------------------------------------------------------------

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Galaxy Hub | Millionaire Empire Tycoon", HidePremium = false, SaveConfig = true, ConfigFolder = "Galaxy Hub", IntroText = "Galaxy Hub"})

local Hometab = Window:MakeTab({
	Name = "Home",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Maintab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Playertab = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Hometab:AddSection({
	Name = "Script By : MHD444#8522",
	Default = "default box input",
	TextDisappear = true,
	Callback = function(Value)
    end	  
})

Hometab:AddSection({
	Name = "Anti-AFK Always Working",
	Default = "default box input",
	TextDisappear = true,
	Callback = function(Value)
    end	  
})

Hometab:AddButton({
	Name = "Copy Discord Link",
	Callback = function()
        setclipboard("https://discord.gg/Ng6EpuA2RG")
        getgenv().Notification:Notify("Galaxy Hub", "Discord Link Sucssefuly Copied")
  	end    
})

Maintab:AddSection({
	Name = "If The Script Doest Work After A time Just Rejoin",
	Default = "default box input",
	TextDisappear = true,
	Callback = function(Value)
    end	  
})

Maintab:AddButton({
	Name = "INF Money!",
	Callback = function(bool)
        local Number_1 = 9e17
		game:GetService("ReplicatedStorage").RespawnService:FireServer(Number_1)
	end
})

Maintab:AddToggle({
	Name = "Auto Complete Tycoon",
	Default = false,
	Callback = function(bool)
        getgenv().autoBuy = bool
end
})

Maintab:AddToggle({
	Name = "Auto Collect Coins",
	Default = false,
	Callback = function(bool)
        getgenv().autoCollect = bool
	end
})

	Maintab:AddToggle({
	Name = "Auto Rebirth",
    Default = false,
    Callback = function(bool)
        getgenv().autoRebirth = bool
end
})

Playertab:AddSlider({
	Name = "WalkSpeed",
	Min = 0,
	Max = 200,
	Default = 45,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "WalkSpeed",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
		print(Value)
	end
})

Playertab:AddSlider({
	Name = "JumpPower",
	Min = 0,
	Max = 200,
	Default = 50,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "JumpPower",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
		print(Value)
	end    
})

Playertab:AddSlider({
	Name = "Gravity",
	Min = 0,
	Max = 250,
	Default = 196.2,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Gravity",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
		print(Value)
	end    
})

Playertab:AddButton({
	Name = "Reset All",
	Callback = function()
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 25
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
		game.workspace.Gravity = 196.2
		getgenv().Notification:Notify("Galaxy Hub", "You Are Normal Again Now")
	end
})

getgenv().Notification:Notify("Galaxy Hub", "Game Supported")

-----------------------------------------------------------------------------------------------------------------------------------------------------
---Functions

local rStorage = game:GetService("ReplicatedStorage")
while wait(0.3) do
   for _,v in pairs(workspace.Tycoons:GetChildren()) do
       if v.Owner.Value == game.Players.LocalPlayer.Name then
           if autoRebirth then
               rStorage.rebirthEvent:FireServer()
           end
           if autoBuy then
               for a,b in pairs(v.ButtonsFolder:GetChildren()) do
                   if not b:FindFirstChild("GamePass") then
                       firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, b.Head, 0)
                       firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, b.Head, 1)
                   end
               end
           end
           if autoCollect then
               firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.StarterParts.Collector.Givers.CashCollector, 0)
               firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.StarterParts.Collector.Givers.CashCollector, 1)
           end
       end
   end
end
