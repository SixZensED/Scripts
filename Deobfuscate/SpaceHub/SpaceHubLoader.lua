--// Decompiled Code. 
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Space Hub Key Syetem", HidePremium = false, IntroEnabled = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({
	Name = "Key System",
	Icon = "rbxassetid://4370344717",
	PremiumOnly = false
})
OrionLib:MakeNotification({
	Name = "Space Hub",
	Content = "Space Hub Key System Has Loaded!",
	Image = "rbxassetid://4370344717",
	Time = 5
})

_G.Key = "ILOVEChristmas523798347982147889tyhfg984232"
_G.KeyInput = "string"

Tab:AddButton({
	Name = "Copy Key Link",
	Callback = function()
      		setclipboard("https://link-center.net/495832/roblox-spacehub-keysystem")
  	end    
})


    Tab:AddTextbox({
        Name = "Input Key",
        Default = "",
        TextDisappear = true,
        Callback = function(Value)
          _G.KeyInput = Value
        end	  
    })
            
            Tab:AddButton({
                Name = "Check Key",
                Callback = function()
                          if _G.KeyInput == _G.Key then
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/spacvehubloader"))()
                          end
                  end    
            })
            
         

