function __secureeq(_ARG_0_, _ARG_1_)
  _ARG_0_ = 0
  _ARG_0_, _ARG_0_ = 0, _ARG_0_
  _ARG_0_ = _ARG_1_
  pcall(function()
    _UPVALUE0_ = #_UPVALUE1_
    _UPVALUE2_ = #_UPVALUE3_
  end)
  if _ARG_0_ ~= _ARG_1_ or _ARG_0_ ~= _ARG_1_ then
  elseif _ARG_1_ ~= _ARG_0_ then
  elseif 0 - 0 ~= 0 - 0 then
  else
  end
  return 0 - 0 == 0 - 0 and true or 0 - 0
end
HJTfrqbgQFKY = {}
if _ ~= "discord.gg/gQEH2uZxUk" then
  return
end
function bjhDDVlA(_ARG_0_, _ARG_1_, _ARG_2_)
  if not HJTfrqbgQFKY[_ARG_1_] then
  else
    return HJTfrqbgQFKY[_ARG_1_]
  end
  for _FORV_8_ = 1, #_ARG_0_ do
  end
  _FOR_[_ARG_1_] = "" .. string.char((_ARG_0_:sub(_FORV_8_, _FORV_8_):byte() + 1) % 256)
  return "" .. string.char((_ARG_0_:sub(_FORV_8_, _FORV_8_):byte() + 1) % 256)
end
function getDonut()
  OldPos = _UPVALUE0_.Character.HumanoidRootPart.CFrame
  _UPVALUE0_.Character.Humanoid.Health = 0
  wait(0.7)
  _UPVALUE0_.Character.HumanoidRootPart.CFrame = _UPVALUE1_.CFrame
  wait(0.2)
  fireproximityprompt(_UPVALUE1_.ProximityPrompt)
  _UPVALUE0_.Character.HumanoidRootPart.CFrame = OldPos
