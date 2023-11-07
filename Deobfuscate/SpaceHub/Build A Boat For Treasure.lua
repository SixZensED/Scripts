--// Decompiled Code. 
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Space Hub | Build A Boat For Treasure", HidePremium = false, SaveConfig = true, IntroEnabled = false, ConfigFolder = "OrionTest"})
OrionLib:MakeNotification({
	Name = "Space Hub",
	Content = "Space Hub Has Loaded",
	Image = "rbxassetid://4483345998",
	Time = 5
})

local af = Window:MakeTab({
	Name = "Autofarm",
	Icon = "rbxassetid://4384394237",
	PremiumOnly = false
})
af:AddParagraph("How to use:","In order for it to work you cannot move or you will fall off the part.")
local plr = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://4335480896",
	PremiumOnly = false
})
plr:AddButton({
	Name = "Admin Commands",
	Callback = function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source')))()
  	end    
})
plr:AddButton({
	Name = "ESP",
	Callback = function()
        loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/WRD%20ESP.txt"))()
  	end    
})
plr:AddButton({
	Name = "Fly",
	Callback = function()
        loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Fly.txt"))()
  	end    
})
plr:AddButton({
	Name = "Block Head",
	Callback = function()
        loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Blockhead.txt"))()
  	end    
})
plr:AddButton({
	Name = "Anti AFK",
	Callback = function()
        loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/anti-afk%20via%20autofocus.txt"))()
  	end    
})
plr:AddButton({
	Name = "Remove Legs",
	Callback = function()
        loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Remove%20Legs.txt"))()
  	end    
})
plr:AddButton({
	Name = "Float Character",
	Callback = function()
        loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Float%20Character.txt"))()
  	end    
})
plr:AddButton({
	Name = "Remove Arms",
	Callback = function()
        loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Remove%20Arms.txt"))()
  	end    
})
plr:AddButton({
	Name = "Invisible Character",
	Callback = function()
        loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Invisible%20Character.txt"))()
  	end    
})
plr:AddButton({
	Name = "Toggle Night Time",
	Callback = function()
        loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Night%20Time%20Toggle.txt"))()
  	end    
})
plr:AddButton({
	Name = "Limp Character",
	Callback = function()
        loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Limp%20Character.txt"))()
  	end    
})
plr:AddButton({
	Name = "Flashlight",
	Callback = function()
        loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Human%20Flashlight.txt"))()
  	end    
})
plr:AddButton({
	Name = "Ctrl Click Teleport",
	Callback = function()
        local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()
local UserInputService = game:GetService('UserInputService')

local HoldingControl = false

Mouse.Button1Down:connect(function()
if HoldingControl then
Player.Character:MoveTo(Mouse.Hit.p)
end
end)

UserInputService.InputBegan:connect(function(Input, Processed)
if Input.UserInputType == Enum.UserInputType.Keyboard then
if Input.KeyCode == Enum.KeyCode.LeftControl then
HoldingControl = true
elseif Input.KeyCode == Enum.KeyCode.RightControl then
HoldingControl = true
end
end
end)

UserInputService.InputEnded:connect(function(Input, Processed)
if Input.UserInputType == Enum.UserInputType.Keyboard then
if Input.KeyCode == Enum.KeyCode.LeftControl then
HoldingControl = false
elseif Input.KeyCode == Enum.KeyCode.RightControl then
HoldingControl = false
end
end
end)
  	end    
})
plr:AddButton({
	Name = "High Hips",
	Callback = function()
        loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/High%20Hips.txt"))()
  	end    
})
plr:AddButton({
	Name = "Btools",
	Callback = function()
        loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()
  	end    
})
plr:AddButton({
	Name = "Infinite Jump",
	Callback = function()
        local Player = game:GetService'Players'.LocalPlayer;
        local UIS = game:GetService'UserInputService';
         
        _G.JumpHeight = 50;
         
        function Action(Object, Function) if Object ~= nil then Function(Object); end end
         
        UIS.InputBegan:connect(function(UserInput)
            if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
                Action(Player.Character.Humanoid, function(self)
                    if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
                        Action(self.Parent.HumanoidRootPart, function(self)
                            self.Velocity = Vector3.new(0, _G.JumpHeight, 0);
                        end)
                    end
                end)
            end
        end)
       
  	end    
})
local tps = Window:MakeTab({
	Name = "Teleports",
	Icon = "rbxassetid://4370317928",
	PremiumOnly = false
})
tps:AddButton({
	Name = "Black Team",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-487.4410095214844, -8.700004577636719, -69.6186752319336)
  	end    
})
tps:AddButton({
	Name = "Red Team",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(380.062744140625, -8.700003623962402, -65.69831848144531)
  	end    
})
tps:AddButton({
	Name = "White Team",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-49.7816162109375, -8.700002670288086, -506.6413879394531)
  	end    
})
tps:AddButton({
	Name = "Green Team",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-485.1761779785156, -8.700004577636719, 293.20465087890625)
  	end    
})
tps:AddButton({
	Name = "Yellow Team",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-490.3713684082031, -8.700002670288086, 640.9750366210938)
  	end    
})
tps:AddButton({
	Name = "Blue Team",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(382.0494384765625, -8.700002670288086, 301.25469970703125)
  	end    
})
tps:AddButton({
	Name = "Purple Team",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(380.6820373535156, -8.700003623962402, 647.3969116210938)
  	end    
})
local credits = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://4370344717",
	PremiumOnly = false
})
credits:AddButton({
	Name = "Scripter & Owner: Lucas!#9935",
	Callback = function()
      		setclipboard("https://discord.gg/dwxX2y27Eh")
  	end    
})
af:AddButton({
	Name = "Enable Autofarm",
	Callback = function()
        OrionLib:MakeNotification({
            Name = "Space Hub",
            Content = "The autofarm has been enabled",
            Image = "rbxassetid://4483362748",
            Time = 5
        })      
      		-- // Custom Settings
getgenv().TreasureAutoFarm = {
    Enabled = true, -- // Toggle the auto farm on and off
    Teleport = 2, -- // How fast between each teleport between the stages and stuff
    TimeBetweenRuns = 5 -- // How long to wait until it goes to the next run
}

-- // Services
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local Lighting = game:GetService("Lighting")

-- // Vars
local LocalPlayer = Players.LocalPlayer

-- // Goes through all of the stages
local autoFarm = function(currentRun)
    -- // Variables
    local Character = LocalPlayer.Character
    local NormalStages = Workspace.BoatStages.NormalStages

    -- // Go to each stage thing
    for i = 1, 10 do
        local Stage = NormalStages["CaveStage" .. i]
        local DarknessPart = Stage:FindFirstChild("DarknessPart")

        if (DarknessPart) then
            -- // Teleport to next stage
            print("Teleporting to next stage: Stage " .. i)
            Character.HumanoidRootPart.CFrame = DarknessPart.CFrame

            -- // Create a temp part under you
            local Part = Instance.new("Part", LocalPlayer.Character)
            Part.Anchored = true
            Part.Position = LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0, 6, 0)

            -- // Wait and remove temp part
            wait(getgenv().TreasureAutoFarm.Teleport)
            Part:Destroy()
        end
    end

    -- // Go to end
    print("Teleporting to the end")
    repeat wait()
        Character.HumanoidRootPart.CFrame = NormalStages.TheEnd.GoldenChest.Trigger.CFrame
    until Lighting.ClockTime ~= 14

    -- // Wait until you have respawned
    local Respawned = false
    local Connection
    Connection = LocalPlayer.CharacterAdded:Connect(function()
        Respawned = true
        Connection:Disconnect()
    end)

    repeat wait() until Respawned
    wait(getgenv().TreasureAutoFarm.TimeBetweenRuns)
    print("Auto Farm: Run " .. currentRun .. " finished")
end

-- // Whilst the autofarm is enable, constantly do it
local autoFarmRun = 1
while wait() do
    if (getgenv().TreasureAutoFarm.Enabled) then
        print("Initialising Auto Farm: Run " .. autoFarmRun)
        autoFarm(autoFarmRun)
        autoFarmRun = autoFarmRun + 1
    end
end
  	end    
})
af:AddButton({
	Name = "Disable Autofarm",
	Callback = function()
        OrionLib:MakeNotification({
            Name = "Space Hub",
            Content = "The autofarm has been disabled",
            Image = "rbxassetid://4483362748",
            Time = 5
        })        
        game.Players.LocalPlayer.Character:BreakJoints()
  	end    
})
