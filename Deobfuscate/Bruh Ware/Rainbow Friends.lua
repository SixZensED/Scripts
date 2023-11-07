--// Decompiled Code. 
--SCRIPT
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "BruhWare v1", HidePremium = false, IntroEnabled = true, IntroText = "BruhWare", SaveConfig = true, ConfigFolder = "BruhWareConfig"})

local MainTab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local AdminTab = Window:MakeTab({
    Name = "Admin",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local CreditTab = Window:MakeTab({
    Name = "Credits",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

AdminTab:AddButton({
    Name = "Fate Admin",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/SussyWorkshop/BlackHub/main/FateAdmin.lua"))();
    end
})

AdminTab:AddButton({
    Name = "Infinite Yield",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/SussyWorkshop/BlackHub/main/InfiniteYield.lua"))()
    end
})

AdminTab:AddButton({
    Name = "Raviz Admin",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/SussyWorkshop/BlackHub/main/RevizAdmin.lua"))()
    end
})

AdminTab:AddButton({
    Name = "CMD-X",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/SussyWorkshop/BlackHub/main/CMDX.lua"))()
    end
})

CreditTab:AddSection({
    Name = "Credits"
})

CreditTab:AddButton({
    Name = "NoobyV66#0001 - Scripting",
    Callback = function()
        CopyThing('NoobyV69#6969')
    end
})

CreditTab:AddButton({
    Name = "shlex#0001 - UI Library",
    Callback = function()
        CopyThing('shlex#0001')
    end
})

MainTab:AddSection({
    Name = "ESP"
})

--MonstersESP
MainTab:AddButton({
    Name = "Monsters",
    Callback = function()
        local settings = {
            fillcolor = Color3.fromRGB(0, 255, 255),
            filltransparency = 0.75,
        
            outlinecolor = Color3.fromRGB(0, 255, 255),
            outlinetransparency = 0,
        }

        local plr = game.Players.LocalPlayer
        local highlights = Instance.new("Folder", game:GetService("CoreGui"))

        local function addhighligh(object)
            local highlight = Instance.new("Highlight", highlights)
            highlight.Adornee = object
            highlight.FillColor = settings.fillcolor
            highlight.FillTransparency = settings.filltransparency
            highlight.OutlineColor = settings.outlinecolor
            highlight.OutlineTransparency = settings.outlinetransparency

            highlight.Adornee.Changed:Connect(function()
                if not highlight.Adornee or not highlight.Adornee.Parent then
                    highlight:Destroy()
                end
            end)

            return highlight
        end

        local function addto(object)
            if object:IsA("Model") then
                addhighligh(object)
            end
        end

        for _,v in pairs(workspace.Monsters:GetDescendants()) do
            addto(v)
        end

        workspace.Monsters.DescendantAdded:Connect(function(v)
            addto(v)
        end)
    end
})

--ItemsESP
MainTab:AddButton({
    Name = "Items",
    Callback = function()
        local itemsOfInterest = Instance.new("Model", workspace)
        itemsOfInterest.Name = "Items of Interest"

        for i, v in pairs(workspace:GetChildren()) do
            if v.Name == "Battery" or (v.Name:find("^Block") and v:IsA("Model")) or (v.Name:find("^Food") and v:IsA("Model")) or (v.Name:find("^Fuse") and v:IsA("Model")) then
                v.Parent = itemsOfInterest
            end
        end

        local highlight = Instance.new("Highlight")
        highlight.Parent = itemsOfInterest
        highlight.Adornee = itemsOfInterest
        highlight.FillColor = Color3.new(0,255,0)
        highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        highlight.FillTransparency = 0.75
    end
})

--PlayersESP
MainTab:AddButton({
    Name = "Player",
    Callback = function()
        _G.FriendColor = Color3.fromRGB(0,0,255)
        _G.EnemyColor = Color3.fromRGB(255,0,0)
        _G.UseTeamColor = true

        local Holder = Instance.new("Folder", game.CoreGui)
        Holder.Name = "ESP"

        local Box = Instance.new("BoxHandleAdornment")
        Box.Name = "nilBox"
        Box.Size = Vector3.new(1,2,1)
        Box.Color3 = Color3.new(100/255,100/255,100/255)
        Box.Transparency = 0.7
        Box.ZIndex = 0
        Box.AlwaysOnTop = false
        Box.Visible = false

        local NameTag = Instance.new("BillboardGui")
        NameTag.Name = "nilNameTag"
        NameTag.Enabled = false
        NameTag.Size = UDim.new(0,200,0,50)
        NameTag.AlwaysOnTop = true
        NameTag.StudsOffset = Vector3.new(0,1.8,0)
        local Tag = Instance.new("TextLabel", NameTag)
        Tag.Name = "Tag"
        Tag.BackgroundTransparency = 1
        Tag.Position = UDim2.new(0, -50, 0, 0)
        Tag.Size = UDim2.new(0, 300, 0, 20)
        Tag.TextSize = 15
        Tag.TextColor3 = Color3.new(100 / 255, 100 / 255, 100 / 255)
        Tag.TextStrokeColor3 = Color3.new(0 / 255, 0 / 255, 0 / 255)
        Tag.TextStrokeTransparency = 0.4
        Tag.Text = "nil"
        Tag.Font = Enum.Font.SourceSansBold
        Tag.TextScaled = false

        local LoadCharacter = function(v)
            repeat wait() until v.Character ~= nil
            v.Character:WaitForChild("Humanoid")
            local vHolder = Holder:FindFirstChild(v.Name)
            vHolder:ClearAllChildren()
            local b = Box:Clone()
            b.Name = v.Name .. "Box"
            b.Adornee = vHolder
            b.Parent = vHolder
            local t = NameTag:Clone()
            t.Name = v.Name .. "NameTag"
            t.Enabled = true
            t.Parent = vHolder
            t.Adornee = v.Character:WaitForChild("Head", 5)
            if not t.Adornee then
                return UnloadCharacter(v)
            end
            t.Tag.Text = v.Name
            b.Color3 = Color3.new(v.TeamColor.r, v.TeamColor.g, v.TeamColor.b)
	        t.Tag.TextColor3 = Color3.new(v.TeamColor.r, v.TeamColor.g, v.TeamColor.b)
            local Update
            local UpdateNameTag = function()
                if not pcall(function()
                    v.Character.Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
                    local maxh = math.floor(v.Character.Humanoid.MaxHealth)
                    local h = math.floor(v.Character.Humanoid.Health)
                end) then
                    Update:Disconnect()
                end
            end
            UpdateNameTag()
            Update = v.Character.Humanoid.Changed:Connect(UpdateNameTag)
        end
        
        local UnloadCharacter = function(v)
            local vHolder = Holder:FindFirstChild(v.Name)
            if vHolder and (vHolder:FindFirstChild(v.Name .. "Box") ~= nil or vHolder:FindFirstChild(v.Name .. "NameTag") ~= nil) then
                vHolder:ClearAllChildren()
            end
        end
        
        local LoadPlayer = function(v)
            local vHolder = Instance.new("Folder", Holder)
            vHolder.Name = v.Name
            v.CharacterAdded:Connect(function()
                pcall(LoadCharacter, v)
            end)
            v.CharacterRemoving:Connect(function()
                pcall(UnloadCharacter, v)
            end)
            v.Changed:Connect(function(prop)
                if prop == "TeamColor" then
                    UnloadCharacter(v)
                    wait()
                    LoadCharacter(v)
                end
            end)
            LoadCharacter(v)
        end

        local UnloadPlayer = function(v)
            UnloadCharacter(v)
            local vHolder = Holder:FindFirstChild(v.Name)
            if vHolder then
                vHolder:Destroy()
            end
        end

        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
            spawn(function() pcall(LoadPlayer, v) end)
        end

        game:GetService("Players").PlayerAdded:Connect(function(v)
            pcall(LoadPlayer, v)
        end)
        
        game:GetService("Players").PlayerRemoving:Connect(function(v)
            pcall(UnloadPlayer, v)
        end)

        game:GetService("Players").LocalPlayer.NameDisplayDistance = 0

        if _G.Reantheajfdfjdgs then
            return
        end

        _G.Reantheajfdfjdgs = ":suifayhgvsdghfsfkajewfrhk321rk213kjrgkhj432rj34f67df"

        local players = game:GetService("Players")
        local plr = players.LocalPlayer

        function esp(target, color)
            if target.Character then
                if not target.Character:FindFirstChild("GetReal") then
                    local highlight = Instance.new("Highlight")
                    highlight.RobloxLocked = true
                    highlight.Name = "GetReal"
                    highlight.Adornee = target.Character
                    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                    highlight.FillColor = color
                    highlight.Parent = target.Character
                else
                    target.Character.GetReal.FillColor = color
                end
            end
        end

        while task.wait() do
            for i, v in pairs(players:GetPlayers()) do
                if v ~= plr then
                    esp(v, _G.UseTeamColor and v.TeamColor.Color or ((plr.TeamColor == v.TeamColor) and _G.FriendColor or _G.EnemyColor))
                end
            end
        end
    end
})

MainTab:AddSection({
    Name = "Player",
})

MainTab:AddSlider({
    Name = "Change Walkspeed",
    Min = 8,
    Max = 256,
    Default = 16,
    Color = Color3.fromRGB(255,255,255),
    Increament = 1,
    ValueName = "Walkspeed",
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.Walkspeed = Value
    end
})

MainTab:AddSlider({
    Name = "Change JumpPower",
    Min = 8,
    Max = 256,
    Default = 16,
    Color = Color3.fromRGB(255,255,255),
    Increament = 1,
    ValueName = "Walkspeed",
    Callback = function(Value)
        if game.Players.LocalPlayer.Character.Humanoid.UseJumpPower == true then
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
        else
            game.Players.LocalPlayer.Character.Humanoid.UseJumpPower = true
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
        end
    end
})

MainTab:AddButton({
    Name = "God Mode",
    Default = false,
    Callback = function()
        game.Players.LocalPlayer.Character.Humanoid:Remove()
        Instance.new('Humanoid', game.Players.LocalPlayer.Character)
        game:GetService("Workspace")[game.Players.LocalPlayer.Name]:FindFirstChildOfClass('Humanoid').HipHeight = 2
    end
})

MainTab:AddSection({
    Name = "Light"
})

--FullBright
MainTab:AddButton({
    Name = "Fullbright",
    Callback = function()
        if not _G.FullBrightExecuted then
            _G.FullBrightExecuted = false

            _G.NormalLighingSettings = {
                Brightness = game:GetService("Lighting").Brightness,
                ClockTime = game:GetService("Lighting").ClockTime,
                FogEnd = game:GetService("Lighting").FogEnd,
                GlobalShadows = game:GetService("Lighting").GlobalShadows,
                Ambient = game:GetService("Lighting").Ambient
            }

            game:GetService("Lighting"):GetPropertyChangedSignal("Brightness"):Connect(function()
                if game:GetService("Lighting").Brightness ~= 1 and game:GetService("Lighting").Brightness ~= _G.NormalLighingSettings.Brightness then
                    _G.NormalLighingSettings.Brightness = game:GetService("Lighting").Brightness
                    if not _G.FullBrightExecuted then
                        repeat
                            wait()
                        until _G.FullBrightExecuted
                    end
                    game:GetService("Lighting").Brightness = 1
                end
            end)

            game:GetService("Lighting"):GetPropertyChangedSignal("ClockTime"):Connect(function()
                if game:GetService("Lighting").ClockTime ~= 12 and game:GetService("Lighting").ClockTime ~= _G.NormalLightingSettings.ClockTime then
                    _G.NormalLightingSettings.ClockTime = game:GetService("Lighting").ClockTime
                    if not _G.FullBrightEnabled then
                        repeat
                            wait()
                        until _G.FullBrightEnabled
                    end
                    game:GetService("Lighting").ClockTime = 12
                end
            end)

            game:GetService("Lighting"):GetPropertyChangedSignal("FogEnd"):Connect(function()
                if game:GetService("Lighting").FogEnd ~= 786543 and game:GetService("Lighting").FogEnd ~= _G.NormalLightingSettings.FogEnd then
                    _G.NormalLightingSettings.FogEnd = game:GetService("Lighting").FogEnd
                    if not _G.FullBrightEnabled then
                        repeat
                            wait()
                        until _G.FullBrightEnabled
                    end
                    game:GetService("Lighting").FogEnd = 786543
                end
            end)

            game:GetService("Lighting"):GetPropertyChangedSignal("GlobalShadows"):Connect(function()
                if game:GetService("Lighting").GlobalShadows ~= false and game:GetService("Lighting").GlobalShadows ~= _G.NormalLightingSettings.GlobalShadows then
                    _G.NormalLightingSettings.GlobalShadows = game:GetService("Lighting").GlobalShadows
                    if not _G.FullBrightEnabled then
                        repeat
                            wait()
                        until _G.FullBrightEnabled
                    end
                    game:GetService("Lighting").GlobalShadows = false
                end
            end)

            game:GetService("Lighting"):GetPropertyChangedSignal("Ambient"):Connect(function()
                if game:GetService("Lighting").Ambient ~= Color3.fromRGB(178, 178, 178) and game:GetService("Lighting").Ambient ~= _G.NormalLightingSettings.Ambient then
                    _G.NormalLightingSettings.Ambient = game:GetService("Lighting").Ambient
                    if not _G.FullBrightEnabled then
                        repeat
                            wait()
                        until _G.FullBrightEnabled
                    end
                    game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
                end
            end)

            game:GetService("Lighting").Brightness = 1
	        game:GetService("Lighting").ClockTime = 12
	        game:GetService("Lighting").FogEnd = 786543
	        game:GetService("Lighting").GlobalShadows = false
	        game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)

            local LatestValue = true
	        spawn(function()
		        repeat
			        wait()
		        until _G.FullBrightEnabled
		        while wait() do
			        if _G.FullBrightEnabled ~= LatestValue then
				        if not _G.FullBrightEnabled then
					        game:GetService("Lighting").Brightness = _G.NormalLightingSettings.Brightness
					        game:GetService("Lighting").ClockTime = _G.NormalLightingSettings.ClockTime
					        game:GetService("Lighting").FogEnd = _G.NormalLightingSettings.FogEnd
					        game:GetService("Lighting").GlobalShadows = _G.NormalLightingSettings.GlobalShadows
					        game:GetService("Lighting").Ambient = _G.NormalLightingSettings.Ambient
				        else
					        game:GetService("Lighting").Brightness = 1
					        game:GetService("Lighting").ClockTime = 12
					        game:GetService("Lighting").FogEnd = 786543
					        game:GetService("Lighting").GlobalShadows = false
					        game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
				        end
				        LatestValue = not LatestValue
			        end
		        end
	        end)
        end
        _G.FullBrightExecuted = true
        _G.FullBrightEnabled = not _G.FullBrightEnabled
    end
})

MainTab:AddSection({
    Name = "Item"
})

--GetItem
MainTab:AddButton({
    Name = "Get Item",
    Callback = function()
        for i,v in pairs(game.workspace.Map_C1.ItemSpawns:GetDescendants()) do
            if v.name == "ItemSpawn" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
            wait(0.1)
            end
        end
    end
})

--SendItem
MainTab:AddButton({
    Name = "Send Item",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(371.54364013671875, 45.604129791259766, 132.65687561035156)
    end
})

OrionLib:Init()
