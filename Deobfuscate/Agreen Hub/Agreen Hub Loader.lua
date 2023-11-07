--// Decompiled Code. 
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local Window = Rayfield:CreateWindow({
	Name = "Agreen Gui Premium",
	LoadingTitle = "Agreen Hub Premium",
	LoadingSubtitle = "by Bstory",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = nil, -- Create a custom folder for your hub/game
		FileName = "Premium Bstory Hub"
	},
	Discord = {
		Enabled = true,
		Invite = "YHfbb3M3Kq", -- The Discord invite code, do not include discord.gg/
		RememberJoins = true -- Set this to false to make them join the discord every time they load it up
	},
	KeySystem = true, -- Set this to true to use our key system
	KeySettings = {
		Title = "Agreen Hub Premium",
		Subtitle = "Key System",
		Note = "Free Premium Life Time",
		FileName = "Bstory Key",
		SaveKey = true,
		GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
		Key = "Thanksbmhobfuscator"
	}
})

Rayfield:Notify({
	Title = "Hi Buyer , Good Luck ",
	Content = "Wellcome To Premium Gui",
	Duration = 6.5,
	Image = 4483362458,
	Actions = { -- Notification Buttons
		Ignore = {
			Name = "Okay!",
			Callback = function()
				print("The user tapped Okay!")
			end
		},
	},
})
local Tab = Window:CreateTab("Credit", 4483362458) -- Title, Image
local Paragraph = Tab:CreateParagraph({Title = "Mod Mink v4", Content = "Script Make By Bstory ( Owner Script )"})
local Paragraph = Tab:CreateParagraph({Title = "Mod Level", Content = "Script Make By Hn Gaming"})
local Paragraph = Tab:CreateParagraph({Title = "Mod Unlock GamePass", Content = "Script Make By NPT Script"})
local Paragraph = Tab:CreateParagraph({Title = "Fps Boost", Content = "Script Make By Vinh ( Owner Script W-azure )"})
local Tab = Window:CreateTab("Kaitun Script", 4483362458) -- Title, Image
local Button = Tab:CreateButton({
	Name = "Table Hub",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/AltsegoD/scripts/egoD/tablekhoc.lua"))()
	end,
})

local Tab = Window:CreateTab("Farm Script", 4483362458) -- Title, Image
local Button = Tab:CreateButton({
	Name = "Mokuro Hub",
	Callback = function()
		loadstring(game:HttpGet"https://raw.githubusercontent.com/xQuartyx/DonateMe/main/ScriptLoader")()

	end,
})
local Button = Tab:CreateButton({
	Name = "Zama Hub",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/RimuruScripter/Zama-Hub/main/LoadingScriptNew"))()
	end,
})
local Button = Tab:CreateButton({
	Name = "HoHo Hub",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
	end,
})
local Button = Tab:CreateButton({
	Name = "Neva Hub",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/VEZ2/NEVAHUB/main/2'))()
	end,
})
local Button = Tab:CreateButton({
	Name = "SXNUMZ HUB",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/SixnumzWOC/Sxnumz/main/SixnumFreeScript.lua'))()

	end,
})
local Button = Tab:CreateButton({
	Name = "Thunder Z Hub",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/ThunderZ-05/HUB/main/Script"))()
	end,
})
local Button = Tab:CreateButton({
	Name = "Nub.xyz Hub",
	Callback = function()
		loadstring(game:HttpGet('https://rawscripts.net/raw/UPDATE-16-Blox-Fruits-Nub-V1-Hub-4583'))()
	end,
})
local Tab = Window:CreateTab("Sub Script", 4483362458) -- Title, Image






local Toggle = Tab:CreateToggle({
	Name = "Auto Chest",
	CurrentValue = false,
	Flag = "Auto Chest", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		loadstring(game:HttpGet("https://raw.githubusercontent.com/BstoryVn/AutoChest/FreeScript/source", true))()
	end,
})



local Toggle = Tab:CreateToggle({
	Name = "Fast Attack",
	CurrentValue = false,
	Flag = "Fast Attack", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		loadstring(game:HttpGet('https://raw.githubusercontent.com/BstoryVn/hack/ScriptFree/FastAttack'))()
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Super Fast Attack",
	CurrentValue = false,
	Flag = "Super Fast Attack", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		loadstring(game:HttpGet('https://raw.githubusercontent.com/BstoryVn/hack/ScriptFree/SuperFast%20Attack'))()
	end,
})
local Paragraph = Tab:CreateParagraph({Title = "LÆ°u Ã½", Content = "Sáº½ bá» kick náº¿u sÃ i quÃ¡ lÃ¢u"})


