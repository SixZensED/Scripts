--// Decompiled Code. 
--SCRIPT
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Black Hub v1", HidePremium = false, IntroEnabled = true, IntroText = "Black Hub", SaveConfig = true, ConfigFolder = "BlackHubConfig"})

--Values
_G.autoTap = true
_G.autoRebirth = true
_G.autoHatch = true
_G.autoEquipBest = true
_G.selectEgg = "Basic Egg"

--Functions
function autoTap()
    while _G.autoTap == true do
        game.ReplicatedStorage.Remotes.Tap:FireServer()
        wait(.000000001)
    end
end

function autoRebirth()
    while _G.autoRebirth == true do
        game.ReplicatedStorage.Remotes.Rebirth:FireServer(1)
        wait(.000000001)
    end
end

function autoHatch()
    while _G.autoHatch == true do
        game.ReplicatedStorage.Remotes.BuyEgg:InvokeServer(_G.selectEgg, 1)
    end
end

function equipBest()
    game.ReplicatedStorage.Remotes.UnequipAll:InvokeServer()
    game.ReplicatedStorage.Remotes.EquipBest:InvokeServer()
end

function autoEquipBest()
    while _G.autoEquipBest == true do
        game.ReplicatedStorage.Remotes.UnequipAll:InvokeServer()
        game.ReplicatedStorage.Remotes.EquipBest:InvokeServer()
    end
end

--Tabs
local FarmTab = Window:MakeTab({
    Name = "AutoFarm",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local EggsTab = Window:MakeTab({
    Name = "Eggs",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local MiscTab = Window:MakeTab({
    Name = "Misc",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

--FarmTab
FarmTab:AddToggle({
    Name = "Auto Tap",
    Default = false,
    Callback = function(Value)
        _G.autoTap = Value
        autoTap()
    end
})

FarmTab:AddToggle({
    Name = "Auto Rebirth",
    Default = false,
    Callback = function(Value)
        _G.autoRebirth = Value
        autoRebirth()
    end
})

--EggsTab
EggsTab:AddDropdown({
    Name = "Select Egg",
    Default = "Basic Egg",
	Options = {"Basic Egg", "Rare Egg"},
	Callback = function(Value)
        _G.selectEgg = Value
		print(_G.selectEgg)
	end
})

EggsTab:AddToggle({
    Name = "Auto Hatch",
    Default = false,
    Callback = function(Value)
        _G.autoHatch = Value
        autoHatch()
    end
})

--MiscTab
MiscTab:AddButton({
    Name = "Equip Best",
    Callback = function()
        equipBest()
    end
})

MiscTab:AddToggle({
    Name = "Auto Equip Best",
    Default = false,
    Callback = function(Value)
        _G.autoEquipBest = Value
        autoEquipBest()
    end
})

OrionLib:Init()
