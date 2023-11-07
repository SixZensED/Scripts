--// Decompiled Code. 
--SCRIPT
wait(1)
local Network2 = game:GetService("ReplicatedStorage").Network.LookDir
local Hook2 
Hook2 = hookfunction(Network2.FireServer, newcclosure(function(...)
    local args = {...}
    local Banned = {5, 21, 23, 22, 1}
 if tostring(args[1]) == "LookDir" and table.find(Banned, args[2]) ~= nil then--Movement
            return
    end
    if tostring(args[2]) == "-nan(ind)" then
        return 
    end
    return Hook2(...)
end))
print('Bypassed Anti Cheat')

game:GetService("Players").LocalPlayer.Idled:connect(
    function()
        game:GetService("VirtualUser"):Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        wait(1)
        game:GetService("VirtualUser"):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    end)

getgenv().Notifi = loadstring(game:HttpGet"https://raw.githubusercontent.com/L1ZOT/Project-PJM/main/Notifycation")()

------------------------------------------------------------------------

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window1 = OrionLib:MakeWindow({Name = "Galaxy Hub | Strucid", HidePremium = false, SaveConfig = true, ConfigFolder = "Galaxy Hub", IntroText = "Galaxy Hub"})

local Hometab = Window1:MakeTab({
	Name = "Home",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Maintab = Window1:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Misctab = Window1:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Playertab = Window1:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Hometab:AddSection({
	Name = "Anti-AFK Always Working",
	Default = "default box input",
	TextDisappear = true,
	Callback = function()
    end
})

Hometab:AddSection({
	Name = "Made By : MHD444#8522",
	Default = "default box input",
	TextDisappear = true,
	Callback = function()
    end
})

Hometab:AddButton({
	Name = "Copy Discord Link",
	Callback = function()
        setclipboard("https://discord.gg/Ng6EpuA2RG")
        getgenv().Notifi:Notify("Galaxy Hub", "Discord Link Sucssefuly Copied")
    end
})

Maintab:AddSection({
	Name = "After Spawn Click Silent aim button again",
	Default = "default box input",
	TextDisappear = true,
	Callback = function()
    end
})

Maintab:AddButton({
	Name = "Silent Aim",
	Callback = function(bool)
local Players       = game:GetService("Players");
local Player        = Players.LocalPlayer;
local Mouse         = Player:GetMouse();
local Workspace     = game:GetService("Workspace");
local CurrentCam    = Workspace.CurrentCamera;
local require       = require;

local function getClosestPlayer()
    local closestPlayer;
    local shortestDistance = math.huge;
    for i, v in next, Players:GetPlayers() do
        if (v ~= Player and v.Character and v.Character:FindFirstChild("Head")) then
            local pos       = CurrentCam:WorldToViewportPoint(v.Character.Head.Position);
            local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(Mouse.X, Mouse.Y)).magnitude;

            if (magnitude < shortestDistance) then
                closestPlayer       = v;
                shortestDistance    = magnitude;
            end;
        end;
    end;
    return closestPlayer;
end;
local function run()
    task.wait();
    local gunModule = require(Player.PlayerGui:WaitForChild("MainGui").NewLocal.Tools.Tool.Gun);
    local oldFunc   = gunModule.ConeOfFire;
    gunModule.ConeOfFire = function(...)
        if (getfenv(2).script.Name == "Extra") then
            local closePlayer = getClosestPlayer();
            if (closePlayer and closePlayer.Character) then
                return closePlayer.Character.Head.CFrame * CFrame.new(math.random(0.1, 0.25), math.random(0.1, 0.25), math.random(0.1, 0.25)).p;
            end;
        end;
        return oldFunc(...);
    end;
end;
run();
Player.CharacterAdded:Connect(run);
end
})

Maintab:AddToggle({
	Name = "ESP",
    Default = false,
	Callback = function()
local Player = game:GetService("Players").LocalPlayer
local Camera = game:GetService("Workspace").CurrentCamera
local Mouse = Player:GetMouse()

local function Dist(pointA, pointB)
return math.sqrt(math.pow(pointA.X - pointB.X, 2) + math.pow(pointA.Y - pointB.Y, 2))
end

local function GetClosest(points, dest)
local min = math.huge
local closest = nil
for _,v in pairs(points) do
local dist = Dist(v, dest)
if dist < min then
min = dist
closest = v
end
end
return closest
end

local function DrawESP(plr)
local Box = Drawing.new("Quad")
Box.Visible = true
Box.PointA = Vector2.new(0, 0)
Box.PointB = Vector2.new(0, 0)
Box.PointC = Vector2.new(0, 0)
Box.PointD = Vector2.new(0, 0)
Box.Color = Color3.fromRGB(	149, 121, 119)
Box.Thickness = 2
Box.Transparency = 1

local function Update()
local c
c = game:GetService("RunService").RenderStepped:Connect(function()
if plr.Character ~= nil and plr.Character:FindFirstChildOfClass("Humanoid") ~= nil and plr.Character:FindFirstChild("HumanoidRootPart") ~= nil and plr.Character:FindFirstChildOfClass("Humanoid").Health > 0 and plr.Character:FindFirstChild("Head") ~= nil then
local pos, vis = Camera:WorldToViewportPoint(plr.Character.HumanoidRootPart.Position)
if vis then
local points = {}
local c = 0
for _,v in pairs(plr.Character:GetChildren()) do
if v:IsA("BasePart") then
c = c + 1
local p = Camera:WorldToViewportPoint(v.Position)
if v.Name == "HumanoidRootPart" then
p = Camera:WorldToViewportPoint((v.CFrame * CFrame.new(0, 0, -v.Size.Z)).p)
elseif v.Name == "Head" then
p = Camera:WorldToViewportPoint((v.CFrame * CFrame.new(0, v.Size.Y/2, v.Size.Z/1.25)).p)
elseif string.match(v.Name, "Left") then
p = Camera:WorldToViewportPoint((v.CFrame * CFrame.new(-v.Size.X/2, 0, 0)).p)
elseif string.match(v.Name, "Right") then
p = Camera:WorldToViewportPoint((v.CFrame * CFrame.new(v.Size.X/2, 0, 0)).p)
end
points[c] = p
end
end
local Left = GetClosest(points, Vector2.new(0, pos.Y))
local Right = GetClosest(points, Vector2.new(Camera.ViewportSize.X, pos.Y))
local Top = GetClosest(points, Vector2.new(pos.X, 0))
local Bottom = GetClosest(points, Vector2.new(pos.X, Camera.ViewportSize.Y))

if Left ~= nil and Right ~= nil and Top ~= nil and Bottom ~= nil then
Box.PointA = Vector2.new(Right.X, Top.Y)
Box.PointB = Vector2.new(Left.X, Top.Y)
Box.PointC = Vector2.new(Left.X, Bottom.Y)
Box.PointD = Vector2.new(Right.X, Bottom.Y)

Box.Visible = true
else
Box.Visible = false
end
else
Box.Visible = false
end
else
Box.Visible = false
if game.Players:FindFirstChild(plr.Name) == nil then
c:Disconnect()
end
end
end)
end
coroutine.wrap(Update)()
end

for _,v in pairs(game:GetService("Players"):GetChildren()) do
if v.Name ~= Player.Name then
DrawESP(v)
end
end

game:GetService("Players").PlayerAdded:Connect(function(v)
DrawESP(v)
end)
end
})

Misctab:AddSection({
	Name = "Capture The Flag Gamemode",
	Default = "default box input",
	TextDisappear = true,
	Callback = function()
    end
})

Misctab:AddButton({
	Name = "Capture Blue Flag",
	Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").IgnoreThese.BlueFlag.Position)
wait(.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").IgnoreThese.RedFlag.Position)
end
})

Misctab:AddButton({
	Name = "Capture Red Flag",
	Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").IgnoreThese.RedFlag.Position)
wait(.2)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").IgnoreThese.BlueFlag.Position)
end
})

Misctab:AddToggle({
	Name = "Auto Rejoin When Vote Kick",
    Default = false,
	Callback = function(state)
        getgenv().AutoRejoin = state
    end
})

Playertab:AddToggle({
	Name = "No fatigue",
    Default = false,
	Callback = function(bool)
        getgenv().NoFatigue = bool
local RunService = game:GetService("RunService")
RunService.Heartbeat:Connect(function()
if getgenv().NoFatigue == true then
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
end
end)
end
})

Playertab:AddToggle({
	Name = "No Fall Damage",
    Default = false,
	Callback = function(bool)
        getgenv().NoFallDamage = bool
        end
})

while wait(1) do
    if getgenv().NoFallDamage then
        wait(1)
game:GetService("ReplicatedStorage").Network.Remotes.Bouncing:FireServer()
end
end

Playertab:AddButton({
	Name = "Rejoin",
	Callback = function()
        local ts = game:GetService("TeleportService")
        local p = game:GetService("Players").LocalPlayer
        ts:Teleport(game.PlaceId, p)
    end
})

Maintab:AddButton({
	Name = "FPS BOOST",
	Callback = function()
local decalsyeeted = true
local g = game
local w = g.Workspace
local l = g.Lighting
local t = w.Terrain
t.WaterWaveSize = 0
t.WaterWaveSpeed = 0
t.WaterReflectance = 0
t.WaterTransparency = 0
l.GlobalShadows = false
l.FogEnd = 9e9
l.Brightness = 0
settings().Rendering.QualityLevel = "Level01"
for i, v in pairs(g:GetDescendants()) do
    if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
    elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
        v.Transparency = 1
    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
        v.Lifetime = NumberRange.new(0)
    elseif v:IsA("Explosion") then
        v.BlastPressure = 1
        v.BlastRadius = 1
    elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") then
        v.Enabled = false
    elseif v:IsA("MeshPart") then
        v.Material = "Plastic"
        v.Reflectance = 0
        v.TextureID = 10385902758728957
    end
end
for i, e in pairs(l:GetChildren()) do
    if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
        e.Enabled = false
    end
end
end
})

------------Rejoin If Vote Kick

local Services = setmetatable({
    LocalPlayer = game:GetService("Players").LocalPlayer,
    Camera = workspace.CurrentCamera,
    }, {
    __index = function(self, idx)
    return rawget(self, idx) or game:GetService(idx)
    end
    })

Services.RunService.Stepped:Connect(function()
    if getgenv().AutoRejoin then
    if game:GetService("Players").LocalPlayer.PlayerGui.MenuUI.VoteKick and game:GetService("Players").LocalPlayer.PlayerGui.MenuUI.VoteKick.Title.Text == "Vote Kick <font color = '#FFA500'>".. game.Players.LocalPlayer.Name .. "</font>?" then
game:GetService("TeleportService"):Teleport(game.PlaceId)
    else
wait()
end
end
end)

getgenv().Notifi:Notify("Galaxy Hub", "Game Suppoted")
