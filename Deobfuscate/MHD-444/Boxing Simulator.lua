--// Decompiled Code. 
--SCRIPT
local GC = getconnections or get_signal_cons
if GC then
    for i,v in pairs(GC(game.Players.LocalPlayer.Idled)) do
        if v["Disable"] then
            v["Disable"](v)
        elseif v["Disconnect"] then
            v["Disconnect"](v)
        end
    end
else
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
        vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        wait(1)
        vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)
end

--------------------------------------------------------------------------------------------------------------

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window1 = OrionLib:MakeWindow({Name = "Galaxy Hub | Boxing Simulator", HidePremium = false, SaveConfig = true, ConfigFolder = "Galaxy Hub", IntroText = "Galaxy Hub"})

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

local Eggstab = Window1:MakeTab({
	Name = "Eggs",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Misctab = Window1:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

OrionLib:MakeNotification({
	Name = "Welcome To Galaxy Hub",
	Content = "Thanks For Chosing ME",
	Image = "rbxassetid://4483345998",
	Time = 5
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
        OrionLib:MakeNotification({
            Name = "Copy Discord Link",
            Content = "Discord Link Sucssefuly Copied",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
  	end    
})

Maintab:AddToggle({
	Name = "Auto Sell",
    Default = false,
	Callback = function(bool)
        getgenv().autosell = bool
        spawn(function()
            while getgenv().autosell do
             pcall(function()

				game:GetService("ReplicatedStorage").Events.SellRequest:FireServer()
        wait()
                end)
            end
        end)
    end
})


Maintab:AddToggle({
	Name = "Auto Buy DNA",
    Default = false,
	Callback = function(a)
        getgenv().autodna = a
        spawn(function()
            while getgenv().autodna do
             pcall(function()
game:GetService("ReplicatedStorage").Events.BuyAllDNA:FireServer()
wait(0.3)
			 end)
			end
		end)
	end})

	Maintab:AddToggle({
		Name = "Auto Buy Gloves",
		Default = false,
		Callback = function(z)
			getgenv().autogglove = z
			spawn(function()
				while getgenv().autogglove do
	game:GetService("ReplicatedStorage").Events.BuyAllGlove:FireServer()
	wait(0.3)
				end
			end)
		end
	})

	Maintab:AddToggle({
		Name = "Auto Buy Classes",
		Default = false,
		Callback = function(e)
			getgenv().autoclass = e
			spawn(function()
				while getgenv().autoclass do
	game:GetService("ReplicatedStorage").Events.BuyAllClass:FireServer()
	wait(0.3)
end
end)
end
})

Maintab:AddToggle({
	Name = "Auto Buy Aura",
	Default = false,
	Callback = function(r)
		getgenv().autoaura = r
		spawn(function()
			while getgenv().autoaura do
game:GetService("ReplicatedStorage").Events.BuyAura:FireServer()
wait()
			end
		end)
	end
})

Maintab:AddToggle({
	Name = "Auto Upgrade Energy",
	Default = false,
	Callback = function(t)
		getgenv().autoenergy = t
		spawn(function()
			while getgenv().autoenergy do
game:GetService("ReplicatedStorage").Events.UpgradeEnergy:FireServer()
wait()
			end
		end)
	end
})

Eggstab:AddDropdown({
	Name = "Dropdown",
	Default = "Basic Egg",
	Options = {"Basic Egg","Uncommon Egg","Rare Egg", "Epic Egg", "Legendary Egg", "Godly Egg", "Dominous Egg", "Moon Egg", "Planet Egg", "Fire Egg", "Mystic Egg", "Water Egg", "Infinity Egg", "Magma Egg", "Easter Egg"},
	Callback = function(value)
		Hatcheggs = value;
end
})

Eggstab:AddToggle({
Name = "Auto Egg",
Default = false,
Callback = function(v)
	getgenv().autohatch = v
	while true do
		if not getgenv().autohatch then return end

if Hatcheggs == "Basic Egg" then
local args = {
    [1] = "basic",
    [2] = false
}

game:GetService("ReplicatedStorage").Events.BuyEgg:FireServer(unpack(args))

 wait()
else if Hatcheggs == "Uncommon Egg" then

local args = {
    [1] = "uncommon",
    [2] = false
}

game:GetService("ReplicatedStorage").Events.BuyEgg:FireServer(unpack(args))

 wait()
else if Hatcheggs == "Rare Egg" then

local args = {
    [1] = "rare",
    [2] = false
}

game:GetService("ReplicatedStorage").Events.BuyEgg:FireServer(unpack(args))

 wait()
else if Hatcheggs == "Epic Egg" then

local args = {
    [1] = "epic",
    [2] = false
}

game:GetService("ReplicatedStorage").Events.BuyEgg:FireServer(unpack(args))

 wait()
else if Hatcheggs == "Legendary Egg" then

local args = {
    [1] = "legendary",
    [2] = false
}

game:GetService("ReplicatedStorage").Events.BuyEgg:FireServer(unpack(args))

wait()
else if Hatcheggs == "Godly Egg" then

local args = {
    [1] = "godly",
    [2] = false
}

game:GetService("ReplicatedStorage").Events.BuyEgg:FireServer(unpack(args))

wait()
else if Hatcheggs == "Dominous Egg" then

local args = {
    [1] = "mythical",
    [2] = false
}

game:GetService("ReplicatedStorage").Events.BuyEgg:FireServer(unpack(args))

wait()
else if Hatcheggs == "Moon Egg" then

local args = {
    [1] = "divine",
    [2] = false
}

game:GetService("ReplicatedStorage").Events.BuyEgg:FireServer(unpack(args))

wait()

else if Hatcheggs == "Planet Egg" then

local args = {
    [1] = "arcane",
    [2] = false
}

game:GetService("ReplicatedStorage").Events.BuyEgg:FireServer(unpack(args))

wait()
else if Hatcheggs == "Fire Egg" then

local args = {
    [1] = "mystic",
    [2] = false
}

game:GetService("ReplicatedStorage").Events.BuyEgg:FireServer(unpack(args))

wait()

else if Hatcheggs == "Mystic Egg" then

	local args = {
		[1] = "mystic",
		[2] = false
	}
	
game:GetService("ReplicatedStorage").Events.BuyEgg:FireServer(unpack(args))
	
wait()
else if Hatcheggs == "Water Egg" then


local args = {
    [1] = "supreme",
    [2] = false
}

game:GetService("ReplicatedStorage").Events.BuyEgg:FireServer(unpack(args))

wait()
else if Hatcheggs == "Infinity Egg" then

local args = {
    [1] = "infinity",
    [2] = false
}

game:GetService("ReplicatedStorage").Events.BuyEgg:FireServer(unpack(args))

wait()
else if Hatcheggs == "Magma Egg" then

local args = {
    [1] = "magma",
    [2] = false
}

game:GetService("ReplicatedStorage").Events.BuyEgg:FireServer(unpack(args))
    
    wait()
else if Hatcheggs == "Easter Egg" then

local args = {
    [1] = "easter",
    [2] = false
}

game:GetService("ReplicatedStorage").Events.BuyEgg:FireServer(unpack(args))
wait()
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
})

Misctab:AddButton({
	Name = "Claim All Flags",
	Callback = function()
    flagcap()
end
})

Misctab:AddToggle({
	Name = "Auto Farm KING OF THE HILL",
	Default = false,
	Callback = function(bool)
    getgenv().kothh = bool
    if bool then
        koth()
    end
end
})

Misctab:AddToggle({
	Name = "Auto Pickup Coins",
	Default = false,
	Callback = function(bool)
    getgenv().pickupc = bool
    if bool then
        pickupc()
    end
end
})

Misctab:AddToggle({
	Name = "Auto Pickup Easter Eggs",
	Default = false,
	Callback = function(bool)
    getgenv().pickupe = bool
    if bool then
        pickupe()
    end
end
})

Misctab:AddToggle({
	Name = "Auto Pickup Trophies",
	Default = false,
	Callback = function(bool)
    getgenv().pickupt = bool
    if bool then
        pickupt()
    end
end
})


---------------------------------------------------------------------------------------------------------------------------------------------------------------------
local players = game:GetService('Players')
local kothj = game:GetService("Workspace").RayObjects.KOTH

getgenv().pickupc = false
getgenv().pickupe = false
getgenv().pickupt = false
getgenv().autohatch = false

function koth()
    spawn(function()
        repeat 
            local plyr = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart
    task.wait()
    plyr.CFrame = kothj.CFrame * CFrame.new(-2,0,0)
until getgenv().kothh == false
    end)
end

function koth()
    spawn(function()
        repeat 
            local plyr = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart
    task.wait()
    plyr.CFrame = kothj.CFrame * CFrame.new(-2,0,0)
until getgenv().kothh == false
    end)
end

function pickupc()
    spawn(function()
        while getgenv().pickupc == true and task.wait() do 
            local plyr = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart
            for i,v in pairs(game:GetService("Workspace").Coins:GetDescendants()) do
                if v.Name == 'HumanoidRootPart' then
                        v.CFrame = plyr.CFrame
                end    
            end
         end
    end)
end

function pickupe()
    spawn(function()
        while getgenv().pickupe == true and task.wait() do 
            local plyr = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart
            for i,v in pairs(game:GetService("Workspace").Canes:GetDescendants()) do
                if v.Name == 'HumanoidRootPart' then
                        v.CFrame = plyr.CFrame
                end    
            end
         end
    end)
end

function pickupt()
    spawn(function()
        local plyr = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart
        while getgenv().pickupt == true and task.wait() do 
            for i,v in pairs(game:GetService("Workspace").Trophies:GetDescendants()) do
                if v.Name == 'HumanoidRootPart' then
                        v.CFrame = plyr.CFrame
                end    
            end
         end
    end)
end

function flagcap()
    spawn(function()
    for i,v in pairs(game:GetService("Workspace").Flags:GetDescendants()) do
    local plyr = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart
    if v.name == 'Root' then
        plyr.CFrame = v.CFrame
        wait(9)
    end
end 
    end)
end

function autohatch()
    spawn(function()
        while getgenv().autohatch == true and wait() do 
    game:GetService("ReplicatedStorage").Events.BuyEgg:FireServer(unpack(hatcharg))
    end
    end)
    end

