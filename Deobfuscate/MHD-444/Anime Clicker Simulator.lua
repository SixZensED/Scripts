--// Decompiled Code. 
--SCRIPT
local VU = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
        VU:CaptureController()
        VU:ClickButton2(Vector2.new())
end)
-----------------------------------------------------------------
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window1 = OrionLib:MakeWindow({Name = "Galaxy Hub | Anime Clicker Simulator", HidePremium = false, SaveConfig = true, ConfigFolder = "Galaxy Hub", IntroText = "Galaxy Hub"})

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

local Tptab = Window1:MakeTab({
	Name = "Teleport",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Eggtab = Window1:MakeTab({
	Name = "Eggs",
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
	Name = "Anti-AFK Always ON",
	Default = "default box input",
	TextDisappear = true,
	Callback = function(Value)
    end	  
})

Hometab:AddSection({
	Name = "Script By : MHD444#8522",
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
	Name = "Auto Click",
	Default = false,
	Callback = function(bool)
		getgenv().AutoTap = bool
		if getgenv().AutoTap then
            Tap();
	end
end  
})

function Tap()
    spawn(function()
        while getgenv().AutoTap == true do

			game:GetService("ReplicatedStorage").Remotes.ClickRemote:FireServer()
			wait()
end
end)
end

---------------------------------------------------------------------------------------------------

Maintab:AddDropdown({
	Rebirths;
   Name = "Rebirth Count",
   Default = "1",
   Options = {"1 Rebirths", "5 Rebirths", "15 Rebirths", "25 Rebirths", "50 Rebirths", "75 Rebirths", "100 Rebirths", "500 Rebirths", "1.5k Rebirths", "2.5k Rebirths", "5k Rebirths", "7.5k Rebirths", "10k Rebirths", "50k Rebirths", "150k Rebirths", "250k Rebirths", "500k Rebirths", "750k Rebirths", "1M Rebirths", "5M Rebirths", "15M Rebirths", "25M Rebirths", "50M Rebirths", "75M Rebirths", "100M Rebirths", "500M Rebirths", "1.5B Rebirths", "2.5B Rebirths", "5B Rebirths", "7.5B Rebirths", "10B Rebirths", "50B Rebirths", "150B Rebirths", "250B Rebirths", "500B Rebirths", "750B Rebirths", "1T Rebirths", "5T Rebirths", "100T Rebirths", "500T Rebirths", "5Qa Rebirths", "10Qa Rebirths", "150 Rebirths", "500Qa Rebirths", "1Qi Rebirths", "5Qi Rebirths", "10Qi Rebirths", "15Qi Rebirths", "500Qi Rebirths", },
   Callback = function(value)
	   Rebirths = value;
   end
})

Maintab:AddToggle({
   Name = "Auto Rebirths",
   Default = false,
   Callback = function(v)
	   getgenv().autorebirth = v
	   while true do
		   if not getgenv().autorebirth then return end

if Rebirths == "1 Rebirths" then
	local args = {
		[1] = 1
		}
		game:GetService("ReplicatedStorage").Remotes.RebirthRemote:FireServer(unpack(args))
	wait()
else if Rebirths == "5 Rebirths" then
	local args = {
		[1] = 5
		}
		game:GetService("ReplicatedStorage").Remotes.RebirthRemote:FireServer(unpack(args))
    wait()
else if Rebirths == "15 Rebirths" then
	local args = {
		[1] = 15
		}
		game:GetService("ReplicatedStorage").Remotes.RebirthRemote:FireServer(unpack(args))
	wait()
else if Rebirths == "25 Rebirths" then
	local args = {
		[1] = 25
		}
		game:GetService("ReplicatedStorage").Remotes.RebirthRemote:FireServer(unpack(args))
	wait()
else if Rebirths == "50 Rebirths" then
	local args = {
		[1] = 50
		}
		game:GetService("ReplicatedStorage").Remotes.RebirthRemote:FireServer(unpack(args))
	wait()
else if Rebirths == "75 Rebirths" then
	local args = {
		[1] = 75
		}
		game:GetService("ReplicatedStorage").Remotes.RebirthRemote:FireServer(unpack(args))
	wait()
else if Rebirths == "100 Rebirths" then
	local args = {
		[1] = 100
		}
		game:GetService("ReplicatedStorage").Remotes.RebirthRemote:FireServer(unpack(args))
	wait()
else if Rebirths == "500 Rebirths" then
	local args = {
		[1] = 500
		}
		game:GetService("ReplicatedStorage").Remotes.RebirthRemote:FireServer(unpack(args))
	wait()
else if Rebirths == "1.5k Rebirths" then
	local args = {
		[1] = 1500
		}
		game:GetService("ReplicatedStorage").Remotes.RebirthRemote:FireServer(unpack(args))
	wait()
else if Rebirths == "2.5k Rebirths" then
	local args = {
		[1] = 2500
		}
		game:GetService("ReplicatedStorage").Remotes.RebirthRemote:FireServer(unpack(args))
	wait()
else if Rebirths == "5k Rebirths" then
	local args = {
		[1] = 5000
		}
		game:GetService("ReplicatedStorage").Remotes.RebirthRemote:FireServer(unpack(args))
	wait()
else if Rebirths == "7.5k Rebirths" then
	local args = {
		[1] = 7500
		}
		game:GetService("ReplicatedStorage").Remotes.RebirthRemote:FireServer(unpack(args))
	wait()
else if Rebirths == "10k Rebirths" then
	local args = {
		[1] = 10000
		}
		game:GetService("ReplicatedStorage").Remotes.RebirthRemote:FireServer(unpack(args))
	wait()
else if Rebirths == "50k Rebirths" then
	local args = {
		[1] = 50000
		}
		game:GetService("ReplicatedStorage").Remotes.RebirthRemote:FireServer(unpack(args))
	wait()
else if Rebirths == "150k Rebirths" then
	local args = {
		[1] = 150000
		}
		game:GetService("ReplicatedStorage").Remotes.RebirthRemote:FireServer(unpack(args))
	wait()
else if Rebirths == "250k Rebirths" then
	local args = {
		[1] = 250000
		}
		game:GetService("ReplicatedStorage").Remotes.RebirthRemote:FireServer(unpack(args))
	wait()
else if Rebirths == "500k Rebirths" then
	local args = {
		[1] = 500000
		}
		game:GetService("ReplicatedStorage").Remotes.RebirthRemote:FireServer(unpack(args))
	wait()
else if Rebirths == "750k Rebirths" then
	local args = {
		[1] = 750000
		}
		game:GetService("ReplicatedStorage").Remotes.RebirthRemote:FireServer(unpack(args))
	wait()
else if Rebirths == "1M Rebirths" then
	local args = {
		[1] = 1000000
		}
		game:GetService("ReplicatedStorage").Remotes.RebirthRemote:FireServer(unpack(args))
	wait()
else if Rebirths == "5M Rebirths" then
	local args = {
		[1] = 5000000
		}
		game:GetService("ReplicatedStorage").Remotes.RebirthRemote:FireServer(unpack(args))
	wait()
else if Rebirths == "15M Rebirths" then
	local args = {
		[1] = 15000000
		}
		game:GetService("ReplicatedStorage").Remotes.RebirthRemote:FireServer(unpack(args))
	wait()
else if Rebirths == "25M Rebirths" then
	local args = {
		[1] = 25000000
		}
		game:GetService("ReplicatedStorage").Remotes.RebirthRemote:FireServer(unpack(args))
	wait()
else if Rebirths == "50M Rebirths" then
	local args = {
		[1] = 50000000
		}
		game:GetService("ReplicatedStorage").Remotes.RebirthRemote:FireServer(unpack(args))
	wait()
else if Rebirths == "75M Rebirths" then
	local args = {
		[1] = 75000000
		}
		game:GetService("ReplicatedStorage").Remotes.RebirthRemote:FireServer(unpack(args))
	wait()
else if Rebirths == "100M Rebirths" then
	local args = {
		[1] = 100000000
		}
		game:GetService("ReplicatedStorage").Remotes.RebirthRemote:FireServer(unpack(args))
	wait()
else if Rebirths == "500M Rebirths" then
	local args = {
		[1] = 500000000
		}
		game:GetService("ReplicatedStorage").Remotes.RebirthRemote:FireServer(unpack(args))
	wait()
else if Rebirths == "1.5B Rebirths" then
local args = {
        [1] = 1500000000
         }
        game:GetService("ReplicatedStorage").Remotes.RebirthRemote:FireServer(unpack(args))
    wait()
else if Rebirths == "2.5B Rebirths" then
	local args = {
		[1] = 2500000000
		}
		game:GetService("ReplicatedStorage").Remotes.RebirthRemote:FireServer(unpack(args))
	wait()
else if Rebirths == "5B Rebirths" then
	local args = {
		[1] = 5000000000
		}
		game:GetService("ReplicatedStorage").Remotes.RebirthRemote:FireServer(unpack(args))
	wait()
else if Rebirths == "7.5B Rebirths" then
	local args = {
		[1] = 7500000000
		}
		game:GetService("ReplicatedStorage").Remotes.RebirthRemote:FireServer(unpack(args))
	wait()
else if Rebirths == "10B Rebirths" then
	local args = {
		[1] = 10000000000
		}
		game:GetService("ReplicatedStorage").Remotes.RebirthRemote:FireServer(unpack(args))
	wait()
else if Rebirths == "50B Rebirths" then
	local args = {
		[1] = 50000000000
		}
		game:GetService("ReplicatedStorage").Remotes.RebirthRemote:FireServer(unpack(args))
	wait()
else if Rebirths == "150B Rebirths" then
	local args = {
		[1] = 150000000000
		}
		game:GetService("ReplicatedStorage").Remotes.RebirthRemote:FireServer(unpack(args))
	wait()
else if Rebirths == "250B Rebirths" then
	local args = {
		[1] = 250000000000
		}
		game:GetService("ReplicatedStorage").Remotes.RebirthRemote:FireServer(unpack(args))
	wait()
else if Rebirths == "500B Rebirths" then
	local args = {
		[1] = 500000000000
		}
		game:GetService("ReplicatedStorage").Remotes.RebirthRemote:FireServer(unpack(args))
	wait()
else if Rebirths == "750B Rebirths" then
	local args = {
		[1] = 750000000000
		}
		game:GetService("ReplicatedStorage").Remotes.RebirthRemote:FireServer(unpack(args))
	wait()
else if Rebirths == "1T Rebirths" then
	local args = {
		[1] = 1000000000000
		}
		game:GetService("ReplicatedStorage").Remotes.RebirthRemote:FireServer(unpack(args))
	wait()
else if Rebirths == "5T Rebirths" then
	local args = {
		[1] = 5000000000000
		}
		game:GetService("ReplicatedStorage").Remotes.RebirthRemote:FireServer(unpack(args))
	wait()
else if Rebirths == "100T Rebirths" then
		local args = {
			[1] = 100000000000000
			}
			game:GetService("ReplicatedStorage").Remotes.RebirthRemote:FireServer(unpack(args))
		wait()
	else if Rebirths == "500T Rebirths" then
		local args = {
			[1] = 500000000000000
			}
			game:GetService("ReplicatedStorage").Remotes.RebirthRemote:FireServer(unpack(args))
		wait()
	else if Rebirths == "1Qa Rebirths" then
		local args = {
			[1] = 1000000000000000
			}
			game:GetService("ReplicatedStorage").Remotes.RebirthRemote:FireServer(unpack(args))
		wait()
	else if Rebirths == "5Qa Rebirths" then
		local args = {
			[1] = 5000000000000000
			}
			game:GetService("ReplicatedStorage").Remotes.RebirthRemote:FireServer(unpack(args))
		wait()
	else if Rebirths == "10Qa Rebirths" then
		local args = {
			[1] = 10000000000000000
			}
			game:GetService("ReplicatedStorage").Remotes.RebirthRemote:FireServer(unpack(args))
		wait()
	else if Rebirths == "150Qa Rebirths" then
		local args = {
			[1] = 15000000000000000
			}
			game:GetService("ReplicatedStorage").Remotes.RebirthRemote:FireServer(unpack(args))
		wait()
	else if Rebirths == "500Qa Rebirths" then
		local args = {
			[1] = 50000000000000000
			}
			game:GetService("ReplicatedStorage").Remotes.RebirthRemote:FireServer(unpack(args))
		wait()
	else if Rebirths == "1Qi Rebirths" then
		local args = {
			[1] = 100000000000000000
			}
			game:GetService("ReplicatedStorage").Remotes.RebirthRemote:FireServer(unpack(args))
		wait()
	else if Rebirths == "5Qi Rebirths" then
		local args = {
			[1] = 500000000000000000
			}
			game:GetService("ReplicatedStorage").Remotes.RebirthRemote:FireServer(unpack(args))
		wait()
	else if Rebirths == "10Qi Rebirths" then
		local args = {
			[1] = 1000000000000000000
			}
			game:GetService("ReplicatedStorage").Remotes.RebirthRemote:FireServer(unpack(args))
		wait()
	else if Rebirths == "150Qi Rebirths" then
		local args = {
			[1] = 15000000000000000000
			}
			game:GetService("ReplicatedStorage").Remotes.RebirthRemote:FireServer(unpack(args))
		wait()
	else if Rebirths == "500Qi Rebirths" then
		local args = {
			[1] = 50000000000000000000
			}
			game:GetService("ReplicatedStorage").Remotes.RebirthRemote:FireServer(unpack(args))
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
end
})

Tptab:AddButton({
	Name = "Spawn",
	Callback = function()
		local args = {
			[1] = "world",
			[2] = "Anime Village"
		}
		
		game:GetService("ReplicatedStorage").Remotes.RequestTeleport:InvokeServer(unpack(args))
  	end    
})

Tptab:AddButton({
	Name = "Pirate Docks",
	Callback = function()
		local args = {
			[1] = "world",
			[2] = "Pirate Docks"
		}
		
		game:GetService("ReplicatedStorage").Remotes.RequestTeleport:InvokeServer(unpack(args))
  	end    
})

Tptab:AddButton({
	Name = "Purple Forest",
	Callback = function()
		local args = {
			[1] = "world",
			[2] = "Purple Forest"
		}
		
		game:GetService("ReplicatedStorage").Remotes.RequestTeleport:InvokeServer(unpack(args))
  	end    
})

Tptab:AddButton({
	Name = "Shinobi Village",
	Callback = function()
local args = {
    [1] = "world",
    [2] = "Shinobi Village"
}

game:GetService("ReplicatedStorage").Remotes.RequestTeleport:InvokeServer(unpack(args))

  	end    
})

Tptab:AddButton({
	Name = "Spirit Society",
	Callback = function()
local args = {
    [1] = "world",
    [2] = "Spirit Society"
}
game:GetService("ReplicatedStorage").Remotes.RequestTeleport:InvokeServer(unpack(args))

  	end    
})

Tptab:AddButton({
	Name = "Walled City",
	Callback = function()

local args = {
    [1] = "world",
    [2] = "Walled City"
}

game:GetService("ReplicatedStorage").Remotes.RequestTeleport:InvokeServer(unpack(args))
end    
})

Tptab:AddButton({
	Name = "Narmek",
	Callback = function()

		local args = {
			[1] = "world",
			[2] = "Narmek"
		}
game:GetService("ReplicatedStorage").Remotes.RequestTeleport:InvokeServer(unpack(args))
end    
})

Tptab:AddButton({
	Name = "Hero Academy",
	Callback = function()
		local args = {
			[1] = "world",
            [2] = "Hero Academy"
        }	
game:GetService("ReplicatedStorage").Remotes.RequestTeleport:InvokeServer(unpack(args))
end    
})

Tptab:AddButton({
	Name = "Stand City",
	Callback = function()
		local args = {
			[1] = "world",
			[2] = "Stand City"
		}
game:GetService("ReplicatedStorage").Remotes.RequestTeleport:InvokeServer(unpack(args))
end    
})

Tptab:AddButton({
	Name = "Hunter Kingdom",
	Callback = function()
local args = {
    [1] = "world",
    [2] = "Hunter Kingdom"
}
game:GetService("ReplicatedStorage").Remotes.RequestTeleport:InvokeServer(unpack(args))
end    
})

Tptab:AddButton({
	Name = "Jiu Jitsu Sewers",
	Callback = function()
local args = {
    [1] = "world",
    [2] = "Jiu Jitsu Sewers"
}
game:GetService("ReplicatedStorage").Remotes.RequestTeleport:InvokeServer(unpack(args))
end})


Eggtab:AddDropdown({
	Rebirths;
   Name = "Chose Egg To Open",
   Default = "Dragon Star",
   Options = {"Dragon Star", "Demon Star", "Pirate Star", "Long Nose Star", "Slayer Star", "Nine Tailed Star", "Spirit Star", "Walled Star", "Narmekian Star", "Freezie Star", "Quirky Star", "Crazy Star", "Hunter Star" , "Chima King Star", "Fighting Star"},
   Callback = function(value)
	Eggs = value;
   end
})

Eggtab:AddToggle({
   Name = "Auto Eggs",
   Default = false,
   Callback = function(v)
	   getgenv().autoegg = v
	   while true do
		   if not getgenv().autoegg then return end

if Eggs == "Dragon Star" then
local args = {
    [1] = "Dragon Star",
    [2] = false,
    [3] = false
}
game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))
wait(0.1)
else if Eggs == "Demon Star" then
local args = {
    [1] = "Demon Star",
    [2] = false,
    [3] = false
}
game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))
wait(0.1)
else if Eggs == "Pirate Star" then
local args = {
    [1] = "Pirate Star",
    [2] = false,
    [3] = false
}
game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))
wait(0.1)
else if Eggs == "Walled Star" then
	local args = {
		[1] = "Walled Star",
		[2] = false,
		[3] = false
	}