end
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Mic Up",
  HidePremium = false,
  SaveConfig = true,
  ConfigFolder = "OrionTest"
}):MakeTab({
  Name = "Donut",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
}):AddLabel("Client Sided")
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Mic Up",
  HidePremium = false,
  SaveConfig = true,
  ConfigFolder = "OrionTest"
}):MakeTab({
  Name = "Donut",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
}):AddDropdown({
  Name = "Donut Material",
  Default = "Plastic",
  Options = {
    "Brick",
    "Cobblestone",
    "Concrete",
    "CorrodedMetal",
    "DiamondPlate",
    "Fabric",
    "Foil",
    "Granite",
    "Glass",
    "Grass",
    "Ice",
    "Marble",
    "Metal",
    "Neon",
    "Pebble",
    "Plastic",
    "Sand",
    "SmoothPlastic",
    "Slate",
    "Wood",
    "WoodPlanks"
  },
  Callback = function(_ARG_0_)
    for _FORV_4_, _FORV_5_ in pairs(game.Workspace[_UPVALUE0_.Name]:GetChildren()) do
      if _FORV_5_.Name == "Donut" then
        game.Workspace[_UPVALUE0_.Name].Donut.ColorPart.Material = _ARG_0_
      end
    end
    for _FORV_4_, _FORV_5_ in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
      if _FORV_5_.Name == "Donut" then
        game.Players[_UPVALUE0_.Name].Backpack.Donut.ColorPart.Material = _ARG_0_
      end
    end
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Mic Up",
  HidePremium = false,
  SaveConfig = true,
  ConfigFolder = "OrionTest"
}):MakeTab({
  Name = "Donut",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
}):AddColorpicker({
  Name = "Donut Color",
  Default = Color3.fromRGB(0, 0, 0),
  Callback = function(_ARG_0_)
    for _FORV_4_, _FORV_5_ in pairs(game.Workspace[_UPVALUE0_.Name]:GetChildren()) do
      if _FORV_5_.Name == "Donut" then
        game.Workspace[_UPVALUE0_.Name].Donut.ColorPart.Color = _ARG_0_
      end
    end
    for _FORV_4_, _FORV_5_ in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
      if _FORV_5_.Name == "Donut" then
        game.Players[_UPVALUE0_.Name].Backpack.Donut.ColorPart.Color = _ARG_0_
      end
    end
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Mic Up",
  HidePremium = false,
  SaveConfig = true,
  ConfigFolder = "OrionTest"
}):MakeTab({
  Name = "Donut",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
}):AddDropdown({
  Name = "Bread Material",
  Default = "Plastic",
  Options = {
    "Brick",
    "Cobblestone",
    "Concrete",
    "CorrodedMetal",
    "DiamondPlate",
    "Fabric",
    "Foil",
    "Granite",
    "Glass",
    "Grass",
    "Ice",
    "Marble",
    "Metal",
    "Neon",
    "Pebble",
    "Plastic",
    "Sand",
    "SmoothPlastic",
    "Slate",
    "Wood",
    "WoodPlanks"
  },
  Callback = function(_ARG_0_)
    for _FORV_4_, _FORV_5_ in pairs(game.Workspace[_UPVALUE0_.Name]:GetChildren()) do
      if _FORV_5_.Name ~= "Donut" then
      else
        game.Workspace[_UPVALUE0_.Name].Donut.Handle.Material = _ARG_0_
      end
    end
    for _FORV_4_, _FORV_5_ in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
      if _FORV_5_.Name ~= "Donut" then
      else
        game.Players[_UPVALUE0_.Name].Backpack.Donut.Handle.Material = _ARG_0_
      end
    end
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Mic Up",
  HidePremium = false,
  SaveConfig = true,
  ConfigFolder = "OrionTest"
}):MakeTab({
  Name = "Donut",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
}):AddColorpicker({
  Name = "Bread Color",
  Default = Color3.fromRGB(0, 0, 0),
  Callback = function(_ARG_0_)
    for _FORV_4_, _FORV_5_ in pairs(game.Workspace[_UPVALUE0_.Name]:GetChildren()) do
      if _FORV_5_.Name == "Donut" then
        game.Workspace[_UPVALUE0_.Name].Donut.Handle.Color = _ARG_0_
      end
    end
    for _FORV_4_, _FORV_5_ in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
      if _FORV_5_.Name ~= "Donut" then
      else
        game.Players[_UPVALUE0_.Name].Backpack.Donut.Handle.Color = _ARG_0_
      end
    end
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Mic Up",
  HidePremium = false,
  SaveConfig = true,
  ConfigFolder = "OrionTest"
}):MakeTab({
  Name = "Get Donut",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
}):AddButton({
  Name = "Get Donut (Random)",
  Callback = function()
    getDonut()
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Mic Up",
  HidePremium = false,
  SaveConfig = true,
  ConfigFolder = "OrionTest"
}):MakeTab({
  Name = "Get Donut",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
}):AddLabel("Donut Farm")
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Mic Up",
  HidePremium = false,
  SaveConfig = true,
  ConfigFolder = "OrionTest"
}):MakeTab({
  Name = "Get Donut",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
}):AddLabel("Breaks if laggy")
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Mic Up",
  HidePremium = false,
  SaveConfig = true,
  ConfigFolder = "OrionTest"
}):MakeTab({
  Name = "Get Donut",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
}):AddDropdown({
  Name = "Select Material",
  Default = "Neon",
  Options = {
    "Neon",
    "SmoothPlastic"
  },
  Callback = function(_ARG_0_)
    TargetMaterial = _ARG_0_
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Mic Up",
  HidePremium = false,
  SaveConfig = true,
  ConfigFolder = "OrionTest"
}):MakeTab({
  Name = "Get Donut",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
}):AddDropdown({
  Name = "Select Color",
  Default = "Light stone grey",
  Options = {
    "Navy blue",
    "Eggplant",
    "Burnt Sienna",
    "Deep Orange",
    "Bright bluish green",
    "Medium Brown",
    "Pink",
    "Salmon",
    "Dark indigo",
    "Lime green",
    "Dark orange",
    "Really Black",
    "Light stone grey"
  },
  Callback = function(_ARG_0_)
    TargetBrickColor = _ARG_0_
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Mic Up",
  HidePremium = false,
  SaveConfig = true,
  ConfigFolder = "OrionTest"
}):MakeTab({
  Name = "Get Donut",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
}):AddButton({
  Name = "Get Donut (Selected Settings)",
  Callback = function()
    OldPos = _UPVALUE0_.Character.HumanoidRootPart.CFrame
    GotDonut = false
    while true do
      if GotDonut == false then
        wait()
        _UPVALUE0_.Character.Humanoid.Health = 0
        wait(0.7)
        _UPVALUE0_.Character.HumanoidRootPart.CFrame = _UPVALUE1_.CFrame
        wait(0.3)
        fireproximityprompt(_UPVALUE1_.ProximityPrompt)
        wait(0.4)
        if _UPVALUE0_.Backpack.Donut.ColorPart.BrickColor ~= BrickColor.new(TargetBrickColor) then
        elseif _UPVALUE0_.Backpack.Donut.ColorPart.Material == Enum.Material[TargetMaterial] then
          _UPVALUE0_.Character.HumanoidRootPart.CFrame = OldPos
          print("Got Donut! Color/Material: ", TargetBrickColor, "|  Material: ", TargetMaterial)
          wait(0.1)
          GotDonut = true
          break
        end
      end
    end
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Mic Up",
  HidePremium = false,
  SaveConfig = true,
  ConfigFolder = "OrionTest"
}):MakeTab({
  Name = "Get Donut",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
}):AddButton({
  Name = "Stop Donut Farm",
  Callback = function()
    GotDonut = true
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Mic Up",
  HidePremium = false,
  SaveConfig = true,
  ConfigFolder = "OrionTest"
}):MakeTab({
  Name = "Player",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
}):AddSlider({
  Name = "WalkSpeed",
  Min = 16,
  Max = 200,
  Default = 16,
  Color = Color3.fromRGB(255, 255, 255),
  Increment = 1,
  ValueName = "WalkSpeed",
  Callback = function(_ARG_0_)
    _UPVALUE0_.Character.Humanoid.WalkSpeed = _ARG_0_
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Mic Up",
  HidePremium = false,
  SaveConfig = true,
  ConfigFolder = "OrionTest"
}):MakeTab({
  Name = "Player",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
}):AddButton({
  Name = "No AFK (Useful for donut neon forever)",
  Callback = function()
    make_writeable((getrawmetatable(game)))
    getrawmetatable(game).__namecall.__namecall = newcclosure(function(_ARG_0_, ...)
      if getnamecallmethod() ~= "FireServer" or tostring(_ARG_0_) ~= "AFK" then
      else
        return false
      end
      return _UPVALUE0_(_ARG_0_, table.unpack({
        ...
      }))
    end)
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Mic Up",
  HidePremium = false,
  SaveConfig = true,
  ConfigFolder = "OrionTest"
}):MakeTab({
  Name = "Player",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
}):AddButton({
  Name = "Inf Jump",
  Callback = function()
    game:GetService("UserInputService").JumpRequest:connect(function()
      game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
    end)
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Mic Up",
  HidePremium = false,
  SaveConfig = true,
  ConfigFolder = "OrionTest"
}):MakeTab({
  Name = "Player",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
}):AddButton({
  Name = "Sit",
  Callback = function()
    _UPVALUE0_.Character.Humanoid.Sit = true
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Mic Up",
  HidePremium = false,
  SaveConfig = true,
  ConfigFolder = "OrionTest"
}):MakeTab({
  Name = "Player",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
}):AddButton({
  Name = "Reset TP",
  Callback = function()
    OldPos = _UPVALUE0_.Character.HumanoidRootPart.CFrame
    _UPVALUE0_.Character.Humanoid.Health = 0
    wait(0.5)
    _UPVALUE0_.Character.HumanoidRootPart.CFrame = OldPos
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Mic Up",
  HidePremium = false,
  SaveConfig = true,
  ConfigFolder = "OrionTest"
}):MakeTab({
  Name = "Player",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
}):AddButton({
  Name = "Load Hats",
  Callback = function()
    if _UPVALUE0_ ~= false then
    else
      _UPVALUE0_ = true
      game.Workspace.Handle.Name = "DominusFrigidus"
      game.Workspace.Handle.Name = "MikuHair"
      game.Workspace.MetalSpacialHorns.Name = "MetalSpacialHorn"
      game.Workspace.MetalSpacialHorns.Name = "XXXXXXXXXXXXXXXXX"
      game.Workspace.MetalSpacialHorns.Name = "GreenSpacialHorn"
      print("Loaded Hats")
    end
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Mic Up",
  HidePremium = false,
  SaveConfig = true,
  ConfigFolder = "OrionTest"
}):MakeTab({
  Name = "Player",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
}):AddDropdown({
  Name = "Get Hats (Use Load Hats)",
  Default = "Light stone grey",
  Options = {
    "MetalSpacialHorn",
    "GreenSpacialHorn",
    "DominusFrigidus",
    "EmporerUniverseCrown",
    "MikuHair"
  },
  Callback = function(_ARG_0_)
    OldPos = _UPVALUE0_.Character.HumanoidRootPart.CFrame
    _UPVALUE0_.Character.HumanoidRootPart.CFrame = game.Workspace[_ARG_0_].CFrame
    wait()
    _UPVALUE0_.Character.HumanoidRootPart.CFrame = OldPos
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Mic Up",
  HidePremium = false,
  SaveConfig = true,
  ConfigFolder = "OrionTest"
}):MakeTab({
  Name = "Other/Credit",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
}):AddLabel("Made By: Lucas!#5123")
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Mic Up",
  HidePremium = false,
  SaveConfig = true,
  ConfigFolder = "OrionTest"
}):MakeTab({
  Name = "Other/Credit",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
}):AddButton({
  Name = "Break Spleef Blocks",
  Callback = function()
