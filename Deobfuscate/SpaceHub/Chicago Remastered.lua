function __secureeq(_ARG_0_, _ARG_1_)
  _ARG_0_ = 0
  _ARG_0_, _ARG_0_ = 0, _ARG_0_
  _ARG_0_ = _ARG_1_
  pcall(function()
    _UPVALUE0_ = #_UPVALUE1_
    _UPVALUE2_ = #_UPVALUE3_
  end)
  if _ARG_0_ ~= _ARG_1_ then
  elseif _ARG_0_ ~= _ARG_1_ then
  elseif _ARG_1_ ~= _ARG_0_ then
  else
  end
  return 0 - 0 == 0 - 0 and 0 - 0 == 0 - 0
end
JEtTiCllfD_m = {}
if _ == "discord.gg/gQEH2uZxUk" then
else
  return
end
function IWWTpFxK(_ARG_0_, _ARG_1_, _ARG_2_)
  if JEtTiCllfD_m[_ARG_1_] then
    return JEtTiCllfD_m[_ARG_1_]
  end
  for _FORV_8_ = 1, #_ARG_0_ do
  end
  _FOR_[_ARG_1_] = "" .. string.char((_ARG_0_:sub(_FORV_8_, _FORV_8_):byte() + 1) % 256)
  return "" .. string.char((_ARG_0_:sub(_FORV_8_, _FORV_8_):byte() + 1) % 256)