game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))
wait(0.1)
else if Eggs == "Freezie Star" then
local args = {
    [1] = "Freezie Star",
    [2] = false,
    [3] = false
}

game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))

	wait(0.1)
else if Eggs == "Long Nose Star" then
local args = {
    [1] = "Long Nose Star",
    [2] = false,
    [3] = false
}
game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))
wait(0.1)
else if Eggs == "Spirit Star" then
local args = {
    [1] = "Spirit Star",
    [2] = false,
    [3] = false
}
game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))
wait(0.1)
else if Eggs == "Nine Tailed Star" then

wait(0.1)
else if Eggs == "Slayer Star" then
local args = {
    [1] = "Slayer Star",
    [2] = false,
    [3] = false
}
game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))
wait(0.1)
else if Eggs == "Narmekian Star" then
local args = {
    [1] = "Narmekian Star",
    [2] = false,
    [3] = false
}
game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))
wait(0.1)
else if Eggs == "Quirky Star" then
local args = {
    [1] = "Quirky Star",
    [2] = false,
    [3] = false
}
game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args)).
wait(0.1)
else if Eggs == "Crazy Star" then
local args = {
    [1] = "Crazy Star",
    [2] = false,
    [3] = false
}
game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))
wait(0.1)
else if Eggs == "Hunter Star" then
local args = {
    [1] = "Hunter Star",
    [2] = false,
    [3] = false
}
game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))
wait(0.1)
else if Eggs == "Chima King Star" then
local args = {
    [1] = "Chima King Star",
    [2] = false,
    [3] = false
}
game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))
wait(0.1)
else if Eggs == "Fighting Star" then
local args = {
    [1] = "Fighting Star",
    [2] = false,
    [3] = false
}
game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))
wait(0.1)
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