local Button = Tab:CreateButton({
	Name = "Auto Hop Haki",
	Callback = function()
		getgenv().HakiColor = {
			"Orange Soda","Bright yellow","Yellow Sunshine",
			"Slimy Green","Green Lizard","Blue Jeans",
			"Plump Purple","Fiery Rose","Heat Wave",
			"Absolute Zero","Snow White","Pure Red","Winter Sky",
		}   
		loadstring(game:HttpGet("https://raw.githubusercontent.com/vinhuchi/rblx/main/W-azure/Free/AutoColorHop.lua"))()
	end,
})
local Button = Tab:CreateButton({
	Name = "Auto Hop Sword Zoro",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/vinhuchi/rblx/main/W-azure/Free/AutoSwordHop.lua"))()
	end,
})
local Dropdown = Tab:CreateDropdown({
	Name = "Aimbot ",
	Options = {"W azure Hub","Thunder Z Hub ( Get Key )"},
	CurrentOption = "W azure Hub",
	Flag = "W azure Hub", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Option)
		loadstring(game:HttpGet("https://raw.githubusercontent.com/vinhuchi/rblx/main/W-azure/Free/huhubileaksource.lua"))()
	end,
})
local Tab = Window:CreateTab("Mod", 4483362458) -- Title, Image
local Button = Tab:CreateButton({
	Name = "Minh v4",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/BstoryVn/MinhV4BloxFruits/main/ScriptByBstory"))()
	end,
})
local Button = Tab:CreateButton({
	Name = "Auto Max Beli",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/BstoryVn/BloxFruits/ScriptPaid/ModBeli'))()
	end,
})
local Button = Tab:CreateButton({
	Name = "Auto Up Level ",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/BstoryVn/BloxFruits/ScriptPaid/ModLevel'))()
	end,
})
local Button = Tab:CreateButton({
	Name = "Unlock Gamepass and Awk Race ",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/BstoryVn/BloxFruits/main/GiveAllGamePass'))()
	end,
})

local Tab = Window:CreateTab("Buy Item", 4483362458) -- Title, Image
local Button = Tab:CreateButton({
	Name = "Buy Black Leg",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
	end
})

local Button = Tab:CreateButton({
	Name = "Buy Electro",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
	end
})

local Button = Tab:CreateButton({
	Name = "Buy Fishman Karate",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
	end
})

local Button = Tab:CreateButton({
	Name = "Buy DragonClaw",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
	end
})
local Button = Tab:CreateButton({
	Name = "Buy SuperHuman",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
	end
})
local Button = Tab:CreateButton({
	Name = "Buy Death Step",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
	end
})
local Button = Tab:CreateButton({
	Name = "Buy Sharkman Karate",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
	end
})
local Button = Tab:CreateButton({
	Name = "Buy Electric Claw",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
	end
})
local Button = Tab:CreateButton({
	Name = "Buy Dragon Talon",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
	end
})
local Tab = Window:CreateTab("Mis", 4483362458) -- Title, Image
local Button = Tab:CreateButton({
	Name = "Join Pirates Team",
	Callback = function()
		local args = {
			[1] = "SetTeam",
			[2] = "Pirates"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) 
		local args = {
			[1] = "BartiloQuestProgress"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end
})
local Button = Tab:CreateButton({
	Name = "Join Marines Team",
	Callback = function()
		local args = {
			[1] = "SetTeam",
			[2] = "Marines"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		local args = {
			[1] = "BartiloQuestProgress"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end
})

local Button = Tab:CreateButton({
	Name = "Rejoin",
	Callback = function()
		local ts = game:GetService("TeleportService")
		local p = game:GetService("Players").LocalPlayer
		ts:Teleport(game.PlaceId, p)
	end
})
local Button = Tab:CreateButton({
	Name = "Inventory",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")
		game.Players.localPlayer.PlayerGui.Main.Inventory.Visible = true
	end
})
local Button = Tab:CreateButton({
	Name = "Devil Fruit Inventory",
	Callback = function()
		local args = {
			[1] = "getInventoryFruits"
		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits")
		game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.Visible = true
	end
})
local Button = Tab:CreateButton({
	Name = "Devil Fruit Shop",
	Callback = function()
		local args = {
			[1] = "GetFruits"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		game.Players.localPlayer.PlayerGui.Main.FruitShop.Visible = true
	end
})

local Button = Tab:CreateButton({
	Name = "Color Haki",
	Callback = function()
		game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
	end
})
local Button = Tab:CreateButton({
	Name = "Fps Boost",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/BstoryVn/BloxFruits/main/FpsBoost'))()
	end,
})
Rayfield:LoadConfiguration()
