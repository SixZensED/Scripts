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
  return 0 - 0 == 0 - 0 and 0 - 0 == 0 - 0 and true or 0 - 0
end
J_fsXhxLjRqe = {}
if _ ~= "discord.gg/gQEH2uZxUk" then
  return
end
function vKyvYAzg(_ARG_0_, _ARG_1_, _ARG_2_)
  if J_fsXhxLjRqe[_ARG_1_] then
    return J_fsXhxLjRqe[_ARG_1_]
  end
  for _FORV_8_ = 1, #_ARG_0_ do
  end
  _FOR_[_ARG_1_] = "" .. string.char((_ARG_0_:sub(_FORV_8_, _FORV_8_):byte() + 1) % 256)
  return "" .. string.char((_ARG_0_:sub(_FORV_8_, _FORV_8_):byte() + 1) % 256)
end
loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))():Toggle(false)
loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))().Players = false
loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))().Tracers = false
loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))().Boxes = false
loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))().Names = false
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Raise a Floppa",
  HidePremium = true,
  SaveConfig = _G.configEnabled,
  ConfigFolder = "garfieldwarez"
}):MakeTab({
  Name = "Visuals",
  Icon = "rbxassetid://6031763426",
  PremiumOnly = false
}):AddLabel("ESP Settings")
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Raise a Floppa",
  HidePremium = true,
  SaveConfig = _G.configEnabled,
  ConfigFolder = "garfieldwarez"
}):MakeTab({
  Name = "Visuals",
  Icon = "rbxassetid://6031763426",
  PremiumOnly = false
}):AddToggle({
  Name = "ESP",
  Default = true,
  Save = true,
  Flag = "toggle1",
  Callback = function(_ARG_0_)
    _UPVALUE0_:Toggle(_ARG_0_)
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Raise a Floppa",
  HidePremium = true,
  SaveConfig = _G.configEnabled,
  ConfigFolder = "garfieldwarez"
}):MakeTab({
  Name = "Visuals",
  Icon = "rbxassetid://6031763426",
  PremiumOnly = false
}):AddToggle({
  Name = "Boxes",
  Default = false,
  Save = true,
  Flag = "toggle2",
  Callback = function(_ARG_0_)
    _UPVALUE0_.Boxes = _ARG_0_
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Raise a Floppa",
  HidePremium = true,
  SaveConfig = _G.configEnabled,
  ConfigFolder = "garfieldwarez"
}):MakeTab({
  Name = "Visuals",
  Icon = "rbxassetid://6031763426",
  PremiumOnly = false
}):AddToggle({
  Name = "Nametags",
  Default = false,
  Save = true,
  Flag = "toggle3",
  Callback = function(_ARG_0_)
    _UPVALUE0_.Names = _ARG_0_
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Raise a Floppa",
  HidePremium = true,
  SaveConfig = _G.configEnabled,
  ConfigFolder = "garfieldwarez"
}):MakeTab({
  Name = "Visuals",
  Icon = "rbxassetid://6031763426",
  PremiumOnly = false
}):AddToggle({
  Name = "Tracers",
  Default = false,
  Save = true,
  Flag = "toggle4",
  Callback = function(_ARG_0_)
    _UPVALUE0_.Tracers = _ARG_0_
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Raise a Floppa",
  HidePremium = true,
  SaveConfig = _G.configEnabled,
  ConfigFolder = "garfieldwarez"
}):MakeTab({
  Name = "Visuals",
  Icon = "rbxassetid://6031763426",
  PremiumOnly = false
}):AddLabel("ESP Targets")
loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))():AddObjectListener(game:GetService("Workspace"), {
  Name = "Floppa",
  PrimaryPart = function(_ARG_0_)
    while not _ARG_0_:FindFirstChild("HumanoidRootPart") do
      task.wait()
    end
    return (_ARG_0_:FindFirstChild("HumanoidRootPart"))
  end,
  Validator = function(_ARG_0_)
    if not _ARG_0_:IsA("Model") then
    else
      do return true end
      break
    end
    return false
  end,
  CustomName = "Floppa",
  Color = Color3.fromRGB(101, 255, 122),
  IsEnabled = "floppaESP"
})
loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))():AddObjectListener(game:GetService("Workspace").Backrooms, {
  Name = "???",
  PrimaryPart = function(_ARG_0_)
    while true do
      if _ARG_0_:FindFirstChild("HumanoidRootPart") then
        break
      end
      task.wait()
    end
    return (_ARG_0_:FindFirstChild("HumanoidRootPart"))
  end,
  Validator = function(_ARG_0_)
    if _ARG_0_:IsA("Model") then
      return true
    else
      return false
    end
  end,
  CustomName = "Bingus",
  Color = Color3.fromRGB(255, 0, 0),
  IsEnabled = "bingusESP"
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Raise a Floppa",
  HidePremium = true,
  SaveConfig = _G.configEnabled,
  ConfigFolder = "garfieldwarez"
}):MakeTab({
  Name = "Visuals",
  Icon = "rbxassetid://6031763426",
  PremiumOnly = false
}):AddToggle({
  Name = "Bingus",
  Default = false,
  Save = true,
  Flag = "toggle5",
  Callback = function(_ARG_0_)
    _UPVALUE0_.bingusESP = _ARG_0_
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Raise a Floppa",
  HidePremium = true,
  SaveConfig = _G.configEnabled,
  ConfigFolder = "garfieldwarez"
}):MakeTab({
  Name = "Visuals",
  Icon = "rbxassetid://6031763426",
  PremiumOnly = false
}):AddToggle({
  Name = "Floppa",
  Default = false,
  Save = true,
  Flag = "toggle6",
  Callback = function(_ARG_0_)
    _UPVALUE0_.floppaESP = _ARG_0_
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Raise a Floppa",
  HidePremium = true,
  SaveConfig = _G.configEnabled,
  ConfigFolder = "garfieldwarez"
}):MakeTab({
  Name = "Main",
  Icon = "rbxassetid://6031265971",
  PremiumOnly = false
}):AddLabel("Automation")
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Raise a Floppa",
  HidePremium = true,
  SaveConfig = _G.configEnabled,
  ConfigFolder = "garfieldwarez"
}):MakeTab({
  Name = "Main",
  Icon = "rbxassetid://6031265971",
  PremiumOnly = false
}):AddButton({
  Name = "Save game",
  Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-81.27365112304688, 7.799998760223389, -24.59555435180664)
    lookDown()
    task.wait(0.3)
    fireproximityprompt(game:GetService("Workspace")["Floppy Disk"].ProximityPrompt, 1, true)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Raise a Floppa",
  HidePremium = true,
  SaveConfig = _G.configEnabled,
  ConfigFolder = "garfieldwarez"
}):MakeTab({
  Name = "Main",
  Icon = "rbxassetid://6031265971",
  PremiumOnly = false
}):AddButton({
  Name = "Collect all money",
  Callback = function()
    for _FORV_3_, _FORV_4_ in pairs(game.Workspace:GetDescendants()), game.Workspace:GetDescendants() do
      if _FORV_4_.Name ~= "Money" then
      elseif not _FORV_4_:IsA("MeshPart") then
      else
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, _FORV_4_, 0)
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, _FORV_4_, 1)
      end
    end
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Raise a Floppa",
  HidePremium = true,
  SaveConfig = _G.configEnabled,
  ConfigFolder = "garfieldwarez"
}):MakeTab({
  Name = "Main",
  Icon = "rbxassetid://6031265971",
  PremiumOnly = false
}):AddButton({
  Name = "Forage All Mushrooms",
  Callback = function()
    if game.Workspace:FindFirstChild("Mushroom", true) then
      for _FORV_3_, _FORV_4_ in pairs(game.Workspace:GetDescendants()), game.Workspace:GetDescendants() do
        if _FORV_4_.Name ~= "Mushroom" then
        elseif _FORV_4_:IsA("MeshPart") then
          lookDown()
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = _FORV_4_.CFrame
          task.wait(0.3)
          fireproximityprompt(_FORV_4_.ForagePrompt, 1, true)
          task.wait(0.3)
        end
      end
    else
      _UPVALUE0_:MakeNotification({
        Name = "Space Hub",
        Content = "Outdoor not unlocked yet",
        Image = "rbxassetid://6031071053",
        Time = 5
      })
    end
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Raise a Floppa",
  HidePremium = true,
  SaveConfig = _G.configEnabled,
  ConfigFolder = "garfieldwarez"
}):MakeTab({
  Name = "Main",
  Icon = "rbxassetid://6031265971",
  PremiumOnly = false
}):AddToggle({
  Name = "Auto press floppa",
  Default = false,
  Save = true,
  Flag = "toggle7",
  Callback = function(_ARG_0_)
    shared.floppapress = _ARG_0_
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Raise a Floppa",
  HidePremium = true,
  SaveConfig = _G.configEnabled,
  ConfigFolder = "garfieldwarez"
}):MakeTab({
  Name = "Main",
  Icon = "rbxassetid://6031265971",
  PremiumOnly = false
}):AddToggle({
  Name = "Auto collect money",
  Default = false,
  Save = true,
  Flag = "toggle8",
  Callback = function(_ARG_0_)
    if not firstgate then
    elseif _ARG_0_ then
      for _FORV_4_, _FORV_5_ in pairs(game.Workspace:GetDescendants()) do
        if _FORV_5_.Name ~= "Money" then
        elseif _FORV_5_:IsA("MeshPart") then
          firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, _FORV_5_, 0)
          firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, _FORV_5_, 1)
        end
      end
      _UPVALUE0_ = game.Workspace.ChildAdded:Connect(function(_ARG_0_)
        if _ARG_0_.Name ~= "Money" or not _ARG_0_:IsA("MeshPart") then
        else
          firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, _ARG_0_, 0)
          firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, _ARG_0_, 1)
        end
      end)
    else
      _UPVALUE0_:Disconnect()
    end
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Raise a Floppa",
  HidePremium = true,
  SaveConfig = _G.configEnabled,
  ConfigFolder = "garfieldwarez"
}):MakeTab({
  Name = "Main",
  Icon = "rbxassetid://6031265971",
  PremiumOnly = false
}):AddLabel("Shops / Teleports")
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Raise a Floppa",
  HidePremium = true,
  SaveConfig = _G.configEnabled,
  ConfigFolder = "garfieldwarez"
}):MakeTab({
  Name = "Main",
  Icon = "rbxassetid://6031265971",
  PremiumOnly = false
}):AddButton({
  Name = "Backrooms shop",
  Callback = function()
    lookDown()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Backrooms.PC.CFrame
    task.wait(0.3)
    fireproximityprompt(game:GetService("Workspace").Backrooms.PC.ProximityPrompt, 1, true)
    task.wait(0.3)
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Raise a Floppa",
  HidePremium = true,
  SaveConfig = _G.configEnabled,
  ConfigFolder = "garfieldwarez"
}):MakeTab({
  Name = "Main",
  Icon = "rbxassetid://6031265971",
  PremiumOnly = false
}):AddButton({
  Name = "Witch shop",
  Callback = function()
    lookDown()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["Jinx' Cauldron"]["Jinx Witch"].jinx.CFrame
    task.wait(0.3)
    fireproximityprompt(game:GetService("Workspace")["Jinx' Cauldron"].Cauldron.Cauldron.ProximityPrompt, 1, true)
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Raise a Floppa",
  HidePremium = true,
  SaveConfig = _G.configEnabled,
  ConfigFolder = "garfieldwarez"
}):MakeTab({
  Name = "Main",
  Icon = "rbxassetid://6031265971",
  PremiumOnly = false
}):AddButton({
  Name = "Teleport to backrooms",
  Callback = function()
    lookDown()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12558.9306640625, 57.98476028442383, -16148.994140625)
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Raise a Floppa",
  HidePremium = true,
  SaveConfig = _G.configEnabled,
  ConfigFolder = "garfieldwarez"
}):MakeTab({
  Name = "Main",
  Icon = "rbxassetid://6031265971",
  PremiumOnly = false
}):AddButton({
  Name = "Go home",
  Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").HomeTeleport.CFrame
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Raise a Floppa",
  HidePremium = true,
  SaveConfig = _G.configEnabled,
  ConfigFolder = "garfieldwarez"
}):MakeTab({
  Name = "Main",
  Icon = "rbxassetid://6031265971",
  PremiumOnly = false
}):AddLabel("Misc")
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Raise a Floppa",
  HidePremium = true,
  SaveConfig = _G.configEnabled,
  ConfigFolder = "garfieldwarez"
}):MakeTab({
  Name = "Main",
  Icon = "rbxassetid://6031265971",
  PremiumOnly = false
}):AddButton({
  Name = "Remove accended obby",
  Callback = function()
    if game.Workspace:FindFirstChild("Temple", true) then
      game:GetService("Workspace").Temple.Obby:Destroy()
    else
      _UPVALUE0_:MakeNotification({
        Name = "Space Hub",
        Content = "No obby found (did you accend yet?)",
        Image = "rbxassetid://6031071053",
        Time = 5
      })
    end
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Raise a Floppa",
  HidePremium = true,
  SaveConfig = _G.configEnabled,
  ConfigFolder = "garfieldwarez"
}):MakeTab({
  Name = "Main",
  Icon = "rbxassetid://6031265971",
  PremiumOnly = false
}):AddButton({
  Name = "Max Altar (uses all cash)",
  Callback = function()
    if not game.Workspace:FindFirstChild("Altar") then
    elseif game:GetService("Workspace").Altar["Thin Wall"].Display.Frame.Faith.Text == "Faith:100%" then
    else
      _UPVALUE0_:MakeNotification({
        Name = "Space Hub",
        Content = "Setting up altar...",
        Image = "rbxassetid://6031075926",
        Time = 5
      })
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Altar["Floppa Cube"].Ears.CFrame
      task.wait(0.3)
      lookDown()
      task.wait(0.3)
      while 0 < 50 do
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Altar["Floppa Cube"].Ears.CFrame
        lookDown()
        fireproximityprompt(game:GetService("Workspace").Altar["Thin Wall"].ProximityPrompt, 1, true)
      end
      _UPVALUE0_:MakeNotification({
        Name = "Space Hub",
        Content = "Finished offering",
        Image = "rbxassetid://6031075926",
        Time = 5
      })
      task.wait(3)
      _UPVALUE0_:MakeNotification({
        Name = "Space Hub",
        Content = "Done!",
        Image = "rbxassetid://6023426945",
        Time = 5
      })
      break
    end
    if not game.Workspace:FindFirstChild("Altar") then
      _UPVALUE0_:MakeNotification({
        Name = "Space Hub",
        Content = "No altar found",
        Image = "rbxassetid://6031075926",
        Time = 5
      })
    else
      _UPVALUE0_:MakeNotification({
        Name = "Space Hub",
        Content = "You already maxed out ur altar",
        Image = "rbxassetid://6031071053",
        Time = 5
      })
    end
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Raise a Floppa",
  HidePremium = true,
  SaveConfig = _G.configEnabled,
  ConfigFolder = "garfieldwarez"
}):MakeTab({
  Name = "Main",
  Icon = "rbxassetid://6031265971",
  PremiumOnly = false
}):AddSlider({
  Name = "Almond Water Amount",
  Min = 1,
  Max = 25,
  Default = 1,
  Increment = 1,
  Save = true,
  Flag = "slider1",
  ValueName = "Almond Wilk Cartons",
  Callback = function(_ARG_0_)
    _UPVALUE0_ = _ARG_0_
    _UPVALUE1_ = _ARG_0_ * 1000
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Raise a Floppa",
  HidePremium = true,
  SaveConfig = _G.configEnabled,
  ConfigFolder = "garfieldwarez"
}):MakeTab({
  Name = "Main",
  Icon = "rbxassetid://6031265971",
  PremiumOnly = false
}):AddButton({
  Name = "Buy Almond Water",
  Callback = function()
    if not (tonumber(game.Players.LocalPlayer.leaderstats.Money.Value) < _UPVALUE0_) then
    else
      _UPVALUE1_:MakeNotification({
        Name = "flop",
        Content = "not enough money (oops!)",
        Image = "rbxassetid://6031071053",
        Time = 5
      })
      break
    end
    lookDown()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Backrooms.PC.CFrame
    task.wait(0.3)
    fireproximityprompt(game:GetService("Workspace").Backrooms.PC.ProximityPrompt, 1, true)
    task.wait(0.3)
    while 0 ~= _UPVALUE2_ do
      game:GetService("ReplicatedStorage").Purchase2:FireServer("Almond Water")
    end
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").HomeTeleport.CFrame
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Raise a Floppa",
  HidePremium = true,
  SaveConfig = _G.configEnabled,
  ConfigFolder = "garfieldwarez"
}):MakeTab({
  Name = "Player",
  Icon = "rbxassetid://6031289449",
  PremiumOnly = false
}):AddSlider({
  Name = "Walkspeed",
  Min = 16,
  Max = 255,
  Default = 16,
  Increment = 0.5,
  ValueName = "Studs Per Second",
  Callback = function(_ARG_0_)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = _ARG_0_
    _UPVALUE0_ = _ARG_0_
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Raise a Floppa",
  HidePremium = true,
  SaveConfig = _G.configEnabled,
  ConfigFolder = "garfieldwarez"
}):MakeTab({
  Name = "Player",
  Icon = "rbxassetid://6031289449",
  PremiumOnly = false
}):AddSlider({
  Name = "JumpPower",
  Min = 50,
  Max = 255,
  Default = 50,
  Increment = 0.5,
  ValueName = "Studs Per Second",
  Callback = function(_ARG_0_)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = _ARG_0_
    _UPVALUE0_ = _ARG_0_
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Raise a Floppa",
  HidePremium = true,
  SaveConfig = _G.configEnabled,
  ConfigFolder = "garfieldwarez"
}):MakeTab({
  Name = "Player",
  Icon = "rbxassetid://6031289449",
  PremiumOnly = false
}):AddToggle({
  Name = "Keep values",
  Default = false,
  Callback = function(_ARG_0_)
    shared.keepvalues = _ARG_0_
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Raise a Floppa",
  HidePremium = true,
  SaveConfig = _G.configEnabled,
  ConfigFolder = "garfieldwarez"
}):MakeTab({
  Name = "Misc",
  Icon = "rbxassetid://6034509993",
  PremiumOnly = false
}):AddParagraph("Credits", "Lucas#5123")
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Raise a Floppa",
  HidePremium = true,
  SaveConfig = _G.configEnabled,
  ConfigFolder = "garfieldwarez"
}):MakeTab({
  Name = "Misc",
  Icon = "rbxassetid://6034509993",
  PremiumOnly = false
}):AddButton({
  Name = "Join Our Discord",
  Callback = function()
    setclipboard("discord.gg/luc")
    _UPVALUE0_:MakeNotification({
      Name = "Space Hub",
      Content = "Paste link that was copied to ur clip board into ur browser to join!",
      Image = "rbxassetid://6034457067",
      Time = 5
    })
  end
})
spawn(function()
  while true do
    while true do
      if not wait(0.1) then
        break
      end
      if shared.floppapress then
        fireclickdetector(game:GetService("Workspace").Floppa.ClickDetector)
      end
      if not shared.keepvalues then
      end
    end
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = _UPVALUE0_
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = _UPVALUE1_
  end
end)
firstgate = true
;(function(_ARG_0_, _ARG_1_)
  _UPVALUE0_:MakeNotification({
    Name = "flop",
    Content = _ARG_0_,
    Image = "rbxassetid://" .. _ARG_1_,
    Time = 5
  })
end)("Config saving is set to " .. tostring(_G.configEnabled) .. ", if you want to change this, change the value on the top of the script.", 6031302918)
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():Init()