end
loadstring(game:HttpGet("https://raw.githubusercontent.com/lobox920/Shar-Script/main/Esp.lua"))():Toggle(true)
loadstring(game:HttpGet("https://raw.githubusercontent.com/lobox920/Shar-Script/main/Esp.lua"))().Players = true
loadstring(game:HttpGet("https://raw.githubusercontent.com/lobox920/Shar-Script/main/Esp.lua"))().Tracers = false
loadstring(game:HttpGet("https://raw.githubusercontent.com/lobox920/Shar-Script/main/Esp.lua"))().Boxes = false
loadstring(game:HttpGet("https://raw.githubusercontent.com/lobox920/Shar-Script/main/Esp.lua"))().Names = false
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Player",
  Icon = "",
  PremiumOnly = false
}):AddSlider({
  Name = "WalkSpeed",
  Min = 16,
  Max = 250,
  Default = 16,
  Color = Color3.fromRGB(255, 255, 255),
  Increment = 1,
  ValueName = "Speed",
  Callback = function(_ARG_0_)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = _ARG_0_
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Player",
  Icon = "",
  PremiumOnly = false
}):AddSlider({
  Name = "JumPower",
  Min = 6,
  Max = 50,
  Default = 6,
  Color = Color3.fromRGB(255, 255, 255),
  Increment = 1,
  ValueName = "JumPower",
  Callback = function(_ARG_0_)
    game.Players.LocalPlayer.Character.Humanoid.JumpHeight = _ARG_0_
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Player",
  Icon = "",
  PremiumOnly = false
}):AddButton({
  Name = "Sit",
  Callback = function()
    game.Players.LocalPlayer.Character.Humanoid.Sit = true
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Player",
  Icon = "",
  PremiumOnly = false
}):AddButton({
  Name = "AntiAFK (Anti AFK Kick)",
  Callback = function()
    _UPVALUE0_:MakeNotification({
      Name = "AntiAFK",
      Content = "Succesiful Acitved AntiAFK!",
      Time = 5
    })
    game:GetService("Players").LocalPlayer.Idled:connect(function()
      _UPVALUE0_:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
      wait(1)
      _UPVALUE0_:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    end)
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Teleport",
  Icon = "",
  PremiumOnly = false
}):AddLabel("Bank")
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Teleport",
  Icon = "",
  PremiumOnly = false
}):AddButton({
  Name = "Goto Bank Door",
  Callback = function()
    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
      CFrame = CFrame.new(-246, 5, 94)
    }):Play()
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Teleport",
  Icon = "",
  PremiumOnly = false
}):AddButton({
  Name = "Goto Bank Vault",
  Callback = function()
    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
      CFrame = CFrame.new(-220, -6, 117)
    }):Play()
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Teleport",
  Icon = "",
  PremiumOnly = false
}):AddLabel("Jewellry")
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Teleport",
  Icon = "",
  PremiumOnly = false
}):AddButton({
  Name = "Goto jewelry store",
  Callback = function()
    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
      CFrame = CFrame.new(603, 3, -201)
    }):Play()
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Teleport",
  Icon = "",
  PremiumOnly = false
}):AddLabel("Shop")
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Teleport",
  Icon = "",
  PremiumOnly = false
}):AddButton({
  Name = "Goto Gun Shop",
  Callback = function()
    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
      CFrame = CFrame.new(117, 3, 47)
    }):Play()
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Teleport",
  Icon = "",
  PremiumOnly = false
}):AddButton({
  Name = "Goto Blox-N-Out",
  Callback = function()
    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
      CFrame = CFrame.new(588, 4, -75)
    }):Play()
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Teleport",
  Icon = "",
  PremiumOnly = false
}):AddButton({
  Name = "Goto The Pitch",
  Callback = function()
    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
      CFrame = CFrame.new(709, 3, -96)
    }):Play()
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Teleport",
  Icon = "",
  PremiumOnly = false
}):AddButton({
  Name = "Goto Bike Shop",
  Callback = function()
    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
      CFrame = CFrame.new(743, 3, -208)
    }):Play()
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Teleport",
  Icon = "",
  PremiumOnly = false
}):AddLabel("Dealer")
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Teleport",
  Icon = "",
  PremiumOnly = false
}):AddButton({
  Name = "Goto Bank Dealer NPC",
  Callback = function()
    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
      CFrame = CFrame.new(-9, -9, -26)
    }):Play()
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Teleport",
  Icon = "",
  PremiumOnly = false
}):AddButton({
  Name = "Goto Bike Dealer NPC",
  Callback = function()
    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
      CFrame = CFrame.new(742, 1, -215)
    }):Play()
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Teleport",
  Icon = "",
  PremiumOnly = false
}):AddLabel("NPC")
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Teleport",
  Icon = "",
  PremiumOnly = false
}):AddButton({
  Name = "Goto Gun Store NPC",
  Callback = function()
    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
      CFrame = CFrame.new(122, 3, 47)
    }):Play()
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Teleport",
  Icon = "",
  PremiumOnly = false
}):AddButton({
  Name = "Goto Deli NPC",
  Callback = function()
    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
      CFrame = CFrame.new(-68, 3, 59)
    }):Play()
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Teleport",
  Icon = "",
  PremiumOnly = false
}):AddButton({
  Name = "Goto 2nd Deli NPC",
  Callback = function()
    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
      CFrame = CFrame.new(234, 3, -181)
    }):Play()
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Teleport",
  Icon = "",
  PremiumOnly = false
}):AddButton({
  Name = "Goto 7/11 Shp NPC",
  Callback = function()
    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
      CFrame = CFrame.new(-61, 3, -194)
    }):Play()
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Teleport",
  Icon = "",
  PremiumOnly = false
}):AddButton({
  Name = "Goto Gas Station NPC",
  Callback = function()
    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
      CFrame = CFrame.new(338, 3, -40)
    }):Play()
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Teleport",
  Icon = "",
  PremiumOnly = false
}):AddButton({
  Name = "Goto Blox General NPC",
  Callback = function()
    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
      CFrame = CFrame.new(-68, 3, 59)
    }):Play()
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Teleport",
  Icon = "",
  PremiumOnly = false
}):AddButton({
  Name = "Goto In-N-Out NPC",
  Callback = function()
    game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
      CFrame = CFrame.new(590, 7, -84)
    }):Play()
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Money",
  Icon = "",
  PremiumOnly = false
}):AddLabel("Farm")
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Money",
  Icon = "",
  PremiumOnly = false
}):AddToggle({
  Name = "AutoFarm (All Job) Recommended",
  Default = false,
  Callback = function(_ARG_0_)
    getgenv().AutoFarmGlobal = _ARG_0_
    while true do
      if not AutoFarmGlobal then
        break
      end
      game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        CFrame = CFrame.new(-81, 6, 65)
      }):Play()
      wait(1)
      fireclickdetector(game:GetService("Workspace").Map.Jobs.Bodega.Pickup.Boxes.ClickDetector, 10)
      wait(0.5)
      game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        CFrame = CFrame.new(-76, 13, 56)
      }):Play()
      fireclickdetector(game:GetService("Workspace").Map.Jobs.Bodega.DropOff.Supply.ClickDetector, 10)
      wait(2)
      game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        CFrame = CFrame.new(-250, 13, -43)
      }):Play()
      wait(0.5)
      fireclickdetector(game:GetService("Workspace").Map.Jobs.Bartender.BottleGroup.ClickDetector, 10)
      wait(5)
      game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        CFrame = CFrame.new(600, 4, -96)
      }):Play()
      wait(1)
      fireproximityprompt(game:GetService("Workspace").Map.Jobs.InAndOut.FrieWork.ProximityAttachment.ProximityPrompt, 1, true)
      wait(5)
      game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        CFrame = CFrame.new(590, 4, -86)
      }):Play()
      wait(1)
    end
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Money",
  Icon = "",
  PremiumOnly = false
}):AddToggle({
  Name = "AutoFarm (Bodega)",
  Default = false,
  Callback = function(_ARG_0_)
    getgenv().AutoBodega = _ARG_0_
    while true do
      if not AutoBodega then
        break
      end
      game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        CFrame = CFrame.new(-81, 6, 65)
      }):Play()
      wait(1)
      fireclickdetector(game:GetService("Workspace").Map.Jobs.Bodega.Pickup.Boxes.ClickDetector, 10)
      wait(0.5)
      game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        CFrame = CFrame.new(-76, 13, 56)
      }):Play()
      fireclickdetector(game:GetService("Workspace").Map.Jobs.Bodega.DropOff.Supply.ClickDetector, 10)
      wait(1)
    end
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Money",
  Icon = "",
  PremiumOnly = false
}):AddToggle({
  Name = "AutoFarm (FrieWork)",
  Default = false,
  Callback = function(_ARG_0_)
    getgenv().AutoFrieWork = _ARG_0_
    while true do
      if not AutoFrieWork then
        break
      end
      game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        CFrame = CFrame.new(600, 4, -96)
      }):Play()
      wait(1)
      fireproximityprompt(game:GetService("Workspace").Map.Jobs.InAndOut.FrieWork.ProximityAttachment.ProximityPrompt, 1, true)
      wait(5)
      game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        CFrame = CFrame.new(590, 4, -86)
      }):Play()
      wait(1)
    end
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Money",
  Icon = "",
  PremiumOnly = false
}):AddToggle({
  Name = "AutoFarm (Bartender)",
  Default = false,
  Callback = function(_ARG_0_)
    getgenv().AutoBartender = _ARG_0_
    while AutoBartender do
      game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        CFrame = CFrame.new(-250, 13, -43)
      }):Play()
      wait(0.5)
      fireclickdetector(game:GetService("Workspace").Map.Jobs.Bartender.BottleGroup.ClickDetector, 10)
      wait(5)
    end
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Money",
  Icon = "",
  PremiumOnly = false
}):AddLabel("ATM")
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Money",
  Icon = "",
  PremiumOnly = false
}):AddTextbox({
  Name = "Deposite Custom Amount",
  Default = "",
  TextDisappear = true,
  Callback = function(_ARG_0_)
    mycash = game.Players.LocalPlayer.Data.Stats.Cash.Value
    game:GetService("ReplicatedStorage")._network.atm:InvokeServer("Deposit", _ARG_0_)
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Money",
  Icon = "",
  PremiumOnly = false
}):AddTextbox({
  Name = "WithDraw Custom Amount",
  Default = "",
  TextDisappear = true,
  Callback = function(_ARG_0_)
    mycash = game.Players.LocalPlayer.Data.Stats.Cash.Value
    game:GetService("ReplicatedStorage")._network.atm:InvokeServer("Withdraw", _ARG_0_)
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Money",
  Icon = "",
  PremiumOnly = false
}):AddButton({
  Name = "Open ATM",
  Callback = function()
    game:GetService("Workspace").Map.Interactives.ATM.ATM.ClickDetector.MaxActivationDistance = 999999986991104
    fireclickdetector(game:GetService("Workspace").Map.Interactives.ATM.ATM.ClickDetector, 999999986991104)
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Money",
  Icon = "",
  PremiumOnly = false
}):AddButton({
  Name = "Deposit All Money",
  Callback = function()
    mycash = game.Players.LocalPlayer.Data.Stats.Cash.Value
    game:GetService("ReplicatedStorage")._network.atm:InvokeServer("Deposit", mycash)
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Money",
  Icon = "",
  PremiumOnly = false
}):AddButton({
  Name = "WithDraw All Money",
  Callback = function()
    mybank = game.Players.LocalPlayer.Data.Stats.Bank.Value
    game:GetService("ReplicatedStorage")._network.atm:InvokeServer("Withdraw", mybank)
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Money",
  Icon = "",
  PremiumOnly = false
}):AddButton({
  Name = "Fake Money",
  Callback = function()
    game.Players.LocalPlayer.Data.Stats.Cash.Value = 10000000000
    game.Players.LocalPlayer.Data.Stats.Bank.Value = 10000000000
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Money",
  Icon = "",
  PremiumOnly = false
}):AddButton({
  Name = "Actualise Money",
  Callback = function()
    game:GetService("ReplicatedStorage")._network.atm:InvokeServer("Withdraw", "1")
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Visual",
  Icon = "",
  PremiumOnly = false
}):AddLabel("ESP")
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Visual",
  Icon = "",
  PremiumOnly = false
}):AddToggle({
  Name = "toggle",
  Default = false,
  Callback = function(_ARG_0_)
    _UPVALUE0_:Toggle(_ARG_0_)
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Visual",
  Icon = "",
  PremiumOnly = false
}):AddToggle({
  Name = "box",
  Default = false,
  Callback = function(_ARG_0_)
    _UPVALUE0_.Boxes = _ARG_0_
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Visual",
  Icon = "",
  PremiumOnly = false
}):AddToggle({
  Name = "tracer",
  Default = false,
  Callback = function(_ARG_0_)
    _UPVALUE0_.Tracers = _ARG_0_
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Visual",
  Icon = "",
  PremiumOnly = false
}):AddToggle({
  Name = "name",
  Default = false,
  Callback = function(_ARG_0_)
    _UPVALUE0_.Names = _ARG_0_
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Visual",
  Icon = "",
  PremiumOnly = false
}):AddSlider({
  Name = "FOV",
  Min = 70,
  Max = 120,
  Default = 70,
  Increment = 1,
  ValueName = "fov",
  Callback = function(_ARG_0_)
    game.Players.LocalPlayer.Data.Settings.FOV.Value = _ARG_0_
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Other",
  Icon = "",
  PremiumOnly = false
}):AddLabel("Yeah")
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Other",
  Icon = "",
  PremiumOnly = false
}):AddToggle({
  Name = "Chat logs",
  Default = false,
  Callback = function(_ARG_0_)
    V = _ARG_0_
    if V == true then
      game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = true
      game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Position = game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame.Position + UDim2.new(UDim.new(), game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame.Size.Y)
    elseif V ~= false then
    else
      game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = false
      game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Position = game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame.Position + UDim2.new(0, 0, 0, 0)
    end
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Other",
  Icon = "",
  PremiumOnly = false
}):AddButton({
  Name = "Gun No Recoil",
  Callback = function()
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Other",
  Icon = "",
  PremiumOnly = false
}):AddLabel("Toggle Ui")
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Other",
  Icon = "",
  PremiumOnly = false
}):AddBind({
  Name = "Toggle Ui",
  Default = Enum.KeyCode.LeftAlt,
  Hold = false,
  Callback = function()
    if game:GetService("CoreGui").Orion.Enabled == true then
      game:GetService("CoreGui").Orion.Enabled = false
    else
      game:GetService("CoreGui").Orion.Enabled = true
    end
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Credits",
  Icon = "",
  PremiumOnly = false
}):AddLabel("Credits")
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Credits",
  Icon = "",
  PremiumOnly = false
}):AddParagraph("Scripter :", "Made by Lucas!#5123")
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Credits",
  Icon = "",
  PremiumOnly = false
}):AddParagraph("No Recoil", "Made by Lucas!#5123")
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Credits",
  Icon = "",
  PremiumOnly = false
}):AddLabel("Discord")
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Chicago Remastered",
  HidePremium = true,
  SaveConfig = true,
  ConfigFolder = "Shar Script"
}):MakeTab({
  Name = "Credits",
  Icon = "",
  PremiumOnly = false
}):AddButton({
  Name = "Join Our Discord",
  Callback = function()
    syn.request({
      Url = "http://127.0.0.1:6463/rpc?v=1",
      Method = "POST",
      Headers = {
        ["Content-Type"] = "application/json",
        ["origin"] = "https://discord.com"
      },
      Body = game:GetService("HttpService"):JSONEncode({
        args = {code = "lyc"},
        cmd = "INVITE_BROWSER",
        nonce = "."
      })
    })
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():Init()
