function __secureeq(_ARG_0_, _ARG_1_)
  _ARG_0_ = 0
  _ARG_0_, _ARG_0_ = 0, _ARG_0_
  _ARG_0_ = _ARG_1_
  pcall(function()
    _UPVALUE0_ = #_UPVALUE1_
    _UPVALUE2_ = #_UPVALUE3_
  end)
  if _ARG_0_ ~= _ARG_1_ or _ARG_0_ ~= _ARG_1_ or _ARG_1_ ~= _ARG_0_ or 0 - 0 ~= 0 - 0 then
  else
  end
  return 0 - 0 == 0 - 0 and true or 0 - 0
end
IxqxRTpwqKjj = {}
if _ ~= "discord.gg/gQEH2uZxUk" then
  return
end
function hBWE_Ppp(_ARG_0_, _ARG_1_, _ARG_2_)
  if IxqxRTpwqKjj[_ARG_1_] then
    return IxqxRTpwqKjj[_ARG_1_]
  end
  for _FORV_8_ = 1, #_ARG_0_ do
  end
  _FOR_[_ARG_1_] = "" .. string.char((_ARG_0_:sub(_FORV_8_, _FORV_8_):byte() + 1) % 256)
  return "" .. string.char((_ARG_0_:sub(_FORV_8_, _FORV_8_):byte() + 1) % 256)
end
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Arsenal",
  HidePremium = false,
  SaveConfig = false,
  ConfigFolder = ""
}):MakeTab({
  Name = "Combat",
  Icon = "rbxassetid://7072715317",
  PremiumOnly = false
}):AddButton({
  Name = "Hitbox Expander",
  Callback = function()
    function getnames()
      for _FORV_3_, _FORV_4_ in pairs(game:GetChildren()), game:GetChildren() do
        if _FORV_4_.ClassName ~= "Players" then
        else
          return _FORV_4_.Name
        end
      end
    end
    coroutine.resume(coroutine.create(function()
      while wait(1) do
        _UPVALUE0_(coroutine.create(function()
          for _FORV_3_, _FORV_4_ in pairs(game:GetService("Players"):GetPlayers()), game:GetService("Players"):GetPlayers() do
            if _FORV_4_.Name == _UPVALUE0_.Name then
            elseif _FORV_4_.Character.UpperTorso.Color == _UPVALUE0_.Character.UpperTorso.Color then
            else
              _FORV_4_.Character.LowerTorso.CanCollide = false
              _FORV_4_.Character.LowerTorso.Material = "Neon"
              _FORV_4_.Character.LowerTorso.Transparency = 1
              _FORV_4_.Character.LowerTorso.Size = Vector3.new(15, 15, 15)
              _FORV_4_.Character.HumanoidRootPart.Size = Vector3.new(15, 15, 15)
            end
          end
        end))
      end
    end))
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():MakeWindow({
  Name = "Space Hub | Arsenal",
  HidePremium = false,
  SaveConfig = false,
  ConfigFolder = ""
}):MakeTab({
  Name = "Combat",
  Icon = "rbxassetid://7072715317",
  PremiumOnly = false
}):AddButton({
  Name = "ESP",
  Callback = function()
    loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/WRD%20ESP.txt"))()
  end
})
loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))():Init()
