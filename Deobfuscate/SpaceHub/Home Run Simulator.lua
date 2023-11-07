--// Decompiled Code. 
--SCRIPT
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Home Run Simulator | Space Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "spacehubhomerunsim"})
local farm = Window:MakeTab({
	Name = "Autofarm",
	Icon = "rbxassetid://4370226511",
	PremiumOnly = false
})
farm:AddButton({
	Name = "Autohit",
	Callback = function()
        while true do
        local args = {
            [1] = 100
        }
        
        game:GetService("ReplicatedStorage").RF.Launch_Ball:InvokeServer(unpack(args))
        wait(2)
    end
  	end    
})
farm:AddButton({
	Name = "Hit Once",
	Callback = function()
        local args = {
            [1] = 100
        }
        
        game:GetService("ReplicatedStorage").RF.Launch_Ball:InvokeServer(unpack(args))
  	end    
})
farm:AddButton({
	Name = "Rejoin",
	Callback = function()
        game:GetService("TeleportService"):Teleport(9598746251, LocalPlayer)
  	end    
})

local money = Window:MakeTab({
	Name = "Money",
	Icon = "rbxassetid://4400700509",
	PremiumOnly = false
})
money:AddButton({
	Name = "Upgrade Strength",
	Callback = function()
        local args = {
            [1] = "Strength",
            [2] = 1
        }
        
        game:GetService("ReplicatedStorage").RF.Upgrade_Attribute:InvokeServer(unpack(args))
  	end    
})
money:AddButton({
	Name = "Upgrade Accuracy",
	Callback = function()
        local args = {
            [1] = "Accuracy",
            [2] = 1
        }
        
        game:GetService("ReplicatedStorage").RF.Upgrade_Attribute:InvokeServer(unpack(args))
  	end    
})
money:AddButton({
	Name = "Upgrade Speed",
	Callback = function()
        local args = {
            [1] = "Speed",
            [2] = 1
        }
        
        game:GetService("ReplicatedStorage").RF.Upgrade_Attribute:InvokeServer(unpack(args))
  	end    
})
money:AddButton({
	Name = "Redeem All Rewards",
	Callback = function()
        game:GetService("ReplicatedStorage").RF.Redeem_Free_Reward:InvokeServer()
  	end    
})

local tps = Window:MakeTab({
	Name = "Teleports",
	Icon = "rbxassetid://4483363527",
	PremiumOnly = false
})
tps:AddButton({
	Name = "Ctrl Click Teleport",
	Callback = function()
        loadstring(game:HttpGet('https://pastebin.com/raw/RXdkiui5'))()
  	end    
})
tps:AddButton({
	Name = "Teleport To Spawn",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-390.63812255859375, 6.85319185256958, -563.5621948242188)
  	end    
})
tps:AddButton({
	Name = "Teleport To The Shop",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-228.69815063476562, 18.202177047729492, -689.8829956054688)
  	end    
})
tps:AddButton({
	Name = "Teleport To The Customize Area",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-514.9210815429688, 7.236985206604004, -481.9554138183594)
  	end    
})
tps:AddButton({
	Name = "Teleport To The Rebirth Area",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-291.646240234375, 6.843192100524902, -553.9754028320312)
  	end    
})
tps:AddButton({
	Name = "Teleport To The Leaderboards",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-388.48602294921875, 6.8431925773620605, -449.16473388671875)
  	end    
})
      tps:AddButton({
        Name = "Teleport To The Teleport Cannon",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-325.521240234375, 6.843192100524902, -496.5550231933594)
          end   
        })
        tps:AddButton({
            Name = "Teleport Out Of The Park",
            Callback = function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-468.73907470703125, 325.05267333984375, -996.8018188476562)
              end   
            })
            tps:AddButton({
                Name = "Teleport To The King Of The Hill Island",
                Callback = function()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(401.0540771484375, 182.78060913085938, -114.544921875)
                  end   
                })


                local uni = Window:MakeTab({
                    Name = "Universal",
                    Icon = "rbxassetid://2790563658",
                    PremiumOnly = false
                })
                
                uni:AddButton({
                    Name = "Load Space Hub Universal",
                    Callback = function()
                        OrionLib:MakeNotification({
                            Name = "Space Hub",
                            Content = "Space Hub Universal Is Loading!",
                            Image = "rbxassetid://2790563658",
                            Time = 5
                        })
                        loadstring(game:HttpGet(("https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/spacehubuniversal.lua")))()
                    end   
                    })  


local credits = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://3610247188",
	PremiumOnly = false
})



OrionLib:MakeNotification({
	Name = "Space Hub",
	Content = "Space Hub Has Loaded!",
	Image = "rbxassetid://4483345998",
	Time = 5
})
credits:AddLabel("Scripter: Lucas!#5123")
credits:AddLabel("Our Server: discord.gg/lyc")
credits:AddButton({
    Name = "Copy Discord Link",
    Callback = function()
       setclipboard("https://discord.gg/lyc")
       OrionLib:MakeNotification({
        Name = "Space Hub",
        Content = "Link Has Been Copied To Clipboard",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
      end   
    })

--local args = {
    [1] = "Forest_Wall"
--}

--game:GetService("ReplicatedStorage").RF.Unlock_Map:InvokeServer(unpack(args))







