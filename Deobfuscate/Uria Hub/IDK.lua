function A() 
	if not game:IsLoaded() then
		local GameLoadGui = Instance.new("Message",workspace)
		GameLoadGui.Text = 'Wait Game Loading'
		game.Loaded:Wait()
		GameLfoadGui:Destroy()
		task.wait()
	end
	local start = tick()
	repeat wait() until game:IsLoaded()
	repeat wait() until game:GetService("Players")
	repeat wait() until game:GetService("Players").LocalPlayer
	repeat wait() until game:GetService("Players").LocalPlayer.PlayerGui
	repeat wait() until game:GetService("ReplicatedStorage").Effect.Container
	local f=game:GetService("HttpService");
    local e=game:GetService("RunService");
    local J=game:GetService("Players");
    local i=J.LocalPlayer;

    if not isfolder("Uria Hubs")then
        makefolder("Uria Hubs");
    end;
    if not isfile("Uria Hubs/BF_"..i.Name..".cfg")then 
        writefile("Uria Hubs/BF_"..i.Name..".cfg","[]");
    end;
    GetSubPrefix=function(a)
        local a=tostring(a):gsub(" ","");
        local bX="";
        if#a==2 then 
            local Yp=string.sub(a,#a,#a+1);
            bX=Yp=="1"and"st"or Yp=="2"and"nd"or Yp=="3"and"rd"or"th";
        end;
        return bX;
    end;
        A,L = loadstring(game:HttpGet('https://raw.githubusercontent.com/Aoldemort/Uria/Library/l'))()
    local h="%A, %B";local t=os.date(" %d",os.time());
    local l=", %Y.";
    h=os.date(h,os.time())..t..GetSubPrefix(t)..os.date(l,os.time());
    local u=A:CreateWindow(("Uria Hubs - "..tostring(h)));
    A:Notify("Loading User Interface.");
    local s={Load={AutoLoad={Enabled=true,RageSettings=false,SilentLoad=false,AutoLoadType="Last Config",LastUsedConfig="",LastConfig={},CustomConfig=""},Configs={},Ignored={"SettingsConfigName","SettingsConfigData","SettingsConfigConfigs","SettingsAutoLoadData","SettingsAutoLoadEnabled","SettingsAutoLoadRage","SettingsAutoLoadSilent","SettingsAutoLoadType","SettingsAutoLoadConfig"}},Tick=tick()};
    
    function UpdateTheme()
        A.BackgroundColor=L.SettingsMenuBackgroundColor.Value;
        A.MainColor=L.SettingsMenuMainColor.Value;
        A.AccentColor=L.SettingsMenuAccentColor.Value;
        A.AccentColorDark=A:GetDarkerColor(A.AccentColor);
        A.InlineColor=L.SettingsMenuInlineColor.Value;
        A.OutlineColor=L.SettingsMenuOutlineColor.Value;
        A.FontColor=L.SettingsMenuFontColor.Value;
        A:UpdateColorsUsingRegistry();
    end;
    function SetDefault()
        L.SettingsMenuFontColor:SetValueRGB(Color3.fromRGB(255,255,255));
        L.SettingsMenuMainColor:SetValueRGB(Color3.fromRGB(0,15,30));
        L.SettingsMenuBackgroundColor:SetValueRGB(Color3.fromRGB(5,5,20));
        L.SettingsMenuAccentColor:SetValueRGB(Color3.fromRGB(0,180,240));
        L.SettingsMenuInlineColor:SetValueRGB(Color3.fromRGB(10,30,40));
        L.SettingsMenuOutlineColor:SetValueRGB(Color3.fromRGB(0,0,5));
        UpdateTheme();
    end;
    
    function ResetSettings()
        for a,Wb in pairs(L)do if typeof(Wb.Original)~="nil"then Wb:SetValue(Wb.Original);
        end;
    end;
end;

function GetConfigNames()
    local a={};
    for Vq,vq in pairs(s.Load.Configs)do a[#a+1]=vq[1];
    end;
    return a;
end;

function GetConfigByName(a)
    for wG,iG in pairs(s.Load.Configs)do 
        if iG[1]==a then return iG[2];
        end;
    end;
end;

function CreateConfig(a)
    if typeof(a)=="string"then 
        if(#a>3 and#a<=25)then 
            if(not GetConfigByName(a))then 
                s.Load.Configs[#s.Load.Configs+1]={a,(A:GetConfig(s.Load.Ignored))};
                L.SettingsConfigConfigs.Values=GetConfigNames();
                L.SettingsConfigConfigs:SetValues();
                L.SettingsAutoLoadConfig.Values=GetConfigNames();
                L.SettingsAutoLoadConfig:SetValues();
                return A:Notify(("Config \"%s\" Has Been Created."):format(a));
            end;
            return A:Notify(("Config \"%s\" Already Exists."):format(a));
        end;
        return A:Notify("Config Name Is Too Long / Short.");
    end;
    return A:Notify("Config Name Is Not A String.");
end;

function GetConfig()return(f:JSONEncode(A:GetConfig(s.Load.Ignored)));
end;
function LoadConfig(a)if typeof(a)=="table"then A:SetConfig(a,s.Load.Ignored);
elseif typeof(a)=="string"then local U4,T4=pcall(function()a=f:JSONDecode(a);
end);
if U4 then A:SetConfig(a,s.Load.Ignored);
    return A:Notify("Config Data Has Been Imported.");
end;
return A:Notify(("Error When Loading Config Data Statement : %s."):format(T4));
end;
end;

function DeleteConfig(a)
    for Pz,gz in pairs(s.Load.Configs)do 
        if gz[1]==a then table.remove(s.Load.Configs,Pz);
            L.SettingsConfigConfigs.Values=GetConfigNames();
            L.SettingsConfigConfigs:SetValue(L.SettingsConfigConfigs.Value);
            L.SettingsAutoLoadConfig.Values=GetConfigNames();
            L.SettingsAutoLoadConfig:SetValues();
            return A:Notify(("Config \"%s\" Has Been Removed."):format(a));
        end;
    end;
end;

function SaveConfig(a)
    for OO,IO in pairs(s.Load.Configs)do 
        if IO[1]==a then 
            s.Load.Configs[OO]={a,(A:GetConfig(s.Load.Ignored))};
            return A:Notify(("Config \"%s\" Has Been Saved."):format(a));
        end;
    end;
end;

function ExportData()
    setclipboard(GetConfig());
    A:Notify("Config Data Has Been Exported.");
end;

function ImportData()
    LoadConfig(L.SettingsConfigData.Value);
end;

do A.SaveManager={};
    function A.SaveManager:Save()
        s.Load.AutoLoad.LastConfig=A:GetConfig(s.Load.Ignored);
    end;
    function A.SaveManager:Load()local a=f:JSONDecode(readfile("Uria Hubs/BF_"..i.Name..".cfg"));
        s.Load.AutoLoad=(a.AutoLoad or s.Load.AutoLoad);
        s.Load.Configs=(a.Configs or s.Load.Configs);
        do L.SettingsConfigConfigs.Values=GetConfigNames();
            L.SettingsConfigConfigs:SetValues();
            L.SettingsAutoLoadConfig.Values=GetConfigNames();
            L.SettingsAutoLoadConfig:SetValues();
        end;
        local Jc;
        if s.Load.AutoLoad.AutoLoadType=="Last Used Config"then if GetConfigByName(s.Load.AutoLoad.LastUsedConfig)then 
            Jc=GetConfigByName(s.Load.AutoLoad.LastUsedConfig);
        end;
    elseif s.Load.AutoLoad.AutoLoadType=="Last Config"then
        if s.Load.AutoLoad.LastConfig then
        Jc=s.Load.AutoLoad.LastConfig;
    end;elseif s.Load.AutoLoad.AutoLoadType=="Custom Config"then 
        if GetConfigByName(s.Load.AutoLoad.CustomConfig)then 
            Jc=GetConfigByName(s.Load.AutoLoad.CustomConfig);
        end;
    end;
    if Jc then 
        if(not s.Load.RageSettings)then 
            for JR,DR in pairs(L)do 
                if(DR.Type=="Toggle"and JR:sub(1,4)=="Rage")then 
                    if Jc[JR]then warn(("Set %s to false."):format(JR));Jc[JR]=false;
                    end;
                end;
            end;
        end;
        if s.Load.AutoLoad.SilentLoad then 
            Jc["SettingsMenuKeybinds"]=false;
            Jc["SettingsMenuWatermark"]=false;
            Jc["SettingsMiscNotifications"]=false;
            A:SetWatermarkVisibility(false);
            u.Holder.Visible=false;
        end;
        LoadConfig(Jc);
    end;
end;

function A.SaveManager:SaveFile()
    local a=f:JSONEncode({AutoLoad=s.Load.AutoLoad,Configs=s.Load.Configs});
    writefile("Uria Hubs/BF_"..i.Name..".cfg",a);
end;
end;
			  _G.Settings = {
				 Main = {
					["Auto Farm Level"] = false,
					["Fast Auto Farm Level"] = false,
	 
					--[Mob Aura]
	 
					["Distance Mob Aura"] = 1000, -- {Max : 5000}
					["Mob Aura"] = false,
	 
					--[World 1]
					["Auto New World"] = false,
					["Auto Saber"] = false,
					["Auto Pole"] = false,
					["Auto Pole Hop"] = false,
	 
					["Auto Buy Ablility"] = false,
					["Auto SeaBeast"] = false,
	 
					--[World 2]
					["Auto Third Sea"] = false,
					["Auto Factory"] = false,
					["Auto Factory Hop"] = false,
					["Auto Bartilo Quest"] = false,
	 
					["Auto True Triple Katana"] = false,
					["Auto Rengoku"] = false,
					["Auto Swan Glasses"] = false,
					["Auto Dark Coat"] = false,
					["Auto Ectoplasm"] = false,
	 
					["Auto Buy Legendary Sword"] = false,
					["Auto Buy Legendary Sword Hop"] = false,
					["Auto Buy Enchanment Haki"] = false,
	 
					--[World 3]
					["Auto Holy Torch"] = false,
					["Auto Buddy Swords"] = false,
					["Auto Farm Boss Hallow"] = false,
					["Auto Rainbow Haki"] = false,
					["Auto Elite Hunter"] = false,
					["Auto Musketeer Hat"] = false,
					["Auto Buddy Sword"] = false,
					["Auto Farm Bone"] = false,
					["Farm Observation"] = false,
					["Farm Observation Hop"] = false,
					["Auto Ken-Haki V2"] = false,
					["Auto Cavander"] = false,
					["Auto Yama Sword"] = false,
					["Auto Tushita Sword"] = false,
					["Auto Serpent Bow"] = false,
					["Auto Dark Dagger"] = false,
					["Auto Cake Prince"] = false,
					["Auto Dough V2"] = false,
					["Auto Random Bone"] = false,
	 
					--[For God Human]
	 
					["Auto Fish Tail Sea 1"] = false,
					["Auto Fish Tail Sea 3"] = false,
					["Auto Magma Ore Sea 2"] = false,
					["Auto Magma Ore Sea 1"] = false,
					["Auto Mystic Droplet"] = false,
					["Auto Dragon Scales"] = false,
	 
				 },
				 FightingStyle = {
					["Auto God Human"] = false,
					["Auto Superhuman"] = false,
					["Auto Electric Claw"] = false,
					["Auto Death Step"] = false,
					["Auto Fully Death Step"] = false,
					["Auto SharkMan Karate"] = false,
					["Auto Fully SharkMan Karate"] = false,
					["Auto Dragon Talon"] = false,
				 },
				 Boss = {
					["Auto All Boss"] = false,
					["Auto All Boss Hop"] = false,
					["Auto Boss Select"] = false,
					["Select Boss"] = "",
	 
					["Auto Quest"] = false,
				 },
				 Mastery = {
					["Select Multi Sword"] = {""},
					["Farm Mastery SwordList"] = false,
					["Auto Farm Fruit Mastery"] = false,
					["Auto Farm Gun Mastery"] = false,
					["Mob Health (%)"] = 15,
				 },
				 Evo = {
					["Auto Evo Race [Mink]"] = false,
					["Auto Evo Race [FishMan]"] = false,
					["Auto Evo Race [Human]"] = false,
					["Auto Evo Race [Sky]"] = false,
				 },
				 Configs = {
					["Double Quest"] = false,
					["Bypass TP"] = false,
					["Select Team"] = "Pirate", --{Pirate,Marine}
	 
	 
					["Fast Attack"] = true,
					["Fast Attack Type"] = "Normal", --{Normal,Fast,Slow}
	 
					["Select Weapon"] = {},
	 
	 
					--[Misc Configs]
					["Auto Haki"] = true,
					["Distance Auto Farm"] = 35, --{Max : 50}
					["Camera Shaker"] = false,
	 
					--[Skill Configs]
					["Skill Z"] = true,
					["Skill X"] = true,
					["Skill C"] = true,
					["Skill V"] = true,
	 
					--[Mob Configs]
					["Show Hitbox"] = false,
					["Bring Mob"] = true,
					["Disabled Damage"] = false,
	 
				 },
				 Stat = {
					--[Auto Stats]
					["Enabled Auto Stats"] = false,
					["Auto Stats Kaitun"] = false,
	 
					["Select Stats"] = {"Melee"}, --{Max Stats,Melee,Defense,Sword,Devil Fruit,Gun}
					["Point Select"] = 3, --{Recommended , Max : 9}
	 
					--[Auto Redeem Code]
	 
					["Enabled Auto Redeem Code"] = false,
					["Select Level Redeem Code"] = 1, --{Max : 2400}
				 },
	 
				 Misc = {
					["No Soru Cooldown"] = false,
					["No Dash Cooldown"] = false,
	 
					["Infinities Geppo"] = false,
					["Infinities Energy"] = false,
	 
					["No Fog"] = false,
					["Wall-TP"] = false,
					["ServerTime"] = false,
					["Fly"] = false,
					["Fly Speed"] = 1,
	 
					--[Server]
					["Auto Rejoin"] = true,
				 },
				 Teleport = {
					["Teleport to Sea Beast"] = false,
				 },
	 
				 Raids = {
					["Auto Raids"] = false,
	 
					["Kill Aura"] = false,
					["Auto Awakened"] = false,
					["Auto Next Place"] = false,
	 
					["Select Raids"] = {}, -- {"Flame","Ice","Quake","Light","Dark","String","Rumble","Magma","Human: Buddha","Sand","Bird: Phoenix","Dough"},
					["Select Mode Raids"] = {},
					["Auto Start Law Dungeon"] = false,
					["Auto Farm Law Dungeon"] = false,
				 },
	 
				 Combat = {
					["Fov Size"] = 200,
					["Show Fov"] = false,
					["Aimbot Skill"] = false,
				 },
	 
				 HUD = {
					["FPS"] = 60,
					["LockFPS"] = false,
					["Boost FPS Windows"] = false,
					['White Screen'] = false,
				 },
				 Devil_Fruit = {
					["Auto Store Fruits"] = false,
					["Auto Buy Random Fruits"] = false,
					["Select Devil Fruits"] = {}, -- {"Bomb-Bomb","Spike-Spike","Chop-Chop","Spring-Spring","Kilo-Kilo","Spin-Spin","Kilo-Kilo","Spin-Spin","Bird: Falcon","Smoke-Smoke","Flame-Flame","Ice-Ice","Sand-Sand","Dark-Dark","Revive-Revive","Diamond-Diamond","Light-Light","Love-Love","Rubber-Rubber","Barrier-Barrier","Magma-Magma","Door-Door","Quake-Quake","Human-Human: Buddha","String-String","Bird-Bird: Phoenix","Rumble-Rumble","Paw-Paw","Gravity-Gravity","Dough-Dough","Shadow-Shadow","Venom-Venom","Control-Control","Soul-Soul","Dragon-Dragon"}
					["Auto Buy Devil Fruits Sniper"] = false,
					["Bring Fruit Type"] = "Bring", -- Bring Tween
					["Bring Fruit"] = false,
				 },
				 Lock = {
					["Level Lock"] = 2400,
					["Auto Lock Level"] = false,
					["Beli Lock"] = 1000000,
					["Auto Lock Beli"] = false,
				 },
			  }
	 
			  repeat wait()
				if game.Players.LocalPlayer.Team == nil and game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ChooseTeam.Visible == true then
				   pcall(function()
				   if _G.Settings.Configs["Select Team"] == "Pirate" then
					  for i,v in pairs({"MouseButton1Click", "MouseButton1Down", "Activated"}) do
						 for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton[v])) do
							v.Function()
						 end
					  end
				   elseif _G.Settings.Configs["Select Team"] == "Marine" then
					  for i,v in pairs({"MouseButton1Click", "MouseButton1Down", "Activated"}) do
						 for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton[v])) do
							v.Function()
						 end
					  end
				   else
					  for i,v in pairs({"MouseButton1Click", "MouseButton1Down", "Activated"}) do
						 for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton[v])) do
							v.Function()
						 end
					  end
				   end
				   end)
				end
			 until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded()
	 
		-- [Place Id Check]
		local id = game.PlaceId
		if id == 2753915549 then World1 = true elseif id == 4442272183 then World2 = true elseif id == 7449423635 then World3 = true else game:Shutdown() end
	 
		--[Anti Lag]
		if not LPH_OBFUSCATED then
		   LPH_JIT_MAX = (function(...) return ... end)
		   LPH_NO_VIRTUALIZE = (function(...) return ... end)
		   LPH_NO_UPVALUES = (function(...) return ... end)
		end
	 
		-- [Anti AFK]
	 
		game:GetService("Players").LocalPlayer.Idled:connect(function()
		game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		wait(1)
		game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end)
	
		-- [Functions Equip Weapon]
		function EquipWeapon(Tool)
		   pcall(function()
		   if game.Players.LocalPlayer.Backpack:FindFirstChild(Tool) then
			  local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(Tool)
			  game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid)
		   end
		   end)
		end
	 
		function EquipWeaponSword()
		   pcall(function()
		   for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			  if v.ToolTip == "Sword" and v:IsA('Tool') then
				 local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name)
				 game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid)
			  end
		   end
		   end)
		end
	 
		function TextureNormal(Value)
		   if Value then
			  local decalsyeeted = true
			  local g = game
			  local w = g.Workspace
			  local l = g.Lighting
			  local t = w.Terrain
			  t.WaterWaveSize = 0
			  t.WaterWaveSpeed = 0
			  t.WaterReflectance = 0
			  t.WaterTransparency = 0
			  l.GlobalShadows = false
			  l.FogEnd = 9e9
			  l.Brightness = 0
			  settings().Rendering.QualityLevel = "Level01"
			  for i, v in pairs(g:GetDescendants()) do
				 if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
					v.Material = "Plastic"
					v.Reflectance = 0
				 elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
					v.Transparency = 1
				 elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
					v.Lifetime = NumberRange.new(0)
				 elseif v:IsA("Explosion") then
					v.BlastPressure = 1
					v.BlastRadius = 1
				 elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
					v.Enabled = false
				 elseif v:IsA("MeshPart") then
					v.Material = "Plastic"
					v.Reflectance = 0
					v.TextureID = 10385902758728957
				 end
			  end
			  for i, e in pairs(l:GetChildren()) do
				 if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
					e.Enabled = false
				 end
			  end
			  setfpscap(60)
		   end
		end
	 
		function TextureLow()
		   if not game:IsLoaded() then repeat wait() until game:IsLoaded() end
		   if hookfunction and setreadonly then
			  local mt = getrawmetatable(game)
			  local old = mt.__newindex
			  setreadonly(mt, false)
			  local sda
			  sda = hookfunction(old, function(t, k, v)
			  if k == "Material" then
				 if v ~= Enum.Material.Neon and v ~= Enum.Material.Plastic and v ~= Enum.Material.ForceField then v = Enum.Material.Plastic end
			  elseif k == "TopSurface" then v = "Smooth"
			  elseif k == "Reflectance" or k == "WaterWaveSize" or k == "WaterWaveSpeed" or k == "WaterReflectance" then v = 0
			  elseif k == "WaterTransparency" then v = 1
			  elseif k == "GlobalShadows" then v = false end
				 return sda(t, k, v)
				 end)
				 setreadonly(mt, true)
			  end
			  local g = game
			  local w = g.Workspace
			  local l = g:GetService"Lighting"
			  local t = w:WaitForChild"Terrain"
			  t.WaterWaveSize = 0
			  t.WaterWaveSpeed = 0
			  t.WaterReflectance = 0
			  t.WaterTransparency = 1
			  l.GlobalShadows = false
			  function change(v)
				 pcall(function()
				 if v.Material ~= Enum.Material.Neon and v.Material ~= Enum.Material.Plastic and v.Material ~= Enum.Material.ForceField then
					pcall(function() v.Reflectance = 0 end)
					pcall(function() v.Material = Enum.Material.Plastic end)
					pcall(function() v.TopSurface = "Smooth" end)
				 end
				 end)
			  end
			  game.DescendantAdded:Connect(function(v)
			  pcall(function()
			  if v:IsA"Part" then change(v)
		   elseif v:IsA"MeshPart" then change(v)
		   elseif v:IsA"TrussPart" then change(v)
		   elseif v:IsA"UnionOperation" then change(v)
		   elseif v:IsA"CornerWedgePart" then change(v)
		   elseif v:IsA"WedgePart" then change(v) end
			  end)
			  end)
			  for i, v in pairs(game:GetDescendants()) do
				 pcall(function()
				 if v:IsA"Part" then change(v)
			  elseif v:IsA"MeshPart" then change(v)
			  elseif v:IsA"TrussPart" then change(v)
			  elseif v:IsA"UnionOperation" then change(v)
			  elseif v:IsA"CornerWedgePart" then change(v)
			  elseif v:IsA"WedgePart" then change(v) end
				 end)
			  end
		   end
	 
		   function WaterRemvoe()
			  for i,v in pairs(workspace:GetDescendants()) do
				 if string.find(v.Name,"Water") then
					v:Destroy()
				 end
			  end
		   end
	 
		   function ObjectRemvoe()
			  for i,v in pairs(workspace:GetDescendants()) do
				 if string.find(v.Name,"Tree") or string.find(v.Name,"House") then
					v:Destroy()
				 end
			  end
		   end
	 
		   function InvisibleObject()
			  for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
				 if  (v:IsA("Part") or v:IsA("MeshPart") or v:IsA("BasePart")) and v.Transparency then
					v.Transparency = 1
				 end
			  end
		   end
	 
		   function isnil(thing)
			  return (thing == nil)
		   end
		   local function round(n)
			  return math.floor(tonumber(n) + 0.5)
		   end
		   Number = math.random(1, 1000000)
		   function PlrESP()
			  if ESPPlayer then
				 for i,v in pairs(game:GetService("Players"):GetPlayers()) do
					if not isnil(v.Character) then
					   if not v.Character.Head:FindFirstChild('NameEsp'..v.Name) then
						  local BillboardGui = Instance.new("BillboardGui")
						  local ESP = Instance.new("TextLabel")
						  local HealthESP = Instance.new("TextLabel")
						  BillboardGui.Parent = v.Character.Head
						  BillboardGui.Name = 'NameEsp'..v.Name
						  BillboardGui.ExtentsOffset = Vector3.new(0, 1, 0)
						  BillboardGui.Size = UDim2.new(1,200,1,30)
						  BillboardGui.Adornee = v.Character.Head
						  BillboardGui.AlwaysOnTop = true
						  ESP.Name = "ESP"
						  ESP.Parent = BillboardGui
						  ESP.TextTransparency = 0
						  ESP.BackgroundTransparency = 1
						  ESP.Size = UDim2.new(0, 200, 0, 30)
						  ESP.Position = UDim2.new(0,25,0,0)
						  ESP.Font = Enum.Font.Gotham
						  ESP.Text = (v.Name ..' '.."[ "..round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M'.." ]")
						  if v.Team == game:GetService("Players").LocalPlayer.Team then
							 ESP.TextColor3 = Color3.new(0, 255, 255)
						  else
							 ESP.TextColor3 = Color3.new(255, 0, 0)
						  end
						  ESP.TextSize = 14
						  ESP.TextStrokeTransparency = 0.500
						  ESP.TextWrapped = true
						  HealthESP.Name = "HealthESP"
						  HealthESP.Parent = ESP
						  HealthESP.TextTransparency = 0
						  HealthESP.BackgroundTransparency = 1
						  HealthESP.Position = ESP.Position + UDim2.new(0, -25, 0, 15)
						  HealthESP.Size = UDim2.new(0, 200, 0, 30)
						  HealthESP.Font = Enum.Font.Gotham
						  HealthESP.TextColor3 = Color3.fromRGB(255, 0, 0)
						  HealthESP.TextSize = 14
						  HealthESP.TextStrokeTransparency = 0.500
						  HealthESP.TextWrapped = true
						  HealthESP.Text = "Health "..math.floor(v.Character.Humanoid.Health).."/"..math.floor(v.Character.Humanoid.MaxHealth)
					   else
						  v.Character.Head['NameEsp'..v.Name].ESP.Text = (v.Name ..' '..round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
						  v.Character.Head['NameEsp'..v.Name].ESP.HealthESP.Text = "Health "..math.floor(v.Character.Humanoid.Health).."/"..math.floor(v.Character.Humanoid.MaxHealth)
						  v.Character.Head:FindFirstChild('NameEsp'..v.Name).ESP.TextTransparency = 0
						  v.Character.Head:FindFirstChild('NameEsp'..v.Name).ESP.HealthESP.TextTransparency = 0
					   end
					end
				 end
			  else
				 for i,v in pairs(game:GetService("Players"):GetPlayers()) do
					if v.Character.Head:FindFirstChild('NameEsp'..v.Name) then
					   v.Character.Head:FindFirstChild('NameEsp'..v.Name).ESP.TextTransparency = 1
					   v.Character.Head:FindFirstChild('NameEsp'..v.Name).ESP.HealthESP.TextTransparency = 1
					end
				 end
			  end
		   end
	 
		   function IslandESP()
			  for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
				 pcall(function()
				 if _G.IslandEsp then
					if v.Name ~= "Sea" then
					   if not v:FindFirstChild('NameEsp') then
						  local bill = Instance.new('BillboardGui',v)
						  bill.Name = 'NameEsp'
						  bill.ExtentsOffset = Vector3.new(0, 1, 0)
						  bill.Size = UDim2.new(1,200,1,30)
						  bill.Adornee = v
						  bill.AlwaysOnTop = true
						  local name = Instance.new('TextLabel',bill)
						  name.Font = "GothamBold"
						  name.FontSize = "Size14"
						  name.TextWrapped = true
						  name.Size = UDim2.new(1,0,1,0)
						  name.TextYAlignment = 'Top'
						  name.BackgroundTransparency = 1
						  name.TextStrokeTransparency = 0.5
						  name.TextColor3 = Color3.fromRGB(80, 245, 245)
					   else
						  v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
					   end
					end
				 else
					if v:FindFirstChild('NameEsp')then
					   v:FindFirstChild('NameEsp'):Destroy()
					end
				 end
				 end)
			  end
		   end
	 
		   function ChestSESP()
			  for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
				 pcall(function()
				 if string.find(v.Name,"Chest") then
					if  _G.ChestEsp then
					   if string.find(v.Name,"Chest") then
						  if not v:FindFirstChild('NameEsp') then
							 local bill = Instance.new('BillboardGui',v)
							 bill.Name = 'NameEsp'
							 bill.ExtentsOffset = Vector3.new(0, 1, 0)
							 bill.Size = UDim2.new(1,200,1,30)
							 bill.Adornee = v
							 bill.AlwaysOnTop = true
							 local name = Instance.new('TextLabel',bill)
							 name.Font = "GothamBold"
							 name.FontSize = "Size14"
							 name.TextWrapped = true
							 name.Size = UDim2.new(1,0,1,0)
							 name.TextYAlignment = 'Top'
							 name.BackgroundTransparency = 1
							 name.TextStrokeTransparency = 0.5
							 name.TextColor3 = Color3.fromRGB(0, 255, 250)
							 if v.Name == "Chest1" then
								name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
							 end
							 if v.Name == "Chest2" then
								name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
							 end
							 if v.Name == "Chest3" then
								name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
							 end
						  else
							 v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
						  end
					   end
					else
					   if v:FindFirstChild('NameEsp') and not  _G.ChestEsp then
						  v:FindFirstChild('NameEsp'):Destroy()
					   end
					end
				 end
				 end)
			  end
		   end
	 
		   function UpdateBfEsp()
			  for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
				 pcall(function()
				 if  _G.DFEsp then
					if string.find(v.Name, "Fruit") then
					   if not v.Handle:FindFirstChild('NameEsp') then
						  local bill = Instance.new('BillboardGui',v.Handle)
						  bill.Name = 'NameEsp'
						  bill.ExtentsOffset = Vector3.new(0, 1, 0)
						  bill.Size = UDim2.new(1,200,1,30)
						  bill.Adornee = v.Handle
						  bill.AlwaysOnTop = true
						  local name = Instance.new('TextLabel',bill)
						  name.Font = "GothamBold"
						  name.FontSize = "Size14"
						  name.TextWrapped = true
						  name.Size = UDim2.new(1,0,1,0)
						  name.TextYAlignment = 'Top'
						  name.BackgroundTransparency = 1
						  name.TextStrokeTransparency = 0.5
						  name.TextColor3 = Color3.fromRGB(255, 0, 0)
						  name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
					   else
						  v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
					   end
					end
				 else
					if v.Handle:FindFirstChild('NameEsp') and not  _G.DFEsp then
					   v.Handle:FindFirstChild('NameEsp'):Destroy()
					end
				 end
				 if v.Handle:FindFirstChild('NameEsp') and not  _G.DFEsp then
					v.Handle:FindFirstChild('NameEsp'):Destroy()
				 end
				 end)
			  end
		   end
	 
		   function FlowerESP()
			  for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
				 pcall(function()
				 if v.Name == "Flower2" or v.Name == "Flower1" then
					if _G.FlowerEsp then
					   if not v:FindFirstChild('NameEsp') then
						  local bill = Instance.new('BillboardGui',v)
						  bill.Name = 'NameEsp'
						  bill.ExtentsOffset = Vector3.new(0, 1, 0)
						  bill.Size = UDim2.new(1,200,1,30)
						  bill.Adornee = v
						  bill.AlwaysOnTop = true
						  local name = Instance.new('TextLabel',bill)
						  name.Font = "GothamBold"
						  name.FontSize = "Size14"
						  name.TextWrapped = true
						  name.Size = UDim2.new(1,0,1,0)
						  name.TextYAlignment = 'Top'
						  name.BackgroundTransparency = 1
						  name.TextStrokeTransparency = 0.5
						  name.TextColor3 = Color3.fromRGB(255, 0, 0)
						  if v.Name == "Flower1" then
							 name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
							 name.TextColor3 = Color3.fromRGB(0, 0, 255)
						  end
						  if v.Name == "Flower2" then
							 name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
							 name.TextColor3 = Color3.fromRGB(255, 0, 0)
						  end
					   else
						  v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
					   end
					else
					   if v:FindFirstChild('NameEsp') then
						  v:FindFirstChild('NameEsp'):Destroy()
					   end
					end
				 end
				 if v:FindFirstChild('NameEsp') and not _G.FlowerEsp then
					v:FindFirstChild('NameEsp'):Destroy()
				 end
				 end)
			  end
		   end
	 
		   LPH_JIT_MAX(function()
			task.spawn(function()
				game:GetService("RunService").Stepped:Connect(function()
					pcall(function()
						--[World 1]
						if as then
							if adf then
								setfflag("HumanoidParallelRemoveNoPhysics", "False")
								setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
								game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
								if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == true then
									game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
								end
							else
								if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
									if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity1") then
										if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == true then
											game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
										end
										local BodyVelocity = Instance.new("BodyVelocity")
										BodyVelocity.Name = "BodyVelocity1"
										BodyVelocity.Parent =  game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
										BodyVelocity.MaxForce = Vector3.new(10000, 10000, 10000)
										BodyVelocity.Velocity = Vector3.new(0, 0, 0)
									end
								end
								for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
									if v:IsA("BasePart") then
										v.CanCollide = false    
									end
								end
							end
						else
							if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity1") then
								game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity1"):Destroy();
							end
						end
					end)
				end)
			end)
		end)()
		   -- [Bring Mob]
	 
		   LPH_NO_VIRTUALIZE(function()
		   task.spawn(function()
		   while true do wait()
			  if setscriptable then
				 setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
			  end
			  if sethiddenproperty then
				 sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
			  end
		   end
		   end)
		   end)()
		   function InMyNetWork(object)
			if isnetworkowner then
			   return isnetworkowner(object)
			else
			   if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 200 then
				  return true
			   end
			   return false
			end
		 end
	
	
		 task.spawn(function()
			while task.wait(0) do
				pcall(function()
					if StartMagnet then
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if not string.find(v.Name,"Boss") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
									v.HumanoidRootPart.CFrame = PosMon * CFrame.new(0,0,0)
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.CanCollide = false
									v.Head.CanCollide = false
									if v.Humanoid:FindFirstChild("Animator") then
										v.Humanoid.Animator:Destroy()
									end
									v.Humanoid:ChangeState(11)
			v.Humanoid:ChangeState(14)
							end
						end
					end
				end)
			end
		end)
	 
		   -- [No Stun]
	 
		   LPH_NO_VIRTUALIZE(function()
		   spawn(function()
		   if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
			  game.Players.LocalPlayer.Character.Stun.Changed:connect(function()
			  pcall(function()
			  if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
				 game.Players.LocalPlayer.Character.Stun.Value = 0
			  end
			  end)
			  end)
		   end
		   end)
		   end)()
	 
		   -- [require module]
	 
		   local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
		   local CombatFrameworkR = getupvalues(CombatFramework)[2]
		   local RigController = require(game:GetService("Players")["LocalPlayer"].PlayerScripts.CombatFramework.RigController)
		   local RigControllerR = getupvalues(RigController)[2]
		   local realbhit = require(game.ReplicatedStorage.CombatFramework.RigLib)
		   local cooldownFast = tick()
	 
		   -- [Disabled Damage Interface]
		   LPH_JIT_MAX(function()
		   function DisabledDamage()
			  spawn(function()
			  while wait() do
				 pcall(function()
				 if _G.Settings.Configs["Disabled Damage"] then
					game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false
				 else
					game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = true
				 end
				 end)
			  end
			  end)
		   end
		   end)()
	 
	
	 
		   local function inmyself(name)
			  return game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(name) or game:GetService("Players").LocalPlayer.Character:FindFirstChild(name)
		   end
	 
		   -- [Function (Abandoned Quest , Others)]
	 
		   function Com(com,...)
			  local Remote = game:GetService('ReplicatedStorage').Remotes:FindFirstChild("Comm"..com)
			  if Remote:IsA("RemoteEvent") then
				 Remote:FireServer(...)
			  elseif Remote:IsA("RemoteFunction") then
				 Remote:InvokeServer(...)
			  end
		   end
	 
		   -- [Tween Functions]
	 
		   local function GetIsLand(...)
			  local RealtargetPos = {...}
			  local targetPos = RealtargetPos[1]
			  local RealTarget
			  if type(targetPos) == "vector" then
				 RealTarget = targetPos
			  elseif type(targetPos) == "userdata" then
				 RealTarget = targetPos.Position
			  elseif type(targetPos) == "number" then
				 RealTarget = CFrame.new(unpack(RealtargetPos))
				 RealTarget = RealTarget.p
			  end
	 
			  local ReturnValue
			  local CheckInOut = math.huge
			  if game.Players.LocalPlayer.Team then
				 for i,v in pairs(game.Workspace._WorldOrigin.PlayerSpawns:FindFirstChild(tostring(game.Players.LocalPlayer.Team)):GetChildren()) do
					local ReMagnitude = (RealTarget - v:GetModelCFrame().p).Magnitude
					if ReMagnitude < CheckInOut then
					   CheckInOut = ReMagnitude
					   ReturnValue = v.Name
					end
				 end
				 if ReturnValue then
					return ReturnValue
				 end
			  end
		   end
	 
		   --BTP
	 
		   function BTP(Position)
			  game.Players.LocalPlayer.Character.Head:Destroy()
			  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
			  wait(1)
			  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
	 
		   end
	 
		   -- [Tween Functions (toTarget)]
	 
		   local function toTarget(...)
			  local RealtargetPos = {...}
			  local targetPos = RealtargetPos[1]
			  local RealTarget
			  if type(targetPos) == "vector" then
				 RealTarget = CFrame.new(targetPos)
			  elseif type(targetPos) == "userdata" then
				 RealTarget = targetPos
			  elseif type(targetPos) == "number" then
				 RealTarget = CFrame.new(unpack(RealtargetPos))
			  end
	 
			  if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health == 0 then if tween then tween:Cancel() end repeat wait() until game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 wait(0.2) end
	 
			  local tweenfunc = {}
			  local Distance = (RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude
			if Distance < 50 then
				Speed = 50000
				as = false
			elseif Distance > 500 then
				as = true
			Speed = 300
		elseif Distance < 200 then
			as = true
			Speed = 1000
			end
			  if _G.Settings.Configs["Bypass TP"] then
				 if Distance > 3000 and not game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible == true then
					pcall(function()
					tween:Cancel()
					fkwarp = false
	 
					if game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("SpawnPoint").Value == tostring(GetIsLand(RealTarget)) then
					   wait(.1)
					   Com("F_","TeleportToSpawn")
					elseif game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("LastSpawnPoint").Value == tostring(GetIsLand(RealTarget)) then
					   game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
					   wait(0.1)
					   repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
					   else
						  if game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
							 if fkwarp == false then
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RealTarget
							 end
							 fkwarp = true
						  end
						  wait(.08)
						  game.Players.LocalPlayer.Character.Head:Destroy()
						  game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
						  repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
							 wait(.1)
						  end
						  wait(0.2)
	 
						  return
						  end)
					   end
					end
	 
					local tween_s = game:service"TweenService"
					local info = TweenInfo.new((RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude/Speed, Enum.EasingStyle.Linear)
					local tweenw, err = pcall(function()
	
					tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = RealTarget})
					tween:Play()
	
					end)
	
	
	
	 
					function tweenfunc:Stop()
					   tween:Cancel()
					end
	 
					function tweenfunc:Wait()
					   tween.Completed:Wait()
					end
	 
					return tweenfunc
				 end
	 
				 function toTargetP(CFgo)
					if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health <= 0 or not game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") then tween:Cancel() repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") and game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 wait(7) return end
					if (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude <= 150 then
					   pcall(function()
					   tween:Cancel()
	 
					   game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = CFgo
	 
					   return
					   end)
					end
					local tween_s = game:service"TweenService"
					local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude/325, Enum.EasingStyle.Linear)
					tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CFgo})
					tween:Play()
	 
					local tweenfunc = {}
	 
					function tweenfunc:Stop()
					   tween:Cancel()
					end
	 
					return tweenfunc
				 end
	 
				 -- [Infinites Energy]
	 
				 LPH_NO_VIRTUALIZE(function()
				 function InfinitiesEnergy()
					game:GetService('Players').LocalPlayer.Character.Energy.Changed:connect(function()
					if _G.Settings.Misc["Infinities Energy"] then
					   game:GetService('Players').LocalPlayer.Character.Energy.Value = game:GetService('Players').LocalPlayer.Character.Energy.MaxValue
					end
					end)
				 end
				 end)()
	 
				 -- [No Cooldown , Infinities Geppo]
	 
				 function NoCooldown()
					for i,v in next, getgc() do
					   if typeof(v) == "function" then
						  if getfenv(v).script == game.Players.LocalPlayer.Character:WaitForChild("Dodge") and _G.Settings.Misc["No Dash Cooldown"] then
							 for i2,v2 in next, debug.getupvalues(v) do
								if tostring(v2) == "0.4" then
								   spawn(function()
								   repeat wait(.1)
									  debug.setupvalue(v,i2,0)
								   until not _G.Settings.Misc["No Dash Cooldown"]
								   end)
								end
							 end
						  end
						  if getfenv(v).script == game.Players.LocalPlayer.Character:WaitForChild("Geppo") and _G.Settings.Misc["Infinities Geppo"] then
							 for i2,v2 in next, debug.getupvalues(v) do
								if tostring(v2) == "0" then
								   spawn(function()
								   repeat wait(.1)
									  debug.setupvalue(v,i2,0)
								   until not _G.Settings.Misc["Infinities Geppo"]
								   end)
								end
							 end
						  end
						  if getfenv(v).script == game.Players.LocalPlayer.Character:WaitForChild("Soru") and _G.Settings.Misc["No Soru Cooldown"] then
							 for i2,v2 in pairs(debug.getupvalues(v)) do
								if type(v2) == 'table' then
								   if v2.LastUse then
									  spawn(function()
									  repeat wait()
										 debug.setupvalue(v, i2, {LastAfter = 0,LastUse = 0})
									  until not _G.Settings.Misc["No Soru Cooldown"]
									  end)
								   end
								end
							 end
						  end
					   end
					end
				 end
	 
				 -- [Xray Function]
	 
				 function xray(v)
					if v then
					   for _,i in pairs(workspace:GetDescendants()) do
						  if i:IsA("BasePart") and not i.Parent:FindFirstChildOfClass('Humanoid') and not i.Parent.Parent:FindFirstChildOfClass('Humanoid') then
							 i.LocalTransparencyModifier = 0.5
						  end
					   end
					else
					   for _,i in pairs(workspace:GetDescendants()) do
						  if i:IsA("BasePart") and not i.Parent:FindFirstChildOfClass('Humanoid') and not i.Parent.Parent:FindFirstChildOfClass('Humanoid') then
							 i.LocalTransparencyModifier = 0
						  end
					   end
					end
				 end
	 
	 
				 function getRoot(char)
					local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
					return rootPart
				 end
	 
				 function r15(plr)
					if plr.Character:FindFirstChildOfClass('Humanoid').RigType == Enum.HumanoidRigType.R15 then
					   return true
					end
				 end
	 
				 -- [Functions Click]
	 
				 function ClickCamera()
					game:GetService("VirtualUser"):CaptureController()
					game:GetService("VirtualUser"):ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
				 end
				 function Click()
					game:GetService("VirtualUser"):CaptureController()
					game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
				 end
	 
				 -- [Server Hop Api]
	 
				 local ServerHop =  loadstring(game:HttpGet("https://www.klgrth.io/paste/h8yq5/raw"))()
	 
				 function Fast_Hop()
					pcall(function()
					for count = math.random(1, math.random(40, 75)), 100 do
					   remote = game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer(count)
					   for _i ,v in pairs(remote) do
						  if tonumber(v['Count']) < 12 then
							 game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, _i)
						  end
					   end
					end
					end)
				 end
	 
				 -- [Remove Text Fruits]
	 
				 function RemoveFruit(str)
					return str:gsub(" Fruit", "")
				 end
	 
				 -- [Code Api]
	 
				 local CodeApi = loadstring(game:HttpGet('https://pastebin.com/raw/EK13Njf3'))()
	 
				 -- [Comma Value]
	 
				 function comma_value(p1)
					local v1 = p1
					while true do
					   local v2, v3 = string.gsub(v1, "^(-?%d+)(%d%d%d)", "%1,%2")
					   v1 = v2
					   if v3 ~= 0 then else
					   break
					end
				 end
				 return v1
			  end
	 
			  --[SeaBeast]
	 
			  local function CheckSeabeast()
				 for i,v in pairs(game.Workspace.SeaBeasts:GetChildren()) do
					if v:FindFirstChild("HumanoidRootPart") then
					   return v
					end
				 end
				 return false
			  end
	 
			  local function myboat(NameBoat)
				 for i,v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
					if #game:GetService("Workspace").Boats:GetChildren() > 0 then
					   if v:FindFirstChild("Owner") then
						  if tostring(v.Owner.Value) == game.Players.LocalPlayer.Name then
							 return v.Plank.CFrame * CFrame.new(0.1,-0.5,0)
						  end
					   end
					end
				 end
				 return false
			  end
	 
			  -- [Check Fruit 1M]
	 
	 
			  _G.CheckFruitLocal1M = false
			  function CheckFruit1M()
				 for i,v in pairs(game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("getInventoryFruits")) do
					if v.Price >= 1000000 then
					   _G.CheckFruitLocal1M = true
					end
				 end
			  end
	 
			  -- [Get FightingStyle]
	 
			  function GetFightingStyle(Style)
				 ReturnText = ""
				 for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v:IsA("Tool") then
					   if v.ToolTip == Style then
						  ReturnText = v.Name
					   end
					end
				 end
				 for i ,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
					if v:IsA("Tool") then
					   if v.ToolTip == Style then
						  ReturnText = v.Name
					   end
					end
				 end
				 if ReturnText ~= "" then
					return ReturnText
				 else
					return "Not Have"
				 end
			  end
	 
	 
			  local placeId = game.PlaceId
			  if placeId == 2753915549 then
				 World1 = true
			  elseif placeId == 4442272183 then
				 World2 = true
			  elseif placeId == 7449423635 then
				 World3 = true
			  else
				 game.Players.LocalPlayer:Kick("??????????????????????")
			  end
	 
			  -- [CheckMasteryWeapon]
	 
			  function CheckMasteryWeapon(NameWe,MasNum)
				 if game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe) then
					if tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
					   return "true DownTo"
					elseif tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
					   return "true UpTo"
					end
				 end
				 if game.Players.LocalPlayer.Character:FindFirstChild(NameWe) then
					if tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
					   return "true DownTo"
					elseif tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
					   return "true UpTo"
					end
				 end
				 return "else"
			  end
	 
			  --[GetWeaponInventory]
	 
			  function GetWeaponInventory(Weaponname)
				 for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
					if type(v) == "table" then
					   if v.Type == "Sword" then
						  if v.Name == Weaponname then
							 return true
						  end
					   end
					end
				 end
				 return false
			  end
	 
			  -- [GetMaterial]
	 
			  function GetMaterial(matname)
				 for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
					if type(v) == "table" then
					   if v.Type == "Material" then
						  if v.Name == matname then
							 return v.Count
						  end
					   end
					end
				 end
				 return 0
			  end
	 
			  local AllMaterial
			  if World1 then
				 AllMaterial = {
					"Magma Ore",
					"Leather",
					"Scrap Metal",
					"Angel Wings",
					"Fish Tail"
				 }
			  elseif World2 then
				 AllMaterial = {
					"Magma Ore",
					"Scrap Metal",
					"Radioactive Material",
					"Vampire Fang",
					"Mystic Droplet",
				 }
			  elseif World3 then
				 AllMaterial = {
					"Mini Tusk",
					"Fish Tail",
					"Scrap Metal",
					"Dragon Scale",
					"Conjured Cocoa",
					"Demonic Wisp",
					"Gunpowder",
				 }
			  end
	 
			  table.sort(AllMaterial)
	 
			  -- [CustomFindFirstChild]
	 
			  local function CustomFindFirstChild(tablename)
				 for i,v in pairs(tablename) do
					if game:GetService("Workspace").Enemies:FindFirstChild(v) then
					   return true
					end
				 end
				 return false
			  end
	 
			  -- [IsNumber]
	 
			  function isNumber(str)
				 if tonumber(str) ~= nil or str == 'inf' then
					return true
				 end
			  end
	 
	 
			  -- [Invisible]
	 
			  local Player = game:GetService('Players').LocalPlayer
	 
			  local function CheckRig()
				 if Player.Character then
					local Humanoid = Player.Character:WaitForChild('Humanoid')
					if Humanoid.RigType == Enum.HumanoidRigType.R15 then
					   return 'R15'
					else
					   return 'R6'
					end
				 end
			  end
	 
			  local function InitiateInvis()
				 local Character = Player.Character
				 local StoredCF = Character.PrimaryPart.CFrame
	 
				 if CheckRig() == 'R6' then
					local Clone = Character.HumanoidRootPart:Clone()
					Character.HumanoidRootPart:Destroy()
					Clone.Parent = Character
				 else
					local Clone = Character.LowerTorso.Root:Clone()
					Character.LowerTorso.Root:Destroy()
					Clone.Parent = Character.LowerTorso
				 end
	 
			  end
	 
			  function CheckQuest()
				 local MyLevel = game.Players.LocalPlayer.Data.Level.Value
				 if World1 then
					if ((MyLevel == 1) or (MyLevel <= 9)) then
					   LevelFarm = 1
					   Name = "Bandit [Lv. 5]"
					   QuestName = "BanditQuest1"
					   LevelQuest = 1
					   NameMon = "Bandit"
					   CFrameMon = CFrame.new(1060, 17, 1547)
					   VectorMon = Vector3.new(1060, 17, 1547)
					   CFrameQuest = CFrame.new(1060, 17, 1547)
					   VectorQuest = Vector3.new(1060, 17, 1547)
					elseif ((MyLevel == 10) or (MyLevel <= 14)) then
					   LevelFarm = 2
					   Name = "Monkey [Lv. 14]"
					   QuestName = "JungleQuest"
					   LevelQuest = 1
					   NameMon = "Monkey"
					   CFrameMon = CFrame.new(-1496, 39, 35)
					   VectorMon = Vector3.new(-1496, 39, 35)
					   CFrameQuest = CFrame.new(-1496, 39, 35)
					   VectorQuest = Vector3.new(-1496, 39, 35)
					elseif ((MyLevel == 15) or (MyLevel <= 29)) then
					   LevelFarm = 3
					   Name = "Gorilla [Lv. 20]"
					   QuestName = "JungleQuest"
					   LevelQuest = 2
					   NameMon = "Gorilla"
					   CFrameMon = CFrame.new(-1237, 6, -486)
					   VectorMon = Vector3.new(-1237, 7, -486)
					   CFrameQuest = CFrame.new(-1237, 6, -486)
					   VectorQuest = Vector3.new(-1237, 6, -486)
					elseif ((MyLevel == 30) or (MyLevel <= 39)) then
					   LevelFarm = 4
					   Name = "Pirate [Lv. 35]"
					   QuestName = "BuggyQuest1"
					   LevelQuest = 1
					   NameMon = "Pirate"
					   CFrameMon = CFrame.new(-1115, 14, 3938)
					   VectorMon = Vector3.new(-1115, 14, 3938)
					   CFrameQuest = CFrame.new(-1140, 5, 3828)
					   VectorQuest = Vector3.new(-1140, 5, 3828)
					elseif ((MyLevel == 40) or (MyLevel <= 59)) then
					   LevelFarm = 5
					   Name = "Brute [Lv. 45]"
					   QuestName = "BuggyQuest1"
					   LevelQuest = 2
					   NameMon = "Brute"
					   CFrameMon = CFrame.new(-1145, 15, 4350)
					   VectorMon = Vector3.new(-1146, 15, 4350)
					   CFrameQuest = CFrame.new(-1140, 5, 3828)
					   VectorQuest = Vector3.new(-1140, 5, 3828)
					elseif ((MyLevel == 60) or (MyLevel <= 74)) then
					   LevelFarm = 6
					   Name = "Desert Bandit [Lv. 60]"
					   QuestName = "DesertQuest"
					   LevelQuest = 1
					   NameMon = "Desert Bandit"
					   CFrameMon = CFrame.new(932, 7, 4484)
					   VectorMon = Vector3.new(932, 7, 4484)
					   CFrameQuest = CFrame.new(897, 7, 4388)
					   VectorQuest = Vector3.new(897, 7, 4388)
					elseif ((MyLevel == 75) or (MyLevel <= 89)) then
					   LevelFarm = 7
					   Name = "Desert Officer [Lv. 70]"
					   QuestName = "DesertQuest"
					   LevelQuest = 2
					   NameMon = "Desert Officer"
					   CFrameMon = CFrame.new(1572, 10, 4373)
					   VectorMon = Vector3.new(1572, 10, 4373)
					   CFrameQuest = CFrame.new(897, 7, 4388)
					   VectorQuest = Vector3.new(897, 7, 4388)
					elseif ((MyLevel == 90) or (MyLevel <= 99)) then
					   LevelFarm = 8
					   Name = "Snow Bandit [Lv. 90]"
					   QuestName = "SnowQuest"
					   LevelQuest = 1
					   NameMon = "Snow Bandits"
					   CFrameMon = CFrame.new(1289, 150, -1442)
					   VectorMon = Vector3.new(1289, 106, -1442)
					   CFrameQuest = CFrame.new(1386, 87, -1297)
					   VectorQuest = Vector3.new(1386, 87, -1297)
					elseif ((MyLevel == 100) or (MyLevel <= 119)) then
					   LevelFarm = 9
					   Name = "Snowman [Lv. 100]"
					   QuestName = "SnowQuest"
					   LevelQuest = 2
					   NameMon = "Snowman"
					   CFrameMon = CFrame.new(1289, 150, -1442)
					   VectorMon = Vector3.new(1289, 106, -1442)
					   CFrameQuest = CFrame.new(1386, 87, -1297)
					   VectorQuest = Vector3.new(1386, 87, -1297)
					elseif ((MyLevel == 120) or (MyLevel <= 149)) then
					   LevelFarm = 10
					   Name = "Chief Petty Officer [Lv. 120]"
					   QuestName = "MarineQuest2"
					   LevelQuest = 1
					   NameMon = "Chief Petty Officer"
					   CFrameMon = CFrame.new(-4855, 23, 4308)
					   VectorMon = Vector3.new(-4855, 23, 4308)
					   CFrameQuest = CFrame.new(-5036, 29, 4325)
					   VectorQuest = Vector3.new(-5036, 29, 4325)
					elseif ((MyLevel == 150) or (MyLevel <= 174)) then
					   LevelFarm = 11
					   Name = "Sky Bandit [Lv. 150]"
					   QuestName = "SkyQuest"
					   LevelQuest = 1
					   NameMon = "Sky Bandit"
					   CFrameMon = CFrame.new(-4981, 278, -2830)
					   VectorMon = Vector3.new(-4981, 278, -2830)
					   CFrameQuest = CFrame.new(-4842, 718, -2623)
					   VectorQuest = Vector3.new(-4842, 718, -2623)
					elseif ((MyLevel == 175) or (MyLevel <= 189)) then
					   LevelFarm = 12
					   Name = "Dark Master [Lv. 175]"
					   QuestName = "SkyQuest"
					   LevelQuest = 2
					   NameMon = "Dark Master"
					   CFrameMon = CFrame.new(-5250, 389, -2272)
					   VectorMon = Vector3.new(-5250, 389, -2272)
					   CFrameQuest = CFrame.new(-4842, 718, -2623)
					   VectorQuest = Vector3.new(-4842, 718, -2623)
					elseif ((MyLevel == 190) or (MyLevel <= 209)) then
					   LevelFarm = 13
					   Name = "Prisoner [Lv. 190]"
					   QuestName = "PrisonerQuest"
					   LevelQuest = 1
					   NameMon = "Prisoner"
					   CFrameMon = CFrame.new(5411, 96, 690)
					   VectorMon = Vector3.new(5411, 96, 690)
					   CFrameQuest = CFrame.new(5308, 2, 474)
					   VectorQuest = Vector3.new(5308, 2, 474)
					elseif ((MyLevel == 210) or (MyLevel <= 249)) then
					   LevelFarm = 14
					   Name = "Dangerous Prisoner [Lv. 210]"
					   QuestName = "PrisonerQuest"
					   LevelQuest = 2
					   NameMon = "Dangerous Prisoner"
					   CFrameMon = CFrame.new(5411, 96, 690)
					   VectorMon = Vector3.new(5411, 96, 690)
					   CFrameQuest = CFrame.new(5308, 2, 474)
					   VectorQuest = Vector3.new(5308, 2, 474)
					elseif ((MyLevel == 250) or (MyLevel <= 299)) then
					   LevelFarm = 15
					   Name = "Toga Warrior [Lv. 250]"
					   QuestName = "ColosseumQuest"
					   LevelQuest = 1
					   NameMon = "Toga Warrior"
					   CFrameMon = CFrame.new(-1824, 50, -2743)
					   VectorMon = Vector3.new(-1824, 50, -2743)
					   CFrameQuest = CFrame.new(-1576, 8, -2985)
					   VectorQuest = Vector3.new(-1576, 8, -2985)
					elseif ((MyLevel == 300) or (MyLevel <= 329)) then
					   LevelFarm = 16
					   Name = "Military Soldier [Lv. 300]"
					   QuestName = "MagmaQuest"
					   LevelQuest = 1
					   NameMon = "Military Soldier"
					   CFrameMon = CFrame.new(-5408, 11, 8447)
					   VectorMon = Vector3.new(-5408, 11, 8447)
					   CFrameQuest = CFrame.new(-5316, 12, 8517)
					   VectorQuest = Vector3.new(-5316, 12, 8517)
					elseif ((MyLevel == 330) or (MyLevel <= 374)) then
					   LevelFarm = 17
					   Name = "Military Spy [Lv. 325]"
					   QuestName = "MagmaQuest"
					   LevelQuest = 2
					   NameMon = "Military Spy"
					   CFrameMon = CFrame.new(-5815, 84, 8820)
					   VectorMon = Vector3.new(-5815, 84, 8820)
					   CFrameQuest = CFrame.new(-5316, 12, 8517)
					   VectorQuest = Vector3.new(-5316, 12, 8517)
					elseif ((MyLevel == 375) or (MyLevel <= 399)) then
					   LevelFarm = 18
					   Name = "Fishman Warrior [Lv. 375]"
					   QuestName = "FishmanQuest"
					   LevelQuest = 1
					   NameMon = "Fishman Warrior"
					   CFrameMon = CFrame.new(60859, 19, 1501)
					   VectorMon = Vector3.new(60859, 19, 1501)
					   CFrameQuest = CFrame.new(61123, 19, 1569)
					   VectorQuest = Vector3.new(61123, 19, 1569)
					elseif ((MyLevel == 400) or (MyLevel <= 449)) then
					   LevelFarm = 19
					   Name = "Fishman Commando [Lv. 400]"
					   QuestName = "FishmanQuest"
					   LevelQuest = 2
					   NameMon = "Fishman Commando"
					   CFrameMon = CFrame.new(61891, 19, 1470)
					   VectorMon = Vector3.new(61891, 19, 1470)
					   CFrameQuest = CFrame.new(61123, 19, 1569)
					   VectorQuest = Vector3.new(61123, 19, 1569)
					elseif ((MyLevel == 450) or (MyLevel <= 474)) then
					   LevelFarm = 20
					   Name = "God's Guard [Lv. 450]"
					   QuestName = "SkyExp1Quest"
					   LevelQuest = 1
					   NameMon = "God's Guards"
					   CFrameMon = CFrame.new(-4698, 845, -1912)
					   VectorMon = Vector3.new(-4698, 845, -1912)
					   CFrameQuest = CFrame.new(-4722, 845, -1954)
					   VectorQuest = Vector3.new(-4722, 846, -1954)
					elseif ((MyLevel == 475) or (MyLevel <= 524)) then
					   LevelFarm = 21
					   Name = "Shanda [Lv. 475]"
					   QuestName = "SkyExp1Quest"
					   LevelQuest = 2
					   NameMon = "Shandas"
					   CFrameMon = CFrame.new(-7685, 5567, -502)
					   VectorMon = Vector3.new(-7685, 5567, -502)
					   CFrameQuest = CFrame.new(-7862, 5546, -380)
					   VectorQuest = Vector3.new(-7862, 5546, -380)
					elseif ((MyLevel == 525) or (MyLevel <= 549)) then
					   LevelFarm = 22
					   Name = "Royal Squad [Lv. 525]"
					   QuestName = "SkyExp2Quest"
					   LevelQuest = 1
					   NameMon = "Royal Squad"
					   CFrameMon = CFrame.new(-7670, 5607, -1460)
					   VectorMon = Vector3.new(-7670, 5607, -1460)
					   CFrameQuest = CFrame.new(-7904, 5636, -1412)
					   VectorQuest = Vector3.new(-7904, 5636, -1412)
					elseif ((MyLevel == 550) or (MyLevel <= 624)) then
					   LevelFarm = 23
					   Name = "Royal Soldier [Lv. 550]"
					   QuestName = "SkyExp2Quest"
					   LevelQuest = 2
					   NameMon = "Royal Soldier"
					   CFrameMon = CFrame.new(-7828, 5607, -1744)
					   VectorMon = Vector3.new(-7828, 5607, -1744)
					   CFrameQuest = CFrame.new(-7904, 5636, -1412)
					   VectorQuest = Vector3.new(-7904, 5636, -1412)
					elseif ((MyLevel == 625) or (MyLevel <= 649)) then
					   LevelFarm = 24
					   Name = "Galley Pirate [Lv. 625]"
					   QuestName = "FountainQuest"
					   LevelQuest = 1
					   NameMon = "Galley Pirate"
					   CFrameMon = CFrame.new(5589, 45, 3996)
					   VectorMon = Vector3.new(5589, 45, 3996)
					   CFrameQuest = CFrame.new(5256, 39, 4050)
					   VectorQuest = Vector3.new(5256, 39, 4050)
					elseif (MyLevel >= 650) then
					   LevelFarm = 25
					   Name = "Galley Captain [Lv. 650]"
					   QuestName = "FountainQuest"
					   LevelQuest = 2
					   NameMon = "Galley Captain"
					   CFrameMon = CFrame.new(5649, 39, 4936)
					   VectorMon = Vector3.new(5649, 39, 4936)
					   CFrameQuest = CFrame.new(5256, 39, 4050)
					   VectorQuest = Vector3.new(5256, 39, 4050)
					end
				 end
				 if World2 then
					if ((MyLevel == 700) or (MyLevel <= 724)) then
					   LevelFarm = 1
					   Name = "Raider [Lv. 700]"
					   QuestName = "Area1Quest"
					   LevelQuest = 1
					   NameMon = "Raider"
					   CFrameQuest = CFrame.new(-425, 73, 1837)
					   VectorQuest = Vector3.new(-425, 73, 1837)
					   CFrameMon = CFrame.new(-746, 39, 2390)
					   VectorMon = Vector3.new(-746, 39, 2389)
					elseif ((MyLevel == 725) or (MyLevel <= 774)) then
					   LevelFarm = 2
					   Name = "Mercenary [Lv. 725]"
					   QuestName = "Area1Quest"
					   LevelQuest = 2
					   NameMon = "Mercenary"
					   CFrameQuest = CFrame.new(-425, 73, 1837)
					   VectorQuest = Vector3.new(-425, 73, 1837)
					   CFrameMon = CFrame.new(-874, 141, 1312)
					   VectorMon = Vector3.new(-874, 141, 1312)
					elseif ((MyLevel == 775) or (MyLevel <= 799)) then
					   LevelFarm = 3
					   Name = "Swan Pirate [Lv. 775]"
					   QuestName = "Area2Quest"
					   LevelQuest = 1
					   NameMon = "Swan Pirate"
					   CFrameQuest = CFrame.new(634, 73, 918)
					   VectorQuest = Vector3.new(634, 73, 918)
					   CFrameMon = CFrame.new(878, 122, 1235)
					   VectorMon = Vector3.new(878, 122, 1235)
					elseif ((MyLevel == 800) or (MyLevel <= 874)) then
					   LevelFarm = 4
					   Name = "Factory Staff [Lv. 800]"
					   QuestName = "Area2Quest"
					   LevelQuest = 2
					   NameMon = "Factory Staff"
					   CFrameQuest = CFrame.new(634, 73, 918)
					   VectorQuest = Vector3.new(634, 73, 918)
					   CFrameMon = CFrame.new(295, 73, -56)
					   VectorMon = Vector3.new(295, 73, -56)
					elseif ((MyLevel == 875) or (MyLevel <= 899)) then
					   LevelFarm = 5
					   Name = "Marine Lieutenant [Lv. 875]"
					   QuestName = "MarineQuest3"
					   LevelQuest = 1
					   NameMon = "Marine Lieutenant"
					   CFrameMon = CFrame.new(-2806, 73, -3038)
					   VectorMon = Vector3.new(-2806, 73, -3038)
					   CFrameQuest = CFrame.new(-2443, 73, -3219)
					   VectorQuest = Vector3.new(-2443, 73, -3219)
					elseif ((MyLevel == 900) or (MyLevel <= 949)) then
					   LevelFarm = 6
					   Name = "Marine Captain [Lv. 900]"
					   QuestName = "MarineQuest3"
					   LevelQuest = 2
					   NameMon = "Marine Captain"
					   CFrameMon = CFrame.new(-1869, 73, -3320)
					   VectorMon = Vector3.new(-1869, 73, -3320)
					   CFrameQuest = CFrame.new(-2443, 73, -3219)
					   VectorQuest = Vector3.new(-2443, 73, -3219)
					elseif ((MyLevel == 950) or (MyLevel <= 974)) then
					   LevelFarm = 7
					   Name = "Zombie [Lv. 950]"
					   QuestName = "ZombieQuest"
					   LevelQuest = 1
					   NameMon = "Zombie"
					   CFrameMon = CFrame.new(-5736, 126, -728)
					   VectorMon = Vector3.new(-5736, 126, -728)
					   CFrameQuest = CFrame.new(-5494, 49, -795)
					   VectorQuest = Vector3.new(-5494, 49, -794)
					elseif ((MyLevel == 975) or (MyLevel <= 999)) then
					   LevelFarm = 8
					   Name = "Vampire [Lv. 975]"
					   QuestName = "ZombieQuest"
					   LevelQuest = 2
					   NameMon = "Vampire"
					   CFrameMon = CFrame.new(-6033, 7, -1317)
					   VectorMon = Vector3.new(-6033, 7, -1317)
					   CFrameQuest = CFrame.new(-5494, 49, -795)
					   VectorQuest = Vector3.new(-5494, 49, -795)
					elseif ((MyLevel == 1000) or (MyLevel <= 1049)) then
					   LevelFarm = 9
					   Name = "Snow Trooper [Lv. 1000]"
					   QuestName = "SnowMountainQuest"
					   LevelQuest = 1
					   NameMon = "Snow Trooper"
					   CFrameMon = CFrame.new(478, 402, -5362)
					   VectorMon = Vector3.new(478, 402, -5362)
					   CFrameQuest = CFrame.new(605, 402, -5371)
					   VectorQuest = Vector3.new(605, 402, -5371)
					elseif ((MyLevel == 1050) or (MyLevel <= 1099)) then
					   LevelFarm = 10
					   Name = "Winter Warrior [Lv. 1050]"
					   QuestName = "SnowMountainQuest"
					   LevelQuest = 2
					   NameMon = "Winter Warrior"
					   CFrameMon = CFrame.new(1157, 430, -5188)
					   VectorMon = Vector3.new(1157, 430, -5188)
					   CFrameQuest = CFrame.new(605, 402, -5371)
					   VectorQuest = Vector3.new(605, 402, -5371)
					elseif ((MyLevel == 1100) or (MyLevel <= 1124)) then
					   LevelFarm = 11
					   Name = "Lab Subordinate [Lv. 1100]"
					   QuestName = "IceSideQuest"
					   LevelQuest = 1
					   NameMon = "Lab Subordinate"
					   CFrameMon = CFrame.new(-5782, 42, -4484)
					   VectorMon = Vector3.new(-5782, 42, -4484)
					   CFrameQuest = CFrame.new(-6060, 16, -4905)
					   VectorQuest = Vector3.new(-6060, 16, -4905)
					elseif ((MyLevel == 1125) or (MyLevel <= 1174)) then
					   LevelFarm = 12
					   Name = "Horned Warrior [Lv. 1125]"
					   QuestName = "IceSideQuest"
					   LevelQuest = 2
					   NameMon = "Horned Warrior"
					   CFrameMon = CFrame.new(-6406, 24, -5805)
					   VectorMon = Vector3.new(-6406, 24, -5805)
					   CFrameQuest = CFrame.new(-6060, 16, -4905)
					   VectorQuest = Vector3.new(-6060, 16, -4905)
					elseif ((MyLevel == 1175) or (MyLevel <= 1199)) then
					   LevelFarm = 13
					   Name = "Magma Ninja [Lv. 1175]"
					   QuestName = "FireSideQuest"
					   LevelQuest = 1
					   NameMon = "Magma Ninja"
					   CFrameMon = CFrame.new(-5428, 78, -5959)
					   VectorMon = Vector3.new(-5428, 78, -5959)
					   CFrameQuest = CFrame.new(-5430, 16, -5295)
					   VectorQuest = Vector3.new(-5430, 16, -5296)
					elseif ((MyLevel == 1200) or (MyLevel <= 1249)) then
					   LevelFarm = 14
					   Name = "Lava Pirate [Lv. 1200]"
					   QuestName = "FireSideQuest"
					   LevelQuest = 2
					   NameMon = "Lava Pirate"
					   CFrameMon = CFrame.new(-5270, 42, -4800)
					   VectorMon = Vector3.new(-5270, 42, -4800)
					   CFrameQuest = CFrame.new(-5430, 16, -5295)
					   VectorQuest = Vector3.new(-5430, 16, -5296)
					elseif ((MyLevel == 1250) or (MyLevel <= 1274)) then
					   LevelFarm = 15
					   Name = "Ship Deckhand [Lv. 1250]"
					   QuestName = "ShipQuest1"
					   LevelQuest = 1
					   NameMon = "Ship Deckhand"
					   CFrameMon = CFrame.new(1198, 126, 33031)
					   VectorMon = Vector3.new(1198, 126, 33031)
					   CFrameQuest = CFrame.new(1038, 125, 32913)
					   VectorQuest = Vector3.new(1038, 125, 32913)
					elseif ((MyLevel == 1275) or (MyLevel <= 1299)) then
					   LevelFarm = 16
					   Name = "Ship Engineer [Lv. 1275]"
					   QuestName = "ShipQuest1"
					   LevelQuest = 2
					   NameMon = "Ship Engineer"
					   CFrameMon = CFrame.new(918, 44, 32787)
					   VectorMon = Vector3.new(918, 44, 32787)
					   CFrameQuest = CFrame.new(1038, 125, 32913)
					   VectorQuest = Vector3.new(1038, 125, 32913)
					elseif ((MyLevel == 1300) or (MyLevel <= 1324)) then
					   LevelFarm = 17
					   Name = "Ship Steward [Lv. 1300]"
					   QuestName = "ShipQuest2"
					   LevelQuest = 1
					   NameMon = "Ship Steward"
					   CFrameMon = CFrame.new(915, 130, 33419)
					   VectorMon = Vector3.new(915, 130, 33419)
					   CFrameQuest = CFrame.new(969, 125, 33245)
					   VectorQuest = Vector3.new(969, 125, 33245)
					elseif ((MyLevel == 1325) or (MyLevel <= 1349)) then
					   LevelFarm = 18
					   Name = "Ship Officer [Lv. 1325]"
					   QuestName = "ShipQuest2"
					   LevelQuest = 2
					   NameMon = "Ship Officer"
					   CFrameMon = CFrame.new(916, 181, 33335)
					   VectorMon = Vector3.new(916, 181, 33335)
					   CFrameQuest = CFrame.new(969, 125, 33245)
					   VectorQuest = Vector3.new(969, 125, 33245)
					elseif ((MyLevel == 1350) or (MyLevel <= 1374)) then
					   LevelFarm = 19
					   Name = "Arctic Warrior [Lv. 1350]"
					   QuestName = "FrostQuest"
					   LevelQuest = 1
					   NameMon = "Arctic Warrior"
					   CFrameMon = CFrame.new(6038, 29, -6231)
					   VectorMon = Vector3.new(6038, 29, -6231)
					   VectorQuest = Vector3.new(5669, 28, -6482)
					   CFrameQuest = CFrame.new(5669, 28, -6482)
					elseif ((MyLevel == 1375) or (MyLevel <= 1424)) then
					   LevelFarm = 20
					   Name = "Snow Lurker [Lv. 1375]"
					   QuestName = "FrostQuest"
					   LevelQuest = 2
					   NameMon = "Snow Lurker"
					   CFrameMon = CFrame.new(5560, 42, -6826)
					   VectorMon = Vector3.new(5560, 42, -6826)
					   VectorQuest = Vector3.new(5669, 28, -6482)
					   CFrameQuest = CFrame.new(5669, 28, -6482)
					elseif ((MyLevel == 1425) or (MyLevel <= 1449)) then
					   LevelFarm = 21
					   Name = "Sea Soldier [Lv. 1425]"
					   QuestName = "ForgottenQuest"
					   LevelQuest = 1
					   NameMon = "Sea Soldier"
					   CFrameMon = CFrame.new(-3022, 16, -9722)
					   VectorMon = Vector3.new(-3022, 16, -9722)
					   CFrameQuest = CFrame.new(-3054, 237, -10148)
					   VectorQuest = Vector3.new(-3054, 237, -10148)
					elseif (MyLevel >= 1450) then
					   LevelFarm = 22
					   Name = "Water Fighter [Lv. 1450]"
					   QuestName = "ForgottenQuest"
					   LevelQuest = 2
					   NameMon = "Water Fighter"
					   CFrameMon = CFrame.new(-3385, 239, -10542)
					   VectorMon = Vector3.new(-3385, 239, -10542)
					   CFrameQuest = CFrame.new(-3054, 237, -10148)
					   VectorQuest = Vector3.new(-3054, 237, -10148)
					end
				 end
				 if World3 then
					if ((MyLevel == 1500) or (MyLevel <= 1524)) then
					   LevelFarm = 1
					   Name = "Pirate Millionaire [Lv. 1500]"
					   QuestName = "PiratePortQuest"
					   LevelQuest = 1
					   NameMon = "Pirate"
					   CFrameMon = CFrame.new(-373, 75, 5550)
					   VectorMon = Vector3.new(-373, 75, 5550)
					   CFrameQuest = CFrame.new(-288, 44, 5576)
					   VectorQuest = Vector3.new(-288, 44, 5576)
					elseif ((MyLevel == 1525) or (MyLevel <= 1574)) then
					   LevelFarm = 2
					   Name = "Pistol Billionaire [Lv. 1525]"
					   QuestName = "PiratePortQuest"
					   LevelQuest = 2
					   NameMon = "Pistol"
					   CFrameMon = CFrame.new(-469, 74, 5904)
					   VectorMon = Vector3.new(-469, 74, 5904)
					   CFrameQuest = CFrame.new(-288, 44, 5576)
					   VectorQuest = Vector3.new(-288, 44, 5576)
					elseif ((MyLevel == 1575) or (MyLevel <= 1599)) then
					   LevelFarm = 3
					   Name = "Dragon Crew Warrior [Lv. 1575]"
					   QuestName = "AmazonQuest"
					   LevelQuest = 1
					   NameMon = "Warrior"
					   CFrameMon = CFrame.new(6339, 52, -1213)
					   VectorMon = Vector3.new(6338, 52, -1213)
					   CFrameQuest = CFrame.new(5835, 52, -1105)
					   VectorQuest = Vector3.new(5835, 52, -1105)
					elseif ((MyLevel == 1600) or (MyLevel <= 1624)) then
					   LevelFarm = 4
					   Name = "Dragon Crew Archer [Lv. 1600]"
					   QuestName = "AmazonQuest"
					   LevelQuest = 2
					   NameMon = "Archer"
					   CFrameMon = CFrame.new(6594, 383, 139)
					   VectorMon = Vector3.new(6594, 383, 139)
					   CFrameQuest = CFrame.new(5835, 52, -1105)
					   VectorQuest = Vector3.new(5835, 52, -1105)
					elseif ((MyLevel == 1625) or (MyLevel <= 1649)) then
					   LevelFarm = 5
					   Name = "Female Islander [Lv. 1625]"
					   QuestName = "AmazonQuest2"
					   LevelQuest = 1
					   NameMon = "Female"
					   CFrameMon = CFrame.new(5308, 819, 1047)
					   VectorMon = Vector3.new(5308, 819, 1047)
					   CFrameQuest = CFrame.new(5443, 602, 751)
					   VectorQuest = Vector3.new(5443, 602, 751)
					elseif ((MyLevel == 1650) or (MyLevel <= 1699)) then
					   LevelFarm = 6
					   Name = "Giant Islander [Lv. 1650]"
					   QuestName = "AmazonQuest2"
					   LevelQuest = 2
					   NameMon = "Giant Islanders"
					   CFrameMon = CFrame.new(4951, 602, -68)
					   VectorMon = Vector3.new(4951, 602, -68)
					   CFrameQuest = CFrame.new(5443, 602, 751)
					   VectorQuest = Vector3.new(5443, 602, 751)
					elseif ((MyLevel == 1700) or (MyLevel <= 1724)) then
					   LevelFarm = 7
					   Name = "Marine Commodore [Lv. 1700]"
					   QuestName = "MarineTreeIsland"
					   LevelQuest = 1
					   NameMon = "Marine Commodore"
					   CFrameMon = CFrame.new(2447, 73, -7470)
					   VectorMon = Vector3.new(2447, 73, -7470)
					   CFrameQuest = CFrame.new(2180, 29, -6737)
					   VectorQuest = Vector3.new(2180, 29, -6737)
					elseif ((MyLevel == 1725) or (MyLevel <= 1774)) then
					   LevelFarm = 8
					   Name = "Marine Rear Admiral [Lv. 1725]"
					   QuestName = "MarineTreeIsland"
					   LevelQuest = 2
					   NameMon = "Marine Rear Admiral"
					   CFrameMon = CFrame.new(3671, 161, -6932)
					   VectorMon = Vector3.new(3671, 161, -6932)
					   CFrameQuest = CFrame.new(2180, 29, -6737)
					   VectorQuest = Vector3.new(2180, 29, -6737)
					elseif ((MyLevel == 1775) or (MyLevel <= 1800)) then
					   LevelFarm = 9
					   Name = "Fishman Raider [Lv. 1775]"
					   QuestName = "DeepForestIsland3"
					   LevelQuest = 1
					   NameMon = "Fishman Raider"
					   CFrameMon = CFrame.new(-10560, 332, -8466)
					   VectorMon = Vector3.new(-10560, 332, -8466)
					   CFrameQuest = CFrame.new(-10584, 332, -8758)
					   VectorQuest = Vector3.new(-10584, 332, -8758)
					elseif ((MyLevel == 1800) or (MyLevel <= 1824)) then
					   LevelFarm = 10
					   Name = "Fishman Captain [Lv. 1800]"
					   QuestName = "DeepForestIsland3"
					   LevelQuest = 2
					   NameMon = "Fishman Captain"
					   CFrameMon = CFrame.new(-10993, 332, -8940)
					   VectorMon = Vector3.new(-10993, 332, -8940)
					   CFrameQuest = CFrame.new(-10584, 332, -8758)
					   VectorQuest = Vector3.new(-10584, 332, -8758)
					elseif ((MyLevel == 1825) or (MyLevel <= 1849)) then
					   LevelFarm = 11
					   Name = "Forest Pirate [Lv. 1825]"
					   QuestName = "DeepForestIsland"
					   LevelQuest = 1
					   NameMon = "Forest Pirate"
					   CFrameMon = CFrame.new(-13479, 333, -7905)
					   VectorMon = Vector3.new(-13479, 333, -7905)
					   CFrameQuest = CFrame.new(-13232, 333, -7627)
					   VectorQuest = Vector3.new(-13232, 333, -7627)
					elseif ((MyLevel == 1850) or (MyLevel <= 1899)) then
					   LevelFarm = 12
					   Name = "Mythological Pirate [Lv. 1850]"
					   QuestName = "DeepForestIsland"
					   LevelQuest = 2
					   NameMon = "Mythological Pirate"
					   CFrameMon = CFrame.new(-13545, 470, -6917)
					   VectorMon = Vector3.new(-13545, 470, -6917)
					   CFrameQuest = CFrame.new(-13232, 333, -7627)
					   VectorQuest = Vector3.new(-13232, 333, -7627)
					elseif ((MyLevel == 1900) or (MyLevel <= 1924)) then
					   LevelFarm = 13
					   Name = "Jungle Pirate [Lv. 1900]"
					   QuestName = "DeepForestIsland2"
					   LevelQuest = 1
					   NameMon = "Jungle Pirate"
					   CFrameMon = CFrame.new(-12107, 332, -10549)
					   VectorMon = Vector3.new(-12106, 332, -10549)
					   CFrameQuest = CFrame.new(-12684, 391, -9902)
					   VectorQuest = Vector3.new(-12684, 391, -9902)
					elseif ((MyLevel == 1925) or (MyLevel <= 1974)) then
					   LevelFarm = 14
					   Name = "Musketeer Pirate [Lv. 1925]"
					   QuestName = "DeepForestIsland2"
					   LevelQuest = 2
					   NameMon = "Musketeer Pirate"
					   CFrameMon = CFrame.new(-13286, 392, -9769)
					   VectorMon = Vector3.new(-13286, 392, -9768)
					   CFrameQuest = CFrame.new(-12684, 391, -9902)
					   VectorQuest = Vector3.new(-12684, 391, -9902)
					elseif ((MyLevel == 1975) or (MyLevel <= 1999)) then
					   LevelFarm = 15
					   Name = "Reborn Skeleton [Lv. 1975]"
					   QuestName = "HauntedQuest1"
					   LevelQuest = 1
					   NameMon = "Reborn Skeleton"
					   CFrameMon = CFrame.new(-8760, 142, 6039)
					   VectorMon = Vector3.new(-8760, 142, 6039)
					   CFrameQuest = CFrame.new(-9482, 142, 5567)
					   VectorQuest = Vector3.new(-9482, 142, 5567)
					elseif ((MyLevel == 2000) or (MyLevel <= 2024)) then
					   LevelFarm = 16
					   Name = "Living Zombie [Lv. 2000]"
					   QuestName = "HauntedQuest1"
					   LevelQuest = 2
					   NameMon = "Living Zombie"
					   CFrameMon = CFrame.new(-10144, 140, 5932)
					   VectorMon = Vector3.new(-10144, 140, 5932)
					   CFrameQuest = CFrame.new(-9482, 142, 5567)
					   VectorQuest = Vector3.new(-9482, 142, 5567)
					elseif ((MyLevel == 2025) or (MyLevel <= 2049)) then
					   LevelFarm = 17
					   Name = "Demonic Soul [Lv. 2025]"
					   QuestName = "HauntedQuest2"
					   LevelQuest = 1
					   NameMon = "Demonic Soul"
					   CFrameMon = CFrame.new(-9507, 172, 6158)
					   VectorMon = Vector3.new(-9506, 172, 6158)
					   CFrameQuest = CFrame.new(-9513, 172, 6079)
					   VectorQuest = Vector3.new(-9513, 172, 6079)
					elseif ((MyLevel == 2050) or (MyLevel <= 2074)) then
					   LevelFarm = 18
					   Name = "Posessed Mummy [Lv. 2050]"
					   QuestName = "HauntedQuest2"
					   LevelQuest = 2
					   NameMon = "Posessed Mummy"
					   CFrameMon = CFrame.new(-9577, 6, 6223)
					   VectorMon = Vector3.new(-9577, 6, 6223)
					   CFrameQuest = CFrame.new(-9513, 172, 6079)
					   VectorQuest = Vector3.new(-9513, 172, 6079)
					elseif ((MyLevel == 2075) or (MyLevel <= 2099)) then
					   LevelFarm = 19
					   Name = "Peanut Scout [Lv. 2075]"
					   QuestName = "NutsIslandQuest"
					   LevelQuest = 1
					   NameMon = "Peanut Scout"
					   CFrameMon = CFrame.new(-2124, 123, -10435)
					   VectorMon = Vector3.new(-2124, 123, -10435)
					   CFrameQuest = CFrame.new(-2104, 38, -10192)
					   VectorQuest = Vector3.new(-2104, 38, -10192)
					elseif ((MyLevel == 2100) or (MyLevel <= 2124)) then
					   LevelFarm = 20
					   Name = "Peanut President [Lv. 2100]"
					   QuestName = "NutsIslandQuest"
					   LevelQuest = 2
					   NameMon = "Peanut President"
					   CFrameMon = CFrame.new(-2124, 123, -10435)
					   VectorMon = Vector3.new(-2124, 123, -10435)
					   CFrameQuest = CFrame.new(-2104, 38, -10192)
					   VectorQuest = Vector3.new(-2104, 38, -10192)
					elseif ((MyLevel == 2125) or (MyLevel <= 2149)) then
					   LevelFarm = 21
					   Name = "Ice Cream Chef [Lv. 2125]"
					   QuestName = "IceCreamIslandQuest"
					   LevelQuest = 1
					   NameMon = "Ice Cream Chef"
					   CFrameMon = CFrame.new(-641, 127, -11062)
					   VectorMon = Vector3.new(-641, 127, -11062)
					   CFrameQuest = CFrame.new(-822, 66, -10965)
					   VectorQuest = Vector3.new(-822, 66, -10965)
					elseif ((MyLevel == 2150) or (MyLevel <= 2199)) then
					   LevelFarm = 22
					   Name = "Ice Cream Commander [Lv. 2150]"
					   QuestName = "IceCreamIslandQuest"
					   LevelQuest = 2
					   NameMon = "Ice Cream Commander"
					   CFrameMon = CFrame.new(-641, 127, -11062)
					   VectorMon = Vector3.new(-641, 127, -11062)
					   CFrameQuest = CFrame.new(-822, 66, -10965)
					   VectorQuest = Vector3.new(-822, 66, -10965)
					elseif ((MyLevel == 2200) or (MyLevel <= 2224)) then
					   LevelFarm = 23
					   Name = "Cookie Crafter [Lv. 2200]"
					   QuestName = "CakeQuest1"
					   LevelQuest = 1
					   NameMon = "Cookie Crafter"
					   CFrameMon = CFrame.new(-2365, 38, -12099)
					   VectorMon = Vector3.new(-2365, 38, -12099)
					   CFrameQuest = CFrame.new(-2020, 38, -12025)
					   VectorQuest = Vector3.new(-2020, 38, -12025)
					elseif ((MyLevel == 2225) or (MyLevel <= 2249)) then
					   LevelFarm = 24
					   Name = "Cake Guard [Lv. 2225]"
					   QuestName = "CakeQuest1"
					   LevelQuest = 2
					   NameMon = "Cake Guard"
					   CFrameMon = CFrame.new(-1651, 38, -12308)
					   VectorMon = Vector3.new(-1651, 38, -12308)
					   CFrameQuest = CFrame.new(-2020, 38, -12025)
					   VectorQuest = Vector3.new(-2020, 38, -12025)
					elseif ((MyLevel == 2250) or (MyLevel <= 2274)) then
					   LevelFarm = 25
					   Name = "Baking Staff [Lv. 2250]"
					   QuestName = "CakeQuest2"
					   LevelQuest = 1
					   NameMon = "Baking Staff"
					   CFrameMon = CFrame.new(-1870, 38, -12938)
					   VectorMon = Vector3.new(-1870, 38, -12938)
					   CFrameQuest = CFrame.new(-1926, 38, -12850)
					   VectorQuest = Vector3.new(-1926, 38, -12850)
					elseif ((MyLevel == 2275) or (MyLevel <= 2299)) then
					   LevelFarm = 26
					   Name = "Head Baker [Lv. 2275]"
					   QuestName = "CakeQuest2"
					   LevelQuest = 2
					   NameMon = "Head Baker"
					   CFrameMon = CFrame.new(-1926, 88, -12850)
					   VectorMon = CFrame.new(-1870, 38, -12938)
					   CFrameQuest = CFrame.new(-1926, 38, -12850)
					   VectorQuest = Vector3.new(-1926, 38, -12850)
					elseif ((MyLevel == 2300) or (MyLevel <= 2324)) then
					   LevelFarm = 27
					   Name = "Cocoa Warrior [Lv. 2300]"
					   QuestName = "ChocQuest1"
					   LevelQuest = 1
					   NameMon = "Cocoa Warrior"
					   CFrameMon = CFrame.new(231, 23, -12194)
					   VectorMon = CFrame.new(231, 23, -12194)
					   CFrameQuest = CFrame.new(231, 23, -12194)
					   VectorQuest = Vector3.new(231, 23, -12194)
					elseif ((MyLevel == 2325) or (MyLevel <= 2349)) then
					   LevelFarm = 28
					   Name = "Chocolate Bar Battler [Lv. 2325]"
					   QuestName = "ChocQuest1"
					   LevelQuest = 2
					   NameMon = "Chocolate Bar Battler"
					   CFrameMon = CFrame.new(231, 23, -12194)
					   VectorMon = CFrame.new(231, 23, -12194)
					   CFrameQuest = CFrame.new(231, 23, -12194)
					   VectorQuest = Vector3.new(231, 23, -12194)
					elseif ((MyLevel == 2350) or (MyLevel <= 2374)) then
					   LevelFarm = 29
					   Name = "Sweet Thief [Lv. 2350]"
					   QuestName = "ChocQuest2"
					   LevelQuest = 1
					   NameMon = "Sweet Thief"
					   CFrameMon = CFrame.new(71, 77, -12632)
					   VectorMon = CFrame.new(71, 77, -12632)
					   CFrameQuest = CFrame.new(151, 23, -12774)
					   VectorQuest = Vector3.new(151, 23, -12774)
					elseif ((MyLevel == 2375) or (MyLevel <= 2400)) then
					   LevelFarm = 30
					   Name = "Candy Rebel [Lv. 2375]"
					   QuestName = "ChocQuest2"
					   LevelQuest = 2
					   NameMon = "Candy Rebel"
					   CFrameMon = CFrame.new(134, 77, -12882)
					   VectorMon = CFrame.new(134, 77, -12882)
					   CFrameQuest = CFrame.new(151, 23, -12774)
					   VectorQuest = Vector3.new(151, 23, -12774)
					elseif ((MyLevel == 2400) or (MyLevel <= 2425)) then
					   LevelFarm = 31
					   Name = "Candy Pirate [Lv. 2400]"
					   QuestName = "CandyQuest1"
					   LevelQuest = 1
					   NameMon = "Candy Pirate"
					   CFrameMon = CFrame.new(-1408.46521, 16.1423531, -14552.2041, 0.90175873, -8.1721694e-8, -0.432239741, 7.812645e-8, 1, -2.6074616e-8, 0.432239741, -1.0256343e-8, 0.90175873)
					   VectorQuest = Vector3.new(-1408.46521, 16.1423531, -14552.2041, 0.90175873, -8.1721694e-8, -0.432239741, 7.812645e-8, 1, -2.6074616e-8, 0.432239741, -1.0256343e-8, 0.90175873)
					   CFrameQuest = CFrame.new(-1151.48987, 16.1422901, -14445.6904, -0.316594511, -6.8569825e-8, -0.948560953, -2.0534307e-8, 1, -6.543467e-8, 0.948560953, -1.2382168e-9, -0.316594511)
					   VectorQuest = Vector3.new(-1151.48987, 16.1422901, -14445.6904, -0.316594511, -6.8569825e-8, -0.948560953, -2.0534307e-8, 1, -6.543467e-8, 0.948560953, -1.2382168e-9, -0.316594511)
					elseif (MyLevel >= 2425) then
					   LevelFarm = 32
					   Name = "Snow Demon [Lv. 2425]"
					   QuestName = "CandyQuest1"
					   LevelQuest = 2
					   NameMon = "Snow Demon"
					   CFrameMon = CFrame.new(-782, 382, -14474)
					   VectorQuest = Vector3.new(-782, 382, -14474)
					   CFrameQuest = CFrame.new(-782, 382, -14474)
					   VectorQuest = Vector3.new(-782, 382, -14474)
					end
				 end
			  end
			  function CheckOldQuest(LevelFarm)
				 if World1 then
					if (LevelFarm == 1) then
					   Name = "Bandit [Lv. 5]"
					   QuestName = "BanditQuest1"
					   LevelQuest = 1
					   NameMon = "Bandit"
					   CFrameMon = CFrame.new(1060, 17, 1547)
					   VectorMon = Vector3.new(1060, 17, 1547)
					   CFrameQuest = CFrame.new(1060, 17, 1547)
					   VectorQuest = Vector3.new(1060, 17, 1547)
					elseif (LevelFarm == 2) then
					   Name = "Monkey [Lv. 14]"
					   QuestName = "JungleQuest"
					   LevelQuest = 1
					   NameMon = "Monkey"
					   CFrameMon = CFrame.new(-1496, 39, 35)
					   VectorMon = Vector3.new(-1496, 39, 35)
					   CFrameQuest = CFrame.new(-1602, 37, 152)
					   VectorQuest = Vector3.new(-1602, 37, 152)
					elseif (LevelFarm == 3) then
					   Name = "Gorilla [Lv. 20]"
					   QuestName = "JungleQuest"
					   LevelQuest = 2
					   NameMon = "Gorilla"
					   CFrameMon = CFrame.new(-1237, 6, -486)
					   VectorMon = Vector3.new(-1237, 7, -486)
					   CFrameQuest = CFrame.new(-1602, 37, 152)
					   VectorQuest = Vector3.new(-1602, 37, 152)
					elseif (LevelFarm == 4) then
					   Name = "Pirate [Lv. 35]"
					   QuestName = "BuggyQuest1"
					   LevelQuest = 1
					   NameMon = "Pirate"
					   CFrameMon = CFrame.new(-1115, 14, 3938)
					   VectorMon = Vector3.new(-1115, 14, 3938)
					   CFrameQuest = CFrame.new(-1140, 5, 3828)
					   VectorQuest = Vector3.new(-1140, 5, 3828)
					elseif (LevelFarm == 5) then
					   Name = "Brute [Lv. 45]"
					   QuestName = "BuggyQuest1"
					   LevelQuest = 2
					   NameMon = "Brute"
					   CFrameMon = CFrame.new(-1145, 15, 4350)
					   VectorMon = Vector3.new(-1146, 15, 4350)
					   CFrameQuest = CFrame.new(-1140, 5, 3828)
					   VectorQuest = Vector3.new(-1140, 5, 3828)
					elseif (LevelFarm == 6) then
					   Name = "Desert Bandit [Lv. 60]"
					   QuestName = "DesertQuest"
					   LevelQuest = 1
					   NameMon = "Desert Bandit"
					   CFrameMon = CFrame.new(932, 7, 4484)
					   VectorMon = Vector3.new(932, 7, 4484)
					   CFrameQuest = CFrame.new(897, 7, 4388)
					   VectorQuest = Vector3.new(897, 7, 4388)
					elseif (LevelFarm == 7) then
					   Name = "Desert Officer [Lv. 70]"
					   QuestName = "DesertQuest"
					   LevelQuest = 2
					   NameMon = "Desert Officer"
					   CFrameMon = CFrame.new(1572, 10, 4373)
					   VectorMon = Vector3.new(1572, 10, 4373)
					   CFrameQuest = CFrame.new(897, 7, 4388)
					   VectorQuest = Vector3.new(897, 7, 4388)
					elseif (LevelFarm == 8) then
					   Name = "Snow Bandit [Lv. 90]"
					   QuestName = "SnowQuest"
					   LevelQuest = 1
					   NameMon = "Snow Bandits"
					   CFrameMon = CFrame.new(1289, 150, -1442)
					   VectorMon = Vector3.new(1289, 106, -1442)
					   CFrameQuest = CFrame.new(1386, 87, -1297)
					   VectorQuest = Vector3.new(1386, 87, -1297)
					elseif (LevelFarm == 9) then
					   Name = "Snowman [Lv. 100]"
					   QuestName = "SnowQuest"
					   LevelQuest = 2
					   NameMon = "Snowman"
					   CFrameMon = CFrame.new(1289, 150, -1442)
					   VectorMon = Vector3.new(1289, 106, -1442)
					   CFrameQuest = CFrame.new(1386, 87, -1297)
					   VectorQuest = Vector3.new(1386, 87, -1297)
					elseif (LevelFarm == 10) then
					   Name = "Chief Petty Officer [Lv. 120]"
					   QuestName = "MarineQuest2"
					   LevelQuest = 1
					   NameMon = "Chief Petty Officer"
					   CFrameMon = CFrame.new(-4855, 23, 4308)
					   VectorMon = Vector3.new(-4855, 23, 4308)
					   CFrameQuest = CFrame.new(-5036, 29, 4325)
					   VectorQuest = Vector3.new(-5036, 29, 4325)
					elseif (LevelFarm == 11) then
					   Name = "Sky Bandit [Lv. 150]"
					   QuestName = "SkyQuest"
					   LevelQuest = 1
					   NameMon = "Sky Bandit"
					   CFrameMon = CFrame.new(-4981, 278, -2830)
					   VectorMon = Vector3.new(-4981, 278, -2830)
					   CFrameQuest = CFrame.new(-4842, 718, -2623)
					   VectorQuest = Vector3.new(-4842, 718, -2623)
					elseif (LevelFarm == 12) then
					   Name = "Dark Master [Lv. 175]"
					   QuestName = "SkyQuest"
					   LevelQuest = 2
					   NameMon = "Dark Master"
					   CFrameMon = CFrame.new(-5250, 389, -2272)
					   VectorMon = Vector3.new(-5250, 389, -2272)
					   CFrameQuest = CFrame.new(-4842, 718, -2623)
					   VectorQuest = Vector3.new(-4842, 718, -2623)
					elseif (LevelFarm == 13) then
					   Name = "Prisoner [Lv. 190]"
					   QuestName = "PrisonerQuest"
					   LevelQuest = 1
					   NameMon = "Prisoner"
					   CFrameMon = CFrame.new(5411, 96, 690)
					   VectorMon = Vector3.new(5411, 96, 690)
					   CFrameQuest = CFrame.new(5308, 2, 474)
					   VectorQuest = Vector3.new(5308, 2, 474)
					elseif (LevelFarm == 14) then
					   Name = "Dangerous Prisoner [Lv. 210]"
					   QuestName = "PrisonerQuest"
					   LevelQuest = 2
					   NameMon = "Dangerous Prisoner"
					   CFrameMon = CFrame.new(5411, 96, 690)
					   VectorMon = Vector3.new(5411, 96, 690)
					   CFrameQuest = CFrame.new(5308, 2, 474)
					   VectorQuest = Vector3.new(5308, 2, 474)
					elseif (LevelFarm == 15) then
					   Name = "Toga Warrior [Lv. 250]"
					   QuestName = "ColosseumQuest"
					   LevelQuest = 1
					   NameMon = "Toga Warrior"
					   CFrameMon = CFrame.new(-1770, 8, -2777)
					   VectorMon = Vector3.new(-1770, 8, -2777)
					   CFrameQuest = CFrame.new(-1576, 8, -2985)
					   VectorQuest = Vector3.new(-1576, 8, -2985)
					elseif (LevelFarm == 16) then
					   Name = "Military Soldier [Lv. 300]"
					   QuestName = "MagmaQuest"
					   LevelQuest = 1
					   NameMon = "Military Soldier"
					   CFrameMon = CFrame.new(-5408, 11, 8447)
					   VectorMon = Vector3.new(-5408, 11, 8447)
					   CFrameQuest = CFrame.new(-5316, 12, 8517)
					   VectorQuest = Vector3.new(-5316, 12, 8517)
					elseif (LevelFarm == 17) then
					   Name = "Military Spy [Lv. 325]"
					   QuestName = "MagmaQuest"
					   LevelQuest = 2
					   NameMon = "Military Spy"
					   CFrameMon = CFrame.new(-5815, 84, 8820)
					   VectorMon = Vector3.new(-5815, 84, 8820)
					   CFrameQuest = CFrame.new(-5316, 12, 8517)
					   VectorQuest = Vector3.new(-5316, 12, 8517)
					elseif (LevelFarm == 18) then
					   Name = "Fishman Warrior [Lv. 375]"
					   QuestName = "FishmanQuest"
					   LevelQuest = 1
					   NameMon = "Fishman Warrior"
					   CFrameMon = CFrame.new(60859, 19, 1501)
					   VectorMon = Vector3.new(60859, 19, 1501)
					   CFrameQuest = CFrame.new(61123, 19, 1569)
					   VectorQuest = Vector3.new(61123, 19, 1569)
					elseif (LevelFarm == 19) then
					   Name = "Fishman Commando [Lv. 400]"
					   QuestName = "FishmanQuest"
					   LevelQuest = 2
					   NameMon = "Fishman Commando"
					   CFrameMon = CFrame.new(61891, 19, 1470)
					   VectorMon = Vector3.new(61891, 19, 1470)
					   CFrameQuest = CFrame.new(61123, 19, 1569)
					   VectorQuest = Vector3.new(61123, 19, 1569)
					elseif (LevelFarm == 20) then
					   Name = "God's Guard [Lv. 450]"
					   QuestName = "SkyExp1Quest"
					   LevelQuest = 1
					   NameMon = "God's Guards"
					   CFrameMon = CFrame.new(-4698, 845, -1912)
					   VectorMon = Vector3.new(-4698, 845, -1912)
					   CFrameQuest = CFrame.new(-4722, 845, -1954)
					   VectorQuest = Vector3.new(-4722, 846, -1954)
					elseif (LevelFarm == 21) then
					   Name = "Shanda [Lv. 475]"
					   QuestName = "SkyExp1Quest"
					   LevelQuest = 2
					   NameMon = "Shandas"
					   CFrameMon = CFrame.new(-7685, 5567, -502)
					   VectorMon = Vector3.new(-7685, 5567, -502)
					   CFrameQuest = CFrame.new(-7862, 5546, -380)
					   VectorQuest = Vector3.new(-7862, 5546, -380)
					elseif (LevelFarm == 22) then
					   Name = "Royal Squad [Lv. 525]"
					   QuestName = "SkyExp2Quest"
					   LevelQuest = 1
					   NameMon = "Royal Squad"
					   CFrameMon = CFrame.new(-7670, 5607, -1460)
					   VectorMon = Vector3.new(-7670, 5607, -1460)
					   CFrameQuest = CFrame.new(-7904, 5636, -1412)
					   VectorQuest = Vector3.new(-7904, 5636, -1412)
					elseif (LevelFarm == 23) then
					   Name = "Royal Soldier [Lv. 550]"
					   QuestName = "SkyExp2Quest"
					   LevelQuest = 2
					   NameMon = "Royal Soldier"
					   CFrameMon = CFrame.new(-7828, 5607, -1744)
					   VectorMon = Vector3.new(-7828, 5607, -1744)
					   CFrameQuest = CFrame.new(-7904, 5636, -1412)
					   VectorQuest = Vector3.new(-7904, 5636, -1412)
					elseif (LevelFarm == 24) then
					   Name = "Galley Pirate [Lv. 625]"
					   QuestName = "FountainQuest"
					   LevelQuest = 1
					   NameMon = "Galley Pirate"
					   CFrameMon = CFrame.new(5589, 45, 3996)
					   VectorMon = Vector3.new(5589, 45, 3996)
					   CFrameQuest = CFrame.new(5256, 39, 4050)
					   VectorQuest = Vector3.new(5256, 39, 4050)
					elseif (LevelFarm == 25) then
					   Name = "Galley Captain [Lv. 650]"
					   QuestName = "FountainQuest"
					   LevelQuest = 2
					   NameMon = "Galley Captain"
					   CFrameMon = CFrame.new(5649, 39, 4936)
					   VectorMon = Vector3.new(5649, 39, 4936)
					   CFrameQuest = CFrame.new(5256, 39, 4050)
					   VectorQuest = Vector3.new(5256, 39, 4050)
					end
				 end
				 if World2 then
					if (LevelFarm == 1) then
					   Name = "Raider [Lv. 700]"
					   QuestName = "Area1Quest"
					   LevelQuest = 1
					   NameMon = "Raider"
					   CFrameQuest = CFrame.new(-425, 73, 1837)
					   VectorQuest = Vector3.new(-425, 73, 1837)
					   CFrameMon = CFrame.new(-746, 39, 2390)
					   VectorMon = Vector3.new(-746, 39, 2389)
					elseif (LevelFarm == 2) then
					   Name = "Mercenary [Lv. 725]"
					   QuestName = "Area1Quest"
					   LevelQuest = 2
					   NameMon = "Mercenary"
					   CFrameQuest = CFrame.new(-425, 73, 1837)
					   VectorQuest = Vector3.new(-425, 73, 1837)
					   CFrameMon = CFrame.new(-874, 141, 1312)
					   VectorMon = Vector3.new(-874, 141, 1312)
					elseif (LevelFarm == 3) then
					   Name = "Swan Pirate [Lv. 775]"
					   QuestName = "Area2Quest"
					   LevelQuest = 1
					   NameMon = "Swan Pirate"
					   CFrameQuest = CFrame.new(634, 73, 918)
					   VectorQuest = Vector3.new(634, 73, 918)
					   CFrameMon = CFrame.new(878, 122, 1235)
					   VectorMon = Vector3.new(878, 122, 1235)
					elseif (LevelFarm == 4) then
					   Name = "Factory Staff [Lv. 800]"
					   QuestName = "Area2Quest"
					   LevelQuest = 2
					   NameMon = "Factory Staff"
					   CFrameQuest = CFrame.new(634, 73, 918)
					   VectorQuest = Vector3.new(634, 73, 918)
					   CFrameMon = CFrame.new(295, 73, -56)
					   VectorMon = Vector3.new(295, 73, -56)
					elseif (LevelFarm == 5) then
					   Name = "Marine Lieutenant [Lv. 875]"
					   QuestName = "MarineQuest3"
					   LevelQuest = 1
					   NameMon = "Marine Lieutenant"
					   CFrameMon = CFrame.new(-2806, 73, -3038)
					   VectorMon = Vector3.new(-2806, 73, -3038)
					   CFrameQuest = CFrame.new(-2443, 73, -3219)
					   VectorQuest = Vector3.new(-2443, 73, -3219)
					elseif (LevelFarm == 6) then
					   Name = "Marine Captain [Lv. 900]"
					   QuestName = "MarineQuest3"
					   LevelQuest = 2
					   NameMon = "Marine Captain"
					   CFrameMon = CFrame.new(-1869, 73, -3320)
					   VectorMon = Vector3.new(-1869, 73, -3320)
					   CFrameQuest = CFrame.new(-2443, 73, -3219)
					   VectorQuest = Vector3.new(-2443, 73, -3219)
					elseif (LevelFarm == 7) then
					   Name = "Zombie [Lv. 950]"
					   QuestName = "ZombieQuest"
					   LevelQuest = 1
					   NameMon = "Zombie"
					   CFrameMon = CFrame.new(-5736, 126, -728)
					   VectorMon = Vector3.new(-5736, 126, -728)
					   CFrameQuest = CFrame.new(-5494, 49, -795)
					   VectorQuest = Vector3.new(-5494, 49, -794)
					elseif (LevelFarm == 8) then
					   Name = "Vampire [Lv. 975]"
					   QuestName = "ZombieQuest"
					   LevelQuest = 2
					   NameMon = "Vampire"
					   CFrameMon = CFrame.new(-6033, 7, -1317)
					   VectorMon = Vector3.new(-6033, 7, -1317)
					   CFrameQuest = CFrame.new(-5494, 49, -795)
					   VectorQuest = Vector3.new(-5494, 49, -795)
					elseif (LevelFarm == 9) then
					   Name = "Snow Trooper [Lv. 1000]"
					   QuestName = "SnowMountainQuest"
					   LevelQuest = 1
					   NameMon = "Snow Trooper"
					   CFrameMon = CFrame.new(478, 402, -5362)
					   VectorMon = Vector3.new(478, 402, -5362)
					   CFrameQuest = CFrame.new(605, 402, -5371)
					   VectorQuest = Vector3.new(605, 402, -5371)
					elseif (LevelFarm == 10) then
					   Name = "Winter Warrior [Lv. 1050]"
					   QuestName = "SnowMountainQuest"
					   LevelQuest = 2
					   NameMon = "Winter Warrior"
					   CFrameMon = CFrame.new(1157, 430, -5188)
					   VectorMon = Vector3.new(1157, 430, -5188)
					   CFrameQuest = CFrame.new(605, 402, -5371)
					   VectorQuest = Vector3.new(605, 402, -5371)
					elseif (LevelFarm == 11) then
					   Name = "Lab Subordinate [Lv. 1100]"
					   QuestName = "IceSideQuest"
					   LevelQuest = 1
					   NameMon = "Lab Subordinate"
					   CFrameMon = CFrame.new(-5782, 42, -4484)
					   VectorMon = Vector3.new(-5782, 42, -4484)
					   CFrameQuest = CFrame.new(-6060, 16, -4905)
					   VectorQuest = Vector3.new(-6060, 16, -4905)
					elseif (LevelFarm == 12) then
					   Name = "Horned Warrior [Lv. 1125]"
					   QuestName = "IceSideQuest"
					   LevelQuest = 2
					   NameMon = "Horned Warrior"
					   CFrameMon = CFrame.new(-6406, 24, -5805)
					   VectorMon = Vector3.new(-6406, 24, -5805)
					   CFrameQuest = CFrame.new(-6060, 16, -4905)
					   VectorQuest = Vector3.new(-6060, 16, -4905)
					elseif (LevelFarm == 13) then
					   Name = "Magma Ninja [Lv. 1175]"
					   QuestName = "FireSideQuest"
					   LevelQuest = 1
					   NameMon = "Magma Ninja"
					   CFrameMon = CFrame.new(-5428, 78, -5959)
					   VectorMon = Vector3.new(-5428, 78, -5959)
					   CFrameQuest = CFrame.new(-5430, 16, -5295)
					   VectorQuest = Vector3.new(-5430, 16, -5296)
					elseif (LevelFarm == 14) then
					   Name = "Lava Pirate [Lv. 1200]"
					   QuestName = "FireSideQuest"
					   LevelQuest = 2
					   NameMon = "Lava Pirate"
					   CFrameMon = CFrame.new(-5270, 42, -4800)
					   VectorMon = Vector3.new(-5270, 42, -4800)
					   CFrameQuest = CFrame.new(-5430, 16, -5295)
					   VectorQuest = Vector3.new(-5430, 16, -5296)
					elseif (LevelFarm == 15) then
					   Name = "Ship Deckhand [Lv. 1250]"
					   QuestName = "ShipQuest1"
					   LevelQuest = 1
					   NameMon = "Ship Deckhand"
					   CFrameMon = CFrame.new(1198, 126, 33031)
					   VectorMon = Vector3.new(1198, 126, 33031)
					   CFrameQuest = CFrame.new(1038, 125, 32913)
					   VectorQuest = Vector3.new(1038, 125, 32913)
					elseif (LevelFarm == 16) then
					   Name = "Ship Engineer [Lv. 1275]"
					   QuestName = "ShipQuest1"
					   LevelQuest = 2
					   NameMon = "Ship Engineer"
					   CFrameMon = CFrame.new(918, 44, 32787)
					   VectorMon = Vector3.new(918, 44, 32787)
					   CFrameQuest = CFrame.new(1038, 125, 32913)
					   VectorQuest = Vector3.new(1038, 125, 32913)
					elseif (LevelFarm == 17) then
					   Name = "Ship Steward [Lv. 1300]"
					   QuestName = "ShipQuest2"
					   LevelQuest = 1
					   NameMon = "Ship Steward"
					   CFrameMon = CFrame.new(915, 130, 33419)
					   VectorMon = Vector3.new(915, 130, 33419)
					   CFrameQuest = CFrame.new(969, 125, 33245)
					   VectorQuest = Vector3.new(969, 125, 33245)
					elseif (LevelFarm == 18) then
					   Name = "Ship Officer [Lv. 1325]"
					   QuestName = "ShipQuest2"
					   LevelQuest = 2
					   NameMon = "Ship Officer"
					   CFrameMon = CFrame.new(916, 181, 33335)
					   VectorMon = Vector3.new(916, 181, 33335)
					   CFrameQuest = CFrame.new(969, 125, 33245)
					   VectorQuest = Vector3.new(969, 125, 33245)
					elseif (LevelFarm == 19) then
					   Name = "Arctic Warrior [Lv. 1350]"
					   QuestName = "FrostQuest"
					   LevelQuest = 1
					   NameMon = "Arctic Warrior"
					   CFrameMon = CFrame.new(6038, 29, -6231)
					   VectorMon = Vector3.new(6038, 29, -6231)
					   VectorQuest = Vector3.new(5669, 28, -6482)
					   CFrameQuest = CFrame.new(5669, 28, -6482)
					elseif (LevelFarm == 20) then
					   Name = "Snow Lurker [Lv. 1375]"
					   QuestName = "FrostQuest"
					   LevelQuest = 2
					   NameMon = "Snow Lurker"
					   CFrameMon = CFrame.new(5560, 42, -6826)
					   VectorMon = Vector3.new(5560, 42, -6826)
					   VectorQuest = Vector3.new(5669, 28, -6482)
					   CFrameQuest = CFrame.new(5669, 28, -6482)
					elseif (LevelFarm == 21) then
					   Name = "Sea Soldier [Lv. 1425]"
					   QuestName = "ForgottenQuest"
					   LevelQuest = 1
					   NameMon = "Sea Soldier"
					   CFrameMon = CFrame.new(-3022, 16, -9722)
					   VectorMon = Vector3.new(-3022, 16, -9722)
					   CFrameQuest = CFrame.new(-3054, 237, -10148)
					   VectorQuest = Vector3.new(-3054, 237, -10148)
					elseif (LevelFarm == 22) then
					   Name = "Water Fighter [Lv. 1450]"
					   QuestName = "ForgottenQuest"
					   LevelQuest = 2
					   NameMon = "Water Fighter"
					   CFrameMon = CFrame.new(-3385, 239, -10542)
					   VectorMon = Vector3.new(-3385, 239, -10542)
					   CFrameQuest = CFrame.new(-3054, 237, -10148)
					   VectorQuest = Vector3.new(-3054, 237, -10148)
					end
				 end
				 if World3 then
					if (LevelFarm == 1) then
					   Name = "Pirate Millionaire [Lv. 1500]"
					   QuestName = "PiratePortQuest"
					   LevelQuest = 1
					   NameMon = "Pirate"
					   CFrameMon = CFrame.new(-373, 75, 5550)
					   VectorMon = Vector3.new(-373, 75, 5550)
					   CFrameQuest = CFrame.new(-288, 44, 5576)
					   VectorQuest = Vector3.new(-288, 44, 5576)
					elseif (LevelFarm == 2) then
					   Name = "Pistol Billionaire [Lv. 1525]"
					   QuestName = "PiratePortQuest"
					   LevelQuest = 2
					   NameMon = "Pistol"
					   CFrameMon = CFrame.new(-469, 74, 5904)
					   VectorMon = Vector3.new(-469, 74, 5904)
					   CFrameQuest = CFrame.new(-288, 44, 5576)
					   VectorQuest = Vector3.new(-288, 44, 5576)
					elseif (LevelFarm == 3) then
					   Name = "Dragon Crew Warrior [Lv. 1575]"
					   QuestName = "AmazonQuest"
					   LevelQuest = 1
					   NameMon = "Warrior"
					   CFrameMon = CFrame.new(6339, 52, -1213)
					   VectorMon = Vector3.new(6338, 52, -1213)
					   CFrameQuest = CFrame.new(5835, 52, -1105)
					   VectorQuest = Vector3.new(5835, 52, -1105)
					elseif (LevelFarm == 4) then
					   Name = "Dragon Crew Archer [Lv. 1600]"
					   QuestName = "AmazonQuest"
					   LevelQuest = 2
					   NameMon = "Archer"
					   CFrameMon = CFrame.new(6594, 383, 139)
					   VectorMon = Vector3.new(6594, 383, 139)
					   CFrameQuest = CFrame.new(5835, 52, -1105)
					   VectorQuest = Vector3.new(5835, 52, -1105)
					elseif (LevelFarm == 5) then
					   Name = "Female Islander [Lv. 1625]"
					   QuestName = "AmazonQuest2"
					   LevelQuest = 1
					   NameMon = "Female"
					   CFrameMon = CFrame.new(5308, 819, 1047)
					   VectorMon = Vector3.new(5308, 819, 1047)
					   CFrameQuest = CFrame.new(5443, 602, 751)
					   VectorQuest = Vector3.new(5443, 602, 751)
					elseif (LevelFarm == 6) then
					   Name = "Giant Islander [Lv. 1650]"
					   QuestName = "AmazonQuest2"
					   LevelQuest = 2
					   NameMon = "Giant Islanders"
					   CFrameMon = CFrame.new(4951, 602, -68)
					   VectorMon = Vector3.new(4951, 602, -68)
					   CFrameQuest = CFrame.new(5443, 602, 751)
					   VectorQuest = Vector3.new(5443, 602, 751)
					elseif (LevelFarm == 7) then
					   Name = "Marine Commodore [Lv. 1700]"
					   QuestName = "MarineTreeIsland"
					   LevelQuest = 1
					   NameMon = "Marine Commodore"
					   CFrameMon = CFrame.new(2447, 73, -7470)
					   VectorMon = Vector3.new(2447, 73, -7470)
					   CFrameQuest = CFrame.new(2180, 29, -6737)
					   VectorQuest = Vector3.new(2180, 29, -6737)
					elseif (LevelFarm == 8) then
					   Name = "Marine Rear Admiral [Lv. 1725]"
					   QuestName = "MarineTreeIsland"
					   LevelQuest = 2
					   NameMon = "Marine Rear Admiral"
					   CFrameMon = CFrame.new(3671, 161, -6932)
					   VectorMon = Vector3.new(3671, 161, -6932)
					   CFrameQuest = CFrame.new(2180, 29, -6737)
					   VectorQuest = Vector3.new(2180, 29, -6737)
					elseif (LevelFarm == 9) then
					   Name = "Fishman Raider [Lv. 1775]"
					   QuestName = "DeepForestIsland3"
					   LevelQuest = 1
					   NameMon = "Fishman Raider"
					   CFrameMon = CFrame.new(-10560, 332, -8466)
					   VectorMon = Vector3.new(-10560, 332, -8466)
					   CFrameQuest = CFrame.new(-10584, 332, -8758)
					   VectorQuest = Vector3.new(-10584, 332, -8758)
					elseif (LevelFarm == 10) then
					   Name = "Fishman Captain [Lv. 1800]"
					   QuestName = "DeepForestIsland3"
					   LevelQuest = 2
					   NameMon = "Fishman Captain"
					   CFrameMon = CFrame.new(-10993, 332, -8940)
					   VectorMon = Vector3.new(-10993, 332, -8940)
					   CFrameQuest = CFrame.new(-10584, 332, -8758)
					   VectorQuest = Vector3.new(-10584, 332, -8758)
					elseif (LevelFarm == 11) then
					   Name = "Forest Pirate [Lv. 1825]"
					   QuestName = "DeepForestIsland"
					   LevelQuest = 1
					   NameMon = "Forest Pirate"
					   CFrameMon = CFrame.new(-13479, 333, -7905)
					   VectorMon = Vector3.new(-13479, 333, -7905)
					   CFrameQuest = CFrame.new(-13232, 333, -7627)
					   VectorQuest = Vector3.new(-13232, 333, -7627)
					elseif (LevelFarm == 12) then
					   Name = "Mythological Pirate [Lv. 1850]"
					   QuestName = "DeepForestIsland"
					   LevelQuest = 2
					   NameMon = "Mythological Pirate"
					   CFrameMon = CFrame.new(-13545, 470, -6917)
					   VectorMon = Vector3.new(-13545, 470, -6917)
					   CFrameQuest = CFrame.new(-13232, 333, -7627)
					   VectorQuest = Vector3.new(-13232, 333, -7627)
					elseif (LevelFarm == 13) then
					   Name = "Jungle Pirate [Lv. 1900]"
					   QuestName = "DeepForestIsland2"
					   LevelQuest = 1
					   NameMon = "Jungle Pirate"
					   CFrameMon = CFrame.new(-12107, 332, -10549)
					   VectorMon = Vector3.new(-12106, 332, -10549)
					   CFrameQuest = CFrame.new(-12684, 391, -9902)
					   VectorQuest = Vector3.new(-12684, 391, -9902)
					elseif (LevelFarm == 14) then
					   Name = "Musketeer Pirate [Lv. 1925]"
					   QuestName = "DeepForestIsland2"
					   LevelQuest = 2
					   NameMon = "Musketeer Pirate"
					   CFrameMon = CFrame.new(-13286, 392, -9769)
					   VectorMon = Vector3.new(-13286, 392, -9768)
					   CFrameQuest = CFrame.new(-12684, 391, -9902)
					   VectorQuest = Vector3.new(-12684, 391, -9902)
					elseif (LevelFarm == 15) then
					   Name = "Reborn Skeleton [Lv. 1975]"
					   QuestName = "HauntedQuest1"
					   LevelQuest = 1
					   NameMon = "Reborn Skeleton"
					   CFrameMon = CFrame.new(-8760, 142, 6039)
					   VectorMon = Vector3.new(-8760, 142, 6039)
					   CFrameQuest = CFrame.new(-9482, 142, 5567)
					   VectorQuest = Vector3.new(-9482, 142, 5567)
					elseif (LevelFarm == 16) then
					   Name = "Living Zombie [Lv. 2000]"
					   QuestName = "HauntedQuest1"
					   LevelQuest = 2
					   NameMon = "Living Zombie"
					   CFrameMon = CFrame.new(-10144, 140, 5932)
					   VectorMon = Vector3.new(-10144, 140, 5932)
					   CFrameQuest = CFrame.new(-9482, 142, 5567)
					   VectorQuest = Vector3.new(-9482, 142, 5567)
					elseif (LevelFarm == 17) then
					   Name = "Demonic Soul [Lv. 2025]"
					   QuestName = "HauntedQuest2"
					   LevelQuest = 1
					   NameMon = "Demonic Soul"
					   CFrameMon = CFrame.new(-9507, 172, 6158)
					   VectorMon = Vector3.new(-9506, 172, 6158)
					   CFrameQuest = CFrame.new(-9513, 172, 6079)
					   VectorQuest = Vector3.new(-9513, 172, 6079)
					elseif (LevelFarm == 18) then
					   Name = "Posessed Mummy [Lv. 2050]"
					   QuestName = "HauntedQuest2"
					   LevelQuest = 2
					   NameMon = "Posessed Mummy"
					   CFrameMon = CFrame.new(-9577, 6, 6223)
					   VectorMon = Vector3.new(-9577, 6, 6223)
					   CFrameQuest = CFrame.new(-9513, 172, 6079)
					   VectorQuest = Vector3.new(-9513, 172, 6079)
					elseif (LevelFarm == 19) then
					   Name = "Peanut Scout [Lv. 2075]"
					   QuestName = "NutsIslandQuest"
					   LevelQuest = 1
					   NameMon = "Peanut Scout"
					   CFrameMon = CFrame.new(-2124, 123, -10435)
					   VectorMon = Vector3.new(-2124, 123, -10435)
					   CFrameQuest = CFrame.new(-2104, 38, -10192)
					   VectorQuest = Vector3.new(-2104, 38, -10192)
					elseif (LevelFarm == 20) then
					   Name = "Peanut President [Lv. 2100]"
					   QuestName = "NutsIslandQuest"
					   LevelQuest = 2
					   NameMon = "Peanut President"
					   CFrameMon = CFrame.new(-2124, 123, -10435)
					   VectorMon = Vector3.new(-2124, 123, -10435)
					   CFrameQuest = CFrame.new(-2104, 38, -10192)
					   VectorQuest = Vector3.new(-2104, 38, -10192)
					elseif (LevelFarm == 21) then
					   Name = "Ice Cream Chef [Lv. 2125]"
					   QuestName = "IceCreamIslandQuest"
					   LevelQuest = 1
					   NameMon = "Ice Cream Chef"
					   CFrameMon = CFrame.new(-641, 127, -11062)
					   VectorMon = Vector3.new(-641, 127, -11062)
					   CFrameQuest = CFrame.new(-822, 66, -10965)
					   VectorQuest = Vector3.new(-822, 66, -10965)
					elseif (LevelFarm == 22) then
					   Name = "Ice Cream Commander [Lv. 2150]"
					   QuestName = "IceCreamIslandQuest"
					   LevelQuest = 2
					   NameMon = "Ice Cream Commander"
					   CFrameMon = CFrame.new(-641, 127, -11062)
					   VectorMon = Vector3.new(-641, 127, -11062)
					   CFrameQuest = CFrame.new(-822, 66, -10965)
					   VectorQuest = Vector3.new(-822, 66, -10965)
					elseif (LevelFarm == 23) then
					   Name = "Cookie Crafter [Lv. 2200]"
					   QuestName = "CakeQuest1"
					   LevelQuest = 1
					   NameMon = "Cookie Crafter"
					   CFrameMon = CFrame.new(-2365, 38, -12099)
					   VectorMon = Vector3.new(-2365, 38, -12099)
					   CFrameQuest = CFrame.new(-2020, 38, -12025)
					   VectorQuest = Vector3.new(-2020, 38, -12025)
					elseif (LevelFarm == 24) then
					   Name = "Cake Guard [Lv. 2225]"
					   QuestName = "CakeQuest1"
					   LevelQuest = 2
					   NameMon = "Cake Guard"
					   CFrameMon = CFrame.new(-1651, 38, -12308)
					   VectorMon = Vector3.new(-1651, 38, -12308)
					   CFrameQuest = CFrame.new(-2020, 38, -12025)
					   VectorQuest = Vector3.new(-2020, 38, -12025)
					elseif (LevelFarm == 25) then
					   Name = "Baking Staff [Lv. 2250]"
					   QuestName = "CakeQuest2"
					   LevelQuest = 1
					   NameMon = "Baking Staff"
					   CFrameMon = CFrame.new(-1870, 38, -12938)
					   VectorMon = Vector3.new(-1870, 38, -12938)
					   CFrameQuest = CFrame.new(-1926, 38, -12850)
					   VectorQuest = Vector3.new(-1926, 38, -12850)
					elseif (LevelFarm == 26) then
					   Name = "Head Baker [Lv. 2275]"
					   QuestName = "CakeQuest2"
					   LevelQuest = 2
					   NameMon = "Head Baker"
					   CFrameMon = CFrame.new(-1926, 88, -12850)
					   VectorMon = CFrame.new(-1870, 38, -12938)
					   CFrameQuest = CFrame.new(-1926, 38, -12850)
					   VectorQuest = Vector3.new(-1926, 38, -12850)
					elseif (LevelFarm == 27) then
					   Name = "Cocoa Warrior [Lv. 2300]"
					   QuestName = "ChocQuest1"
					   LevelQuest = 1
					   NameMon = "Cocoa Warrior"
					   CFrameMon = CFrame.new(231, 23, -12194)
					   VectorMon = CFrame.new(231, 23, -12194)
					   CFrameQuest = CFrame.new(231, 23, -12194)
					   VectorQuest = Vector3.new(231, 23, -12194)
					elseif (LevelFarm == 28) then
					   Name = "Chocolate Bar Battler [Lv. 2325]"
					   QuestName = "ChocQuest1"
					   LevelQuest = 2
					   NameMon = "Chocolate Bar Battler"
					   CFrameMon = CFrame.new(231, 23, -12194)
					   VectorMon = CFrame.new(231, 23, -12194)
					   CFrameQuest = CFrame.new(231, 23, -12194)
					   VectorQuest = Vector3.new(231, 23, -12194)
					elseif (LevelFarm == 29) then
					   Name = "Sweet Thief [Lv. 2350]"
					   QuestName = "ChocQuest2"
					   LevelQuest = 1
					   NameMon = "Sweet Thief"
					   CFrameMon = CFrame.new(71, 77, -12632)
					   VectorMon = CFrame.new(71, 77, -12632)
					   CFrameQuest = CFrame.new(151, 23, -12774)
					   VectorQuest = Vector3.new(151, 23, -12774)
					elseif (MyLevel == 30) then
					   Name = "Candy Rebel [Lv. 2375]"
					   QuestName = "ChocQuest2"
					   LevelQuest = 2
					   NameMon = "Candy Rebel"
					   CFrameMon = CFrame.new(134, 77, -12882)
					   VectorMon = CFrame.new(134, 77, -12882)
					   CFrameQuest = CFrame.new(151, 23, -12774)
					   VectorQuest = Vector3.new(151, 23, -12774)
					elseif (MyLevel == 31) then
					   Name = "Candy Pirate [Lv. 2400]"
					   QuestName = "CandyQuest1"
					   LevelQuest = 1
					   NameMon = "Candy Pirate"
					   CFrameMon = CFrame.new(-1408.46521, 16.1423531, -14552.2041, 0.90175873, -8.1721694e-8, -0.432239741, 7.812645e-8, 1, -2.6074616e-8, 0.432239741, -1.0256343e-8, 0.90175873)
					   VectorQuest = Vector3.new(-1408.46521, 16.1423531, -14552.2041, 0.90175873, -8.1721694e-8, -0.432239741, 7.812645e-8, 1, -2.6074616e-8, 0.432239741, -1.0256343e-8, 0.90175873)
					   CFrameQuest = CFrame.new(-1151.48987, 16.1422901, -14445.6904, -0.316594511, -6.8569825e-8, -0.948560953, -2.0534307e-8, 1, -6.543467e-8, 0.948560953, -1.2382168e-9, -0.316594511)
					   VectorQuest = Vector3.new(-1151.48987, 16.1422901, -14445.6904, -0.316594511, -6.8569825e-8, -0.948560953, -2.0534307e-8, 1, -6.543467e-8, 0.948560953, -1.2382168e-9, -0.316594511)
					elseif (MyLevel >= 32) then
					   Name = "Snow Demon [Lv. 2425]"
					   QuestName = "CandyQuest1"
					   LevelQuest = 2
					   NameMon = "Snow Demon"
					   CFrameMon = CFrame.new(-782, 382, -14474)
					   VectorQuest = Vector3.new(-782, 382, -14474)
					   CFrameQuest = CFrame.new(-1151.48987, 16.1422901, -14445.6904, -0.316594511, -6.8569825e-8, -0.948560953, -2.0534307e-8, 1, -6.543467e-8, 0.948560953, -1.2382168e-9, -0.316594511)
					   VectorQuest = Vector3.new(-1151.48987, 16.1422901, -14445.6904, -0.316594511, -6.8569825e-8, -0.948560953, -2.0534307e-8, 1, -6.543467e-8, 0.948560953, -1.2382168e-9, -0.316594511)
					end
				 end
			  end
			  function CheckBossQuest()
				 if (_G.Settings.Boss["Select Boss"] == "Saber Expert [Lv. 200] [Boss]") then
					MsBoss = "Saber Expert [Lv. 200] [Boss]"
					NameBoss = "Saber Expert"
					CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564, 0.858821094, 1.1384894e-8, 0.512275636, -4.8564925e-9, 1, -1.4082333e-8, -0.512275636, 9.6063415e-9, 0.858821094)
				 elseif (_G.Settings.Boss["Select Boss"] == "The Saw [Lv. 100] [Boss]") then
					MsBoss = "The Saw [Lv. 100] [Boss]"
					NameBoss = "The Saw"
					CFrameBoss = CFrame.new(-683.519897, 13.8534927, 1610.87854, -0.290192783, 6.883658e-8, 0.956968188, 6.984136e-8, 1, -5.0753112e-8, -0.956968188, 5.2107776e-8, -0.290192783)
				 elseif (_G.Settings.Boss["Select Boss"] == "Greybeard [Lv. 750] [Raid Boss]") then
					MsBoss = "Greybeard [Lv. 750] [Raid Boss]"
					NameBoss = "Greybeard"
					CFrameBoss = CFrame.new(-4955.72949, 80.8163834, 4305.82666, -0.433646321, -1.0339429e-8, 0.901083171, -3.0443168e-8, 1, -3.1763308e-9, -0.901083171, -2.8809229e-8, -0.433646321)
				 elseif (_G.Settings.Boss["Select Boss"] == "The Gorilla King [Lv. 25] [Boss]") then
					MsBoss = "The Gorilla King [Lv. 25] [Boss]"
					NameBoss = "The Gorilla King"
					NameQuestBoss = "JungleQuest"
					LevelQuestBoss = 3
					CFrameQuestBoss = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -0.000004708589, -0.997892559, 1.4143188e-7, 1, -0.0000047093367, 0.997892559, 1.6444218e-7, 0.0648873374)
					CFrameBoss = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.666025e-8, 0.950426519, -3.372755e-8, 1, 7.065018e-8, -0.950426519, -5.4024174e-8, 0.310949147)
				 elseif (_G.Settings.Boss["Select Boss"] == "Bobby [Lv. 55] [Boss]") then
					MsBoss = "Bobby [Lv. 55] [Boss]"
					NameBoss = "Bobby"
					NameQuestBoss = "BuggyQuest1"
					LevelQuestBoss = 3
					CFrameQuestBoss = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.585705e-9, 0.280922383, -4.0631033e-8, 1, -1.11807175e-7, -0.280922383, -1.18718916e-7, -0.959730506)
					CFrameBoss = CFrame.new(-1147.65173, 32.5966301, 4156.02588, 0.956680477, -1.7710995e-10, -0.29113996, 5.165309e-10, 1, 1.088978e-9, 0.29113996, -1.1921868e-9, 0.956680477)
				 elseif (_G.Settings.Boss["Select Boss"] == "Yeti [Lv. 110] [Boss]") then
					MsBoss = "Yeti [Lv. 110] [Boss]"
					NameBoss = "Yeti"
					NameQuestBoss = "SnowQuest"
					LevelQuestBoss = 3
					CFrameQuestBoss = CFrame.new(1384.90247, 87.3078308, -1296.6825, 0.280209213, 2.7203518e-8, -0.959938943, -6.756908e-8, 1, 8.615171e-9, 0.959938943, 6.2448144e-8, 0.280209213)
					CFrameBoss = CFrame.new(1221.7356, 138.046906, -1488.84082, 0.349343032, -9.4924594e-8, 0.936994851, 6.294782e-8, 1, 7.783843e-8, -0.936994851, 3.1789465e-8, 0.349343032)
				 elseif (_G.Settings.Boss["Select Boss"] == "Mob Leader [Lv. 120] [Boss]") then
					MsBoss = "Mob Leader [Lv. 120] [Boss]"
					NameBoss = "Mob Leader"
					CFrameBoss = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-8, 0.371961564, -7.6181664e-8, 1, 4.4447486e-8, -0.371961564, 1.2921643e-8, -0.92824)
				 elseif (_G.Settings.Boss["Select Boss"] == "Vice Admiral [Lv. 130] [Boss]") then
					MsBoss = "Vice Admiral [Lv. 130] [Boss]"
					NameBoss = "Vice Admiral"
					NameQuestBoss = "MarineQuest2"
					LevelQuestBoss = 2
					CFrameQuestBoss = CFrame.new(-5035.42285, 28.6520386, 4324.50293, -0.0611100644, -8.083958e-8, 0.998130739, -1.5741659e-8, 1, 8.0027185e-8, -0.998130739, -1.082177e-8, -0.0611100644)
					CFrameBoss = CFrame.new(-5078.45898, 99.6520691, 4402.1665, -0.555574954, -9.886306e-11, 0.831466436, -6.355083e-8, 1, -4.2344926e-8, -0.831466436, -7.636616e-8, -0.555574954)
				 elseif (_G.Settings.Boss["Select Boss"] == "Warden [Lv. 175] [Boss]") then
					MsBoss = "Warden [Lv. 175] [Boss]"
					NameBoss = "Warden"
					NameQuestBoss = "ImpelQuest"
					LevelQuestBoss = 1
					CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.6830374e-8, -0.842635691, 1.3800175e-8, 1, -8.813008e-8, 0.842635691, -5.908516e-8, -0.538484037)
					CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-8, 0.330433697, 3.4781863e-8, 1, 3.8165815e-8, -0.330433697, -2.452891e-8, 0.943829298)
				 elseif (_G.Settings.Boss["Select Boss"] == "Chief Warden [Lv. 200] [Boss]") then
					MsBoss = "Chief Warden [Lv. 200] [Boss]"
					NameBoss = "Chief Warden"
					NameQuestBoss = "ImpelQuest"
					LevelQuestBoss = 2
					CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.6830374e-8, -0.842635691, 1.3800175e-8, 1, -8.813008e-8, 0.842635691, -5.908516e-8, -0.538484037)
					CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-8, 0.330433697, 3.4781863e-8, 1, 3.8165815e-8, -0.330433697, -2.452891e-8, 0.943829298)
				 elseif (_G.Settings.Boss["Select Boss"] == "Swan [Lv. 225] [Boss]") then
					MsBoss = "Swan [Lv. 225] [Boss]"
					NameBoss = "Swan"
					NameQuestBoss = "ImpelQuest"
					LevelQuestBoss = 3
					CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.6830374e-8, -0.842635691, 1.3800175e-8, 1, -8.813008e-8, 0.842635691, -5.908516e-8, -0.538484037)
					CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-8, 0.330433697, 3.4781863e-8, 1, 3.8165815e-8, -0.330433697, -2.452891e-8, 0.943829298)
				 elseif (_G.Settings.Boss["Select Boss"] == "Magma Admiral [Lv. 350] [Boss]") then
					MsBoss = "Magma Admiral [Lv. 350] [Boss]"
					NameBoss = "Magma Admiral"
					NameQuestBoss = "MagmaQuest"
					LevelQuestBoss = 3
					CFrameQuestBoss = CFrame.new(-5317.07666, 12.2721891, 8517.41699, 0.51175487, -2.655088e-8, -0.859131515, -3.9113157e-8, 1, -5.4202676e-8, 0.859131515, 6.134183e-8, 0.51175487)
					CFrameBoss = CFrame.new(-5530.12646, 22.8769703, 8859.91309, 0.857838571, 2.2341439e-8, 0.513919294, 1.5368913e-8, 1, -6.9126585e-8, -0.513919294, 6.719784e-8, 0.857838571)
				 elseif (_G.Settings.Boss["Select Boss"] == "Fishman Lord [Lv. 425] [Boss]") then
					MsBoss = "Fishman Lord [Lv. 425] [Boss]"
					NameBoss = "Fishman Lord"
					NameQuestBoss = "FishmanQuest"
					LevelQuestBoss = 3
					CFrameQuestBoss = CFrame.new(61123.0859, 18.5066795, 1570.18018, 0.927145958, 1.0624845e-7, 0.374700129, -6.982194e-8, 1, -1.10790765e-7, -0.374700129, 7.655694e-8, 0.927145958)
					CFrameBoss = CFrame.new(61351.7773, 31.0306778, 1113.31409, 0.999974668, 0, -0.00714713801, 0, 1.00000012, 0, 0.00714714266, 0, 0.999974549)
				 elseif (_G.Settings.Boss["Select Boss"] == "Wysper [Lv. 500] [Boss]") then
					MsBoss = "Wysper [Lv. 500] [Boss]"
					NameBoss = "Wysper"
					NameQuestBoss = "SkyExp1Quest"
					LevelQuestBoss = 3
					CFrameQuestBoss = CFrame.new(-7862.94629, 5545.52832, -379.833954, 0.462944925, 1.4583809e-8, -0.886386991, 1.0534996e-8, 1, 2.1955342e-8, 0.886386991, -1.95022e-8, 0.462944925)
					CFrameBoss = CFrame.new(-7925.48389, 5550.76074, -636.178345, 0.716468513, -1.2291529e-9, 0.697619379, 3.3738143e-9, 1, -1.7030475e-9, -0.697619379, 3.5738184e-9, 0.716468513)
				 elseif (_G.Settings.Boss["Select Boss"] == "Thunder God [Lv. 575] [Boss]") then
					MsBoss = "Thunder God [Lv. 575] [Boss]"
					NameBoss = "Thunder God"
					NameQuestBoss = "SkyExp2Quest"
					LevelQuestBoss = 3
					CFrameQuestBoss = CFrame.new(-7902.78613, 5635.99902, -1411.98706, -0.0361216255, -1.1689591e-7, 0.999347389, 1.4453396e-9, 1, 1.1702449e-7, -0.999347389, 5.6715117e-9, -0.0361216255)
					CFrameBoss = CFrame.new(-7917.53613, 5616.61377, -2277.78564, 0.965189934, 4.8056343e-8, -0.261550069, -6.730899e-8, 1, -6.465153e-8, 0.261550069, 8.000568e-8, 0.965189934)
				 elseif (_G.Settings.Boss["Select Boss"] == "Cyborg [Lv. 675] [Boss]") then
					MsBoss = "Cyborg [Lv. 675] [Boss]"
					NameBoss = "Cyborg"
					NameQuestBoss = "FountainQuest"
					LevelQuestBoss = 3
					CFrameQuestBoss = CFrame.new(5253.54834, 38.5361786, 4050.45166, -0.0112687312, -9.936779e-8, -0.999936521, 2.5529137e-10, 1, -9.9376955e-8, 0.999936521, -1.3751221e-9, -0.0112687312)
					CFrameBoss = CFrame.new(6041.82813, 52.7112198, 3907.45142, -0.563162148, 1.7380525e-9, -0.826346457, -5.946327e-8, 1, 4.2628024e-8, 0.826346457, 7.314375e-8, -0.563162148)
				 elseif (_G.Settings.Boss["Select Boss"] == "Diamond [Lv. 750] [Boss]") then
					MsBoss = "Diamond [Lv. 750] [Boss]"
					NameBoss = "Diamond"
					NameQuestBoss = "Area1Quest"
					LevelQuestBoss = 3
					CFrameQuestBoss = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.4216593e-8, 0.967323601, -6.001478e-8, 1, 3.042729e-8, -0.967323601, -6.57684e-8, 0.253544956)
					CFrameBoss = CFrame.new(-1736.26587, 198.627731, -236.412857, -0.997808516, 0, -0.0661673471, 0, 1, 0, 0.0661673471, 0, -0.997808516)
				 elseif (_G.Settings.Boss["Select Boss"] == "Jeremy [Lv. 850] [Boss]") then
					MsBoss = "Jeremy [Lv. 850] [Boss]"
					NameBoss = "Jeremy"
					NameQuestBoss = "Area2Quest"
					LevelQuestBoss = 3
					CFrameQuestBoss = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.960749e-10, -0.999488771, 1.3632653e-10, 1, 8.9217234e-10, 0.999488771, -1.0773209e-10, -0.0319722369)
					CFrameBoss = CFrame.new(2203.76953, 448.966034, 752.731079, -0.0217453763, 0, -0.999763548, 0, 1, 0, 0.999763548, 0, -0.0217453763)
				 elseif (_G.Settings.Boss["Select Boss"] == "Fajita [Lv. 925] [Boss]") then
					MsBoss = "Fajita [Lv. 925] [Boss]"
					NameBoss = "Fajita"
					NameQuestBoss = "MarineQuest3"
					LevelQuestBoss = 3
					CFrameQuestBoss = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.232984e-8, -0.486752301, 5.643834e-8, 1, -1.4322079e-8, 0.486752301, -3.99824e-8, -0.873540044)
					CFrameBoss = CFrame.new(-2297.40332, 115.449463, -3946.53833, 0.961227536, -1.466458e-9, -0.275756449, -2.3212845e-9, 1, -1.3409443e-8, 0.275756449, 1.3529635e-8, 0.961227536)
				 elseif (_G.Settings.Boss["Select Boss"] == "Don Swan [Lv. 1000] [Boss]") then
					MsBoss = "Don Swan [Lv. 1000] [Boss]"
					NameBoss = "Don Swan"
					CFrameBoss = CFrame.new(2288.802, 15.1870775, 863.034607, 0.99974072, -8.412472e-8, -0.0227668174, 8.477473e-8, 1, 2.758501e-8, 0.0227668174, -2.9507907e-8, 0.99974072)
				 elseif (_G.Settings.Boss["Select Boss"] == "Smoke Admiral [Lv. 1150] [Boss]") then
					MsBoss = "Smoke Admiral [Lv. 1150] [Boss]"
					NameBoss = "Smoke Admiral"
					NameQuestBoss = "IceSideQuest"
					LevelQuestBoss = 3
					CFrameQuestBoss = CFrame.new(-6059.96191, 15.9868021, -4904.7373, -0.444992423, -3.0874483e-9, 0.895534337, -3.640988e-8, 1, -1.4644522e-8, -0.895534337, -3.9122998e-8, -0.444992423)
					CFrameBoss = CFrame.new(-5115.72754, 23.7664986, -5338.2207, 0.251453817, 1.4834506e-8, -0.967869282, 4.0279698e-8, 1, 2.5791698e-8, 0.967869282, -4.5470895e-8, 0.251453817)
				 elseif (_G.Settings.Boss["Select Boss"] == "Cursed Captain [Lv. 1325] [Raid Boss]") then
					MsBoss = "Cursed Captain [Lv. 1325] [Raid Boss]"
					NameBoss = "Cursed Captain"
					CFrameBoss = CFrame.new(916.928589, 181.092773, 33422, -0.999505103, 9.263105e-9, 0.0314563364, 8.429162e-9, 1, -2.6643713e-8, -0.0314563364, -2.6365377e-8, -0.999505103)
				 elseif (_G.Settings.Boss["Select Boss"] == "Darkbeard [Lv. 1000] [Raid Boss]") then
					MsBoss = "Darkbeard [Lv. 1000] [Raid Boss]"
					NameBoss = "Darkbeard"
					CFrameBoss = CFrame.new(3876.00366, 24.6882591, -3820.21777, -0.976951957, 4.9735633e-8, 0.213458836, 4.5733536e-8, 1, -2.3686862e-8, -0.213458836, -1.3378704e-8, -0.976951957)
				 elseif (_G.Settings.Boss["Select Boss"] == "Order [Lv. 1250] [Raid Boss]") then
					MsBoss = "Order [Lv. 1250] [Raid Boss]"
					NameBoss = "Order"
					CFrameBoss = CFrame.new(-6221.15039, 16.2351036, -5045.23584, -0.380726993, 7.414635e-8, 0.924687505, 5.8560477e-8, 1, -5.6073855e-8, -0.924687505, 3.2801314e-8, -0.380726993)
				 elseif (_G.Settings.Boss["Select Boss"] == "Awakened Ice Admiral [Lv. 1400] [Boss]") then
					MsBoss = "Awakened Ice Admiral [Lv. 1400] [Boss]"
					NameBoss = "Awakened Ice Admiral"
					NameQuestBoss = "FrostQuest"
					LevelQuestBoss = 3
					CFrameQuestBoss = CFrame.new(5669.33203, 28.2118053, -6481.55908, 0.921275556, -1.2532083e-8, 0.388910472, 4.722308e-8, 1, -7.9641424e-8, -0.388910472, 9.173725e-8, 0.921275556)
					CFrameBoss = CFrame.new(6407.33936, 340.223785, -6892.521, 0.49051559, -5.253102e-8, -0.871432424, -2.7614602e-8, 1, -7.582506e-8, 0.871432424, 6.125763e-8, 0.49051559)
				 elseif (_G.Settings.Boss["Select Boss"] == "Tide Keeper [Lv. 1475] [Boss]") then
					MsBoss = "Tide Keeper [Lv. 1475] [Boss]"
					NameBoss = "Tide Keeper"
					NameQuestBoss = "ForgottenQuest"
					LevelQuestBoss = 3
					CFrameQuestBoss = CFrame.new(-3053.89648, 236.881363, -10148.2324, -0.985987961, -3.5850474e-9, 0.16681771, -3.0783291e-9, 1, 3.2961256e-9, -0.16681771, 2.7364198e-9, -0.985987961)
					CFrameBoss = CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-8, 0.885206044, 4.0332897e-9, 1, 1.3534751e-8, -0.885206044, -2.7260627e-9, 0.465199202)
				 elseif (_G.Settings.Boss["Select Boss"] == "Stone [Lv. 1550] [Boss]") then
					MsBoss = "Stone [Lv. 1550] [Boss]"
					NameBoss = "Stone"
					NameQuestBoss = "PiratePortQuest"
					LevelQuestBoss = 3
					CFrameQuestBoss = CFrame.new(-290, 44, 5577)
					CFrameBoss = CFrame.new(-1085, 40, 6779)
				 elseif (_G.Settings.Boss["Select Boss"] == "Island Empress [Lv. 1675] [Boss]") then
					MsBoss = "Island Empress [Lv. 1675] [Boss]"
					NameBoss = "Island Empress"
					NameQuestBoss = "AmazonQuest2"
					LevelQuestBoss = 3
					CFrameQuestBoss = CFrame.new(5443, 602, 752)
					CFrameBoss = CFrame.new(5659, 602, 244)
				 elseif (_G.Settings.Boss["Select Boss"] == "Kilo Admiral [Lv. 1750] [Boss]") then
					MsBoss = "Kilo Admiral [Lv. 1750] [Boss]"
					NameBoss = "Kilo Admiral"
					NameQuestBoss = "MarineTreeIsland"
					LevelQuestBoss = 3
					CFrameQuestBoss = CFrame.new(2178, 29, -6737)
					CFrameBoss = CFrame.new(2846, 433, -7100)
				 elseif (_G.Settings.Boss["Select Boss"] == "Captain Elephant [Lv. 1875] [Boss]") then
					MsBoss = "Captain Elephant [Lv. 1875] [Boss]"
					NameBoss = "Captain Elephant"
					NameQuestBoss = "DeepForestIsland"
					LevelQuestBoss = 3
					CFrameQuestBoss = CFrame.new(-13232, 333, -7631)
					CFrameBoss = CFrame.new(-13221, 325, -8405)
				 elseif (_G.Settings.Boss["Select Boss"] == "Beautiful Pirate [Lv. 1950] [Boss]") then
					MsBoss = "Beautiful Pirate [Lv. 1950] [Boss]"
					NameBoss = "Beautiful Pirate"
					NameQuestBoss = "DeepForestIsland2"
					LevelQuestBoss = 3
					CFrameQuestBoss = CFrame.new(-12686, 391, -9902)
					CFrameBoss = CFrame.new(5182, 23, -20)
				 elseif (_G.Settings.Boss["Select Boss"] == "Cake Queen [Lv. 2175] [Boss]") then
					MsBoss = "Cake Queen [Lv. 2175] [Boss]"
					NameBoss = "Cake Queen"
					NameQuestBoss = "IceCreamIslandQuest"
					LevelQuestBoss = 3
					CFrameQuestBoss = CFrame.new(-716, 382, -11010)
					CFrameBoss = CFrame.new(-821, 66, -10965)
				 elseif (_G.Settings.Boss["Select Boss"] == "rip_indra True Form [Lv. 5000] [Raid Boss]") then
					MsBoss = "rip_indra True Form [Lv. 5000] [Raid Boss]"
					NameBoss = "rip_indra True Form"
					CFrameBoss = CFrame.new(-5359, 424, -2735)
				 elseif (_G.Settings.Boss["Select Boss"] == "Longma [Lv. 2000] [Boss]") then
					MsBoss = "Longma [Lv. 2000] [Boss]"
					NameBoss = "Longma"
					CFrameBoss = CFrame.new(-10248.3936, 353.79129, -9306.34473)
				 elseif (_G.Settings.Boss["Select Boss"] == "Soul Reaper [Lv. 2100] [Raid Boss]") then
					MsBoss = "Soul Reaper [Lv. 2100] [Raid Boss]"
					NameBoss = "Soul Reaper"
					CFrameBoss = CFrame.new(-9515.62109, 315.925537, 6691.12012)
				 end
			  end
			  function GetBossName()
				 for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
					if not _G.GetBoss then
					   if ((v.Name == "The Gorilla King [Lv. 25] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 20)) then
						  _G.Settings.Boss["Select Boss"] = "The Gorilla King [Lv. 25] [Boss]"
					   elseif ((v.Name == "Bobby [Lv. 55] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 55)) then
						  _G.Settings.Boss["Select Boss"] = "Bobby [Lv. 55] [Boss]"
					   elseif ((v.Name == "Yeti [Lv. 110] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 105)) then
						  _G.Settings.Boss["Select Boss"] = "Yeti [Lv. 110] [Boss]"
					   elseif ((v.Name == "Mob Leader [Lv. 120] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 120)) then
						  _G.Settings.Boss["Select Boss"] = "Mob Leader [Lv. 120] [Boss]"
					   elseif ((v.Name == "Vice Admiral [Lv. 130] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 130)) then
						  _G.Settings.Boss["Select Boss"] = "Vice Admiral [Lv. 130] [Boss]"
					   elseif ((v.Name == "Warden [Lv. 175] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 175)) then
						  _G.Settings.Boss["Select Boss"] = "Warden [Lv. 175] [Boss]"
					   elseif ((v.Name == "Saber Expert [Lv. 200] [Boss]") and (game.Workspace.Map.Jungle.Final.Part.Transparency == 1)) then
						  _G.Settings.Boss["Select Boss"] = "Saber Expert [Lv. 200] [Boss]"
					   elseif ((v.Name == "Chief Warden [Lv. 200] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 200)) then
						  _G.Settings.Boss["Select Boss"] = "Chief Warden [Lv. 200] [Boss]"
					   elseif ((v.Name == "Swan [Lv. 225] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 250)) then
						  _G.Settings.Boss["Select Boss"] = "Swan [Lv. 225] [Boss]"
					   elseif ((v.Name == "Magma Admiral [Lv. 350] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 350)) then
						  _G.Settings.Boss["Select Boss"] = "Magma Admiral [Lv. 350] [Boss]"
					   elseif ((v.Name == "Fishman Lord [Lv. 425] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 425)) then
						  _G.Settings.Boss["Select Boss"] = "Fishman Lord [Lv. 425] [Boss]"
					   elseif ((v.Name == "Wysper [Lv. 500] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 500)) then
						  _G.Settings.Boss["Select Boss"] = "Wysper [Lv. 500] [Boss]"
					   elseif ((v.Name == "Thunder God [Lv. 575] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 575)) then
						  _G.Settings.Boss["Select Boss"] = "Thunder God [Lv. 575] [Boss]"
					   elseif ((v.Name == "Cyborg [Lv. 675] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 675)) then
						  _G.Settings.Boss["Select Boss"] = "Cyborg [Lv. 675] [Boss]"
					   elseif ((v.Name == "Diamond [Lv. 750] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 750)) then
						  _G.Settings.Boss["Select Boss"] = "Diamond [Lv. 750] [Boss]"
					   elseif ((v.Name == "Jeremy [Lv. 850] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 850)) then
						  _G.Settings.Boss["Select Boss"] = "Jeremy [Lv. 850] [Boss]"
					   elseif ((v.Name == "Fajita [Lv. 925] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 925)) then
						  _G.Settings.Boss["Select Boss"] = "Fajita [Lv. 925] [Boss]"
					   elseif ((v.Name == "Don Swan [Lv. 1000] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 1000) and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor", "1") == 0)) then
						  _G.Settings.Boss["Select Boss"] = "Don Swan [Lv. 1000] [Boss]"
					   elseif ((v.Name == "Smoke Admiral [Lv. 1150] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 1150)) then
						  _G.Settings.Boss["Select Boss"] = "Smoke Admiral [Lv. 1150] [Boss]"
					   elseif ((v.Name == "Cursed Captain [Lv. 1325] [Raid Boss]") and (game.Players.localPlayer.Data.Level.Value >= 1325)) then
						  _G.Settings.Boss["Select Boss"] = "Cursed Captain [Lv. 1325] [Raid Boss]"
					   elseif ((v.Name == "Awakened Ice Admiral [Lv. 1400] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 1400)) then
						  _G.Settings.Boss["Select Boss"] = "Awakened Ice Admiral [Lv. 1400] [Boss]"
					   elseif ((v.Name == "Tide Keeper [Lv. 1475] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 1475)) then
						  _G.Settings.Boss["Select Boss"] = "Tide Keeper [Lv. 1475] [Boss]"
					   elseif ((v.Name == "Stone [Lv. 1550] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 1550)) then
						  _G.Settings.Boss["Select Boss"] = "Stone [Lv. 1550] [Boss]"
					   elseif ((v.Name == "Island Empress [Lv. 1675] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 1675)) then
						  _G.Settings.Boss["Select Boss"] = "Island Empress [Lv. 1675] [Boss]"
					   elseif ((v.Name == "Kilo Admiral [Lv. 1750] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 1750)) then
						  _G.Settings.Boss["Select Boss"] = "Kilo Admiral [Lv. 1750] [Boss]"
					   elseif ((v.Name == "Captain Elephant [Lv. 1875] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 1875)) then
						  _G.Settings.Boss["Select Boss"] = "Captain Elephant [Lv. 1875] [Boss]"
					   elseif ((v.Name == "Beautiful Pirate [Lv. 1950] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 1950)) then
						  _G.Settings.Boss["Select Boss"] = "Beautiful Pirate [Lv. 1950] [Boss]"
					   elseif ((v.Name == "Cake Queen [Lv. 2175] [Boss]") and (game.Players.localPlayer.Data.Level.Value >= 2175)) then
						  _G.Settings.Boss["Select Boss"] = "Cake Queen [Lv. 2175] [Boss]"
					   end
					end
				 end
			  end
	 
			  local function CheckMaterial(v1)
				 if World1 then
					if (v1=="Magma Ore") then
					   MaterialMob={"Military Soldier [Lv. 300]","Military Spy [Lv. 325]"}
					   CFrameMon=CFrame.new( -5815,84,8820)
					elseif ((v1=="Leather") or (v1=="Scrap Metal")) then
					   MaterialMob={"Brute [Lv. 45]"}
					   CFrameMon=CFrame.new( -1145,15,4350)
					elseif (v1=="Angel Wings") then
					   MaterialMob={"God's Guard [Lv. 450]"}
					   CFrameMon=CFrame.new( -4698,845, -1912)
					elseif (v1=="Fish Tail") then
					   MaterialMob={"Fishman Warrior [Lv. 375]","Fishman Commando [Lv. 400]"}
					   CFrameMon=CFrame.new(61123,19,1569)
					end
				 end
				 if World2 then
					if (v1=="Magma Ore") then
					   MaterialMob={"Magma Ninja [Lv. 1175]"}
					   CFrameMon=CFrame.new( -5428,78, -5959)
					elseif (v1=="Scrap Metal") then
					   MaterialMob={"Swan Pirate [Lv. 775]"}
					   CFrameMon=CFrame.new(878,122,1235)
					elseif (v1=="Radioactive Material") then
					   MaterialMob={"Factory Staff [Lv. 800]"}
					   CFrameMon=CFrame.new(295,73, -56)
					elseif (v1=="Vampire Fang") then
					   MaterialMob={"Vampire [Lv. 975]"}
					   CFrameMon=CFrame.new( -6033,7, -1317)
					elseif (v1=="Mystic Droplet") then
					   MaterialMob={"Water Fighter [Lv. 1450]","Sea Soldier [Lv. 1425]"}
					   CFrameMon=CFrame.new( -3385,239, -10542)
					end
				 end
				 if World3 then
					if (v1=="Mini Tusk") then
					   MaterialMob={"Mythological Pirate [Lv. 1850]"}
					   CFrameMon=CFrame.new( -13545,470, -6917)
					elseif (v1=="Fish Tail") then
					   MaterialMob={"Fishman Raider [Lv. 1775]","Fishman Captain [Lv. 1800]"}
					   CFrameMon=CFrame.new( -10993,332, -8940)
					elseif (v1=="Scrap Metal") then
					   MaterialMob={"Jungle Pirate [Lv. 1900]"}
					   CFrameMon=CFrame.new( -12107,332, -10549)
					elseif (v1=="Dragon Scale") then
					   MaterialMob={"Dragon Crew Archer [Lv. 1600]","Dragon Crew Warrior [Lv. 1575]"}
					   CFrameMon=CFrame.new(6594,383,139)
					elseif (v1=="Conjured Cocoa") then
					   MaterialMob={"Cocoa Warrior [Lv. 2300]","Chocolate Bar Battler [Lv. 2325]","Sweet Thief [Lv. 2350]","Candy Rebel [Lv. 2375]"}
					   CFrameMon=CFrame.new(620.6344604492188,78.93644714355469, -12581.369140625)
					elseif (v1=="Demonic Wisp") then MaterialMob={"Demonic Soul [Lv. 2025]"}
					   CFrameMon=CFrame.new( -9507,172,6158)
					elseif (v1=="Gunpowder") then MaterialMob={"Pistol Billionaire [Lv. 1525]"}
					   CFrameMon=CFrame.new( -469,74,5904)
					end
				 end
			  end
	
			   local Tabs = {
				 ['General'] = u:AddTab('General'),
				 ['Automatics'] = u:AddTab('Items'),
				 ['Players'] = u:AddTab('Players'),
				 ['Misceallaneous'] = u:AddTab('Misceallaneous'),
				 ['My'] = u:AddTab('Configuration'),
			  }

	 
			  local Mainautoframx = Tabs['General']:AddLeftTabbox()
			  local Mainautofram = Mainautoframx:AddTab('\\\\  Auto Farm Level  //')
	 
			  Mainautofram:AddToggle('Auto_Farm_Level', {
				 Text = 'Auto Farm Level',
				 Default = _G.Settings.Main["Auto Farm Level"],
			  }):OnChanged(function(value)
			  _G.Settings.Main["Auto Farm Level"] = value
			  Auto_Farm_Level = value
			  if value == false then
					toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
			end
			  end)
	 
			  AttackRandomType = 1
			  LPH_NO_VIRTUALIZE(function()
			  task.spawn(function()
			  while wait() do
				 AttackRandomType = math.random(1,5)
				 --		wait(0.3)
			  end
			  end)
			  end)()
	 
			  _G.RedeemCodeLocalFastAutoFarm = false
			  LPH_JIT_MAX(function()
			  function AutoFarmLevel()
				 GetQuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title
				 GetQuest = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
				 local MyLevel = game.Players.LocalPlayer.Data.Level.Value
	 
				 if _G.Settings.Main["Auto Farm Level"] and (MyLevel >= 20 and MyLevel <= 300) then
					if _G.Settings.Configs["Auto Haki"] then
					   if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
						  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
					   end
					end
					if _G.RedeemCodeLocalFastAutoFarm == false then
					   function Redeem(value)
						  game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(value)
					   end
					   for i,v in pairs(CodeApi) do
						  Redeem(v)
					   end
					   wait()
					   _G.RedeemCodeLocalFastAutoFarm = true
					end
					if MyLevel >= 20 and MyLevel <= 70 then
					   local CFrameMon = CFrame.new(-7682, 5608, -447)
					   if game:GetService("Workspace").Enemies:FindFirstChild("Shanda [Lv. 475]") then
						  for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							 if _G.Settings.Main["Auto Farm Level"] and v.Name == "Shanda [Lv. 475]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								repeat wait()
								   FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
								   if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
									  if FarmtoTarget then FarmtoTarget:Stop() end
									  StartMagnet = true
									  PosMon = v.HumanoidRootPart.CFrame
									  if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
										 game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
										 game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
									  end
									  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0)
									  Fast = true
									  EquipWeapon(_G.Settings.Configs["Select Weapon"])
								   end
								until not (game:GetService("Workspace").Enemies:FindFirstChild("Shanda [Lv. 475]")) or not (_G.Settings.Main["Auto Farm Level"] or _G.Settings.Main["Auto Farm Level"]) or v.Humanoid.Health <= 0 or not v.Parent
								StartMagnet = false
								Fast = false
							 end
						  end
					   else
						  Modstween = toTarget(CFrameMon)
						  if World1 and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude >1500 then
							 if Modstween then Modstween:Stop() end wait(.5)
							 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))						elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
								if Modstween then Modstween:Stop() end
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
							 end
						  end
					   elseif MyLevel >= 70 and MyLevel <= 300 then
						  if GetQuest.Visible == false then
							 if not tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")):find("We heard some") then
								local CFrameMon = CFrame.new(-5408, 11, 8447)
								if game:GetService("Workspace").Enemies:FindFirstChild("Military Soldier [Lv. 300]") then
								   for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									  if _G.Settings.Main["Auto Farm Level"] and v.Name == "Military Soldier [Lv. 300]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
										 repeat wait()
											FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
											if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
											   if FarmtoTarget then FarmtoTarget:Stop() end
											   StartMagnet = true
											   PosMon = v.HumanoidRootPart.CFrame
											   if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
												  game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
												  game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
											   end
											   toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
											   Fast = true
											   EquipWeapon(_G.Settings.Configs["Select Weapon"])
											end
										 until not (game:GetService("Workspace").Enemies:FindFirstChild("Military Soldier [Lv. 300]")) or not (_G.Settings.Main["Auto Farm Level"] or _G.Settings.Main["Auto Farm Level"]) or v.Humanoid.Health <= 0 or not v.Parent
										 StartMagnet = false
										 Fast = false
									  end
								   end
								else
								   Modstween = toTarget(CFrameMon)
								   if World1 and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude >1500 then
									  if Modstween then Modstween:Stop() end wait(.5)
									  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))								elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
										 if Modstween then Modstween:Stop() end
										 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
									  end
								   end
								end
							 elseif GetQuest.Visible == true then
								local AllPlayersTableSkipFarm = {}
								--	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
								for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
								   table.insert(AllPlayersTableSkipFarm,v.Name)
								end
								if table.find(AllPlayersTableSkipFarm,GetQuestTitle.Text:split(" ")[2]) then
								   for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
									  if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,v.Name) then
										 if _G.Settings.Main["Auto Farm Level"] and _G.Settings.Main["Auto Farm Level"] and v.Name == GetQuestTitle.Text:split(" ")[2] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
											repeat wait()
											   if World1 and (Vector3.new(61163.8515625, 11.6796875, 1819.7841796875) - v.HumanoidRootPart.Position).magnitude < 5000 then
												  if FarmtoTarget then FarmtoTarget:Stop() end
												  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
											   elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 150 then
												  FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame)
											   elseif v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
												  if FarmtoTarget then FarmtoTarget:Stop() end
												  if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.PvpDisabled.Visible == true then
													 local args = {
														[1] = "EnablePvp"
													 }
	 
													 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
												  end
												  if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
													 local args = {
														[1] = "Buso"
													 }
													 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
												  end
												  -- game:GetService('VirtualUser'):CaptureController()
												  -- game:GetService('VirtualUser'):ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
												  -- if CombatFrameworkR.activeController.hitboxMagnitude ~= 55 and CombatFrameworkR.activeController and CombatFrameworkR.activeController.equipped then
												  --     CombatFrameworkR.activeController.hitboxMagnitude = 55
												  -- end
												  if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
													 game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
													 game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
												  end
												  toTarget(v.HumanoidRootPart.CFrame *  CFrame.new(0, 1, 5))
												  EquipWeapon(_G.Settings.Configs["Select Weapon"])
												  Fast=true
												  wait(.1)
												  game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
												  game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
												  game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
												  game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
											   end
											until not _G.Settings.Main["Auto Farm Level"] or not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,v.Name) or v.Humanoid.Health <= 0 or not v.Parent or GetQuest.Visible == false
										 end
									  end
								   end
								else
								   if game:GetService("Workspace").Enemies:FindFirstChild(Name) then
									  for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										 if _G.Settings.Main["Auto Farm Level"] and v.Name == Name and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
											if string.find(GetQuestTitle.Text, QuestName) then
											   repeat wait()
												  if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 150 then
													 FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
												  elseif v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
													 if FarmtoTarget then FarmtoTarget:Stop() end
													 StartMagnet = true
													 PosMon = v.HumanoidRootPart.CFrame
													 if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
														game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
														game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
													 end
													 Fast = true
													 EquipWeapon(_G.Settings.Configs["Select Weapon"])
												  end
											   until not game:GetService("Workspace").Enemies:FindFirstChild(Name) or not _G.Settings.Main["Auto Farm Level"] or not string.find(GetQuestTitle.Text, QuestName) or v.Humanoid.Health <= 0 or not v.Parent or GetQuest.Visible == false
											   Fast = false
											   StartMagnet = false
											else
											   Com("F_","AbandonQuest")
											end
										 end
									  end
								   else
									  StartMagnet = false
									  if not string.find(GetQuestTitle.Text, NameCheckQuest) then Com("F_","AbandonQuest") end
									  Modstween = toTarget(CFrameMon)
									  if World1 and (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
										 if Questtween then Questtween:Stop() end wait(.5)
										 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
									  elseif World1 and not (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
										 if Questtween then Questtween:Stop() end wait(.5)
										 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
									  elseif World2 and string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
										 if Questtween then Questtween:Stop() end
										 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
									  elseif World2 and not string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
										 if Questtween then Questtween:Stop() end
										 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
									  elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
										 if Modstween then Modstween:Stop() end
										 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
									  end
								   end
								end
							 end
						  end
					   else
						  if not string.find(GetQuestTitle.Text, NameMon) then game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("AbandonQuest") end
						  if GetQuest.Visible == false then
							 StartMagnet = false
							 Fast = false
							 Questtween = toTarget(CFrameQuest.Position,CFrameQuest)
							 if World1 and (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
								if Questtween then Questtween:Stop() end wait(.5)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
							 elseif World1 and not (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
								if Questtween then Questtween:Stop() end wait(.5)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
							 elseif World2 and string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
								if Questtween then Questtween:Stop() end
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
							 elseif World2 and not string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
								if Questtween then Questtween:Stop() end
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
							 elseif (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
								if Questtween then Questtween:Stop() end
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
								wait(1)
								if game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
								   Com("F_","StartQuest", QuestName, LevelQuest)
	 
								end
							 end
						  elseif GetQuest.Visible == true then
							 if game:GetService("Workspace").Enemies:FindFirstChild(Name) then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								   if _G.Settings.Main["Auto Farm Level"] and v.Name == Name and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
									  if string.find(GetQuestTitle.Text, NameMon) then
										 repeat wait()
											FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
											if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
											   if FarmtoTarget then FarmtoTarget:Stop() end
											   if _G.Settings.Configs["Auto Haki"] then
												  if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
													 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
												  end
											   end
											   if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
												  wait()
												  EquipWeapon(_G.Settings.Configs["Select Weapon"])
											   end
											   StartMagnet = true
											   Fast = true
											   if game.Players.LocalPlayer.Data.Level.Value >= 20 and game.Players.LocalPlayer.Data.Level.Value <= 90 then
												  _G.Settings.Configs["Fast Attack Type"] = "Slow"
											   else
												  _G.Settings.Configs["Fast Attack Type"] = "Fast"
											   end
											   if not _G.Settings.Configs["Fast Attack"] then
												  game:GetService'VirtualUser':CaptureController()
												  game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
											   end
											   v.HumanoidRootPart.Transparency = 1
											   v.Humanoid.JumpPower = 0
											   v.Humanoid.WalkSpeed = 0
											   v.HumanoidRootPart.CanCollide = false
											   v.Humanoid:ChangeState(11)
											   v.Humanoid:ChangeState(14)
											   PosMon = v.HumanoidRootPart.CFrame
											   if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
												  game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
												  game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
											   end
											   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0)
											end
										 until not game:GetService("Workspace").Enemies:FindFirstChild(Name) or not _G.Settings.Main["Auto Farm Level"] or not string.find(GetQuestTitle.Text, NameMon) or v.Humanoid.Health <= 0 or not v.Parent or GetQuest.Visible == false
										 StartMagnet = false
										 Fast = false
									  else
										 Com("F_","AbandonQuest")
									  end
								   end
								end
							 else
								StartMagnet = false
								Fast = false
								if not string.find(GetQuestTitle.Text, NameMon) then Com("F_","AbandonQuest") end
								Modstween = toTarget(CFrameMon.Position,CFrameMon)
								if World1 and (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
								   if Modstween then Modstween:Stop() end wait(.5)
								   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
								elseif World1 and not (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
								   if Modstween then Modstween:Stop() end wait(.5)
								   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
								elseif World2 and string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
								   if Modstween then Modstween:Stop() end wait(.5)
								   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
								elseif World2 and not string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
								   if Modstween then Modstween:Stop() end wait(.5)
								   game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
								elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
								   if Modstween then Modstween:Stop() end
								   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
								end
							 end
						  end
					   end
					end
					end)()
	 
					-- [Check Notification]
	 
					LPH_JIT_MAX(function()
					function CheckNotifyComplete()
					   for i, v in pairs(game:GetService("Players")["LocalPlayer"].PlayerGui:FindFirstChild("Notifications"):GetChildren()) do
						  if v.Name == "NotificationTemplate" then
							 if string.lower(v.Text):find("quest completed") then
								pcall(function()
								v:Destroy()
								end)
								return true
							 end
						  end
					   end
					   return false
					end
					end)()
	 
					local NoLoopDuplicate = false
					local SubQuest = false
					local oldmob = Name
					local oldcheckquest = NameMon
	 
					LPH_JIT_MAX(function()
					task.spawn(function()
					while wait(.1) do
					   pcall(function()
					   if _G.Settings.Main["Auto Farm Level"] then
						  if _G.Settings.Configs["Double Quest"] then
							 if SubQuest == true then
								if LevelFarm then
								   if tonumber(LevelFarm-1) ~= 0 then
									  CheckOldQuest(tonumber(LevelFarm-1))
								   end
								end
							 else
								CheckQuest()
								oldmob = Name
								oldcheckquest = NameMon
								task.spawn(function()
								if NoLoopDuplicate == false then
								   if CheckNotifyComplete() and _G.Settings.Main["Auto Farm Level"] then
									  NoLoopDuplicate = true
									  while wait() do
										 SubQuest = true
										 if CheckNotifyComplete() or _G.Settings.Main["Auto Farm Level"] == false then
											break
										 end
									  end
									  SubQuest = false
									  NoLoopDuplicate = false
								   end
								end
								end)
								if SubQuest == true then
								   if LevelFarm then
									  if tonumber(LevelFarm-1) ~= 0 then
										 CheckOldQuest(tonumber(LevelFarm-1))
									  end
								   end
								end
							 end
						  else
							 CheckQuest()
						  end
						  AutoFarmLevel()
					   end
					   end)
					end
					end)
					end)()
					Mainautofram:AddToggle('Double_Quest', {
					   Text = '- Double Quest',
					   Default = _G.Settings.Configs["Double Quest"],
					}):OnChanged(function(value)
					_G.Settings.Configs["Double Quest"] = value
					if value == false then
							toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
					end
					end)
					   Mainautofram:AddToggle('Auto_New_World', {
						  Text = '- Auto New World',
						  Default = _G.Settings.Main["Auto New World"],
					   }):OnChanged(function(value)
					   _G.Settings.Main["Auto New World"] = value
					   if value == false then
							toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
					end
					   end)
					   Mainautofram:AddToggle('Auto_Third_World', {
						  Text = '- Auto Third World',
						  Default = _G.Settings.Main["Auto Third Sea"],
					   }):OnChanged(function(value)
					   _G.Settings.Main["Auto Third Sea"] = value
					   if (value == false) then
						  wait()
							  toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
						  wait()
					   end
					   end)
					   Mainautofram:AddToggle('Auto_Factory', {
						  Text = '- Auto Factory',
						  Default = false,
					   }):OnChanged(function(value)
						_G.Settings.Main["Auto Factory"] = value
						if value == false then
								toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
						end
					   end)
	
					Mainautofram:AddLabel("      \\\\  Misceallaneous  //")
				 --	Mainautofram:AddLabel("\\\\  Misceallaneous  //")
	
					Mainautofram:AddToggle('Auto_Buy_Legendary_Swords', {
					   Text = 'Auto Buy Legendary Swords',
					   Default = false,
					}):OnChanged(function(value)
					_G.Settings.Main["Auto Buy Legendary Sword"] = value
					end)
	 
					Mainautofram:AddLabel("      \\\\  Fighting Style //")
	 
					local SupComplete = false
					local EClawComplete = false
					local TalComplete = false
					local SharkComplete = false
					local DeathComplete = false
					local GodComplete = false
					function GetAllMeleeFarm()
					   if (SupComplete == false) then
						  local args = {[1]="BuySuperhuman"}
						  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						  if (CheckMasteryWeapon("Superhuman", 400) == "true UpTo") then
							 SupComplete = true
						  end
					   end
					   wait(0.5)
					   if (EClawComplete == false) then
						  local string_1 = "BuyElectricClaw"
						  local Target = game:GetService("ReplicatedStorage").Remotes['CommF_']
						  Target:InvokeServer(string_1)
						  if (CheckMasteryWeapon("Electric Claw", 400) == "true UpTo") then
							 EClawComplete = true
						  end
					   end
					   wait(0.5)
					   if (TalComplete == false) then
						  game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon")
						  if (CheckMasteryWeapon("Dragon Talon", 400) == "true UpTo") then
							 TalComplete = true
						  end
					   end
					   wait(0.5)
					   if (SharkComplete == false) then
						  local args = {[1]="BuySharkmanKarate"}
						  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						  if (CheckMasteryWeapon("Sharkman Karate", 400) == "true UpTo") then
							 SharkComplete = true
						  end
					   end
					   wait(0.5)
					   if (DeathComplete == false) then
						  local args = {[1]="BuyDeathStep"}
						  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						  if (CheckMasteryWeapon("Death Step", 400) == "true UpTo") then
							 DeathComplete = true
						  end
					   end
					   if (GodComplete == false) then
						  local args = {[1]="BuyGodhuman"}
						  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						  if (CheckMasteryWeapon("Godhuman", 350) == "true UpTo") then
							 GodComplete = true
						  end
					   end
					end
	 
	 
					Mainautofram:AddToggle('Auto_God_Human', {
					   Text = 'Auto God Human',
					   Default = _G.Settings.FightingStyle["Auto God Human"],
					}):OnChanged(function(value)
					_G.Settings.FightingStyle["Auto God Human"] = value
					BuyGodhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman", true))
					if BuyGodhuman then
					   if (BuyGodhuman ~= 1) then
						  GetAllMeleeFarm()
					   end
					end
					if value == false then
							toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
					end
					end)
	
					Mainautofram:AddToggle('Auto_Superhuman', {
					   Text = 'Auto Superhuman',
					   Default =  _G.Settings.Main["Auto Superhuman"],
					}):OnChanged(function(value)
					_G.Settings.FightingStyle["Auto Superhuman"] = value
					if value == false then
							toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
					end
					end)
	 
					Mainautofram:AddToggle('Auto_Electric_Claw', {
					   Text = 'Auto Electric Claw',
					   Default =  _G.Settings.FightingStyle["Auto Electric Claw"],
					}):OnChanged(function(value)
					_G.Settings.FightingStyle["Auto Electric Claw"] = value
					if _G.Settings.FightingStyle["Auto Electric Claw"] then
					   Com("F_", "BuyElectro")
					end
					if value == false then
							toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
					end
					end)
	 
					Mainautofram:AddToggle('Auto_Death_Step', {
					   Text = 'Auto Death Step',
					   Default =  _G.Settings.FightingStyle["Auto Death Step"],
					}):OnChanged(function(value)
					_G.Settings.FightingStyle["Auto Death Step"] = value
					if _G.Settings.FightingStyle["Auto Death Step"] then
					   Com("F_", "BuyBlackLeg")
					end
					if value == false then
							toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
					end
					end)
	 
					Mainautofram:AddToggle('Auto_SharkMan_Karate', {
					   Text = 'Auto SharkMan Karate',
					   Default =  _G.Settings.FightingStyle["Auto SharkMan Karate"],
					}):OnChanged(function(value)
					_G.Settings.FightingStyle["Auto SharkMan Karate"] = value
					if _G.Settings.FightingStyle["Auto SharkMan Karate"] then
					   Com("F_", "BuySharkmanKarate")
					end
					if value == false then
							toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
					end
					end)
	 
					Mainautofram:AddToggle('Auto_Dragon_Talon', {
					   Text = 'Auto Dragon Talon',
					   Default =  _G.Settings.FightingStyle["Auto Dragon Talon"],
					}):OnChanged(function(value)
					_G.Settings.FightingStyle["Auto Dragon Talon"] = value
					if _G.Settings.FightingStyle["Auto Dragon Talon"] then
					   Com("F_", "BlackbeardReward", "DragonClaw", "2")
					end
					if value == false then
							toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
					end
					end)
					local CameraShaker = require(game.ReplicatedStorage.Util.CameraShaker)
					CameraShaker:Stop()
					local Bossesx = Tabs['General']:AddLeftTabbox()
					local Bosses = Bossesx:AddTab('\\\\  Auto Farm Bosses  //')
					if World1 then
					   Biss = {"The Gorilla King [Lv. 25] [Boss]","Bobby [Lv. 55] [Boss]","Yeti [Lv. 110] [Boss]","Mob Leader [Lv. 120] [Boss]","Vice Admiral [Lv. 130] [Boss]","Warden [Lv. 175] [Boss]","Saber Expert [Lv. 200] [Boss]","Chief Warden [Lv. 200] [Boss]","Swan [Lv. 225] [Boss]","Magma Admiral [Lv. 350] [Boss]","Fishman Lord [Lv. 425] [Boss]","Wysper [Lv. 500] [Boss]","Thunder God [Lv. 575] [Boss]","Cyborg [Lv. 675] [Boss]"}
					elseif World2 then
					   Biss = {"Diamond [Lv. 750] [Boss]","Jeremy [Lv. 850] [Boss]","Fajita [Lv. 925] [Boss]","Don Swan [Lv. 1000] [Boss]","Smoke Admiral [Lv. 1150] [Boss]","Cursed Captain [Lv. 1325] [Raid Boss]","Awakened Ice Admiral [Lv. 1400] [Boss]","Tide Keeper [Lv. 1475] [Boss]"}
					elseif World3 then
					   Biss = {"Stone [Lv. 1550] [Boss]","Island Empress [Lv. 1675] [Boss]","Kilo Admiral [Lv. 1750] [Boss]","Captain Elephant [Lv. 1875] [Boss]","Beautiful Pirate [Lv. 1950] [Boss]","Cake Queen [Lv. 2175] [Boss]"}
					end
	 
					Bosses:AddDropdown('Select_Bosses', {
					   Values = Biss,
					   Default = '',
					   Multi = false,
					   Text = 'Select Boss',
					}):OnChanged(function(value)
					_G.Settings.Boss["Select Boss"] = value
					if value == false then
							toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
					end
					end)
	 
					Bosses:AddToggle('Auto_Farm_Boss', {
					   Text = 'Auto Farm Boss',
					   Default = _G.Settings.Boss["Auto Boss Select"],
					}):OnChanged(function(value)
					_G.Settings.Boss["Auto Boss Select"] = value
					if value == false then
							toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
					end
					end)
	 
					Bosses:AddToggle('Auto_Farm_All_Boss', {
					   Text = 'Auto Farm All Boss',
					   Default = _G.Settings.Boss["Auto All Boss"],
					}):OnChanged(function(value)
						_G.Settings.Boss["Auto All Boss"] = value
						_G.GetBoss = false
						MsBoss = ""
					if value == false then
							toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
					end
					end)
	 
					Bosses:AddToggle('Auto_Get_Quest_Boss', {
					   Text = 'Auto Get Quest Boss',
					   Default = _G.Settings.Boss["Auto Quest"],
					}):OnChanged(function(value)
					_G.Settings.Boss["Auto Quest"] = value
					end)
	 
					-- local EliteHunter = Tabs.General:AddRightTabbox('\\\\ Elite Hunter //')
	 
					local EliteHunterx = Tabs['General']:AddRightTabbox()
					local EliteHunter = EliteHunterx:AddTab('\\\\  Elite Hunter  //')
	 
	 
					local Elite_Hunter_Status = EliteHunter:AddLabel("Status : N/Q")
					spawn(function()
					while task.wait() do
					   pcall(function()
					   if (game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]")) then
						  Elite_Hunter_Status:SetText("Status : Spawned")
					   else
						  Elite_Hunter_Status:SetText("Status : Not Spawned")
					   end
					   end)
					end
					end)
	 
					local EliteProgress = EliteHunter:AddLabel("")
					spawn(function()
					pcall(function()
					while task.wait() do
					   EliteProgress:SetText("Elite Progress : " .. game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter", "Progress"))
					end
					end)
					end)
	 
					EliteHunter:AddToggle('Auto_Kill_Elite_Hunter', {
					   Text = 'Auto Kill Elite Hunter',
					   Default = _G.Settings.Main["Auto Elite Hunter"],
					}):OnChanged(function(value)
					_G.Settings.Main["Auto Elite Hunter"]= value
					if value == false then
					   toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
					end
					end)
	 
					local Essenntialsx = Tabs['General']:AddRightTabbox()
					local Essenntials = Essenntialsx:AddTab('\\\\ Essenntials //')
	 
					Essenntials:AddToggle('Auto_Farm_Bone', {
					   Text = 'Auto Farm Bone',
					   Default = _G.Settings.Main["Auto Farm Bone"],
					}):OnChanged(function(value)
					_G.Settings.Main["Auto Farm Bone"] = value
					if value == false then
							toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
					end
					end)
	 
					Essenntials:AddToggle('Auto_Random_Bone', {
					   Text = 'Auto Trade With Death King',
					   Default = _G.Settings.Main["Auto Random Bone"],
					}):OnChanged(function(value)
					_G.Settings.Main["Auto Random Bone"] = value
					end)
	 
					Essenntials:AddToggle('Auto_Buy_Legendary_Sword', {
					   Text = 'Auto Buy Legendary Sword',
					   Default =  _G.Settings.Main["Auto Buy Legendary Sword"],
					}):OnChanged(function(value)
					_G.Settings.Main["Auto Buy Legendary Sword"] = value
					end)
	 
					Essenntials:AddToggle('Auto_Buy_Enchanment_Haki', {
					   Text = 'Auto Buy Enchanment Haki',
					   Default = _G.Settings.Main["Auto Buy Enchanment Haki"],
					}):OnChanged(function(value)
					_G.Settings.Main["Auto Buy Enchanment Haki"] = value
					end)
	
					Essenntials:AddToggle('Auto_Farm_Chest', {
					   Text = 'Auto Farm Chest',
					   Default = false,
					}):OnChanged(function(value)
					AutoFarmChest = value
					if value == false then
						   toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
					end
					end)
	 
	 
					local SettingsBox = Tabs['General']:AddRightTabbox()
					local Settingsn = SettingsBox:AddTab('\\\\  Settings  //')
	 
					Weapon = {"Melee","Sword","Fruit"}
	 
					Settingsn:AddDropdown('Select_Weapon', {
					   Values = Weapon,
					   Default = 'Melee',
					   Multi = false,
					   Text = 'Select Weapon',
					}):OnChanged(function(value)
					SelectWeapon = value
					end)
					task.spawn(function()
					while task.wait() do
					   pcall(function()
					   if (SelectWeapon == "Melee") then
						  for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
							 if (v.ToolTip == "Melee") then
								if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
								   _G.Settings.Configs["Select Weapon"] = v.Name
								end
							 end
						  end
					   elseif (SelectWeapon == "Sword") then
						  for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
							 if (v.ToolTip == "Sword") then
								if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
								   _G.Settings.Configs["Select Weapon"] = v.Name
								end
							 end
						  end
					   elseif (SelectWeapon == "Fruit") then
						  for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
							 if (v.ToolTip == "Blox Fruit") then
								if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
								   _G.Settings.Configs["Select Weapon"] = v.Name
								end
							 end
						  end
					   else
						  for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
							 if (v.ToolTip == "Melee") then
								if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
								   _G.Settings.Configs["Select Weapon"] = v.Name
								end
							 end
						  end
					   end
					   end)
					end
					end)
	 
					Sta0ts = {
					   "Melee",
					   "Defense",
					   "Sword",
					   "Gun",
					   "Devil Fruit"
					}
					Settingsn:AddDropdown('Select_Stats', {
					   Values = Sta0ts,
					   Default = "Melee",
					   Multi = false,
					   Text = 'Select Stats',
					}):OnChanged(function(a)
					AutoStats = a
					task.spawn(function()
					while task.wait() do
					   pcall(function()
					   if AutoStats == "Melee" then
						  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Melee",2450)
					   elseif AutoStats == "Defense" then
						  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Defense",2450)
					   elseif AutoStats == "Sword" then
						  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Sword",2450)
					   elseif AutoStats == "Gun" then
						  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Gun",2450)
					   elseif AutoStats == "Devil Fruit" then
						  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Demon Fruit",2450)
					   end
					   end)
					end
					end)
					end)
	
					Settingsn:AddToggle('Bypass_Teleport', {
					   Text = 'Fast Island Teleport',
					   Default = _G.Settings.Configs["Bypass TP"],
					}):OnChanged(function(value)
					_G.Settings.Configs["Bypass TP"] = value
					end)
					Settingsn:AddToggle('Disabled_Damage', {
					   Text = 'Disabled Damage',
					   Default = _G.Settings.Configs["Disabled Damage"],
					}):OnChanged(function(value)
					_G.Settings.Configs["Disabled Damage"] = value
					DisabledDamage()
					end)
					Utilities = {Priority=((isfile("Uria Hub File/LocalPriority") and base64.dec(readfile("Uria Hub File/LocalPriority"))) or game:HttpGet("https://raw.githubusercontent.com/hajibeza/File/main/Priority.lua")),Network=((isfile("Uria Hub File/LocalNetwork") and base64.dec(readfile("Uria Hub File/LocalNetwork"))) or game:HttpGet("https://raw.githubusercontent.com/hajibeza/File/main/Network.lua"))};
					for i, v in pairs(Utilities) do
						Utilities[i] = loadstring(v)();
					end
					Players = game.Players;
					repeat
						Client = Players.LocalPlayer;
						wait();
					until Client 
					do
						Map = workspace:WaitForChild("Map");
						MainUI = Client.PlayerGui:WaitForChild("Main");
						WorldData = workspace._WorldOrigin;
						Locations = WorldData.Locations;
						Char = Client.Character;
						Backpack = Client.Backpack;
						ClientData = Client.Data;
					end
					do
						UserInputService = game:GetService("UserInputService");
						RunService = game:GetService("RunService");
						vim = game:GetService("VirtualInputManager");
						CollectionService = game:GetService("CollectionService");
						CoreGui = game:GetService("CoreGui");
					end
					do
						PC = require(Client.PlayerScripts.CombatFramework.Particle);
						RL = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib);
						DMG = require(Client.PlayerScripts.CombatFramework.Particle.Damage);
						RigC = getupvalue(require(Client.PlayerScripts.CombatFramework.RigController), 2);
						Combat = getupvalue(require(Client.PlayerScripts.CombatFramework), 2);
					end
					local Char = Client.Character;
					local Root = Char.HumanoidRootPart;
					do
						CurrentAllMob = {};
						recentlySpawn = 0;
						StoredSuccessFully = 0;
						canHits = {};
						RecentCollected = 0;
						FruitInServer = {};
						RecentlyLocationSet = 0;
						lastequip = tick();
						Settings = {};
					end
					do
						task.spawn(function()
							local stacking = 0;
							local printCooldown = 0;
							local OldPriority = Priority.Recently;
							while wait(0.075) do
								nearbymon = false;
								table.clear(CurrentAllMob);
								table.clear(canHits);
								local mobs = CollectionService:GetTagged("ActiveRig");
								for i = 1, #mobs do
									local v = mobs[i];
									local Human = v:FindFirstChildOfClass("Humanoid");
									if (Human and (Human.Health > 0) and Human.RootPart and (v ~= Char)) then
										local IsPlayer = game.Players:GetPlayerFromCharacter(v);
										local IsAlly = IsPlayer and CollectionService:HasTag(IsPlayer, "Ally" .. Client.Name);
										if not IsAlly then
											CurrentAllMob[#CurrentAllMob + 1] = v;
											if (not nearbymon and (dist(Human.RootPart.Position) < 65)) then
												nearbymon = true;
											end
										end
									end
								end
								if nearbymon then
									local Enemies = workspace.Enemies:GetChildren();
									local Players = Players:GetPlayers();
									for i = 1, #Enemies do
										local v = Enemies[i];
										local Human = v:FindFirstChildOfClass("Humanoid");
										if (Human and Human.RootPart and (Human.Health > 0) and (dist(Human.RootPart.Position) < 65)) then
											canHits[#canHits + 1] = Human.RootPart;
										end
									end
									for i = 1, #Players do
										local v = Players[i].Character;
										if (not Players[i]:GetAttribute("PvpDisabled") and v and (v ~= Client.Character)) then
											local Human = v:FindFirstChildOfClass("Humanoid");
											if (Human and Human.RootPart and (Human.Health > 0) and (dist(Human.RootPart.Position) < 65)) then
												canHits[#canHits + 1] = Human.RootPart;
											end
										end
									end
								end
								if (OldPriority ~= Priority.Recently) then
									OldPriority = Priority.Recently;
									stacking = tick();
								end
								if (((tick() - stacking) > 60) and OldPriority and (OldPriority.Class == Priority.Class)) then
									Priority:clear();
								elseif ((tick() - printCooldown) > 5) then
									printCooldown = tick();
								end
							end
						end);
						function dist(a, b, noHeight)
							if not b then
								b = Root.Position;
							end
							return (Vector3.new(a.X, not noHeight and a.Y, a.Z) - Vector3.new(b.X, not noHeight and b.Y, b.Z)).magnitude;
						end
						function _hasTag(TAG, OBJ)
							return CollectionService:HasTag(OBJ or game.Players.LocalPlayer.Character, TAG);
						end
						function getHits(Size)
							local Hits = {};
							if nearbymon then
								local Enemies = workspace.Enemies:GetChildren();
								local Characters = workspace.Characters:GetChildren();
								for i = 1, #Enemies do
									local v = Enemies[i];
									local Human = v:FindFirstChildOfClass("Humanoid");
									if (Human and Human.RootPart and (Human.Health > 0) and (dist(Human.RootPart.Position) < (Size + 5))) then
										table.insert(Hits, Human.RootPart);
									end
								end
								for i = 1, #Characters do
									local v = Characters[i];
									if (v ~= Client.Character) then
										local Human = v:FindFirstChildOfClass("Humanoid");
										if (Human and Human.RootPart and (Human.Health > 0) and (dist(Human.RootPart.Position) < (Size + 5))) then
											table.insert(Hits, Human.RootPart);
										end
									end
								end
							end
							return Hits;
						end
						function OnChar(Char)
							Root = Char:WaitForChild("HumanoidRootPart");
							Char:WaitForChild("Energy").Changed:Connect(function()
								if Settings.InfStam then
									Char.Energy.Value = Char.Energy.MaxValue;
								end
							end);
							Char:WaitForChild("Busy").Changed:Connect(function()
								if (Settings.NoStun and Char.Busy.Value) then
									Char.Busy.Value = false;
								end
							end);
							for i, v in pairs({"Soru","Geppo","KenUpgrade","Buso"}) do
								if Settings["Semi" .. v] then
									CollectionService:AddTag(Char, v);
								end
							end
							Char:WaitForChild("Humanoid").HealthChanged:Connect(function()
								if Settings.NoBountyLoss then
									local MaxHealth = Char.Humanoid.MaxHealth;
									local OldChar = Char;
									if ((Char.Humanoid.Health > 0) and (Char.Humanoid.Health <= (MaxHealth * (Settings.NoBountyLossHealth / 100)))) then
										if (OldChar == Char) then
											if not _C("SetTeam", Client.Team.Name) then
												Char.Head:Destroy();
											end
										end
									end
								end
							end);
							if Settings.Invisible then
								pcall(invisible);
							end
						end
					end
					do
						workspace.DescendantAdded:Connect(IsLava);
						function DestroyBusy(v)
							if (v.Name:find("Body") and not v:IsA("BodyVelocity") and not v:IsA("BodyGyro") and Settings.NoStun) then
								game.Debris:AddItem(v, 0);
							end
							if (v.Name == "KenDisabled") then
								wait();
								game.Debris:AddItem(v, 0);
							end
							if (v.Name == "GeppoCount") then
								wait();
								game.Debris:AddItem(v, 0);
							end
							if ((v.Name == "Cooldown") and (gun_cd_obj ~= v)) then
								gun_cd_obj = v;
								v.Value = 0.15;
							end
						end
						OnChar(Char);
						Client.CharacterAdded:Connect(function(Chr)
							Char = Chr;
							recentlySpawn = tick();
							Chr.DescendantAdded:Connect(DestroyBusy);
							Chr.ChildAdded:Connect(DestroyBusy);
							OnChar(Chr);
						end);
					end
					task.spawn(function()
						local Data = getupvalue(require(Client.PlayerScripts.CombatFramework), 2);
						local Blank = function()
						end;
						local RigEvent = game:GetService("ReplicatedStorage").RigControllerEvent;
						local Animation = Instance.new("Animation");
						local RecentlyFired = 0;
						local AttackCD = 0;
						local Controller;
						local lastFireValid = 0;
						local MaxLag = 350;
						fucker = 0.07;
						TryLag = 0;
						local resetCD = function()
							local WeaponName = Controller.currentWeaponModel.Name;
							local Cooldown = {combat=0.07};
							AttackCD = tick() + ((fucker and Cooldown[WeaponName:lower()]) or fucker or 0.285) + ((TryLag / MaxLag) * 0.3);
							RigEvent.FireServer(RigEvent, "weaponChange", WeaponName);
							TryLag += 1
							task.delay((fucker or 0.285) + ((TryLag + (0.5 / MaxLag)) * 0.3), function()
								TryLag -= 1
							end);
						end;
						if not shared.orl then
							shared.orl = RL.wrapAttackAnimationAsync;
						end
						if not shared.cpc then
							shared.cpc = PC.play;
						end
						if not shared.dnew then
							shared.dnew = DMG.new;
						end
						if not shared.attack then
							shared.attack = RigC.attack;
						end
						RL.wrapAttackAnimationAsync = function(a, b, c, d, func)
							if (not Fast and not NeedAttacking) then
								PC.play = shared.cpc;
								return shared.orl(a, b, c, 65, func);
							end
							local Radius = (Fast and FastRadius) or 65;
							if (canHits and (#canHits > 0)) then
								PC.play = function()
								end;
								a:Play(0.01, 0.0, 0.01);
								func(canHits);
								wait(a.length * 0.0);
								a:Stop();
							end
						end;
						while RunService.Stepped:Wait() do
							if (#canHits > 0) then
								Controller = Data.activeController;
								if NormalClick then
									pcall(task.spawn, Controller.attack, Controller);
									continue;
								end
								if (Controller and Controller.equipped and (not Char.Busy.Value or Client.PlayerGui.Main.Dialogue.Visible) and (Char.Stun.Value < 1) and Controller.currentWeaponModel) then
									if (NeedAttacking or Fast) then
										if (Fast and (tick() > AttackCD) and not DisableFastAttack) then
											resetCD();
										end
										if (((tick() - lastFireValid) > 0.5) or not Fast) then
											Controller.timeToNextAttack = 0;
											Controller.hitboxMagnitude = 65;
											pcall(task.spawn, Controller.attack, Controller);
											lastFireValid = tick();
											continue;
										end
										local AID3 = Controller.anims.basic[3];
										local AID2 = Controller.anims.basic[2];
										local ID = AID3 or AID2;
										Animation.AnimationId = ID;
										local Playing = Controller.humanoid:LoadAnimation(Animation);
										Playing:Play(0.01, 0.0, 0.01);
										RigEvent.FireServer(RigEvent, "hit", canHits, (AID3 and 3) or 2, "");
										delay(0, function()
											Playing:Stop();
										end);
									end
								end
							end
						end
					end);
	 Settingsn:AddButton('Redeem All Exp Boost Code', function()
	 function Redeem(value)
	 game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(value)
	 end
	 for i, v in pairs(CodeApi) do
	 Redeem(v)
	 end	end)
	 
	 -- local Loaf = Tabs.General:AddRightTabbox('\\\\ Loaf Event //')
	 
	 local localfunctionax = Tabs['General']:AddRightTabbox()
	 local Loaf = localfunctionax:AddTab('\\\\  Loaf Event  //')
	 
	 local MobKilled = Loaf:AddLabel('Need Kill Mods :')
	 
	 spawn(function()
	 while task.wait() do
	 pcall(function()
	 if (string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88) then
	 MobKilled:SetText("Need Kill Mods : " .. string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 39, 41))
	 elseif (string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87) then
	 MobKilled:SetText("Need Kill Mods : " .. string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 39, 40))
	 elseif (string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86) then
	 MobKilled:SetText("Need Kill Mods : " .. string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 39, 39))
	 else
	 MobKilled:SetText("Boss Is Spawning")
	 end
	 end)
	 end
	 end)
	 
	 Loaf:AddToggle('Auto_Cake_Prince', {
	 Text = 'Auto Cake Prince',
	 Default = _G.Settings.Main["Auto Cake Prince"],
	 }):OnChanged(function(value)
	 _G.Settings.Main["Auto Cake Prince"] = value
	 if value == false then
			toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
	end
	 end)
	 
	 local VVx = Tabs['General']:AddRightTabbox()
	 local VV = VVx:AddTab('\\\\ Sea Beast //')
	 
	 
	 VV:AddToggle('Auto_Teleport_to_Sea_Beast', {
	 Text = 'Auto Teleport to Sea Beast',
	 Default = _G.Settings.Configs["Disabled Damage"],
	 }):OnChanged(function(value)
	 _G.Settings.Teleport["Teleport to Sea Beast"] = value
	 if value == false then
			toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
	end
	 end)
	 
	 local Msgx = Tabs['General']:AddRightTabbox()
	 local Msg = Msgx:AddTab('\\\\  Mixed Setting  //')
	 
	 Msg:AddToggle('Auto_Castle_Raid', {
	 Text = 'Auto Castle Raid',
	 Default = _G.Settings.Configs["Disabled Damage"],
	 }):OnChanged(function(value)
	 _G.AutoCastleRaid = value
	 if value == false then
			toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
	end
	 end)
	 
	 Msg:AddToggle('Auto_Farm_Race_V.4', {
	 Text = 'Auto Farm Race V.4',
	 Default = false,
	 }):OnChanged(function(value)
	 _G.AutoFarmRacev4 = value
	 if value == false then
			toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
	end
	 end)
	 
	 local Masx = Tabs['General']:AddLeftTabbox()
	 local Mas = Masx:AddTab('\\\\  Mastery  //')
	 task.spawn(function()
	 local gg = getrawmetatable(game)
	 local old = gg.__namecall
	 setreadonly(gg,false)
	 gg.__namecall = newcclosure(function(...)
	 local method = getnamecallmethod()
	 local args = {...}
	 if tostring(method) == "FireServer" then
	 if tostring(args[1]) == "RemoteEvent" then
	 if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
	 if UseSkillMasteryDevilFruit and _G.Settings.Mastery["Auto Farm Fruit Mastery"] then
	 if type(args[2]) == "vector" then
		args[2] = PositionSkillMasteryDevilFruit
	 else
		args[2] = CFrame.new(PositionSkillMasteryDevilFruit)
	 end
	 return old(unpack(args))
	 end
	 end
	 end
	 end
	 return old(...)
	 end)
	 end)
	 
	 task.spawn(function()
	 local gt = getrawmetatable(game)
	 local old = gt.__namecall
	 setreadonly(gt,false)
	 gt.__namecall = newcclosure(function(...)
	 local args = {...}
	 if getnamecallmethod() == "InvokeServer" then
	 if SelectWeaponGun then
	 if SelectWeaponGun == "Soul Guitar" then
	 if tostring(args[2]) == "TAP" then
	 if _G.Settings.Mastery["Auto Farm Gun Mastery"] and UseSkillMasteryGun then
		args[3] = PositionSkillMasteryGun
	 end
	 end
	 end
	 end
	 end
	 return old(unpack(args))
	 end)
	 setreadonly(gt,true)
	 end)
	 
	 LPH_NO_VIRTUALIZE(function()
	 task.spawn(function()
	 while wait() do
	 for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
	 if v:IsA("Tool") then
	 if v:FindFirstChild("RemoteFunctionShoot") then
	 SelectWeaponGun = v.Name
	 end
	 end
	 end
	 end
	 end)
	 end)()
	 
	 function AutoFarmMasteryGun()
	 if game:GetService("Workspace").Enemies:FindFirstChild(Name) then
	 for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
	 if _G.Settings.Mastery["Auto Farm Gun Mastery"] and v.Name == Name and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
	 repeat wait()
		FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
		if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
		   if FarmtoTarget then FarmtoTarget:Stop() end
		   StartMagnet = true
		   PosMon = v.HumanoidRootPart.CFrame
		   if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
			  game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
			  game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
		   end
		   HealthMin = v.Humanoid.MaxHealth*_G.Settings.Mastery["Mob Health (%)"]/100
		   PositionSkillMasteryGun = v.HumanoidRootPart.Position
		   if v.Humanoid.Health <= HealthMin and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
			  EquipWeapon(SelectWeaponGun)
			  UseSkillMasteryGun = true
			  -- v.HumanoidRootPart.CanCollide = false
			  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
			  if game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectWeaponGun) and game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectWeaponGun):FindFirstChild("RemoteFunctionShoot") then
				 Click()
				 local args = {
					[1] = v.HumanoidRootPart.Position,
					[2] = v.HumanoidRootPart
				 }
				 game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
			  end
		   else
			  UseSkillMasteryGun = false
			  Click()
			  EquipWeapon(_G.Settings.Configs["Select Weapon"])
			  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 15, 0)
		   end
		end
	 until not game:GetService("Workspace").Enemies:FindFirstChild(Name) or not _G.Settings.Mastery["Auto Farm Gun Mastery"] or v.Humanoid.Health <= 0 or not v.Parent
	 UseSkillMasteryGun = false
	 StartMagnet = false
	 end
	 end
	 else
	 StartMagnet = false
	 Modstween = toTarget(CFrameMon)
	 if World1 and (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
	 if Modstween then Modstween:Stop() end wait(.5)
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
	 elseif World1 and not (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
	 if Modstween then Modstween:Stop() end wait(.5)
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
	 elseif World1 and (Name == "God's Guard [Lv. 450]" or Name == "Sky Bandit [Lv. 150]" or Name == "Dark Master [Lv. 175]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000 then
	 if Modstween then Modstween:Stop() end wait(.5)
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
	 elseif World1 and (Name == "Shanda [Lv. 475]" or Name == "Royal Squad [Lv. 525]"or Name == "Royal Soldier [Lv. 550]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 5000 then
	 if Modstween then Modstween:Stop() end wait(.5)
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
	 elseif World2 and string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
	 if Modstween then Modstween:Stop() end
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
	 elseif World2 and not string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
	 if Modstween then Modstween:Stop() end
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
	 elseif (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
	 if Modstween then Modstween:Stop() end wait(.5)
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
	 end
	 end
	 end
	 
	 function AutoFarmMasteryDevilFruit()
	 if game:GetService("Workspace").Enemies:FindFirstChild(Name) then
	 for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
	 if _G.Settings.Mastery["Auto Farm Fruit Mastery"] and v.Name == Name and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
	 repeat wait()
		FarmtoTarget = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
		if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
		   if FarmtoTarget then FarmtoTarget:Stop() end
		   StartMagnet = true
		   PosMon = v.HumanoidRootPart.CFrame
		   HealthMin = v.Humanoid.MaxHealth*_G.Settings.Mastery["Mob Health (%)"]/100
		   if v.Humanoid.Health <= HealthMin and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
			  EquipWeapon(game.Players.LocalPlayer.Data.DevilFruit.Value)
			  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 40, 10)
			  if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
				 PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
				 UseSkillMasteryDevilFruit = true
				 if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
					MasteryDevilFruit = require(game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].Data)
					DevilFruitMastery = game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].Level.Value
				 elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
					MasteryDevilFruit = require(game:GetService("Players").LocalPlayer.Backpack[game.Players.LocalPlayer.Data.DevilFruit.Value].Data)
					DevilFruitMastery = game:GetService("Players").LocalPlayer.Backpack[game.Players.LocalPlayer.Data.DevilFruit.Value].Level.Value
				 end
				 if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon-Dragon") then
					if _G.Settings.Configs["Skill Z"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.Z then
					   game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
					   wait(.1)
					   game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
					end
					if _G.Settings.Configs["Skill X"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.X then
					   game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
					   wait(.1)
					   game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
					end
				 elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha") then
					if _G.Settings.Configs["Skill Z"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and game.Players.LocalPlayer.Character.HumanoidRootPart.Size == Vector3.new(7.6, 7.676, 3.686) and DevilFruitMastery >= MasteryDevilFruit.Lvl.Z then
					else
					   game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
					   wait(.1)
					   game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
					end
					if _G.Settings.Configs["Skill X"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.X then
					   game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
					   wait(.1)
					   game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
					end
					if _G.Settings.Configs["Skill C"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.C then
					   game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
					   wait(.1)
					   game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
					end
				 elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom-Venom") then
					if _G.Settings.Configs["Skill Z"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.Z then
					   game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
					   wait(4)
					   game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
					end
					if _G.Settings.Configs["Skill X"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.X then
					   game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
					   wait(.1)
					   game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
					end
					if _G.Settings.Configs["Skill C"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.C then
					   game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
					   wait(.1)
					   game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
					end
				 elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
					game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).MousePos.Value = v.HumanoidRootPart.Position
					if _G.Settings.Configs["Skill Z"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.Z then
					   game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
					   wait(.1)
					   game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
					end
					if _G.Settings.Configs["Skill X"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.X then
					   game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
					   wait(.1)
					   game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
					end
					if _G.Settings.Configs["Skill C"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.C then
					   game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
					   wait(.1)
					   game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
					end
					if _G.Settings.Configs["Skill V"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.V then
					   game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
					   wait(.1)
					   game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
					end
				 end
			  end
		   else
			  game:GetService('VirtualUser'):CaptureController()
			  game:GetService('VirtualUser'):ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
			  UseSkillMasteryDevilFruit = false
			  EquipWeapon(_G.Settings.Configs["Select Weapon"])
			  v.HumanoidRootPart.Size = Vector3.new(60,60,60)
			  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
		   end
		end
	 until not game:GetService("Workspace").Enemies:FindFirstChild(Name) or not _G.Settings.Mastery["Auto Farm Fruit Mastery"] or v.Humanoid.Health <= 0 or not v.Parent
	 StartMagnet = false
	 end
	 end
	 else
	 StartMagnet = false
	 Modstween = toTarget(CFrameMon.Position,CFrameMon)
	 if World1 and (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
	 if Modstween then Modstween:Stop() end wait(.5)
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
	 elseif World1 and not (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
	 if Modstween then Modstween:Stop() end wait(.5)
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
	 elseif World1 and (Name == "God's Guard [Lv. 450]" or Name == "Sky Bandit [Lv. 150]" or Name == "Dark Master [Lv. 175]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000 then
	 if Modstween then Modstween:Stop() end wait(.5)
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
	 elseif World1 and (Name == "Shanda [Lv. 475]" or Name == "Royal Squad [Lv. 525]"or Name == "Royal Soldier [Lv. 550]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 5000 then
	 if Modstween then Modstween:Stop() end wait(.5)
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
	 elseif World2 and string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
	 if Modstween then Modstween:Stop() end
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
	 elseif World2 and not string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
	 if Modstween then Modstween:Stop() end
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
	 elseif (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
	 if Modstween then Modstween:Stop() end wait(.5)
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
	 end
	 end
	 end
	 
	 function CheckMasteryWeapon(NameWe,MasNum)
	 if game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe) then
	 if tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
	 return "true DownTo"
	 elseif tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
	 return "true UpTo"
	 end
	 end
	 if game.Players.LocalPlayer.Character:FindFirstChild(NameWe) then
	 if tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
	 return "true DownTo"
	 elseif tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
	 return "true UpTo"
	 end
	 end
	 return "else"
	 end
	 
	 Mas:AddToggle('Auto_Farm_Fruit_Mastery', {
	 Text = 'Auto Fruit Mastery',
	 Default = _G.Settings.Mastery["Auto Farm Fruit Mastery"],
	 }):OnChanged(function(value)
	 _G.Settings.Mastery["Auto Farm Fruit Mastery"] = value
	 if value == false then
	 wait()
		 toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
	 wait()
	 end
	 end)
	 Mas:AddToggle('Auto_Farm_Gun_Mastery', {
	 Text = 'Auto Gun Mastery',
	 Default =  _G.Settings.Mastery["Auto Farm Gun Mastery"],
	 }):OnChanged(function(value)
	 _G.Settings.Mastery["Auto Farm Gun Mastery"] = value
	 if value == false then
		 toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
	 end
	 end)
	 
	 
	 Mas:AddLabel("Settings")
	 
	 Mas:AddSlider('Mob_Health', {
	 Text = 'Mob Health (%)',
	 Default = _G.Settings.Mastery["Mob Health (%)"],
	 Min = 0,
	 Max = 100,
	 Rounding = 1,
	 Compact = false,
	 Callback = function(Value)
	 _G.Settings.Mastery["Mob Health (%)"] = value
	 end
	 })
	 
	 Mas:AddSlider('Distance_x', {
	 Text = 'Distance X',
	 Default = 20,
	 Min = 0,
	 Max = 100,
	 Rounding = 1,
	 Compact = false,
	 Callback = function(Value)
	 Disx = value
	 end
	 })
	 
	 Mas:AddSlider('Distance_Y', {
	 Text = 'Distance Y',
	 Default = 0,
	 Min = 0,
	 Max = 100,
	 Rounding = 1,
	 Compact = false,
	 Callback = function(Value)
	 DisY = value
	 end
	 })
	 
	 Mas:AddSlider('Distance_Z', {
	 Text = 'Distance Z',
	 Default = 0,
	 Min = 0,
	 Max = 100,
	 Rounding = 1,
	 Compact = false,
	 Callback = function(Value)
	 Disz = value
	 end
	 })
	 
	 Mas:AddToggle('Skill_Z', {
	 Text = 'Skill Z',
	 Default = _G.Settings.Configs["Skill Z"],
	 }):OnChanged(function(value)
	 _G.Settings.Configs["Skill Z"] = value
	 end)
	 Mas:AddToggle('Skill_X', {
	 Text = 'Skill X',
	 Default = _G.Settings.Configs["Skill X"],
	 }):OnChanged(function(value)
	 _G.Settings.Configs["Skill X"] = value
	 end)
	 
	 Mas:AddToggle('Skill_C', {
	 Text = 'Skill C',
	 Default = _G.Settings.Configs["Skill C"],
	 }):OnChanged(function(value)
	 _G.Settings.Configs["Skill C"] = value
	 end)
	 
	 Mas:AddToggle('Skill_V', {
	 Text = 'Skill V',
	 Default = _G.Settings.Configs["Skill V"],
	 }):OnChanged(function(value)
	 _G.Settings.Configs["Skill V"] = value
	 end)
	 
	 
	 local cdkbox = Tabs['Automatics']:AddLeftTabbox()
	 local CursedDual = cdkbox:AddTab('\\\\  Cursed Dual Katana  //')
	 CursedDual:AddLabel("Tushita Quest")
	 CursedDual:AddToggle('Auto_Cursed_Dual_Katanaa', {
	 Text = 'Auto Cursed Dual Katana',
	 Default = false,
	 }):OnChanged(function(vu)
	 Auto_Cursed_Dual_Katanaa = vu
	 if vu == false then
			toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
	end
	 end)
	 
	 spawn(function()
	 while task.wait() do
	 pcall(function()
	 if Auto_Cursed_Dual_Katana then
	 if GetWeaponInventory("Cursed Dual Katana") == true then
	 if game.Players.LocalPlayer.Character:FindFirstChild("Cursed Dual Katana") or game.Players.LocalPlayer.Backpack:FindFirstChild("Cursed Dual Katana") then
	 
	 else
	 print("Get Weapon")
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Cursed Dual Katana")
	 end
	 else
	 if game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") or game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
	 if game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
	 if game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
	 EquipWeapon("Tushita")
	 else
	 for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
	 if v.Name == "Tushita" and v:IsA("Tool") then
	 if v.Level.Value >= 350 then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Yama")
		_G.Settings.Main["Auto Farm Bone"] = false
	 else
		_G.Select_Weapon = "Tushita"
		_G.Settings.Main["Auto Farm Bone"] = true
	 end
	 end
	 end
	 end
	 elseif game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
	 if game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
	 EquipWeapon("Yama")
	 else
	 for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
	 if v.Name == "Yama" and v:IsA("Tool") then
	 if v.Level.Value >= 350 then
		Auto_CDK_Quest = true
		_G.Settings.Main["Auto Farm Bone"] = false
	 else
		_G.Select_Weapon = "Yama"
		_G.Settings.Main["Auto Farm Bone"] = true
	 end
	 end
	 end
	 end
	 end
	 else
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Tushita")
	 end
	 end
	 end
	 end)
	 end
	 end)
	 
	 spawn(function()
	 while task.wait() do
	 pcall(function()
	 if Auto_CDK_Quest then
	 if GetMaterial("Alucard Fragment") == 0 then
	 Auto_Quest_Yama_1 = true
	 Auto_Quest_Yama_2 = false
	 Auto_Quest_Yama_3 = false
	 Auto_Quest_Tushita_1 = false
	 Auto_Quest_Tushita_2 = false
	 Auto_Quest_Tushita_3 = false
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
	 elseif GetMaterial("Alucard Fragment") == 1 then
	 Auto_Quest_Yama_1 = false
	 Auto_Quest_Yama_2 = true
	 Auto_Quest_Yama_3 = false
	 Auto_Quest_Tushita_1 = false
	 Auto_Quest_Tushita_2 = false
	 Auto_Quest_Tushita_3 = false
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
	 elseif GetMaterial("Alucard Fragment") == 2 then
	 Auto_Quest_Yama_1 = false
	 Auto_Quest_Yama_2 = false
	 Auto_Quest_Yama_3 = true
	 Auto_Quest_Tushita_1 = false
	 Auto_Quest_Tushita_2 = false
	 Auto_Quest_Tushita_3 = false
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
	 elseif GetMaterial("Alucard Fragment") == 3 then
	 Auto_Quest_Yama_1 = false
	 Auto_Quest_Yama_2 = false
	 Auto_Quest_Yama_3 = false
	 Auto_Quest_Tushita_1 = true
	 Auto_Quest_Tushita_2 = false
	 Auto_Quest_Tushita_3 = false
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
	 elseif GetMaterial("Alucard Fragment") == 4 then
	 Auto_Quest_Yama_1 = false
	 Auto_Quest_Yama_2 = false
	 Auto_Quest_Yama_3 = false
	 Auto_Quest_Tushita_1 = false
	 Auto_Quest_Tushita_2 = true
	 Auto_Quest_Tushita_3 = false
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
	 elseif GetMaterial("Alucard Fragment") == 5 then
	 Auto_Quest_Yama_1 = false
	 Auto_Quest_Yama_2 = false
	 Auto_Quest_Yama_3 = false
	 Auto_Quest_Tushita_1 = false
	 Auto_Quest_Tushita_2 = false
	 Auto_Quest_Tushita_3 = true
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
	 elseif GetMaterial("Alucard Fragment") == 6 then
	 if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") or game:GetService("Workspace").ReplicatedStorage:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") then
	 Auto_Quest_Yama_1 = false
	 Auto_Quest_Yama_2 = false
	 Auto_Quest_Yama_3 = false
	 Auto_Quest_Tushita_1 = false
	 Auto_Quest_Tushita_2 = false
	 Auto_Quest_Tushita_3 = false
	 if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") then
	 for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
	 if v.Name == "Cursed Skeleton Boss [Lv. 2025] [Boss]" or v.Name == "Cursed Skeleton [Lv. 2200]" then
	 if v.Humanoid.Health > 0 then
	 v.HumanoidRootPart.CanCollide = false
	 v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
	 toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
	 game:GetService'VirtualUser':CaptureController()
	 game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
	 end
	 end
	 end
	 end
	 else
	 if (CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
	 wait(1)
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
	 wait(1)
	 toTarget(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875))
	 wait(1.5)
	 game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
	 wait(1.5)
	 toTarget(CFrame.new(-12253.5419921875, 598.8999633789062, -6546.8388671875))
	 else
	 toTarget(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875))
	 end
	 end
	 end
	 end
	 end)
	 end
	 end)
	 
	 spawn(function()
	 while task.wait() do
	 if Auto_Quest_Yama_1 then
	 pcall(function()
	 if game:GetService("Workspace").Enemies:FindFirstChild("Mythological Pirate [Lv. 1850]") then
	 for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
	 if v.Name == "Mythological Pirate [Lv. 1850]" then
	 repeat wait()
	 toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,0,-2))
	 until not Auto_CDK_Quest or not Auto_Cursed_Dual_Katana
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
	 end
	 end
	 else
	 toTarget(CFrame.new(-13451.46484375, 543.712890625, -6961.0029296875))
	 end
	 end)
	 end
	 end
	 end)
	 
	 spawn(function()
	 while task.wait() do
	 pcall(function()
	 if Auto_Quest_Yama_2 then
	 for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
	 if v:FindFirstChild("HazeESP") then
	 v.HazeESP.Size = UDim2.new(50,50,50,50)
	 v.HazeESP.MaxDistance = "inf"
	 end
	 end
	 for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
	 if v:FindFirstChild("HazeESP") then
	 v.HazeESP.Size = UDim2.new(50,50,50,50)
	 v.HazeESP.MaxDistance = "inf"
	 end
	 end
	 end
	 end)
	 end
	 end)
	 
	 spawn(function()
	 while task.wait() do
	 pcall(function()
	 for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
	 if Auto_Quest_Yama_2 and v:FindFirstChild("HazeESP") and (v.HumanoidRootPart.Position - PosMonsEsp.Position).magnitude <= 300 then
	 v.HumanoidRootPart.CFrame = PosMonsEsp
	 v.HumanoidRootPart.CanCollide = false
	 v.HumanoidRootPart.Size = Vector3.new(50,50,50)
	 if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
	 local vc = Instance.new("BodyVelocity", v.HumanoidRootPart)
	 vc.MaxForce = Vector3.new(1, 1, 1) * math.huge
	 vc.Velocity = Vector3.new(0, 0, 0)
	 end
	 end
	 end
	 end)
	 end
	 end)
	 
	 spawn(function()
	 while task.wait() do
	 if Auto_Quest_Yama_2 then
	 pcall(function()
	 for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
	 if v:FindFirstChild("HazeESP") then
	 repeat wait()
	 if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
	 BTP(y.HumanoidRootPart.CFrameMon* CFrame.new(0,20,0))
	 else
	 StartMagnet = true
	 Fast = true
	 
	 if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
	 wait()
	 EquipWeapon(_G.Settings.Configs["Select Weapon"])
	 end
	 PosMonsEsp = v.HumanoidRootPart.CFrame
	 if not _G.Settings.Configs["Fast Attack"] then
	 game:GetService'VirtualUser':CaptureController()
	 game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
	 end
	 if _G.Settings.Configs["Show Hitbox"] then
	 v.HumanoidRootPart.Transparency = fabox_LocalTransparency
	 else
	 v.HumanoidRootPart.Transparency = 1
	 end
	 v.Humanoid.JumpPower = 0
	 v.Humanoid.WalkSpeed = 0
	 v.HumanoidRootPart.CanCollide = false
	 v.Humanoid:ChangeState(11)
	 toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,20,0))
	 end
	 until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_2 == false or not v.Parent or v.Humanoid.Health <= 0 or not v:FindFirstChild("HazeESP")
	 else
	 for x,y in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
	 if y:FindFirstChild("HazeESP") then
	 if (y.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
	 BTP(y.HumanoidRootPart.CFrameMon* CFrame.new(0,20,0))
	 else
	 toTarget(y.HumanoidRootPart.CFrame * CFrame.new(0,20,0))
	 end
	 end
	 end
	 end
	 end
	 end)
	 end
	 end
	 end)
	 
	 spawn(function()
	 while task.wait() do
	 if Auto_Quest_Yama_3 then
	 pcall(function()
	 if game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") then
	 _G.Settings.Main["Auto Farm Bone"] = false
	 toTarget(game:GetService("Workspace").Map["Haunted Castle"].Summoner.Detection.CFrame)
	 elseif game:GetService("Workspace").Map:FindFirstChild("HellDimension") then
	 repeat wait()
	 if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Hell's Messenger [Lv. 2200] [Boss]") then
	 for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
	 if v.Name == "Cursed Skeleton [Lv. 2200]" or v.Name == "Cursed Skeleton [Lv. 2200] [Boss]" or v.Name == "Hell's Messenger [Lv. 2200] [Boss]" then
	 if v.Humanoid.Health > 0 then
	 repeat wait()
		StartMagnet = true
		Fast = true
	 
		if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
		   wait()
		   EquipWeapon(_G.Settings.Configs["Select Weapon"])
		end
		PosMonsEsp = v.HumanoidRootPart.CFrame
		if not _G.Settings.Configs["Fast Attack"] then
		   game:GetService'VirtualUser':CaptureController()
		   game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
		end
		if _G.Settings.Configs["Show Hitbox"] then
		   v.HumanoidRootPart.Transparency = fabox_LocalTransparency
		else
		   v.HumanoidRootPart.Transparency = 1
		end
		v.Humanoid.JumpPower = 0
		v.Humanoid.WalkSpeed = 0
		v.HumanoidRootPart.CanCollide = false
		v.Humanoid:ChangeState(11)
		toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
	 until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Yama_3 == false
	 end
	 end
	 end
	 else
	 wait(5)
	 toTarget(game:GetService("Workspace").Map.HellDimension.Torch1.CFrame)
	 wait(1.5)
	 game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
	 wait(1.5)
	 toTarget(game:GetService("Workspace").Map.HellDimension.Torch2.CFrame)
	 wait(1.5)
	 game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
	 wait(1.5)
	 toTarget(game:GetService("Workspace").Map.HellDimension.Torch3.CFrame)
	 wait(1.5)
	 game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
	 wait(1.5)
	 toTarget(game:GetService("Workspace").Map.HellDimension.Exit.CFrame)
	 end
	 until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_3 == false or GetMaterial("Alucard Fragment") == 3
	 else
	 if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") or game.ReplicatedStorage:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
	 if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
	 for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
	 if v.Name == "Soul Reaper [Lv. 2100] [Raid Boss]" then
	 if v.Humanoid.Health > 0 then
	 repeat wait()
		toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,0,-2))
	 until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_3 == false or game:GetService("Workspace").Map:FindFirstChild("HellDimension")
	 end
	 end
	 end
	 else
	 toTarget(CFrame.new(-9570.033203125, 315.9346923828125, 6726.89306640625))
	 end
	 else
	 _G.Settings.Main["Auto Farm Bone"] = true
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
	 end
	 end
	 end)
	 end
	 end
	 end)
	 
	 spawn(function()
	 while task.wait() do
	 if Auto_Quest_Tushita_1 then
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","BoatQuest",workspace.NPCs:FindFirstChild("Luxury Boat Dealer"))
	 end
	 end
	 end)
	 
	 spawn(function()
	 while task.wait() do
	 if Auto_Quest_Tushita_1 then
	 BTP(CFrame.new(-9546.990234375, 21.139892578125, 4686.1142578125))
	 wait(5)
	 BTP(CFrame.new(-6120.0576171875, 16.455780029296875, -2250.697265625))
	 wait(5)
	 BTP(CFrame.new(-9533.2392578125, 7.254445552825928, -8372.69921875))
	 end
	 end
	 end)
	 
	 spawn(function()
	 while task.wait() do
	 if Auto_Quest_Tushita_2 then
	 pcall(function()
	 if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
	 for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
	 if Auto_Quest_Tushita_2 and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
	 if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
	 repeat wait()
	 v.HumanoidRootPart.CanCollide = false
	 v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
	 toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
	 game:GetService'VirtualUser':CaptureController()
	 game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
	 until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Tushita_2 == false
	 end
	 end
	 end
	 else
	 toTarget(CFrame.new(-5545.1240234375, 313.800537109375, -2976.616455078125))
	 end
	 end)
	 end
	 end
	 end)
	 
	 spawn(function()
	 while task.wait() do
	 if Auto_Quest_Tushita_3 then
	 pcall(function()
	 if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") or game.ReplicatedStorage:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
	 if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
	 for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
	 if v.Name == "Cake Queen [Lv. 2175] [Boss]" then
	 if v.Humanoid.Health > 0 then
	 repeat wait()
	 
	 if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
		wait()
		EquipWeapon(_G.Settings.Configs["Select Weapon"])
	 end
	 if not _G.Settings.Configs["Fast Attack"] then
		game:GetService'VirtualUser':CaptureController()
		game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
	 end
	 if _G.Settings.Configs["Show Hitbox"] then
		v.HumanoidRootPart.Transparency = fabox_LocalTransparency
	 else
		v.HumanoidRootPart.Transparency = 1
	 end
	 v.Humanoid.JumpPower = 0
	 v.Humanoid.WalkSpeed = 0
	 v.HumanoidRootPart.CanCollide = false
	 v.Humanoid:ChangeState(11)
	 toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
	 until Auto_Cursed_Dual_Katana == false or Auto_Quest_Tushita_3 == false or game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension")
	 end
	 end
	 end
	 else
	 toTarget(CFrame.new(-709.3132934570312, 381.6005859375, -11011.396484375))
	 end
	 elseif game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension") then
	 repeat wait()
	 if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Heaven's Guardian [Lv. 2200] [Boss]") then
	 for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
	 if v.Name == "Cursed Skeleton [Lv. 2200]" or v.Name == "Cursed Skeleton [Lv. 2200] [Boss]" or v.Name == "Heaven's Guardian [Lv. 2200] [Boss]" then
	 if v.Humanoid.Health > 0 then
	 repeat wait()
	 
		if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
		   wait()
		   EquipWeapon(_G.Settings.Configs["Select Weapon"])
		end
		if not _G.Settings.Configs["Fast Attack"] then
		   game:GetService'VirtualUser':CaptureController()
		   game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
		end
		if _G.Settings.Configs["Show Hitbox"] then
		   v.HumanoidRootPart.Transparency = fabox_LocalTransparency
		else
		   v.HumanoidRootPart.Transparency = 1
		end
		v.Humanoid.JumpPower = 0
		v.Humanoid.WalkSpeed = 0
		v.HumanoidRootPart.CanCollide = false
		v.Humanoid:ChangeState(11)
	 until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Tushita_3 == false
	 end
	 end
	 end
	 else
	 wait(5)
	 toTarget(game:GetService("Workspace").Map.HeavenlyDimension.Torch1.CFrame)
	 wait(1.5)
	 game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
	 wait(1.5)
	 toTarget(game:GetService("Workspace").Map.HeavenlyDimension.Torch2.CFrame)
	 wait(1.5)
	 game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
	 wait(1.5)
	 toTarget(game:GetService("Workspace").Map.HeavenlyDimension.Torch3.CFrame)
	 wait(1.5)
	 game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
	 wait(1.5)
	 toTarget(game:GetService("Workspace").Map.HeavenlyDimension.Exit.CFrame)
	 end
	 until Auto_Cursed_Dual_Katana == false or Auto_Quest_Tushita_3 == false or GetMaterial("Alucard Fragment") == 6
	 else
	 ServerHop:Teleport()
	 end
	 end)
	 end
	 end
	 end)
	 
	 Tushita_Quest1 = nil
	 
	 if Tushita_Quest1 == false then
	 
	 CursedDual:AddToggle('BM', {
	 Text = 'Tushita Quest : 2',
	 Default = Tushita_Quest2,
	 }):OnChanged(function(value)
	 Tushita_Quest2 = value
	 if value == false then
	 wait()
		 toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
	 wait()
	 end
	 task.spawn(function()
	 while task.wait() do
	 pcall(function()
	 if Tushita_Quest2 then
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Tushita")
	 wait(1)
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
	 wait(.5)
	 if game:GetService("Workspace").Enemies:GetChildren() then
	 toTarget(CFrame.new(-5523.9453125, 313.7913818359375, -2958.09765625))
	 for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
	 if Tushita_Quest2 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1000 then
	 repeat wait()
	 StartMagnet = true
	 Fast = true
	 
	 if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
	 wait()
	 EquipWeapon(_G.Settings.Configs["Select Weapon"])
	 end
	 PosMon = v.HumanoidRootPart.CFrame
	 if not _G.Settings.Configs["Fast Attack"] then
	 game:GetService'VirtualUser':CaptureController()
	 game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
	 end
	 if _G.Settings.Configs["Show Hitbox"] then
	 v.HumanoidRootPart.Transparency = fabox_LocalTransparency
	 else
	 v.HumanoidRootPart.Transparency = 1
	 end
	 v.Humanoid.JumpPower = 0
	 v.Humanoid.WalkSpeed = 0
	 v.HumanoidRootPart.CanCollide = false
	 v.Humanoid:ChangeState(11)
	 toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
	 until v.Humanoid.Health <= 0 or not Tushita_Quest2
	 StartMagnet = false
	 Fast = false
	 end
	 end
	 end
	 end
	 end)
	 end
	 end)
	 end)
	 
	 CursedDual:AddLabel("Use Auto Buddy Sword / Self-ignite torch / Mob Aura")
	 
	 
	 CursedDual:AddLabel("Yama Quest")
	 
	 CursedDual:AddToggle('BM', {
	 Text = 'Yama Quest : 1',
	 Default = YamaQuest1,
	 }):OnChanged(function(value)
	 YamaQuest1 = value
	 if value == false then
	 wait()
		 toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
	 wait()
	 end
	 task.spawn(function()
	 while task.wait() do
	 pcall(function()
	 if YamaQuest1 then
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Yama")
	 wait(.1)
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
	 wait(.1)
	 toTarget(CFrame.new(-13284.16796875, 332.4040222167969, -7899.060546875))
	 end
	 end)
	 end
	 end)
	 end)
	 
	 CursedDual:AddToggle('BM', {
	 Text = 'Yama Quest : 2',
	 Default = YamaQuest2,
	 }):OnChanged(function(value)
	 YamaQuest2 = value
	 if value == false then
	 wait()
		 toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
	 wait()
	 end
	 task.spawn(function()
	 while task.wait() do
	 pcall(function()
	 if YamaQuest2 then
	 for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
	 if YamaQuest2 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HazeESP") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
	 repeat wait()
	 StartMagnet = true
	 Fast = true
	 
	 if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
	 wait()
	 EquipWeapon(_G.Settings.Configs["Select Weapon"])
	 end
	 PosMon = v.HumanoidRootPart.CFrame
	 if not _G.Settings.Configs["Fast Attack"] then
	 game:GetService'VirtualUser':CaptureController()
	 game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
	 end
	 if _G.Settings.Configs["Show Hitbox"] then
	 v.HumanoidRootPart.Transparency = fabox_LocalTransparency
	 else
	 v.HumanoidRootPart.Transparency = 1
	 end
	 v.Humanoid.JumpPower = 0
	 v.Humanoid.WalkSpeed = 0
	 v.HumanoidRootPart.CanCollide = false
	 v.Humanoid:ChangeState(11)
	 toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
	 until not YamaQuest2 or not v.Parent or v.Humanoid.Health <= 0
	 StartMagnet = false
	 Fast = false
	 end
	 end
	 end
	 end)
	 end
	 end)
	 end)
	 
	 CursedDual:AddLabel("Walk up to the Halloween boss and kill afterward, light your torch and turn on the Auto Mob Aura.")
	 
	 CursedDual:AddToggle('BM', {
	 Text = 'Mob Aura',
	 Default = MobAura,
	 }):OnChanged(function(value)
	 MobAura = value
	 if value == false then
	 wait()
		 toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
	 wait()
	 end
	 task.spawn(function()
	 while task.wait() do
	 pcall(function()
	 if MobAura then
	 for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
	 if MobAura and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1000 then
	 repeat wait()
	 StartMagnet = true
	 Fast = true
	 
	 if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
	 wait()
	 EquipWeapon(_G.Settings.Configs["Select Weapon"])
	 end
	 PosMon = v.HumanoidRootPart.CFrame
	 if not _G.Settings.Configs["Fast Attack"] then
	 game:GetService'VirtualUser':CaptureController()
	 game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
	 end
	 if _G.Settings.Configs["Show Hitbox"] then
	 v.HumanoidRootPart.Transparency = fabox_LocalTransparency
	 else
	 v.HumanoidRootPart.Transparency = 1
	 end
	 v.Humanoid.JumpPower = 0
	 v.Humanoid.WalkSpeed = 0
	 v.HumanoidRootPart.CanCollide = false
	 v.Humanoid:ChangeState(11)
	 toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
	 MagnetMobAura = true
	 if delay then
	 delay(1,function()
	 MagnetMobAura = true
	 end)
	 end
	 until not MobAura or not v.Parent or v.Humanoid.Health <= 0
	 MagnetMobAura = false
	 Fast = false
	 StartMagnet = false
	 end
	 end
	 end
	 end)
	 end
	 end)
	 end)
	 task.spawn(function()
	 while task.wait() do
	 pcall(function()
	 local MyLevel = game.Players.LocalPlayer.Data.Level.Value
	 if MobAura then
	 for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
	 if (v.HumanoidRootPart.Position-PosMonAura.Position).magnitude <= 350 then
	 v.HumanoidRootPart.CFrame = PosMonAura
	 v.Humanoid.JumpPower = 0
	 v.Humanoid.WalkSpeed = 0
	 v.HumanoidRootPart.CanCollide = false
	 if v.Humanoid:FindFirstChild("Animator") then
	 v.Humanoid.Animator:Destroy()
	 end
	 v.Humanoid:ChangeState(11)
	 end
	 end
	 end
	 end)
	 end
	 end)
	 end
	 
	 local sgtbox = Tabs['Automatics']:AddRightTabbox()
	 local SoulGuitar = sgtbox:AddTab('\\\\  Soul Guitar  //')
	 
	 
	 SoulGuitar:AddToggle('Auto_Soul_Guitar', {
	 Text = 'Auto Soul Guitar',
	 Default = false,
	 }):OnChanged(function(value)
	 AutoSoulGuitar = value
	 if value == false then
			toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
	end
	 end)
	 
	 SoulGuitar:AddToggle('TryLuck', {
	 Text = 'Auto Try Luck',
	 Default = false,
	 }):OnChanged(function(value)
	 TryLuck = value
	 if value == false then
			toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
	end
	 end)
	 
	 SoulGuitar:AddToggle('Pray', {
	 Text = 'Auto Pray',
	 Default = false,
	 }):OnChanged(function(value)
	 Pray = value
	 if value == false then
			toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
	end
	 end)
	 
	 spawn(function()
	 while wait(0.1) do
	 if TryLuck then
	 toTarget(CFrame.new(-8652.99707, 143.450119, 6170.50879, -0.983064115, -2.4800553e-10, 0.18326205, -1.7891039e-9, 1, -8.243923e-9, -0.18326205, -8.43218e-9, -0.983064115))
	 wait()
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 1)
	 end
	 end
	 end)
	 spawn(function()
	 while wait(0.1) do
	 if Pray then
	 toTarget(CFrame.new(-8652.99707, 143.450119, 6170.50879, -0.983064115, -2.4800553e-10, 0.18326205, -1.7891039e-9, 1, -8.243923e-9, -0.18326205, -8.43218e-9, -0.983064115))
	 wait()
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2)
	 end
	 end
	 end)
	 
	 
	 local FWbox = Tabs['Automatics']:AddLeftTabbox()
	 local FirstWord = FWbox:AddTab('\\\\ First Word //')
	 
	 
	 FirstWord:AddToggle('Auto_Pole', {
	 Text = 'Auto Pole V.1',
	 Default = false,
	 }):OnChanged(function(value)
	 _G.Settings.Main["Auto Pole"] = value
	 if value == false then
			toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
	end
	 end)
	 
	 FirstWord:AddToggle('Auto_Pole_Hop', {
	 Text = 'Auto Pole V.1 Hop',
	 Default = false,
	 }):OnChanged(function(value)
	 phub = value
	 if value == false then
			toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
	end
	 end)
	 
	 FirstWord:AddToggle('Auto_Saber', {
	 Text = 'Auto Saber',
	 Default = false,
	 }):OnChanged(function(value)
	 _G.Settings.Main["Auto Saber"] = value
	 if value == false then
			toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
	end
	 end)
	 local SSbox = Tabs['Automatics']:AddLeftTabbox()
	 
	 local SecondWord = SSbox:AddTab('\\\\ Second Sea //')
	 
	 
	 SecondWord:AddToggle('Auto_Dark_Coat', {
	 Text = 'Auto Dark Coat',
	 Default = false,
	 }):OnChanged(function(value)
	 _G.Settings.Main["Auto Dark Coat"] = value
	 if value == false then
			toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
	end
	 end)
	 
	
	 SecondWord:AddToggle('Auto_Ectoplasm', {
	 Text = 'Auto Ectoplasm',
	 Default = false,
	 }):OnChanged(function(value)
	 _G.Settings.Main["Auto Ectoplasm"] = value
	 if value == false then
			toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
	end
	 end)
	 
	 SecondWord:AddToggle('Auto_True_Triple_Katana', {
	 Text = 'Auto True Triple Katana',
	 Default = false,
	 }):OnChanged(function(value)
	 _G.Settings.Main["Auto True Triple Katana"] = value
	 if value == false then
			toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
	end
	 end)
	 
	 SecondWord:AddToggle('Auto_Rengoku', {
	 Text = 'Auto Rengoku Swords',
	 Default = false,
	 }):OnChanged(function(value)
	 _G.Settings.Main["Auto Rengoku"] = value
	 if value == false then
			toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
	end
	 end)
	 
	 
	 SecondWord:AddToggle('Auto_Swan_Glasses', {
	 Text = 'Auto Swan Glasses',
	 Default = false,
	 }):OnChanged(function(value)
	 _G.Settings.Main["Auto Swan Glasses"] = value
	 if value == false then
			toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
	end
	 end)
	 
	 local FarmMaterail = Tabs['Automatics']:AddRightTabbox()
	 local Materail = FarmMaterail:AddTab('\\\\  Farm Materail  //')
	 
	 
	 Materail:AddDropdown('Select_Material', {
	 Values = AllMaterial,
	 Default = 'd',
	 Multi = false,
	 Text = 'Select Material',
	 }):OnChanged(function(value)
	 SelectModeMaterial = value
	 end)
	 
	 
	 Materail:AddToggle('Auto_Farm_Materia', {
	 Text = 'Auto Farm Materia',
	 Default = false,
	 }):OnChanged(function(x)
	 AutoFarmMaterial = x
	 if x == false then
			toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
	end
	 end)
	 
	 local mobaurax = Tabs['Automatics']:AddRightTabbox()
	 local mobaura = mobaurax:AddTab('\\\\  Mob Aura  //')
	 
	 mobaura:AddSlider('Distance_Mob_Aura', {
	 Text = 'Distance Mob Aura',
	 Default = 1000,
	 Min = 0,
	 Max = 5000,
	 Rounding = 0,
	 
	 Compact = false,
	 }):OnChanged(function(value)
		_G.Settings.Main["Distance Mob Aura"] = value
	 end)
	 
	 mobaura:AddToggle('Mob_Aura', {
	 Text = 'Mob Aura',
	 Default = false,
	 }):OnChanged(function(value)
		_G.Settings.Main["Mob Aura"] = value
		if value == false then
				toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
		end
	 end)
	 
	 
	 local tsbox = Tabs['Automatics']:AddLeftTabbox()
	 local ThreeSea = tsbox:AddTab('\\\\  Three Sea  //')
	
	 ThreeSea:AddToggle('Auto_Dough_V2', {
		Text = 'Auto Dough V.2',
		Default = false,
		}):OnChanged(function(value)
			_G.Settings.Main["Auto Dough V2"] = value
			if value == false then
					toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
			end
		end)
		
	 
	 ThreeSea:AddToggle('Auto_Holy_Torch', {
	 Text = 'Auto Holy Torch',
	 Default = false,
	 }):OnChanged(function(value)
	 _G.Settings.Main["Auto Holy Torch"] = value
	 if value == false then
			toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
	end
	 end)
	 
		   ThreeSea:AddToggle('Auto_Buddy_Swords', {
			  Text = 'Buddy Swords',
			  Default = false,
		   }):OnChanged(function(value)
		   _G.Settings.Main["Auto Buddy Swords"] = value
		   if value == false then
				toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
		end
		   end)
	 
	 
		   ThreeSea:AddToggle('Auto_Farm_Boss_Hallow', {
			  Text = 'Auto Farm Boss Hallow',
			  Default = false,
		   }):OnChanged(function(value)
		   _G.Settings.Main["Auto Farm Boss Hallow"] = value
		   if value == false then
				toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
		end
		   end)
	 
	 
		   ThreeSea:AddToggle('Auto_Rainbow_Haki', {
			  Text = 'Auto Rainbow Haki',
			  Default = false,
		   }):OnChanged(function(value)
		   _G.Settings.Main["Auto Rainbow Haki"] = value
		   if value == false then
				toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
		end
		   end)
	 
	 
		   ThreeSea:AddToggle('Auto_Musketeer_Hat', {
			  Text = 'Auto Musketeer Hat',
			  Default = false,
		   }):OnChanged(function(value)
		   _G.Settings.Main["Auto Musketeer Hat"] = value
		   if value == false then
				toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
		end
		   end)
	 
		   local v4box = Tabs['Automatics']:AddRightTabbox()
		   local RaceV4 = v4box:AddTab('\\\\  Race  //')
	 
		   RaceV4:AddToggle('Auto_Evo_Race_Mink', {
			  Text = 'Auto Evo Race [Mink]',
			  Default = false,
		   }):OnChanged(function(x)
		   _G.Settings.Evo["Auto Evo Race [Mink]"] = value
		   if value == false then
				toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
		end
				 end)
	 
		   RaceV4:AddToggle('Auto_Evo_Race_FishMan', {
			  Text = 'Auto Evo Race [FishMan]',
			  Default = false,
		   }):OnChanged(function(x)
		   _G.Settings.Evo["Auto Evo Race [FishMan]"] = value
		   if value == false then
				  toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
		   end
				 end)
	 
		   RaceV4:AddToggle('Auto_Evo_Race_Human', {
			  Text = 'Auto Evo Race [Human]',
			  Default = false,
		   }):OnChanged(function(x)
		   _G.Settings.Evo["Auto Evo Race [Human]"] = value
		   if value == false then
				  toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
		   end
				 end)
	 
		   RaceV4:AddToggle('Auto_Evo_Race_Sky', {
			  Text = 'Auto Evo Race [Sky]',
			  Default = false,
		   }):OnChanged(function(x)
		   _G.Settings.Evo["Auto Evo Race [Sky]"] = value
		   if value == false then
				  toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
		   end
				 end)
	 
	
		   local FM = RaceV4:AddLabel("...")
		   local Mirragecheck = RaceV4:AddLabel("...")
		   task.spawn(function()
		   while task.wait() do
			  pcall(function()
			  if (game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149431") then
				 FM:SetText("🌑 : Full Moon 100%")
			  elseif (game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149052") then
				 FM:SetText("🌒 : Full Moon 75%")
			  elseif (game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709143733") then
				 FM:SetText("🌓 : Full Moon 50%")
			  elseif (game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709150401") then
				 FM:SetText("🌗 : Full Moon 25%")
			  elseif (game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149680") then
				 FM:SetText("🌖 : Full Moon 15%")
			  else
				 FM:SetText("🌚 : Full Moon 0%")
			  end
			  end)
		   end
		   end)
	 
		   spawn(function()
		   pcall(function()
		   while task.wait() do
			  if game.Workspace._WorldOrigin.Locations:FindFirstChild("Mirage Island") then
				 Mirragecheck:SetText("🏝️ : Mirage Island is Spawning")
			  else
				 Mirragecheck:SetText("🏝️ : Mirage Island Not Found ❌")
			  end
		   end
		   end)
		   end)
	 
		   RaceV4:AddToggle('Teleport_To_Gear', {
			  Text = 'Teleport To Gear',
			  Default = false,
		   }):OnChanged(function(x)
		   tpGear = x
		   if x == false then
				toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
		end
		   end)
	 
		   if tpGear then
			  toTarget(game:GetService("Workspace").Map.MysticIsland:FindFirstChildOfClass("MeshPart").CFrame)
	 
		   end
	 
		   spawn(function()
		   pcall(function()
		   while task.wait() do
			  if _G.Mirage then
				 if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
					function toTargetWait(a)
					   local b = (a.p - game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude
					   tweenrach = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), TweenInfo.new(b / 250, Enum.EasingStyle.Linear), {CFrame=a})
					   tweenrach:Play()
					end
					toTargetWait(workspace.Map.MysticIsland.PrimaryPart.CFrame * CFrame.new(0, 250, 0))
					if _G.MirageHop then
					   wait(6)
					   Hop()
					end
				 end
			  end
		   end
		   end)
		   end)
	 
		   RaceV4:AddToggle('Teleport_To_Trial_Door', {
			  Text = 'Teleport To Trial Door',
			  Default = false,
			  Tooltip = 'Coming Soon!', -- Information shown when you hover over the toggle
		   }):OnChanged(function(x)
	
			   end)
	 
		   RaceV4:AddToggle('Auto_Pull_Lever', {
			  Text = 'Auto Pull Lever',
			  Default = false,
			  Tooltip = 'Coming Soon!', -- Information shown when you hover over the toggle
		   }):OnChanged(function(x)
		   -- Soon
		   end)
	 
		   RaceV4:AddToggle('Auto_Ancientone_Quest', {
			  Text = 'Auto Ancientone Quest',
			  Default = false,
			  Tooltip = 'Coming Soon!', -- Information shown when you hover over the toggle
		   }):OnChanged(function(x)
		   -- Soon
		   end)
	 
		   RaceV4:AddToggle('Auto_Active_Ability', {
			  Text = 'Auto Active Ability',
			  Default = false,
			  Tooltip = 'Coming Soon!', -- Information shown when you hover over the toggle
		   }):OnChanged(function(x)
		   -- Soon
		   end)
	 
		   RaceV4:AddToggle('Auto_Complete_Trial', {
			  Text = 'Auto Complete Trial',
			  Default = false,
			  Tooltip = 'Coming Soon!', -- Information shown when you hover over the toggle
		   }):OnChanged(function(x)
		   -- Soon
		   end)
		   function isnil(thing)
			  return (thing == nil)
		   end
		   local function round(n)
			  return math.floor(tonumber(n) + 0.5)
		   end
		   Number = math.random(1, 1000000)
	 
		   function UpdateIslandMirageESP()
			  for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
				 pcall(function()
				 if MirageIslandESP then
					if v.Name == "Mirage Island" then
					   if not v:FindFirstChild('NameEsp') then
						  local bill = Instance.new('BillboardGui',v)
						  bill.Name = 'NameEsp'
						  bill.ExtentsOffset = Vector3.new(0, 1, 0)
						  bill.Size = UDim2.new(1,200,1,30)
						  bill.Adornee = v
						  bill.AlwaysOnTop = true
						  local name = Instance.new('TextLabel',bill)
						  name.Font = "Code"
						  name.FontSize = "Size14"
						  name.TextWrapped = true
						  name.Size = UDim2.new(1,0,1,0)
						  name.TextYAlignment = 'Top'
						  name.BackgroundTransparency = 1
						  name.TextStrokeTransparency = 0.5
						  name.TextColor3 = Color3.fromRGB(80, 245, 245)
					   else
						  v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
					   end
					end
				 else
					if v:FindFirstChild('NameEsp') then
					   v:FindFirstChild('NameEsp'):Destroy()
					end
				 end
				 end)
			  end
		   end
		   RaceV4:AddButton('Teleporting To Temple Of Time', function()
		   Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
		   end)
	 
		   RaceV4:AddButton('Teleporting To Lever', function()
		   Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
		   end)
		   local Miragex = Tabs['Automatics']:AddLeftTabbox()
		   local Mirage = Miragex:AddTab('\\\\  Mirage Island //')
		   Mirage:AddToggle('Teleport_To_Mirage_Island', {
			  Text = 'Teleport To Mirage Island',
			  Default = false,
		   }):OnChanged(function(value)
		   _G.Mirage = value
		   end)
	 
	 
		   Mirage:AddToggle('Esp_Mirage_Island', {
			  Text = 'Esp Mirage Island',
			  Default = false,
			  --	Tooltip = 'Coming Soon!', -- Information shown when you hover over the toggle
		   }):OnChanged(function(x)
		   MirageIslandESP = vu
		   while MirageIslandESP do wait()
			  UpdateIslandMirageESP()
		   end
		   end)
	 
		   Mirage:AddInput('Link_Web_Hook', {
			  Default = 'Link Web Hook',
			  Numeric = false, -- true / false, only allows numbers
			  Finished = false, -- true / false, only calls callback when you press enter
	 
			  Text = 'Link Web Hook',
			  --    Tooltip = 'This is a tooltip', -- Information shown when you hover over the textbox
	 
			  Placeholder = 'Link Here', -- placeholder text when the box is empty
			  -- MaxLength is also an option which is the max length of the text
	 
			  Callback = function(x)
			  _G.set.wephook = x
		   end
		})
	 
		Mirage:AddToggle('Auto_Webhook_When_found_Mirage_Island', {
		   Text = 'Auto Webhook When found Mirage Island',
		   Default = false,
		   --	Tooltip = 'Coming Soon!', -- Information shown when you hover over the toggle
		}):OnChanged(function(x)
		_G.WebMytic = x
		end)
	 
	 
	 
		spawn(function()
		while wait() do
		   pcall(function()
		   if _G.WebMytic then
			  if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Mirage Island") then
				 local Moon
				 local Job = game.JobId
				 local PlayerCount = #game.Players:GetPlayers()
				 if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Mirage Island")then
					Mirage = "True"
				 else
					Mirage = "False"
				 end
				 if game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149431" then
					Moon = "Full Moon 100%"
				 elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149052" then
					Moon = "Full Moon 75%"
				 elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709143733" then
					Moon = "Full Moon 50%"
				 elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709150401" then
					Moon = "Full Moon 25%"
				 elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149680" then
					Moon = "Full Moon 10%"
				 else
					Moon = "Full Moon 0%"
				 end
				 Infomation = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)
				 NameGames = Infomation.Name
				 if _G.set.wephook ~= "" then
					pcall(function()
					local url =
					_G.set.wephook
					local data = {
					   ["content"] = "@everyone",
					   ["embeds"] = {
						  {
							 ["author"] = {
								["name"] = "Check Full Moon"
							 },
							 ["type"] = "rich",
							 ["title"] = "Notify Mirage Island Found",
							 ["color"] = tonumber(0x78da),
							 ["fields"] = {
								{
								   ["name"] = "Moon Status:",
								   ["value"] = "```"..Moon.."```"
								},
								{
								   ["name"] = "Mirage Island Spawn:",
								   ["value"] = "```"..Mirage.."```"
								},
								{
								   ["name"] = "Players In Server:",
								   ["value"] = "```"..PlayerCount.."/12".."```"
								},
								{
								   ["name"] = "Job Id:",
								   ["value"] = "```"..Job.."```"
								},
								{
								   ["name"] = "Server JobId:",
								   ["value"] = "```".."game.ReplicatedStorage['__ServerBrowser']:InvokeServer('teleport',"..Job..")".."```"
								}
							 }
						  }
					   }
					}
					local newdata = game:GetService("HttpService"):JSONEncode(data)
	 
					local headers = {
					   ["content-type"] = "application/json"
					}
					request = http_request or request or HttpPost or syn.request
					local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
					request(abcdef)
					end)
				 else
					print("Invaild Url")
				 end
			  end
		   end
		   end)
		end
		end)
	 
	 
	 
		local dpx = Tabs['Players']:AddLeftTabbox()
		local DestroyPlayers = dpx:AddTab('\\\\  Destroy Players  //')

        Playerslist = {}
        for i,v in pairs(game:GetService("Players"):GetChildren()) do
            table.insert(Playerslist,v.Name)
        end
        PLRA=DestroyPlayers:AddDropdown('Select_Player', {Values = Playerslist,Default = {},Multi = false,Text = 'Select Players',})
		PLRA:OnChanged(function()SelectPlayers=PLRA.Value
        end)
        DestroyPlayers:AddButton('Refresh Player', function()
            table.clear(Playerslist)
                for i,v in pairs(game:GetService("Players"):GetChildren()) do
                table.insert(Playerslist,v.Name)
                task.wait(.1)
                PLRA:SetValues(v.Name)
            end
        end)

	 
	 DestroyPlayers:AddToggle('Teleport_to_Player', {
		Text = 'Teleport to Player',
		Default = false,
	 }):OnChanged(function(value)
	 teleporttop = value
	 if value == false then
			toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
	end
	 end)
	 
	 spawn(function()
	 while wait() do
		if teleporttop then
		   pcall(function()
		   if game.Players:FindFirstChild(SelectPlayers) then
			  toTarget(game.Players[SelectPlayers].Character.HumanoidRootPart.CFrame)
		   end
		   end)
		end
	 end
	 end)
	 
	 
	 DestroyPlayers:AddToggle('Spectate_Player', {
		Text = 'Spectate Player',
		Default = false,
	 }):OnChanged(function(value)
	 SpectatorPlayer = value
	 if value == false then
			toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
	 end
	 end)
	 
	 task.spawn(function()
	 while wait() do
		if SpectatorPlayer then
		   pcall(function()
		   if game.Players:FindFirstChild(SelectPlayers) then
			  game.Workspace.Camera.CameraSubject = game.Players:FindFirstChild(SelectPlayers).Character.Humanoid
		   end
		   end)
		else
		   game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
		end
	 end
	 end)
	 local AutoFarmBountyVisualx = Tabs['Players']:AddLeftTabbox()
	 local AutoFarmBountyVisual = AutoFarmBountyVisualx:AddTab('\\\\  Auto Farm Bounty Visual  //')
	 
	 local Current = AutoFarmBountyVisual:AddLabel("Current Bounties :")
	 local Bounty = tostring(game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value)
	 local sub = string.sub
	 local len = string.len
	 spawn(function()
	 while wait() do
		pcall(function()
		if len(Bounty) == 4 then
		   Bounty1 = sub(Bounty,1,1).."."..sub(Bounty,2,3).."K"
		elseif len(Bounty) == 5 then
		   Bounty1 = sub(Bounty,1,2).."."..sub(Bounty,3,4).."K"
		elseif len(Bounty) == 6 then
		   Bounty1 = sub(Bounty,1,3).."."..sub(Bounty,4,5).."K"
		elseif len(Bounty) == 7 then
		   Bounty1 = sub(Bounty,1,1).."."..sub(Bounty,2,3).."M"
		elseif len(Bounty) == 8 then
		   Bounty1 = sub(Bounty,1,2).."."..sub(Bounty,3,4).."M"
		elseif len(Bounty) <= 3 then
		   Bounty1 = Bounty
		end
		Current:SetText("Current Bounty : "..Bounty1)
		end)
	 end
	 end)
	 
	 local Earned = AutoFarmBountyVisual:AddLabel("Earned Bounty : 0")
	 
	 local OldBounty = game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value
	 local Bounty = tostring(game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value)
	 local Earned = tostring(game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value - OldBounty)
	 local sub = string.sub
	 local len = string.len
	 spawn(function()
	 while wait() do
		pcall(function()
		if len(Earned) == 4 then
		   Earned1 = sub(Earned,1,1).."."..sub(Earned,2,3).."K"
		elseif len(Earned) == 5 then
		   Earned1 = sub(Earned,1,2).."."..sub(Earned,3,4).."K"
		elseif len(Earned) == 6 then
		   Earned1 = sub(Earned,1,3).."."..sub(Earned,4,5).."K"
		elseif len(Earned) == 7 then
		   Earned1 = sub(Earned,1,1).."."..sub(Earned,2,3).."M"
		elseif len(Earned) == 8 then
		   Earned1 = sub(Earned,1,2).."."..sub(Earned,3,4).."M"
		elseif len(Earned) <= 3 then
		   Earned1 = Earned
		end
		Earn:SetText("Earned : "..tonumber(Earned1))
		end)
	 end
	 end)
	 local AutoFarmBountyx = Tabs['Players']:AddLeftTabbox()
	 local AutoFarmBounty = AutoFarmBountyx:AddTab('\\\\  Auto Farm Bounty  //')
	 
	 AutoFarmBounty:AddToggle('Auto_Farm_Bounty', {
		Text = 'Auto Farm Bounty',
		Default = false,
	 }):OnChanged(function(value)
	 _G.AutoFarmBounty = value
	 if value == false then
			toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
	end
	 end)
	 
	 local Delay = 1
	 
	 CastlePostoMansion = CFrame.new(-5084.8447265625, 316.48101806641, -3145.3752441406)
	 MansiontoCastlePos = CFrame.new(-12464.596679688, 376.30590820312, -7567.2626953125)
	 Castletophydra = CFrame.new(-5095.33984375, 316.48101806641, -3168.3134765625)
	 HydratoCastle = CFrame.new(5741.869140625, 611.94750976562, -282.61154174805)
	 spawn(function()
	 while wait(0.1) do
		pcall(function()
		if _G.AutoFarmBounty then
		   for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
			  if v.Name ~= game.Players.LocalPlayer.Name then
				 if v:WaitForChild("Humanoid").Health > 0 and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude <= 17000 then
					plyselecthunthelpold = v.Humanoid.Health
					repeat task.wait()
					   NameTarget = v.Name
					   if tostring(game.Players.LocalPlayer.Team) == "Pirates" then
						  toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,0,15))
					   elseif tostring(game.Players.LocalPlayer.Team) == "Marines" then
						  if game.Players[NameTarget].Team ~= game.Players.LocalPlayer.Team then
							 toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,0,15))
						  end
					   end
					   spawn(function()
					   if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150 then
						  spawn(function()
						  Melee()
						  SY()
						  SC()
						  SZ()
						  SX()
						  wait(2)
						  Sword()
						  SZ()
						  SX()
						  wait(2)
						  Gun()
						  SZ()
						  SX()
						  end)
					   end
					   end)
					   v.HumanoidRootPart.CanCollide = false
					   TargetSelectHunt = v.Humanoid
					until _G.AutoFarmBounty == false or v.Humanoid.Health == 0 or not v:FindFirstChild("HumanoidRootPart") or not v:FindFirstChild("Humanoid") or not v.Parent or NextplySelect == true
					NextplySelect = false
					StartCheckTarget = false
				 end
			  end
		   end
		end
		end)
	 end
	 end)
	 
	 function Melee()
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		   if v:IsA("Tool") then
			  if v.ToolTip == "Melee" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
				 game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
			  end
		   end
		end
	 end
	 function Sword()
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		   if v:IsA("Tool") then
			  if v.ToolTip == "Sword" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
				 game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
			  end
		   end
		end
	 end
	 
	 function SY()
		game:GetService("VirtualInputManager"):SendKeyEvent(true,"Y",false,game)
		game:GetService("VirtualInputManager"):SendKeyEvent(false,"Y",false,game)
	 end
	 
	 function SZ()
		game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
		game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
	 end
	 
	 function SX()
		game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
		game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
	 end
	 
	 function SC()
		game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
		game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
	 end
	 
	 
	 spawn(function()
	 pcall(function()
	 while wait() do
		if _G.AutoFarmBounty then
		   if TargetSelectHunt ~= nil then
			  if StartCheckTarget then
				 wait(6.5)
				 if TargetSelectHunt.Health == TargetSelectHunt.MaxHealth or TargetSelectHunt.Health >= plyselecthunthelpold then
					NextplySelect = true
					TargetSelectHunt = nil
				 end
			  end
		   end
		end
	 end
	 end)
	 end)
	 
	 spawn(function()
	 pcall(function()
	 while wait(.1) do
		if _G.AutoFarmBounty then
		   if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
			  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
		   end
		end
	 end
	 end)
	 end)
	 
	 spawn(function()
	 while wait() do
		if _G.AutoFarmBounty then
		   pcall(function()
		   wait(150)
		   Hop()
		   Hop()
		   Hop()
		   Hop()
		   Hop()
		   end)
		end
	 end
	 end)
	 
	 spawn(function()
	 pcall(function()
	 game:GetService("RunService").RenderStepped:connect(function()
	 if _G.AutoFarmBounty and TargetPlayerAim ~= nil and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and game.Players.LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name]:FindFirstChild("MousePos") then
		local args = {
		   [1] = game:GetService("Players"):FindFirstChild(TargetPlayerAim).Character.HumanoidRootPart.Position
		}
		game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
	 end
	 end)
	 end)
	 end)
	 pcall(function()
		getgenv().ESP=loadstring(game:HttpGet("https://androssy.net/TrashXenon/ESP.lua"))();
	end);
	
	
	AutoFarmBounty:AddToggle("ESP_Players",{Text="ESP Players"}):OnChanged(function(a)getgenv().ESP:Toggle(a);
	end);
	
	 function isnil(thing)
		return (thing == nil)
	 end
	 local function round(n)
		return math.floor(tonumber(n) + 0.5)
	 end
	 Number = math.random(1, 1000000)
	 function UpdatePlayerChams()
		for i,v in pairs(game:GetService'Players':GetChildren()) do
		   pcall(function()
		   if not isnil(v.Character) then
			  if ESPPlayer then
				 if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
					local bill = Instance.new('BillboardGui',v.Character.Head)
					bill.Name = 'NameEsp'..Number
					bill.ExtentsOffset = Vector3.new(0, 1, 0)
					bill.Size = UDim2.new(1,200,1,30)
					bill.Adornee = v.Character.Head
					bill.AlwaysOnTop = true
					local name = Instance.new('TextLabel',bill)
					name.Font = Enum.Font.GothamSemibold
					name.FontSize = "Size14"
					name.TextWrapped = true
					name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
					name.Size = UDim2.new(1,0,1,0)
					name.TextYAlignment = 'Top'
					name.BackgroundTransparency = 1
					name.TextStrokeTransparency = 0.5
					if v.Team == game.Players.LocalPlayer.Team then
					   name.TextColor3 = Color3.new(0,255,0)
					else
					   name.TextColor3 = Color3.new(255,0,0)
					end
				 else
					v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
				 end
			  else
				 if v.Character.Head:FindFirstChild('NameEsp'..Number) then
					v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
				 end
			  end
		   end
		   end)
		end
	 end
	 spawn(function()
	 while wait() do
		if ESPPlayer then
		   UpdatePlayerChams()
		end
	 end
	 end)
	 local Aimbox = Tabs['Players']:AddLeftTabbox()
	 local Aimbot = Aimbox:AddTab('\\\\  Aimbot  //')
	 
	 
	 local lp = game:GetService('Players').LocalPlayer
	 local mouse = lp:GetMouse()
	 task.spawn(function()
	 while wait() do
		if _G.Settings.Combat["Aimbot Skill"] then
		   pcall(function()
		   local MaxDist, Closest = math.huge
		   for i,v in pairs(game:GetService("Players"):GetChildren()) do
			  local Head = v.Character:FindFirstChild("HumanoidRootPart")
			  local Pos, Vis = game.Workspace.CurrentCamera.WorldToScreenPoint(game.Workspace.CurrentCamera, Head.Position)
			  local MousePos, TheirPos = Vector2.new(mouse.X, mouse.Y), Vector2.new(Pos.X, Pos.Y)
			  local Dist = (TheirPos - MousePos).Magnitude
			  if Dist < MaxDist and Dist <= tonumber(_G.Settings.Combat["Fov Size"]) and v.Name ~= game.Players.LocalPlayer.Name then
				 MaxDist = Dist
				 _G.Aim_Players = v
			  end
		   end
		   end)
		end
	 end
	 end)
	 
	 task.spawn(function()
	 local gg = getrawmetatable(game)
	 local old = gg.__namecall
	 setreadonly(gg,false)
	 gg.__namecall = newcclosure(function(...)
	 local method = getnamecallmethod()
	 local args = {...}
	 if tostring(method) == "FireServer" then
		if tostring(args[1]) == "RemoteEvent" then
		   if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
			  if _G.Settings.Combat["Aimbot Skill"] then
				 args[2] = _G.Aim_Players.Character.HumanoidRootPart.Position
				 return old(unpack(args))
			  end
		   end
		end
	 end
	 return old(...)
	 end)
	 end)
	 
	 local Circle = Drawing.new("Circle")
	 Circle.Color =  Color3.fromRGB(255, 255, 255)
	 Circle.Thickness = 1
	 Circle.Radius = 250
	 Circle.NumSides = 460
	 Circle.Filled = false
	 Circle.Transparency = 1
	 
	 LPH_NO_VIRTUALIZE(function()
	 game:GetService("RunService").Stepped:Connect(function()
	 Circle.Radius = tonumber(_G.Settings.Combat["Fov Size"])
	 Circle.Thickness = 1
	 Circle.NumSides = 460
	 Circle.Position = game:GetService('UserInputService'):GetMouseLocation()
	 if _G.Settings.Combat["Show Fov"] then
		Circle.Visible = true
	 else
		Circle.Visible = false
	 end
	 end)
	 end)()
	 
	 Aimbot:AddSlider('Fov_Size', {
		Text = 'Fov Size',
		Default = 350,
		Min = 300,
		Max = 1000,
		Rounding = 1,
		Compact = false,
		Callback = function(Value)
		_G.Settings.Combat["Fov Size"] = Value
	 end
	 })
	 
	 Aimbot:AddToggle('Show_Fov', {
	 Text = 'Show Fov',
	 Default = false,
	 }):OnChanged(function(value)
	 _G.Settings.Combat["Show Fov"] = value
	 end)
	 
	 Aimbot:AddToggle('Aimbot_Skill', {
	 Text = 'Aimbot Skill',
	 Default = false,
	 }):OnChanged(function(value)
	 _G.Settings.Combat["Aimbot Skill"] = value
	 end)
	 
	 
	 local gg = getrawmetatable(game)
	 local old = gg.__namecall
	 setreadonly(gg,false)
	 gg.__namecall = newcclosure(function(...)
	 local method = getnamecallmethod()
	 local args = {...}
	 if tostring(method) == "FireServer" then
	 if tostring(args[1]) == "RemoteEvent" then
		if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
		   if Skillaimbot then
			  args[2] = AimBotSkillPosition
			  return old(unpack(args))
		   end
		end
	 end
	 end
	 return old(...)
	 end)
	 
	 LPH_NO_VIRTUALIZE(function()
	 task.spawn(function()
	 while wait() do
	 for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if v:IsA("Tool") then
		   if v:FindFirstChild("RemoteFunctionShoot") then
			  SelectToolWeaponGun = v.Name
		   end
		end
	 end
	 for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if v:IsA("Tool") then
		   if v:FindFirstChild("RemoteFunctionShoot") then
			  SelectToolWeaponGun = v.Name
		   end
		end
	 end
	 end
	 end)
	 end)()
	 
	 --[aimbot skill]
	 
	 task.spawn(function()
	 while wait() do
	 if Skillaimbot then
		if game.Players:FindFirstChild(SelectPlayer) and game.Players:FindFirstChild(SelectPlayer).Character:FindFirstChild("HumanoidRootPart") and game.Players:FindFirstChild(SelectPlayer).Character:FindFirstChild("Humanoid") and game.Players:FindFirstChild(SelectPlayer).Character.Humanoid.Health > 0 then
		   AimBotSkillPosition = game.Players:FindFirstChild(SelectPlayer).Character:FindFirstChild("HumanoidRootPart").Position
		end
	 end
	 end
	 end)
	 
	 --[aimbot gun]
	 
	 local lp = game:GetService('Players').LocalPlayer
	 local mouse = lp:GetMouse()
	 mouse.Button1Down:Connect(function()
	 if Aimbot and game.Players.LocalPlayer.Character:FindFirstChild(SelectToolWeaponGun) and game:GetService("Players"):FindFirstChild(SelectPlayer) then
	 tool = game:GetService("Players").LocalPlayer.Character[SelectToolWeaponGun]
	 v17 = workspace:FindPartOnRayWithIgnoreList(Ray.new(tool.Handle.CFrame.p, (game:GetService("Players"):FindFirstChild(SelectPlayer).Character.HumanoidRootPart.Position - tool.Handle.CFrame.p).unit * 100), { game.Players.LocalPlayer.Character, workspace._WorldOrigin })
	 game:GetService("Players").LocalPlayer.Character[SelectToolWeaponGun].RemoteFunctionShoot:InvokeServer(game:GetService("Players"):FindFirstChild(SelectPlayer).Character.HumanoidRootPart.Position, (require(game.ReplicatedStorage.Util).Other.hrpFromPart(v17)))
	 end
	 end)
	 
	 local buyFightingStylex = Tabs['Players']:AddLeftTabbox()
	 local buyFightingStyle = buyFightingStylex:AddTab('\\\\  Fighting Style  //')
	 
	 buyFightingStyle:AddButton('Buy Black Leg', function()
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
	 end)
	 buyFightingStyle:AddButton('Buy Electro', function()
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
	 end)
	 buyFightingStyle:AddButton('Buy Fishman Karate', function()
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
	 end)
	 buyFightingStyle:AddButton('Buy Dragon Claw', function()
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
	 end)
	 buyFightingStyle:AddButton('Buy Superhuman', function()
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
	 end)
	 buyFightingStyle:AddButton('Buy Death Step', function()
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
	 end)
	 buyFightingStyle:AddButton('Buy Sharkman Karate', function()
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
	 end)
	 buyFightingStyle:AddButton('Buy Electric Claw', function()
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true)
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
	 end)
	 buyFightingStyle:AddButton('Buy Dragon Talon', function()
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true)
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
	 end)
	 buyFightingStyle:AddButton('Buy Godhuman', function()
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true)
	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
	 end)
	 
	 local IslandTeleportx = Tabs['Players']:AddRightTabbox()
	 local IslandTeleport = IslandTeleportx:AddTab('\\\\  Island Teleport  //')
	 
	 
	 Locations = {}
	 for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
	 table.insert(Locations,v.Name)
	 end
	 IslandTeleport:AddDropdown('Select_Location', {
	 Values = Locations,
	 Default = nil,
	 Multi = false,
	 Text = 'Select Island',
	 }):OnChanged(function(value)
	 _G.Island = value
	 end)
	 
	 IslandTeleport:AddToggle('Teleport_To_Island', {
	 Text = 'Teleport To Island',
	 Default = false,
	 }):OnChanged(function(value)
	 _G.Teleport = value
	 for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
	 if v.Name == _G.Island and _G.Teleport then
		repeat wait()
		   toTarget(v.CFrame * CFrame.new(5,0,0))
		until not _G.Teleport or game.Players.LocalPlayer.Character.Humanoid.CFrame == v.CFrame
	 end
	 end
	 if _G.Teleport == false then
	 toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	 end
	 end)
	 
	 local Dungeonx = Tabs['Players']:AddRightTabbox()
	 local Dungeon = Dungeonx:AddTab('\\\\  Auto Dungeon  //')
	 Dungeonm = {"Flame","Ice","Quake","Light","Dark","String","Rumble","Magma","Human: Buddha","Sand","Bird: Phoenix","Dough"}
	 Dungeon:AddDropdown('Select_Dungeon', {
	 Values = Dungeonm,
	 Default = nil,
	 Multi = false,
	 Text = 'Select Dungeon',
	 }):OnChanged(function(value)
	 _G.Settings.Raids["Select Raids"] = value
	 end)
	 
	 Dungeon:AddToggle('Auto_Raids', {
	 Text = 'Auto Clear Dungeon',
	 Default = false,
	 }):OnChanged(function(value)
	 _G.Settings.Raids["Auto Raids"] = value
	 if value == false then
		 toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
	 end
	 end)
	 
	 Dungeon:AddToggle('Auto_Awakened', {
	 Text = 'Auto Awakened',
	 Default = false,
	 }):OnChanged(function(value)
	 _G.Settings.Raids["Auto Awakened"] = value
	 end)
	
	 Dungeon:AddToggle('Auto_Farm_Law_Dungeon', {
		Text = 'Auto Farm Law Dungeon',
		Default = false,
		}):OnChanged(function(value)
			_G.Settings.Raids["Auto Farm Law Dungeon"] = value
			if value == false then
					toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
			end
		end)
	
	
	 local Modifyx = Tabs['Players']:AddRightTabbox()
	 local Modify = Modifyx:AddTab('\\\\  Modify  //')
	 
	 Modify:AddToggle('Semi_Evolve_Race', {
	 Text = 'Semi Evolve Race',
	 Default = false,
	 }):OnChanged(function(value)
	 SemiEvolveRace = value
	 task.spawn(function()
	 while SemiEvolveRace do
	 wait(0.01)
	 local args = {
		[1] = "ActivateAbility"
	 }
	 
	 game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommE"):FireServer(unpack(args))
	 end
	 end)
	 end)
	
	
	 Modify:AddToggle('Semi_Nostun', {
	 Text = 'Semi Nostun',
	 Default = false,
	 }):OnChanged(function(value)
	 getgenv().Nostun=value
	 spawn(function()
	 while task.wait() do
	 pcall(function()
	 if getgenv().Nostun then
		game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("BodyVelocity"):Destroy()
	 end
	 end)
	 end
	 end)
	 end)
	 
	 Modify:AddToggle('Infinities_Energy', {
	 Text = 'Infinities Energy',
	 Default = false,
	 }):OnChanged(function(value)
	 _G.Settings.Misc["Infinities Energy"]=value
	 end)
	 Modify:AddToggle('Walk_On_Water', {
	 Text = 'Walk On Water',
	 Default = false,
	 }):OnChanged(function(value)
	 WalkOnWater=value
	 spawn(function()
	 while WalkOnWater do
	 wait(0.01)
	 if WalkOnWater then
		game:GetService("Workspace")["_WorldOrigin"]["Foam"].CanCollide = true
	 else
		game:GetService("Workspace")["_WorldOrigin"]["Foam"].CanCollide = false
	 
	 end
	 end
	 end)
	 end)
	 Modify:AddButton('Infinit Range Observation Haki', function()
	 ame.Players.LocalPlayer.VisionRadius.Value = math.huge
	 end)
	 local Espx = Tabs['Players']:AddRightTabbox()
	 local Espfff = Espx:AddTab('\\\\  Esp  //')
	 Espfff:AddToggle('Flower_Esp', {
	 Text = 'Flower Esp (World 2 Only)',
	 Default = false,
	 }):OnChanged(function(value)
	 _G.FlowerEsp = value
	 end)
	 Espfff:AddToggle('Demon_Fruit_Esp', {
	 Text = 'Demon Fruit Esp',
	 Default = false,
	 }):OnChanged(function(value)
	 _G.DFEsp = value
	 end)
	 Espfff:AddToggle('Island_Esp', {
	 Text = 'Island Esp',
	 Default = false,
	 }):OnChanged(function(value)
	 _G.IslandEsp = value
	 end)
	 Espfff:AddToggle('Chest_Esp', {
	 Text = 'Chest Esp',
	 Default = false,
	 }):OnChanged(function(value)
	 _G.ChestEsp = value
	 
	 end)
	 
	 local NoCooldown = Tabs['Players']:AddRightTabbox()
	 local NoCooldownx = NoCooldown:AddTab('\\\\  No Cooldown  //')
	 NoCooldownx:AddToggle('No_Dash_Cooldown', {
	 Text = 'No Dash Cooldown',
	 Default = false,
	 }):OnChanged(function(value)
	 _G.Settings.Misc["No Dash Cooldown"] = value
	 end)
	 NoCooldownx:AddToggle('No_Soru_Cooldown', {
	 Text = 'No Soru Cooldown',
	 Default = false,
	 }):OnChanged(function(value)
	 _G.Settings.Misc["No Soru Cooldown"] = value
	 end)
	 NoCooldownx:AddToggle('Infinities_Geppo', {
	 Text = 'Infinities Geppo',
	 Default = false,
	 }):OnChanged(function(value)
	 _G.Settings.Misc["Infinities Geppo"] = value
	 end)

	 local Worldtp = Tabs['Misceallaneous']:AddLeftTabbox()
	 local WorldTeleprot = Worldtp:AddTab('\\\\  World Teleprot  //')
	 
	 local Old = WorldTeleprot:AddButton('Teleport To Old World', function()
        L:Notify('Teleport To Old World', 2)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
        end)
        local Second = WorldTeleprot:AddButton('Teleport To Second Sea', function()
            L:Notify('Teleport To Second Sea', 2)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
        end)
        local Third = WorldTeleprot:AddButton('Teleport To Third Sea', function()
            L:Notify('Teleport To Third Sea', 2)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
        end)
	 local GenerateImgesx = Tabs['Misceallaneous']:AddLeftTabbox()
	 local GenerateImges = GenerateImgesx:AddTab('\\\\  Generate Imges  //')
	 
	 GenerateImges:AddButton('Generate', function()
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Mute.Visible = false
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Settings.Visible = false
		game:GetService("Players").LocalPlayer.PlayerGui.Main.HomeButton.Visible = false
		game:GetService("Players").LocalPlayer.PlayerGui.Main.CrewButton.Visible = false
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Code.Visible = false
		game:GetService("Players").LocalPlayer.PlayerGui.Main.AlliesButton.Visible = false
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Compass.Visible = false
		game:GetService("Players").LocalPlayer.PlayerGui.Main.MenuButton.Visible = false
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Energy.Visible = false
		game:GetService("Players").LocalPlayer.PlayerGui.Main.HP.Visible = false
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Level.Black.Visible = true
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Level.Bar.Visible = true
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Level.Exp.Visible = true
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli.Visible = false
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Fragments.Visible = false
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Level.Visible = false
	
	
		local args = {
			[1] = "AwakeningChanger",
			[2] = "Check"
		}
		
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		local args = {
			[1] = "getAwakenedAbilities"
		}
		
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		
		local Awake = game.Players.LocalPlayer.PlayerGui.Main.AwakeningToggler
		Awake.Visible = true
		Awake.Position = UDim2.new(0.5, 10, 0, 870)
		Awake.Info.TextLabel.Text = "Uria Hub Kaitun Picture"
	
		if not game:GetService("CoreGui"):FindFirstChild("CheckFruit") then
			local CheckFruit = Instance.new("ScreenGui")
			CheckFruit.Name = "CheckFruit"
			CheckFruit.Parent = game:GetService("CoreGui")
			CheckFruit.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
			
			game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.Visible = true
			wait(0.5)
			for _, Clone_1 in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.Container.Stored.ScrollingFrame:GetChildren()) do
				if Clone_1:IsA("Frame") then
					local Clone_Fruit = Clone_1:Clone()
					
					Clone_Fruit.Parent = CheckFruit
					Clone_Fruit.Position = UDim2.new(0,0.2,0,0)
					Clone_Fruit.Size = UDim2.new(0.2,0,0.1,0)
					
					Clone_Fruit.UIGridLayout.CellPadding = UDim2.new(0,0,0,5)
					Clone_Fruit.UIGridLayout.CellSize = UDim2.new(0.2,0,0.5,0)
				end
			end
			game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.Visible = false
		end
	
		if not game:GetService("CoreGui"):FindFirstChild("CheckSword") then
			local CheckFruit = Instance.new("ScreenGui")
			CheckFruit.Name = "CheckSword"
			CheckFruit.Parent = game:GetService("CoreGui")
			CheckFruit.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
			for _, Clone_2 in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame:GetChildren()) do
				if Clone_2:IsA("Frame") then
					local Clone_Sword = Clone_2:Clone()
					
					Clone_Sword.Parent = CheckFruit
					Clone_Sword.Position = UDim2.new(0.8,0,0,0)
					Clone_Sword.Size = UDim2.new(0.2,0,0.2,0)
				end
			end
		end
	
		local PositionX = 0.15
		local PositionX_2 = 0.25
		if not game:GetService("CoreGui"):FindFirstChild("CheckLevelMelee") then
			local CheckLevelFruit = Instance.new("ScreenGui")
			CheckLevelFruit.Name = "CheckLevelMelee"
			CheckLevelFruit.Parent = game:GetService("CoreGui")
			CheckLevelFruit.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
			for h, Clone_3 in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main:GetChildren()) do
				if Clone_3.Name == "Skills" then
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
						
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") then
							local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon")
							game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
							local player = game.Players.LocalPlayer
							local character = player.Character
							local backpack = player.Backpack
							local toolInstance = character:FindFirstChild(tool)
							
							if toolInstance then
								toolInstance.Parent = backpack
							end                        end
						
						wait(0.5)
				
						local Clone_Melee = Clone_3:Clone()
						
						Clone_Melee.Visible = true
						
						Clone_Melee.BackgroundTransparency = 1
						Clone_Melee.Parent = CheckLevelFruit
						Clone_Melee.Position = UDim2.new(0.4,0,PositionX-0.1,0)
						
						Clone_Melee["Dragon Talon"]:Destroy()
						Clone_Melee["Container"]:Destroy()
						
							PositionX = PositionX + 0.1   
	
							repeat task.wait()
							--("Dragon Talon")
							until game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon").Parent ==game.Players.LocalPlayer.Backpack
					end
					wait(0.1)
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman",true) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") then
							local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman")
							game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
							local player = game.Players.LocalPlayer
							local character = player.Character
							local backpack = player.Backpack
							local toolInstance = character:FindFirstChild(tool)
							
							if toolInstance then
								toolInstance.Parent = backpack
							end                        end
						
						wait(0.5)
				
						local Clone_Melee = Clone_3:Clone()
						
						Clone_Melee.Visible = true
						
						Clone_Melee.BackgroundTransparency = 1
						Clone_Melee.Parent = CheckLevelFruit
						Clone_Melee.Position = UDim2.new(0.3,0,PositionX,0)
						
						Clone_Melee["Superhuman"]:Destroy()
						Clone_Melee["Container"]:Destroy()
						
							PositionX = PositionX + 0.15
							repeat task.wait()
								--("Superhuman")
								until game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman").Parent ==game.Players.LocalPlayer.Backpack
							
					end
					wait(0.1)
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") then
							local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate")
							game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
							local player = game.Players.LocalPlayer
							local character = player.Character
							local backpack = player.Backpack
							local toolInstance = character:FindFirstChild(tool)
							
							if toolInstance then
								toolInstance.Parent = backpack
							end                        end
						
						wait(0.5)
				
						local Clone_Melee = Clone_3:Clone()
						
						Clone_Melee.Visible = true
						
						Clone_Melee.BackgroundTransparency = 1
						Clone_Melee.Parent = CheckLevelFruit
						Clone_Melee.Position = UDim2.new(0.3,0,PositionX,0)
						
						Clone_Melee["Sharkman Karate"]:Destroy()
						Clone_Melee["Container"]:Destroy()
						
							PositionX = PositionX + 0.15
							repeat task.wait()
								--("Sharkman Karate")
								until game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate").Parent ==game.Players.LocalPlayer.Backpack
							
					end
					wait(0.1)
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep",true) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") then
							local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step")
							game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
							local player = game.Players.LocalPlayer
							local character = player.Character
							local backpack = player.Backpack
							local toolInstance = character:FindFirstChild(tool)
							
							if toolInstance then
								toolInstance.Parent = backpack
							end                        end
						
						wait(0.5)
				
						local Clone_Melee = Clone_3:Clone()
						
						Clone_Melee.Visible = true
						
						Clone_Melee.BackgroundTransparency = 1
						Clone_Melee.Parent = CheckLevelFruit
						Clone_Melee.Position = UDim2.new(0.4,0, 0.55,0)
						
						Clone_Melee["Death Step"]:Destroy()
						Clone_Melee["Container"]:Destroy()
						
						PositionX = PositionX + 0.15
						repeat task.wait()
							--("Death Step")
							until game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step").Parent ==game.Players.LocalPlayer.Backpack
						
					end
					
					wait(0.1)
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Godhuman") then
							local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Godhuman")
							game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
							local player = game.Players.LocalPlayer
							local character = player.Character
							local backpack = player.Backpack
							local toolInstance = character:FindFirstChild(tool)
							
							if toolInstance then
								toolInstance.Parent = backpack
							end                        end
						
						wait(0.5)
				
						local Clone_Melee = Clone_3:Clone()
						
						Clone_Melee.Visible = true
						
						Clone_Melee.BackgroundTransparency = 1
						Clone_Melee.Parent = CheckLevelFruit
						Clone_Melee.Position = UDim2.new(0.5,0,0.25,0)
						
						Clone_Melee["Godhuman"]:Destroy()
						Clone_Melee["Container"]:Destroy()
						
						PositionX_2 = PositionX_2 + 0.15
						repeat task.wait()
							--("Godhuman")
							until game.Players.LocalPlayer.Backpack:FindFirstChild("Godhuman").Parent ==game.Players.LocalPlayer.Backpack
						
					end
					
					wait(0.1)
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true) then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") then
							local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw")
							game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
							local player = game.Players.LocalPlayer
							local character = player.Character
							local backpack = player.Backpack
							local toolInstance = character:FindFirstChild(tool)
							
							if toolInstance then
								toolInstance.Parent = backpack
							end                        end
						
						wait(0.5)
				
						local Clone_Melee = Clone_3:Clone()
						
						Clone_Melee.Visible = true
						
						Clone_Melee.BackgroundTransparency = 1
						Clone_Melee.Parent = CheckLevelFruit
						Clone_Melee.Position = UDim2.new(0.5,0,PositionX_2,0)
						
						Clone_Melee["Electric Claw"]:Destroy()
						Clone_Melee["Container"]:Destroy()
	
						PositionX_2 = PositionX_2 + 0.15
						repeat task.wait()
							--("Electric Claw")
							until game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw").Parent ==game.Players.LocalPlayer.Backpack
						
					end                    
				end
			end
		end
		if not game:GetService("CoreGui"):FindFirstChild("CheckMoney") then
			local CheckMoney = Instance.new("ScreenGui")
			CheckMoney.Name = "CheckMoney"
			CheckMoney.Parent = game:GetService("CoreGui")
			CheckMoney.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
			
			local Clone_Money = game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli:Clone()
			Clone_Money.Visible = true
			Clone_Money.Parent = CheckMoney
			Clone_Money.Position = UDim2.new(0,0,0.65,0)
	
			local Clone_Level = game:GetService("Players").LocalPlayer.PlayerGui.Main.Level:Clone()
			Clone_Level.Visible = true
			Clone_Level.Parent = CheckMoney
			Clone_Level.Position = UDim2.new(0,0,0.85,0)
			
			local Clone_Money3 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Fragments:Clone()
			Clone_Money3.Visible = true
			Clone_Money3.Parent = CheckMoney
			Clone_Money3.Position = UDim2.new(0,0,0.75,0)
			Clone_Money3.Text = game:GetService("Players").LocalPlayer.Name
			Clone_Money3.TextColor3 = Color3.fromRGB(255, 255, 255)
			
			local Clone_Money2 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Fragments:Clone()
			Clone_Money2.Visible = true
			Clone_Money2.Parent = CheckMoney
			Clone_Money2.Position = UDim2.new(0,0,0.55,0)
		end
	end)
	 
	GenerateImges:AddButton('Destroy Screen Kaitun', function()
		game.Players.LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = false
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Mute.Visible = true
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Settings.Visible = true
		game:GetService("Players").LocalPlayer.PlayerGui.Main.HomeButton.Visible = true
		game:GetService("Players").LocalPlayer.PlayerGui.Main.CrewButton.Visible = true
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Code.Visible = true
		game:GetService("Players").LocalPlayer.PlayerGui.Main.AlliesButton.Visible = true
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Compass.Visible = true
		game:GetService("Players").LocalPlayer.PlayerGui.Main.MenuButton.Visible = true
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Energy.Visible = true
		game:GetService("Players").LocalPlayer.PlayerGui.Main.HP.Visible = true
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Level.Black.Visible = true
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Level.Bar.Visible = true
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Level.Exp.Visible = true
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli.Visible = true
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Fragments.Visible = true
		game:GetService("Players").LocalPlayer.PlayerGui.Main.Level.Visible = true
	
		game.Players.LocalPlayer.PlayerGui.Main.AwakeningToggler.Position = UDim2.new(0.5, 10, 0, 870)
	
		if game:GetService("CoreGui"):FindFirstChild("CheckSword") then
		game:GetService("CoreGui"):FindFirstChild("CheckSword"):Destroy()
		end
		if game:GetService("CoreGui"):FindFirstChild("CheckFruit") then
		game:GetService("CoreGui"):FindFirstChild("CheckFruit"):Destroy()
		end
		if game:GetService("CoreGui"):FindFirstChild("CheckLevelMelee") then
		game:GetService("CoreGui"):FindFirstChild("CheckLevelMelee"):Destroy()
		end
		if game:GetService("CoreGui"):FindFirstChild("CheckMoney") then
		game:GetService("CoreGui"):FindFirstChild("CheckMoney"):Destroy()
		end
		if game:GetService("CoreGui"):FindFirstChild("Shoplogo") then
		game:GetService("CoreGui"):FindFirstChild("Shoplogo"):Destroy()
		end
	end)
	 
	 local Dungeonxd = Tabs['Misceallaneous']:AddLeftTabbox()
	 local Dungeonxe = Dungeonxd:AddTab('\\\\  Raid  //')
	 
	 Dungeonxe:AddButton('Buy Chip', function()
	 local args = {
		[1] = "getInventory"
	 }
	 
	 game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
	 end)

	 Dungeonxe:AddButton('Start Raid', function()
		if World2 then
			fireclickdetector(Workspace.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
		 elseif World3 then
			fireclickdetector(Workspace.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
		 end
		end)
	 
	 local DevilFruitsx = Tabs['Misceallaneous']:AddLeftTabbox()
	 local DevilFruits = DevilFruitsx:AddTab('\\\\  Devil Fruit  //')
	
	 local Remote_GetFruits = game.ReplicatedStorage:FindFirstChild("Remotes").CommF_:InvokeServer("GetFruits");
	
	 Table_DevilFruitSniper = {}
	 ShopDevilSell = {}
	 
	 for i,v in next,Remote_GetFruits do
		 table.insert(Table_DevilFruitSniper,v.Name)
		 if v.OnSale then 
			 table.insert(ShopDevilSell,v.Name)
		 end
	 end
	
	 DevilFruits:AddDropdown('Select_Devil_Fruits', {
		Values = Table_DevilFruitSniper,
		Default = {},
		Multi = false,
		Text = 'Select Devil Fruits',
	 }):OnChanged(function(value)
		_G.Settings.Devil_Fruit["Select Devil Fruits"] = value
	 end)
	
	 DevilFruits:AddDropdown('Select_Bring_Fruit_Type', {
		Values = {"Bring", "Tween"},
		Default = "Bring",
		Multi = false,
		Text = 'Select Bring Fruit Type',
	 }):OnChanged(function(value)
		_G.Settings.Devil_Fruit["Bring Fruit Type"] = value
	 end)
	
	 DevilFruits:AddToggle('Bring_Fruit', {
		Text = 'Auto Bring Fruit',
		Default = false,
	 }):OnChanged(function(value)
		_G.Settings.Devil_Fruit["Bring Fruit"] = value
	 end)
	 DevilFruits:AddToggle('Auto_Buy_Random_Fruits', {
		Text = 'Auto Buy Random Fruits',
		Default = false,
	 }):OnChanged(function(value)
		_G.Settings.Devil_Fruit["Auto Buy Random Fruits"] = value
	end)
	 DevilFruits:AddToggle('Auto_Buy_Devil_Fruits_Sniper', {
		Text = 'Auto Buy Devil Fruits Sniper',
		Default = false,
	 }):OnChanged(function(value)
		_G.Settings.Devil_Fruit["Auto Buy Devil Fruits Sniper"] = value
	end)
	DevilFruits:AddToggle('Auto_Store_Fruits', {
		Text = 'Auto Store Fruits',
		Default = false,
	 }):OnChanged(function(value)
		_G.Settings.Devil_Fruit["Auto Store Fruits"] = value
		Storr = value
	end)
	
		DevilFruits:AddButton('Random Fruits', function()
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
			end)
		local FpsnLocker = Tabs['Misceallaneous']:AddRightTabbox()
		local FpsUnLocker = FpsnLocker:AddTab('\\\\  Fps UnLocker  //')
		FpsUnLocker:AddSlider('Fps_Limit', {
			Text = 'Fps Limit',
			Default = 350,
			Min = 5,
			Max = 1000000,
			Rounding = 1,
			Compact = false,
			Callback = function(Value)
				_G.Settings.HUD["FPS"] = Value
			end
			})
			FpsUnLocker:AddToggle('Unlock_Fps', {
				Text = 'Unlock Fps',
				Default = true,
			 }):OnChanged(function(value)
				_G.Settings.HUD["LockFPS"] = value
				if _G.Settings.HUD["LockFPS"] == true then
					setfpscap(_G.Settings.HUD["FPS"])
				else
					setfpscap(120)
				end
			end)
			local Notificationvx = Tabs['Misceallaneous']:AddRightTabbox()
			local Notificationv = Notificationvx:AddTab('\\\\  Notification Logs  //')
			local WebHookLog = {}
	
			local AllRequest = http_request or request or HttpPost or syn.request
			function WebHookLog:WebHookKaiTanSend(WebHookUrl)
			
				function GetFightingStyle(Style)
					ReturnText = ""
					for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if v:IsA("Tool") then
							if v.ToolTip == Style then
								ReturnText = v.Name
							end
						end
					end
					for i ,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
						if v:IsA("Tool") then
							if v.ToolTip == Style then
								ReturnText = v.Name
							end
						end
					end
					if ReturnText ~= "" then
						return ReturnText
					else
						return "Not Have"
					end
				end
			
				function GetAwaken()
					ReturnText = ""
					Awakened_Z = ":x:"
					Awakened_X = ":x:"
					Awakened_C = ":x:"
					Awakened_V = ":x:"
					Awakened_F = ":x:"
					for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if v:IsA("Tool") then
							if v.ToolTip == "Blox Fruit" then
								if v:FindFirstChild("AwakenedMoves") then
									if v.AwakenedMoves:FindFirstChild("Z") then
										Awakened_Z = ":white_check_mark:"
									end
									if v.AwakenedMoves:FindFirstChild("X") then
										Awakened_X = ":white_check_mark:"
									end
									if v.AwakenedMoves:FindFirstChild("C") then
										Awakened_C = ":white_check_mark:"
									end
									if v.AwakenedMoves:FindFirstChild("V") then
										Awakened_V = ":white_check_mark:"
									end
									if v.AwakenedMoves:FindFirstChild("F") then
										Awakened_F = ":white_check_mark:"
									end
									ReturnText = ":regional_indicator_z:"..Awakened_Z..
										"\n"..":regional_indicator_x:"..Awakened_X..
										"\n"..":regional_indicator_c:"..Awakened_C..
										"\n"..":regional_indicator_v:"..Awakened_V..
										"\n"..":regional_indicator_f:"..Awakened_F
								else
									ReturnText = "This Fruit Can't Awakened"
								end
							end
						end
					end
					for i ,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
						if v:IsA("Tool") then
							if v.ToolTip == "Blox Fruit" then
								if v:FindFirstChild("AwakenedMoves") then
									if v.AwakenedMoves:FindFirstChild("Z") then
										Awakened_Z = ":white_check_mark:"
									end
									if v.AwakenedMoves:FindFirstChild("X") then
										Awakened_X = ":white_check_mark:"
									end
									if v.AwakenedMoves:FindFirstChild("C") then
										Awakened_C = ":white_check_mark:"
									end
									if v.AwakenedMoves:FindFirstChild("V") then
										Awakened_V = ":white_check_mark:"
									end
									if v.AwakenedMoves:FindFirstChild("F") then
										Awakened_F = ":white_check_mark:"
									end
									ReturnText = ":regional_indicator_z:"..Awakened_Z..
										"\n"..":regional_indicator_x:"..Awakened_X..
										"\n"..":regional_indicator_c:"..Awakened_C..
										"\n"..":regional_indicator_v:"..Awakened_V..
										"\n"..":regional_indicator_f:"..Awakened_F
								else
									ReturnText = "This Fruit Can't Awakened"
								end
							end
						end
					end
					if ReturnText ~= "" then
						return ReturnText
					else
						return "Not Have"
					end
				end
			
				function GetWeapon(Rare)
					if Rare == "Common" then
						RareNumber = 0
					elseif Rare == "Uncommon" then
						RareNumber = 1
					elseif Rare == "Rare" then
						RareNumber = 2
					elseif Rare == "Legendary" then
						RareNumber = 3
					elseif Rare == "Mythical" then
						RareNumber = 4
					else
						return "Worng InPut"
					end
					local ReturnText = ""
					for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryWeapons")) do
						if type(v) == "table" then
							if v.Rarity then
								if tonumber(v.Rarity) == RareNumber then
									ReturnText = ReturnText .. v.Name .. "\n"
								end
							end
						end
					end
					if ReturnText ~= "" then
						return ReturnText
					else
						return "Not Have"
					end
				end
			
				function GetFruitInU()
					local ReturnText = ""
					for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryFruits")) do
						if type(v) == "table" then
							if v ~= nil then
								ReturnText = ReturnText .. v.Name .. " : " .. v.Price .. "\n"
							end
						end
					end
			
					if ReturnText ~= "" then
						return ReturnText
					else
						return "Not Have"
					end
				end
			
				function GetAllMelee()
					BuyDragonTalon = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true))
					if BuyDragonTalon then
						if BuyDragonTalon == 1 then
							TalComplete = true
						end
					end
					BuySuperhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman",true))
					if BuySuperhuman then
						if BuySuperhuman == 1 then
							SupComplete = true
						end
					end
					BuySharkmanKarate = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true))
					if BuySharkmanKarate then
						if BuySharkmanKarate == 1 then
							SharkComplete = true
						end
					end
					BuyDeathStep = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep",true))
					if BuyDeathStep then
						if BuyDeathStep == 1 then
							DeathComplete = true
						end
					end
					BuyElectricClaw = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true))
					if BuyElectricClaw then
						if BuyElectricClaw == 1 then
							EClawComplete = true
						end
					end
					BuyGod = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true))
					if BuyGod then
						if BuyGod == 1 then
							GodComplete = true
						end
					end
					ReturnText = {}
					if SupComplete == true then
						table.insert(ReturnText,"SuperHuman")
					end
					if EClawComplete == true then
						table.insert(ReturnText,"Electric Claw")
					end
					if TalComplete == true then
						table.insert(ReturnText,"Dragon Talon")
					end
					if SharkComplete == true then
						table.insert(ReturnText,"Sharkman Karate")
					end
					if DeathComplete == true then
						table.insert(ReturnText,"Death Step")
					end
					if GodComplete == true then
						table.insert(ReturnText,"God Human")
					end
			
					if #ReturnText ~= 0 then
						return table.concat(ReturnText,",")
					else
						return "Not Have"
					end
				end
			
				local Embeds = {{
					["title"] = "**Uria Webhooks Status**",
					["color"] = tonumber(0xD936FF),
					["fields"] = {
						{
							["name"] = "User Name",
							["value"] = "||"..tostring(game.Players.LocalPlayer.Name).."||",
							["inline"] = true
						},
						{
							["name"] = "Level",
							["value"] = tostring(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Level").Value),
							["inline"] = true
						},
						{
							["name"] = "Fragments",
							["value"] = tostring(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Fragments").Value),
							["inline"] = true
						},
						{
							["name"] = "Bounty/Honor",
							["value"] = tostring(game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value),
							["inline"] = true
						},
						{
							["name"] = "Beli",
							["value"] = tostring(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Beli").Value),
							["inline"] = true
						},
						{
							["name"] = "Fighting Style",
							["value"] = GetFightingStyle("Melee"),
							["inline"] = true
						},
						{
							["name"] = "Sword",
							["value"] = GetFightingStyle("Sword"),
							["inline"] = true
						},
						{
							["name"] = "Devil Fruit",
							["value"] = GetFightingStyle("Blox Fruit"),
							["inline"] = true
						},
						{
							["name"] = "Gun",
							["value"] = GetFightingStyle("Gun"),
							["inline"] = true
						},
						{
							["name"] = "Accessory",
							["value"] = GetFightingStyle("Wear"),
							["inline"] = true
						},
						{
							["name"] = "Race",
							["value"] = tostring(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Race").Value),
							["inline"] = true
						},
						{
							["name"] = "Awakened",
							["value"] = tostring(GetAwaken()),
							["inline"] = true
						},
						{
							["name"] = "Status",
							["value"] = "```sml\n"..tostring("Melee : "..game:GetService("Players").LocalPlayer.Data.Stats.Melee:WaitForChild("Level").Value .. 
								"\nDefense : "..game:GetService("Players").LocalPlayer.Data.Stats.Defense:WaitForChild("Level").Value .. 
								"\nSword : "..game:GetService("Players").LocalPlayer.Data.Stats.Sword:WaitForChild("Level").Value.. 
								"\nGun : "..game:GetService("Players").LocalPlayer.Data.Stats.Gun:WaitForChild("Level").Value .. 
								"\nDevil Fruit : "..game:GetService("Players").LocalPlayer.Data.Stats["Demon Fruit"]:WaitForChild("Level").Value).."```",
							["inline"] = true
						},
						{
							["name"] = "Common :blue_circle:",
							["value"] = "```sml\n"..tostring(GetWeapon("Common")).."```",
							["inline"] = true
						},
						{
							["name"] = "Uncommon :green_circle:",
							["value"] = "```sml\n"..tostring(GetWeapon("Uncommon")).."```",
							["inline"] = true
						},
						{
							["name"] = "Rare :yellow_circle:",
							["value"] = "```sml\n"..tostring(GetWeapon("Rare")).."```",
							["inline"] = true
						},
						{
							["name"] = "Legendary :purple_circle:",
							["value"] = "```sml\n"..tostring(GetWeapon("Legendary")).."```",
							["inline"] = true
						},
						{
							["name"] = "Mythical :red_circle:",
							["value"] = "```sml\n"..tostring(GetWeapon("Mythical")).."```",
							["inline"] = true
						},
						{
							["name"] = "Fruit In Inventory",
							["value"] = "```sml\n"..tostring(GetFruitInU()).."```",
							["inline"] = true
						},
						{
							["name"] = "All Melee",
							["value"] = "```sml\n"..tostring(GetAllMelee()).."```",
							["inline"] = true
						}},
					["footer"] = {
						["text"] = "Made by T...#9599".."\nTime".." : "..os.date("%c").." ("..os.date("%X")..")",
						["icon_url"] = "https://images-ext-1.discordapp.net/external/HJVOSFvdh4-XH667K_VbrYWQofDzu1EbUfRYpsrRT2A/%3Fsize%3D4096/https/cdn.discordapp.com/avatars/1002583645636284506/3bfcd36c029f0f122d63f75c4741159b.png?width=676&height=676"
					},
				}}
			
				local Message
				if SendWebHookPing then
					Message = {
						['username'] = "Uria Webhook",
						["avatar_url"] = "https://images-ext-1.discordapp.net/external/HJVOSFvdh4-XH667K_VbrYWQofDzu1EbUfRYpsrRT2A/%3Fsize%3D4096/https/cdn.discordapp.com/avatars/1002583645636284506/3bfcd36c029f0f122d63f75c4741159b.png?width=676&height=676",
						["content"] = "@everyone",
						["embeds"] = Embeds,
					}
				else
					Message = {
						['username'] = "Uria Webhook",
						["avatar_url"] = "https://images-ext-1.discordapp.net/external/HJVOSFvdh4-XH667K_VbrYWQofDzu1EbUfRYpsrRT2A/%3Fsize%3D4096/https/cdn.discordapp.com/avatars/1002583645636284506/3bfcd36c029f0f122d63f75c4741159b.png?width=676&height=676",
						["embeds"] = Embeds,
					}
				end
			
				local DataCallBack = AllRequest({
					Url = WebHookUrl,
					Method = 'POST',
					Headers = {
						["Content-Type"] = "application/json"
					},
					Body = game:GetService("HttpService"):JSONEncode(Message)
				})
				return DataCallBack
			end
			
			function WebHookLog:SheetBestLogSend(SheetBestUrl)
			
				function GetFightingStyle(Style)
					ReturnText = ""
					for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if v:IsA("Tool") then
							if v.ToolTip == Style then
								ReturnText = v.Name
							end
						end
					end
					for i ,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
						if v:IsA("Tool") then
							if v.ToolTip == Style then
								ReturnText = v.Name
							end
						end
					end
					if ReturnText ~= "" then
						return ReturnText
					else
						return "Not Have"
					end
				end
			
				function GetAllMelee()
					BuyDragonTalon = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true))
					if BuyDragonTalon then
						if BuyDragonTalon == 1 then
							TalComplete = true
						end
					end
					BuySuperhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman",true))
					if BuySuperhuman then
						if BuySuperhuman == 1 then
							SupComplete = true
						end
					end
					BuySharkmanKarate = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true))
					if BuySharkmanKarate then
						if BuySharkmanKarate == 1 then
							SharkComplete = true
						end
					end
					BuyDeathStep = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep",true))
					if BuyDeathStep then
						if BuyDeathStep == 1 then
							DeathComplete = true
						end
					end
					BuyElectricClaw = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true))
					if BuyElectricClaw then
						if BuyElectricClaw == 1 then
							EClawComplete = true
						end
					end
					BuyGod = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true))
					if BuyGod then
						if BuyGod == 1 then
							GodComplete = true
						end
					end
					ReturnText = {}
					if SupComplete == true then
						table.insert(ReturnText,"SuperHuman")
					end
					if EClawComplete == true then
						table.insert(ReturnText,"Electric Claw")
					end
					if TalComplete == true then
						table.insert(ReturnText,"Dragon Talon")
					end
					if SharkComplete == true then
						table.insert(ReturnText,"Sharkman Karate")
					end
					if DeathComplete == true then
						table.insert(ReturnText,"Death Step")
					end
					if GodComplete == true then
						table.insert(ReturnText,"God Human")
					end
			
					if #ReturnText ~= 0 then
						return table.concat(ReturnText,",")
					else
						return "Not Have"
					end
				end
			
				function GetAwaken()
					ReturnText = ""
					Awakened_Z = "?"
					Awakened_X = "?"
					Awakened_C = "?"
					Awakened_V = "?"
					Awakened_F = "?"
					for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if v:IsA("Tool") then
							if v.ToolTip == "Blox Fruit" then
								if v:FindFirstChild("AwakenedMoves") then
									if v.AwakenedMoves:FindFirstChild("Z") then
										Awakened_Z = "Z"
									end
									if v.AwakenedMoves:FindFirstChild("X") then
										Awakened_X = "X"
									end
									if v.AwakenedMoves:FindFirstChild("C") then
										Awakened_C = "C"
									end
									if v.AwakenedMoves:FindFirstChild("V") then
										Awakened_V = "V"
									end
									if v.AwakenedMoves:FindFirstChild("F") then
										Awakened_F = "F"
									end
									ReturnText = Awakened_Z..
										" : "..Awakened_X..
										" : "..Awakened_C..
										" : "..Awakened_V..
										" : "..Awakened_F
								else
									ReturnText = "This Fruit Can't Awakened"
								end
							end
						end
					end
					for i ,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
						if v:IsA("Tool") then
							if v.ToolTip == "Blox Fruit" then
								if v:FindFirstChild("AwakenedMoves") then
									if v.AwakenedMoves:FindFirstChild("Z") then
										Awakened_Z = ":white_check_mark:"
									end
									if v.AwakenedMoves:FindFirstChild("X") then
										Awakened_X = ":white_check_mark:"
									end
									if v.AwakenedMoves:FindFirstChild("C") then
										Awakened_C = ":white_check_mark:"
									end
									if v.AwakenedMoves:FindFirstChild("V") then
										Awakened_V = ":white_check_mark:"
									end
									if v.AwakenedMoves:FindFirstChild("F") then
										Awakened_F = ":white_check_mark:"
									end
									ReturnText = ":regional_indicator_z:"..Awakened_Z..
										" : "..":regional_indicator_x:"..Awakened_X..
										" : "..":regional_indicator_c:"..Awakened_C..
										" : "..":regional_indicator_v:"..Awakened_V..
										" : "..":regional_indicator_f:"..Awakened_F
								else
									ReturnText = "This Fruit Can't Awakened"
								end
							end
						end
					end
					if ReturnText ~= "" then
						return ReturnText
					else
						return "Not Have"
					end
				end
			
				function GetWeapon()
					local ReturnText = ""
					for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryWeapons")) do
						if type(v) == "table" then
							if v.Name then
								ReturnText = ReturnText .. v.Name .. " "
							end
						end
					end
					if ReturnText ~= "" then
						return ReturnText
					else
						return "Not Have"
					end
				end
			
				function GetFruitInU()
					local ReturnText = ""
					for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryFruits")) do
						if type(v) == "table" then
							if v ~= nil then
								ReturnText = ReturnText .. v.Name .. " "
							end
						end
					end
			
					if ReturnText ~= "" then
						return ReturnText
					else
						return "Not Have"
					end
				end
			
				function GetWeaponMastery(Style)
					ReturnText = ""
					for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if v:IsA("Tool") then
							if v.ToolTip == Style then
								ReturnText = v:FindFirstChild("Level").Value
							end
						end
					end
					for i ,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
						if v:IsA("Tool") then
							if v.ToolTip == Style then
								ReturnText = v:FindFirstChild("Level").Value
							end
						end
					end
					if ReturnText ~= "" then
						return ReturnText
					else
						return "Not Have"
					end
				end
			
				function Abbreviate(x)
					local abbreviations = {
						"K", -- 4 digits
						"M", -- 7 digits
						"B", -- 10 digits
						"T", -- 13 digits
						"QD", -- 16 digits
						"QT", -- 19 digits
						"SXT", -- 22 digits
						"SEPT", -- 25 digits
						"OCT", -- 28 digits
						"NON", -- 31 digits
						"DEC", -- 34 digits
						"UDEC", -- 37 digits
						"DDEC", -- 40 digits
					}
					if x < 1000 then 
						return tostring(x)
					end
			
					local digits = math.floor(math.log10(x)) + 1
					local index = math.min(#abbreviations, math.floor((digits - 1) / 3))
					local front = x / math.pow(10, index * 3)
			
					return string.format("%i%s+", front, abbreviations[index])
				end
			
				local Message
				Message = {
					["UserName"] = tostring(game.Players.LocalPlayer.Name),
					["Level"] = tostring(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Level").Value),
					["Weapon inventory"] = tostring(GetWeapon()),
					["Fruit inventory"] = tostring(GetFruitInU()),
					["Melee"] = tostring(GetAllMelee()),
					["Fruit"] = tostring(GetFightingStyle("Blox Fruit")),
					["Fruit Mastery"] = tostring(GetWeaponMastery("Blox Fruit")),
					["Fruit Awake"] = tostring(GetAwaken()),
					["Beli"] = tostring(Abbreviate(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Beli").Value)),
					["Fragment"] = tostring(Abbreviate(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Fragments").Value)),
					["Race"] = tostring(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Race").Value)
				}
			
				local DataCallBack = AllRequest({
					Url = SheetBestUrl,
					Method = 'POST',
					Headers = {
						["Content-Type"] = "application/json"
					},
					Body = game:GetService("HttpService"):JSONEncode(Message)
				})
				return DataCallBack
			end
		
			Notificationv:AddInput('Webhook_Link', {
				Text = 'Webhook Link',
				Callback = function(Value)
					Webhooklink = Value
				end
			})
			Notificationv:AddToggle('Mention_Ping_Everyone', {
				Text = 'Mention Ping @everyone"',
				Default = false,
			 }):OnChanged(function(value)
				SendWebHookPing = value
			end)
			Notificationv:AddToggle('Send_if_Level_Max_On_Sea', {
				Text = 'Send if Level Max On Sea',
				Default = false,
			 }):OnChanged(function(value)
				SendEveryLevel = value
			end)
			Notificationv:AddToggle('Send_if_Level_Max', {
				Text = 'Send if Level Max',
				Default = false,
			 }):OnChanged(function(value)
				SendWebhookMax = value
			end)

				Notificationv:AddButton('Send Webhook', function()
					WebHookLog:WebHookKaiTanSend(Webhooklink)
					end)
			Notificationv:AddInput('Base_Sheet_Link', {
				Text = 'Base Sheet Link',
				Callback = function(Value)
					Baselink = Value
				end
			})
			Notificationv:AddToggle('Send_BaseSheet_if_Level_Max', {
				Text = 'Send BaseSheet if Level Max',
				Default = false,
			 }):OnChanged(function(value)
				SendBaseSheetMax = value
			end)
	
				local LockSettingx = Tabs['Misceallaneous']:AddRightTabbox()
				local LockSetting = LockSettingx:AddTab('\\\\  Lock Setting  //')
		
				LockSetting:AddInput('Level_Lock', {
					Text = 'Level Lock',
					Callback = function(Value)
						_G.Settings.Lock["Level Lock"] = Value
					end
				})
				LockSetting:AddToggle('Auto_Lock_Level', {
					Text = 'Auto Lock Level',
					Default = false,
				 }):OnChanged(function(value)
					_G.Settings.Lock['Auto Lock Level'] = value
				end)
				LockSetting:AddInput('Beli_Lock', {
					Text = 'Beli Lock',
					Callback = function(Value)
						_G.Settings.Lock["Beli Lock"] = Value
					end
				})
				LockSetting:AddToggle('Auto_Lock_Beli', {
					Text = 'Auto Lock Beli',
					Default = false,
				 }):OnChanged(function(Value)
					_G.Settings.Lock['Auto Lock Beli'] = Value
				end)
			
				task.spawn(function()
					pcall(function()
						 if SendEveryLevel then
							if World1 and Level >= 699 then
								WebHookLog:WebHookKaiTanSend(Webhooklink)
							elseif World2 and Level >= 1499 then
								WebHookLog:WebHookKaiTanSend(Webhooklink)
							elseif World3 and Level >= 2449 then
								WebHookLog:WebHookKaiTanSend(Webhooklink)		                
							end
						 end
					end)
				end)
				
				task.spawn(function()
					pcall(function()
						 if SendWebhookMax then
							if Level == 2450 then
								WebHookLog:WebHookKaiTanSend(Webhooklink)		                
							end
						 end
					end)
				end)
				
				task.spawn(function()
					pcall(function()
						 if SendBaseSheetMax then
							if Level == 2450 then
								WebHookLog:SheetBestLogSend(Baselink)	                
							end
						 end
					end)
				end)
	

				local vyx = Tabs['My']:AddLeftTabbox()
				local vy = vyx:AddTab('\\\\  Menu  //')
				local myx = Tabs['My']:AddRightTabbox()
				local my = myx:AddTab('\\\\  Config  //')
				local oyx = Tabs['My']:AddLeftTabbox()
				local oy = oyx:AddTab('\\\\  Auto Load  //')
				local Gyx = Tabs['My']:AddRightTabbox()
				local Gy = Gyx:AddTab('\\\\  Misc  //')
				local Creditsg = Tabs['My']:AddLeftTabbox()
				local Credits = Creditsg:AddTab('\\\\  Credits  //')
					local function addRichText(label)
						label.TextLabel.RichText = true
					end
					addRichText(Credits:AddLabel('<font color="#de6cff">Ammiria</font> - Main Dev'))
					addRichText(Credits:AddLabel('<font color="#3da5ff">alextheimmortal</font> - Contributor'))
					addRichText(Credits:AddLabel('<font color="#00E4FF">Linoria</font> - Ui Library'))
					addRichText(Credits:AddLabel('<font color="#F700FF">Ui Library Edit By</font> - Ammiria'))
					local Servergroubx = Tabs['My']:AddRightTabbox()
					local Servergroub = Servergroubx:AddTab('\\\\  Server  //')
					Servergroub:AddButton("Rejoin",function()
						game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").localPlayer)
					end);
					Servergroub:AddButton("Server Hop",function()
						Fast_Hop()			
							end);

					Servergroub:AddInput('jobs',{ 
					Text = 'Jobid' }):OnChanged(function(x)
					   jobs = x
					end)
					Servergroub:AddButton("Coppy Job id",function()
						setclipboard(tostring(game.JobId))
							end);
							Servergroub:AddButton("Join Jobid",function()
								game.ReplicatedStorage['__ServerBrowser']:InvokeServer('teleport',jobs,game.Players.LocalPlayer)
							end);
				vy:AddLabel("Background Color"):AddColorPicker("SettingsMenuBackgroundColor",{Default=A.BackgroundColor});
				vy:AddLabel("Main Color"):AddColorPicker("SettingsMenuMainColor",{Default=A.MainColor});
				vy:AddLabel("Accent Color"):AddColorPicker("SettingsMenuAccentColor",{Default=A.AccentColor});
				vy:AddLabel("Inline Color"):AddColorPicker("SettingsMenuInlineColor",{Default=A.InlineColor});
				vy:AddLabel("Outline Color"):AddColorPicker("SettingsMenuOutlineColor",{Default=A.OutlineColor});
				vy:AddLabel("Font Color"):AddColorPicker("SettingsMenuFontColor",{Default=A.FontColor});
				vy:AddButton("Default Theme",SetDefault);
				vy:AddToggle("SettingsMenuKeybinds",{Text="Show Keybinds Menu"}):OnChanged(function(a)
					A.KeybindFrame.Visible=a;
				end);
				vy:AddToggle("SettingsMenuWatermark",{Text="Show Watermark",Default=true}):OnChanged(function(a)
					A:SetWatermarkVisibility(a);
				end);
				
				vy:AddButton("Unload",function()
					A:Unload();
				end);
				vy:AddLabel('Menu toggle'):AddKeyPicker('MenuToggle', { Default = 'Delete', NoUI = true })

				
				my:AddInput("SettingsConfigName",{Text="Config Name",Default="",Placeholder="Name"});
				my:AddButton("Create Config",function()
					CreateConfig(L.SettingsConfigName.Value);
				end);
				my:AddDropdown("SettingsConfigConfigs",{Text="Configs",Default=1,Values=GetConfigNames()});
				my:AddButton("Load Config",function()
					s.Load.AutoLoad.LastUsedConfig=L.SettingsConfigConfigs.Value;
					LoadConfig(GetConfigByName(L.SettingsConfigConfigs.Value));
					A:Notify(("Config \"%s\" Has Been Loaded."):format(L.SettingsConfigConfigs.Value));
				end);
				my:AddButton("Save Config",function()
					SaveConfig(L.SettingsConfigConfigs.Value);
				end);
				my:AddButton("Delete Config",function()
					DeleteConfig(L.SettingsConfigConfigs.Value,true);
				end);
				my:AddInput("SettingsConfigData",{Text="Config Data",Default="",Placeholder="Data"});
				my:AddButton("Export Data",ExportData);
				my:AddButton("Import Data",ImportData);
				oy:AddToggle("SettingsAutoLoadEnabled",{Text="Enabled",Default=true}):OnChanged(function(a)
					s.Load.AutoLoad.Enabled=a;
				end);
				
				oy:AddToggle("SettingsAutoLoadRage",{Text="Rage Settings"}):OnChanged(function(a)
					s.Load.AutoLoad.RageSettings=a;
				end);
				
				oy:AddToggle("SettingsAutoLoadSilent",{Text="Silent Load"}):OnChanged(function(a)
					s.Load.AutoLoad.SilentLoad=a;
				end);
				
				oy:AddDropdown("SettingsAutoLoadType",{Text="Type",Default=2,Values={"Last Used Config","Last Config","Custom Config"}}):OnChanged(function(a)
					s.Load.AutoLoad.AutoLoadType=a;
				end);
				
				oy:AddDropdown("SettingsAutoLoadConfig",{Text="Custom Config",Default=1,Values=GetConfigNames()}):OnChanged(function(a)
					s.Load.AutoLoad.CustomConfig=a;
				end);
				
				Gy:AddToggle("SettingsMiscNotifications",{Text="Show Notifications",Default=true}):OnChanged(function(a)
					A.NotificationArea.Visible=a;
				end);
				Gy:AddButton("Reset All Settings",ResetSettings);
				SetDefault();
				L.SettingsMenuBackgroundColor:OnChanged(UpdateTheme);
				L.SettingsMenuMainColor:OnChanged(UpdateTheme);
				L.SettingsMenuAccentColor:OnChanged(UpdateTheme);
				L.SettingsMenuInlineColor:OnChanged(UpdateTheme);
				L.SettingsMenuOutlineColor:OnChanged(UpdateTheme);
				L.SettingsMenuFontColor:OnChanged(UpdateTheme);
				A.SaveManager:Load();
				task.spawn(function()
					while wait(0) do 
						A.SaveManager:SaveFile();
					end;
				end);
				
				_G.Current_Time="N/A";
				A:SetWatermark(("Uria Hubs | %s"):format(_G.Current_Time));
				task.spawn(function()
					while true do wait();
						pcall(function()
							local a=math.floor(workspace.DistributedGameTime);
							local bR=math.floor(workspace.DistributedGameTime/60);
							local rR=math.floor(workspace.DistributedGameTime/60/60);
							local a=a-(bR*60);local bR=bR-(rR*60);
							if rR<1 then 
								if bR<1 then 
									_G.Current_Time=a.." Second(s)";
								else _G.Current_Time=bR.." Minute(s), "..a.." Second(s)";
								end;
							else _G.Current_Time=rR.." Hour(s), "..bR.." Minute(s), "..a.." Second(s)";
							end;
							A:SetWatermark(("Uria Hubs | %s"):format(_G.Current_Time));
						end);
					end;
				end);
				
				A:Notify("User Interface Finished Loading.");
				local Ey=math.floor(((tick()-s.Tick)*1000)*10)/10;
				A:Notify(("Loading Time : %sms."):format(Ey));
	 task.spawn(function()
		while wait() do
			pcall(function()
				if _G.Settings.Main["Mob Aura"] then
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
							if (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= tonumber(_G.Settings.Main["Distance Mob Aura"]) then
								repeat wait()
									StartMagnet = true
									Fast = true
									if _G.Settings.Configs["Auto Haki"] then
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
										end
									end
									if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
										wait()
										EquipWeapon(_G.Settings.Configs["Select Weapon"])
									end
									PosMon = v.HumanoidRootPart.CFrame
									if not _G.Settings.Configs["Fast Attack"] then
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									end
									if _G.Settings.Configs["Show Hitbox"] then
										v.HumanoidRootPart.Transparency = tonumber(_G.Hitbox_LocalTransparency)
									else
										v.HumanoidRootPart.Transparency = 1
									end
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid:ChangeState(11)
									toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
								until not _G.Settings.Main["Mob Aura"] or not v.Parent or v.Humanoid.Health <= 0
								Fast = false
								StartMagnet = false
							end
						end
					end
				end
			end)
		end
	end)
	
		task.spawn(function()
			while wait() do
				pcall(function()
					if _G.Settings.Main["Auto New World"] then
						if game.Players.LocalPlayer.Data.Level.Value >= 700 then
							if Auto_Farm_Level then
								_G.Settings.Main["Auto Farm Level"] = false
							end
							if game.Workspace.Map.Ice.Door.CanCollide == true and game.Workspace.Map.Ice.Door.Transparency == 0 then
								wait(.5)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
								EquipWeapon("Key")
								repeat wait() toTarget(CFrame.new(1347.7124, 37.3751602, -1325.6488)) until (CFrame.new(1347.7124, 37.3751602, -1325.6488).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Settings.Main["Auto New World"]
								wait(3)
							elseif game.Workspace.Map.Ice.Door.CanCollide == false and game.Workspace.Map.Ice.Door.Transparency == 1 then
								if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Ice Admiral [Lv. 700] [Boss]" and v.Humanoid.Health > 0 then
											repeat wait()
												if _G.Settings.Configs["Auto Haki"] then
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
													end
												end
												if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
													wait()
													EquipWeapon(_G.Settings.Configs["Select Weapon"])
												end
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
												Fast = true
												if not _G.Settings.Configs["Fast Attack"] then
													game:GetService'VirtualUser':CaptureController()
													game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												end
													if _G.Settings.Configs["Show Hitbox"] then
													v.HumanoidRootPart.Transparency = tonumber(_G.Hitbox_LocalTransparency)
												else
													v.HumanoidRootPart.Transparency = 1
												end
												v.Humanoid.JumpPower = 0
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid:ChangeState(11)
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
											until v.Humanoid.Health <= 0 or not v.Parent
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
										end
									end
								else
									toTarget(CFrame.new(1347.7124, 37.3751602, -1325.6488))
								end
							else
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
							end
						end
					end
				end)
			end
		end)
	
		task.spawn(function()
			while wait() do
				pcall(function()
					if _G.Settings.Main["Auto Saber"] and game.Players.LocalPlayer.Data.Level.Value >= 200 and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Saber") and not game.Players.LocalPlayer.Character:FindFirstChild("Saber") then
						if Auto_Farm_Level then
							_G.Settings.Main["Auto Farm Level"] = false
						end
						if game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 0 then
							if game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency == 0 then
								if (CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
										toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
									wait(1)
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate1.Button.CFrame
									wait(1)
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate2.Button.CFrame
									wait(1)
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate3.Button.CFrame
									wait(1)
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate4.Button.CFrame
									wait(1)
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate5.Button.CFrame
									wait(1) 
								else
									toTarget(CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279))
								end
							else
								if game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0 then
									if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch") then
										EquipWeapon("Torch")
										toTarget(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587, -1.28799094e-09, 0.761243105, -5.70652914e-10, 1, 1.20584542e-09, -0.761243105, 3.47544882e-10, -0.648466587))
									else
										toTarget(CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 3.42372805e-05, -0.258850515, 0.965917408))                 
									end
								else
									if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") ~= 0 then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","GetCup")
										wait(0.5)
										EquipWeapon("Cup")
										wait(0.5)
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","FillCup",game:GetService("Players").LocalPlayer.Character.Cup)
										wait(0)
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") 
									else
										if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == nil then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
										elseif  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 0 then
											if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader [Lv. 120] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
												toTarget(CFrame.new(-2967.59521, -4.91089821, 5328.70703, 0.342208564, -0.0227849055, 0.939347804, 0.0251603816, 0.999569714, 0.0150796166, -0.939287126, 0.0184739735, 0.342634559))
												for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
													if v.Name == "Mob Leader [Lv. 120] [Boss]" then
														repeat wait()
															StartMagnet = true
															Fast = true
															if _G.Settings.Configs["Auto Haki"] then
																if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
																end
															end
															if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
																wait()
																EquipWeapon(_G.Settings.Configs["Select Weapon"])
															end
															toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
															PosMon = v.HumanoidRootPart.CFrame
															if not _G.Settings.Configs["Fast Attack"] then
																game:GetService'VirtualUser':CaptureController()
																game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
															end
																			if _G.Settings.Configs["Show Hitbox"] then
																v.HumanoidRootPart.Transparency = tonumber(_G.Hitbox_LocalTransparency)
															else
																v.HumanoidRootPart.Transparency = 1
															end
															v.Humanoid.JumpPower = 0
															v.Humanoid.WalkSpeed = 0
															v.HumanoidRootPart.CanCollide = false
															v.Humanoid:ChangeState(11)
														until v.Humanoid.Health <= 0 or _G.Settings.Main["Auto Saber"] == false
													end
												end
											end
										elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 1 then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
											wait(0.5)
											EquipWeapon("Relic")
											wait(0.5)
											toTarget(CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.66906877e-09, 0.481375456, 2.53851997e-08, 1, -5.79995607e-08, -0.481375456, 6.30572643e-08, 0.876514494))
										end
									end
								end
							end
						else
							if game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert [Lv. 200] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
								toTarget(CFrame.new(-1401.85046, 29.9773273, 8.81916237, 0.85820812, 8.76083845e-08, 0.513301849, -8.55007443e-08, 1, -2.77243419e-08, -0.513301849, -2.00944328e-08, 0.85820812))
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Saber Expert [Lv. 200] [Boss]" then
										repeat wait()
											StartMagnet = true
											Fast = true
											if _G.Settings.Configs["Auto Haki"] then
												if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
												end
											end
											if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
												wait()
												EquipWeapon(_G.Settings.Configs["Select Weapon"])
											end
											toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
											PosMon = v.HumanoidRootPart.CFrame
											if not _G.Settings.Configs["Fast Attack"] then
												game:GetService'VirtualUser':CaptureController()
												game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
											end
											if _G.Settings.Configs["Show Hitbox"] then
												v.HumanoidRootPart.Transparency = tonumber(_G.Hitbox_LocalTransparency)
											else
												v.HumanoidRootPart.Transparency = 1
											end
											v.Humanoid.JumpPower = 0
											v.Humanoid.WalkSpeed = 0
											v.HumanoidRootPart.CanCollide = false
											v.Humanoid:ChangeState(11)
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
										until v.Humanoid.Health <= 0 or _G.Settings.Main["Auto Saber"] == false
										if v.Humanoid.Health <= 0 then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","PlaceRelic")
										end
										_G.Settings.Main["Auto Farm Level"] = true
									end
								end
							end
						end
					end
				end)
			end
		end)
	
		task.spawn(function()
			while wait() do
				pcall(function()
					if _G.Settings.Main["Auto Pole"] then
						if game.ReplicatedStorage:FindFirstChild("Thunder God [Lv. 575] [Boss]") or game.Workspace.Enemies:FindFirstChild("Thunder God [Lv. 575] [Boss]") then
							if game.Workspace.Enemies:FindFirstChild("Thunder God [Lv. 575] [Boss]") then
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if v.Name == "Thunder God [Lv. 575] [Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
										repeat wait()
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
												Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
											elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
												if Farmtween then Farmtween:Stop() end
												StartMagnet = true
												Fast = true
												if _G.Settings.Configs["Auto Haki"] then
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
													end
												end
												if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
													wait()
													EquipWeapon(_G.Settings.Configs["Select Weapon"])
												end
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
												PosMon = v.HumanoidRootPart.CFrame
												if not _G.Settings.Configs["Fast Attack"] then
													game:GetService'VirtualUser':CaptureController()
													game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												end
													if _G.Settings.Configs["Show Hitbox"] then
													v.HumanoidRootPart.Transparency = tonumber(_G.Hitbox_LocalTransparency)
												else
													v.HumanoidRootPart.Transparency = 1
												end
												v.Humanoid.JumpPower = 0
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid:ChangeState(11)
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
											end
										until not _G.Settings.Main["Auto Pole"] or v.Humanoid.Health <= 0 or not v.Parent
										StartMagnet = false
										Fast = false
									end
								end
							else
								Questtween = toTarget(CFrame.new(-7900.66406, 5606.90918, -2267.46436).Position,CFrame.new(-7900.66406, 5606.90918, -2267.46436))
								if (CFrame.new(-7900.66406, 5606.90918, -2267.46436).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
									if Questtween then
										Questtween:Stop()
									end
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7900.66406, 5606.90918, -2267.46436)
								end
							end
						else
							if _G.Settings.Main["Auto Pole Hop"] then
								Fast_Hop()
							end
						end
					end
				end)
			end
		end)
	
	
		task.spawn(function()
			while wait() do
				pcall(function()
					if _G.Settings.Main["Auto Buy Ablility"] then
						local Beli = game:GetService("Players").LocalPlayer.Data.Beli.Value
						local BusoCheck = false
						local SoruCheck = false
						local GeppoCheck = false
						local KenCheck = false
						if Beli >= 885000 then
							repeat wait() 
								local args = {
									[1] = "BuyHaki",
									[2] = "Buso"
								}
	
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								BusoCheck = true
								local args = {
									[1] = "BuyHaki",
									[2] = "Geppo"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								GeppoCheck = true
								local args = {
									[1] = "BuyHaki",
									[2] = "Soru"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								SoruCheck = true
								local args = {
									[1] = "KenTalk",
									[2] = "Start"
								}
	
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	
								local args = {
									[1] = "KenTalk",
									[2] = "Buy"
								}
	
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								KenCheck = true
							until not BusoCheck and not GeppoCheck and not SoruCheck and not KenCheck or not _G.Settings.Main["Auto Buy Ablility"]
						end
					end
				end)
			end
		end)
	
		task.spawn(function()
			while wait() do
				pcall(function()
					if _G.Settings.Main["Auto Factory"] then
						if game.Workspace.Enemies:FindFirstChild("Core") then
							_G.FactoryCore = true
							if _G.Settings.Main["Auto Farm Level"] then
								Auto_Farm_Level = false
							end
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if _G.FactoryCore and v.Name == "Core" and v.Humanoid.Health > 0 then
									repeat wait()
										Fast = true
										if _G.Settings.Configs["Auto Haki"] then
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
											end
										end
										if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
											wait()
											EquipWeapon(_G.Settings.Configs["Select Weapon"])
										end
										if not _G.Settings.Configs["Fast Attack"] then
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										end
										if _G.Settings.Configs["Show Hitbox"] then
											v.HumanoidRootPart.Transparency = tonumber(_G.Hitbox_LocalTransparency)
										else
											v.HumanoidRootPart.Transparency = 1
										end
										v.Humanoid.JumpPower = 0
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid:ChangeState(11)
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,10,10))
									until not _G.FactoryCore or v.Humanoid.Health <= 0 or _G.Settings.Main["Auto Factory"] == false
								end
							end
						elseif game.ReplicatedStorage:FindFirstChild("Core") and game.ReplicatedStorage:FindFirstChild("Core"):FindFirstChild("Humanoid") then
							_G.FactoryCore = true
							if _G.Settings.Main["Auto Farm Level"] then
								Auto_Farm_Level = false
							end
							toTarget(CFrame.new(502.7349853515625, 143.0749053955078, -379.078125))
						elseif not game.ReplicatedStorage:FindFirstChild("Core") then
							if _G.Settings.Main["Auto Factory Hop"] or _G.Hopper then
								Fast_Hop()
							else
								if _G.Settings.Main["Auto Farm Level"] then
									_G.FactoryCore = false
									Auto_Farm_Level = true
								end
							end
						end
					end
				end)
			end
		end)
	
		task.spawn(function()
			while wait() do
				pcall(function()
					if _G.Settings.Main["Auto Third Sea"] then
						if game.Players.LocalPlayer.Data.Level.Value >= 1500 then
							if Auto_Farm_Level then
								_G.Settings.Main["Auto Farm Level"] = false
							end
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 3 then
								if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess ~= nil then
									Com("F_","TravelZou")
									if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "Check") == 0 then
										if game.Workspace.Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") then 	
											for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
												if v.Name == "rip_indra [Lv. 1500] [Boss]" and v:FindFirstChild("Humanoid")and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
													repeat wait()
														if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
															Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
														elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
															if Farmtween then Farmtween:Stop() end
															Fast = true
															if _G.Settings.Configs["Auto Haki"] then
																if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
																end
															end
															if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
																wait()
																EquipWeapon(_G.Settings.Configs["Select Weapon"])
															end
															PosMon = v.HumanoidRootPart.CFrame
															if not _G.Settings.Configs["Fast Attack"] then
																game:GetService'VirtualUser':CaptureController()
																game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
															end
																			if _G.Settings.Configs["Show Hitbox"] then
																v.HumanoidRootPart.Transparency = tonumber(_G.Hitbox_LocalTransparency)
															else
																v.HumanoidRootPart.Transparency = 1
															end
															v.Humanoid.JumpPower = 0
															v.Humanoid.WalkSpeed = 0
															v.HumanoidRootPart.CanCollide = false
															v.Humanoid:ChangeState(11)
															toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
														end
													until not _G.Settings.Main["Auto Third Sea"] or not v.Parent or v.Humanoid.Health <= 0 
													wait(.5)
													Check = 2
													repeat wait() Com("F_","TravelZou") until Check == 1
													Fast = false
												end
											end
										else
											Com("F_","ZQuestProgress","Check")
											Com("F_","ZQuestProgress","Begin")
										end
									elseif game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "Check") == 1 then
										Com("F_","TravelZou")
									else
										if game.Workspace.Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
											for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
												if v.Name == "Don Swan [Lv. 1000] [Boss]" and v:FindFirstChild("Humanoid")and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
													repeat wait()
														if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
															Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
														elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
															if Farmtween then Farmtween:Stop() end
															Fast = true
															if _G.Settings.Configs["Auto Haki"] then
																if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
																end
															end
															if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
																wait()
																EquipWeapon(_G.Settings.Configs["Select Weapon"])
															end
															PosMon = v.HumanoidRootPart.CFrame
															if not _G.Settings.Configs["Fast Attack"] then
																game:GetService'VirtualUser':CaptureController()
																game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
															end
																			if _G.Settings.Configs["Show Hitbox"] then
																v.HumanoidRootPart.Transparency = tonumber(_G.Hitbox_LocalTransparency)
															else
																v.HumanoidRootPart.Transparency = 1
															end
															v.Humanoid.JumpPower = 0
															v.Humanoid.WalkSpeed = 0
															v.HumanoidRootPart.CanCollide = false
															v.Humanoid:ChangeState(11)
															toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
														end
													until not _G.Settings.Main["Auto Third Sea"] or not v.Parent or v.Humanoid.Health <= 0 
													Fast = false
												end
											end
										else
											TweenDonSwanthireworld = toTarget(CFrame.new(2288.802, 15.1870775, 863.034607).Position,CFrame.new(2288.802, 15.1870775, 863.034607))
											if (CFrame.new(2288.802, 15.1870775, 863.034607).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
												if TweenDonSwanthireworld then
													TweenDonSwanthireworld:Stop()
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2288.802, 15.1870775, 863.034607)
												end
											end
										end
									end
								else
									if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil then
										TabelDevilFruitStore = {}
										TabelDevilFruitOpen = {}
	
										for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryFruits")) do
											for i1,v1 in pairs(v) do
												if i1 == "Name" then 
													table.insert(TabelDevilFruitStore,v1)
												end
											end
										end
	
										for i,v in next,game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("GetFruits") do
											if v.Price >= 1000000 then  
												table.insert(TabelDevilFruitOpen,v.Name)
											end
										end
	
										for i,DevilFruitOpenDoor in pairs(TabelDevilFruitOpen) do
											for i1,DevilFruitStore in pairs(TabelDevilFruitStore) do
												if DevilFruitOpenDoor == DevilFruitStore and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil then    
													if not game.Players.LocalPlayer.Backpack:FindFirstChild(DevilFruitStore) then   
														Com("F_","LoadFruit",DevilFruitStore)
													else
														Com("F_","TalkTrevor","1")
														Com("F_","TalkTrevor","2")
														Com("F_","TalkTrevor","3")
													end
												end
											end
										end
	
										Com("F_","TalkTrevor","1")
										Com("F_","TalkTrevor","2")
										Com("F_","TalkTrevor","3")	
									end
								end
							else
								if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
									if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
										if game.Workspace.Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
											for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
												if v.Name == "Swan Pirate [Lv. 775]" then
													pcall(function()
														repeat wait()
															if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
																Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
															elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
																if Farmtween then Farmtween:Stop() end
																Fast = true
																StartMagnet = true
																if _G.Settings.Configs["Auto Haki"] then
																	if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
																	end
																end
																if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
																	wait()
																	EquipWeapon(_G.Settings.Configs["Select Weapon"])
																end
																PosMon = v.HumanoidRootPart.CFrame
																if not _G.Settings.Configs["Fast Attack"] then
																	game:GetService'VirtualUser':CaptureController()
																	game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
																end
																					if _G.Settings.Configs["Show Hitbox"] then
																	v.HumanoidRootPart.Transparency = tonumber(_G.Hitbox_LocalTransparency)
																else
																	v.HumanoidRootPart.Transparency = 1
																end
																v.Humanoid.JumpPower = 0
																v.Humanoid.WalkSpeed = 0
																v.HumanoidRootPart.CanCollide = false
																v.Humanoid:ChangeState(11)
																toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
															end
														until not v.Parent or v.Humanoid.Health <= 0 or _G.Settings.Main["Auto Third Sea"] == false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
														Fast = false
														StartMagnet = false
													end)
												end
											end
										else
											Questtween = toTarget(CFrame.new(1057.92761, 137.614319, 1242.08069).Position,CFrame.new(1057.92761, 137.614319, 1242.08069))
											if (CFrame.new(1057.92761, 137.614319, 1242.08069).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
												if Bartilotween then Bartilotween:Stop() end
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1057.92761, 137.614319, 1242.08069)
											end
										end
									else
										Bartilotween = toTarget(CFrame.new(-456.28952, 73.0200958, 299.895966).Position,CFrame.new(-456.28952, 73.0200958, 299.895966))
										if ( CFrame.new(-456.28952, 73.0200958, 299.895966).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
											if Bartilotween then Bartilotween:Stop() end
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  CFrame.new(-456.28952, 73.0200958, 299.895966)
											Com("F_","StartQuest","BartiloQuest",1)
										end
									end
								elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
									if game.Workspace.Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
										for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
											if v.Name == "Jeremy [Lv. 850] [Boss]" then
												repeat wait()
													if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
														Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
													elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
														if Farmtween then Farmtween:Stop() end
														Fast = true
														if _G.Settings.Configs["Auto Haki"] then
															if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
															end
														end
														if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
															wait()
															EquipWeapon(_G.Settings.Configs["Select Weapon"])
														end
														PosMon = v.HumanoidRootPart.CFrame
														if not _G.Settings.Configs["Fast Attack"] then
															game:GetService'VirtualUser':CaptureController()
															game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
														end
																	if _G.Settings.Configs["Show Hitbox"] then
															v.HumanoidRootPart.Transparency = tonumber(_G.Hitbox_LocalTransparency)
														else
															v.HumanoidRootPart.Transparency = 1
														end
														v.Humanoid.JumpPower = 0
														v.Humanoid.WalkSpeed = 0
														v.HumanoidRootPart.CanCollide = false
														v.Humanoid:ChangeState(11)															
														toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
													end
												until not v.Parent or v.Humanoid.Health <= 0 or _G.Settings.Main["Auto Third Sea"] == false
												Fast = false
											end
										end
									else
										Bartilotween = toTarget(CFrame.new(2099.88159, 448.931, 648.997375).Position,CFrame.new(2099.88159, 448.931, 648.997375))
										if (CFrame.new(2099.88159, 448.931, 648.997375).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
											if Bartilotween then Bartilotween:Stop() end
											game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2099.88159, 448.931, 648.997375)
										end
									end
								elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
									if (CFrame.new(-1836, 11, 1714).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
										Bartilotween = toTarget(CFrame.new(-1836, 11, 1714).Position,CFrame.new(-1836, 11, 1714))
									elseif (CFrame.new(-1836, 11, 1714).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
										if Bartilotween then Bartilotween:Stop() end
										game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1836, 11, 1714)
										wait(.5)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1850.49329, 13.1789551, 1750.89685)
										wait(.1)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.87305, 19.3777466, 1712.01807)
										wait(.1)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1803.94324, 16.5789185, 1750.89685)
										wait(.1)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.55835, 16.8604317, 1724.79541)
										wait(.1)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1869.54224, 15.987854, 1681.00659)
										wait(.1)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1800.0979, 16.4978027, 1684.52368)
										wait(.1)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1819.26343, 14.795166, 1717.90625)
										wait(.1)
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1813.51843, 14.8604736, 1724.79541)
									end
								end
							end
						end
					end
				end)
			end
		end)
		task.spawn(function()
			while wait() do
				pcall(function()
					if _G.Settings.Main["Auto Bartilo Quest"] then
						if game.Players.LocalPlayer.Data.Level.Value >= 850 then
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
								if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
									if game.Workspace.Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
										for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
											if v.Name == "Swan Pirate [Lv. 775]" then
												pcall(function()
													repeat wait()
														if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
															Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
														elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
															if Farmtween then Farmtween:Stop() end
															Fast = true
															StartMagnet = true
															if _G.Settings.Configs["Auto Haki"] then
																if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
																end
															end
															if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
																wait()
																EquipWeapon(_G.Settings.Configs["Select Weapon"])
															end
															PosMon = v.HumanoidRootPart.CFrame
															if not _G.Settings.Configs["Fast Attack"] then
																game:GetService'VirtualUser':CaptureController()
																game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
															end
																			if _G.Settings.Configs["Show Hitbox"] then
																v.HumanoidRootPart.Transparency = tonumber(_G.Hitbox_LocalTransparency)
															else
																v.HumanoidRootPart.Transparency = 1
															end
															v.Humanoid.JumpPower = 0
															v.Humanoid.WalkSpeed = 0
															v.HumanoidRootPart.CanCollide = false
															v.Humanoid:ChangeState(11)
															toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
														end
													until not v.Parent or v.Humanoid.Health <= 0 or _G.Settings.Main["Auto Bartilo Quest"] == false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
													StartMagnet = false
													Fast = false
												end)
											end
										end
									else
										Questtween = toTarget(CFrame.new(1057.92761, 137.614319, 1242.08069).Position,CFrame.new(1057.92761, 137.614319, 1242.08069))
										if (CFrame.new(1057.92761, 137.614319, 1242.08069).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
											if Questtween then
												Questtween:Stop()
											end
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1057.92761, 137.614319, 1242.08069)
										end
									end
								else
									Bartilotween = toTarget(CFrame.new(-456.28952, 73.0200958, 299.895966).Position,CFrame.new(-456.28952, 73.0200958, 299.895966))
									if ( CFrame.new(-456.28952, 73.0200958, 299.895966).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
										if Bartilotween then
											Bartilotween:Stop()
										end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  CFrame.new(-456.28952, 73.0200958, 299.895966)
										local args = {
											[1] = "StartQuest",
											[2] = "BartiloQuest",
											[3] = 1
										}
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
									end
								end
							end
						elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
							if game.Workspace.Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if v.Name == "Jeremy [Lv. 850] [Boss]" then
										repeat wait()
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
												Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
											elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
												if Farmtween then Farmtween:Stop() end
												Fast = true
												if _G.Settings.Configs["Auto Haki"] then
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
													end
												end
												if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
													wait()
													EquipWeapon(_G.Settings.Configs["Select Weapon"])
												end
												PosMon = v.HumanoidRootPart.CFrame
												if not _G.Settings.Configs["Fast Attack"] then
													game:GetService'VirtualUser':CaptureController()
													game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												end
													if _G.Settings.Configs["Show Hitbox"] then
													v.HumanoidRootPart.Transparency = tonumber(_G.Hitbox_LocalTransparency)
												else
													v.HumanoidRootPart.Transparency = 1
												end
												v.Humanoid.JumpPower = 0
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid:ChangeState(11)
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
											end
										until not v.Parent or v.Humanoid.Health <= 0 or _G.Settings.Main["Auto Bartilo Quest"] == false
										Fast = false
									end
								end
							else
								Bartilotween = toTarget(CFrame.new(2099.88159, 448.931, 648.997375).Position,CFrame.new(2099.88159, 448.931, 648.997375))
								if (CFrame.new(2099.88159, 448.931, 648.997375).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
									if Bartilotween then
										Bartilotween:Stop()
									end
									game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2099.88159, 448.931, 648.997375)
								end
							end
						elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
							if (CFrame.new(-1836, 11, 1714).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
								Bartilotween = toTarget(CFrame.new(-1836, 11, 1714).Position,CFrame.new(-1836, 11, 1714))
							elseif (CFrame.new(-1836, 11, 1714).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
								if Bartilotween then
									Bartilotween:Stop()
								end
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1836, 11, 1714)
								wait(.5)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1850.49329, 13.1789551, 1750.89685)
								wait(1)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.87305, 19.3777466, 1712.01807)
								wait(1)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1803.94324, 16.5789185, 1750.89685)
								wait(1)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.55835, 16.8604317, 1724.79541)
								wait(1)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1869.54224, 15.987854, 1681.00659)
								wait(1)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1800.0979, 16.4978027, 1684.52368)
								wait(1)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1819.26343, 14.795166, 1717.90625)
								wait(1)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1813.51843, 14.8604736, 1724.79541)
							end
						end
					end
				end)
			end
		end)
	
		task.spawn(function()
			while wait() do
				pcall(function()
					if _G.Settings.Main["Auto Dark Coat"] then
						if game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard [Lv. 1000] [Raid Boss]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == ("Darkbeard [Lv. 1000] [Raid Boss]" or v.Name == "Darkbeard [Lv. 1000] [Raid Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
									repeat wait()
										StartMagnet = true
										Fast = true
										if _G.Settings.Configs["Auto Haki"] then
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
											end
										end
										if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
											wait()
											EquipWeapon(_G.Settings.Configs["Select Weapon"])
										end
										PosMon = v.HumanoidRootPart.CFrame
										if not _G.Settings.Configs["Fast Attack"] then
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										end
										if _G.Settings.Configs["Show Hitbox"] then
											v.HumanoidRootPart.Transparency = tonumber(_G.Hitbox_LocalTransparency)
										else
											v.HumanoidRootPart.Transparency = 1
										end
										v.Humanoid.JumpPower = 0
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid:ChangeState(11)
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
									until _G.Settings.Main["Auto Dark Coat"] == false or v.Humanoid.Health <= 0
									StartMagnet = false
									Fast = false
								end
							end
						else
							toTarget(CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531))
							if _G.Hopper then
								Fast_Hop()
							end
						end
					end
				end)
			end
		end)
	
		task.spawn(function()
			while wait() do
				pcall(function()
					if _G.Settings.Main["Auto Ectoplasm"] then
						if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand [Lv. 1250]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer [Lv. 1275]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward [Lv. 1300]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer [Lv. 1325]") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior [Lv. 1350]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Ship Deckhand [Lv. 1250]" or v.Name == "Ship Engineer [Lv. 1275]" or v.Name == "Ship Steward [Lv. 1300]" or v.Name == "Ship Officer [Lv. 1325]" or v.Name == "Arctic Warrior [Lv. 1350]" then
									if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
										repeat wait()
											StartMagnet = true
											Fast = true
											if _G.Settings.Configs["Auto Haki"] then
												if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
												end
											end
											if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
												wait()
												EquipWeapon(_G.Settings.Configs["Select Weapon"])
											end
											PosMon = v.HumanoidRootPart.CFrame
											if not _G.Settings.Configs["Fast Attack"] then
												game:GetService'VirtualUser':CaptureController()
												game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
											end
											if _G.Settings.Configs["Show Hitbox"] then
												v.HumanoidRootPart.Transparency = tonumber(_G.Hitbox_LocalTransparency)
											else
												v.HumanoidRootPart.Transparency = 1
											end
											v.Humanoid.JumpPower = 0
											v.Humanoid.WalkSpeed = 0
											v.HumanoidRootPart.CanCollide = false
											v.Humanoid:ChangeState(11)
											toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
										until not _G.Settings.Main["Auto Ectoplasm"] or not v.Parent or v.Humanoid.Health <= 0
										StartMagnet = false
										Fast = false
									end
								end
							end
						else
							StartMagnet = false
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
						end
					end
				end)
			end
		end)
	
		task.spawn(function()
			while wait() do
				pcall(function()
					if _G.Settings.Main["Auto True Triple Katana"] then
						local string_1 = "MysteriousMan";
						local string_2 = "2";
						local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
						Target:InvokeServer(string_1, string_2);
					end
				end)
			end
		end)
	
		task.spawn(function()
			while wait() do
				pcall(function()
					if _G.Settings.Main["Auto Rengoku"] then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game.Players.LocalPlayer.Character:FindFirstChild("Hidden Key") then
							EquipWeapon("Hidden Key")
							toTarget(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
						elseif game.Workspace.Enemies:FindFirstChild("Snow Lurker [Lv. 1375]") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior [Lv. 1350]") then
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if (v.Name == "Snow Lurker [Lv. 1375]" or v.Name == "Arctic Warrior [Lv. 1350]") and v.Humanoid.Health > 0 then
									repeat wait()
										StartMagnet = true
										Fast = true
										if _G.Settings.Configs["Auto Haki"] then
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
											end
										end
										if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
											wait()
											EquipWeapon(_G.Settings.Configs["Select Weapon"])
										end
										PosMon = v.HumanoidRootPart.CFrame
										if not _G.Settings.Configs["Fast Attack"] then
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										end
										if _G.Settings.Configs["Show Hitbox"] then
											v.HumanoidRootPart.Transparency = tonumber(_G.Hitbox_LocalTransparency)
										else
											v.HumanoidRootPart.Transparency = 1
										end
										v.Humanoid.JumpPower = 0
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid:ChangeState(11)
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
									until game.Players.LocalPlayer.Backpack:FindFirstChild("Hidden Key") or not _G.Settings.Main["Auto Rengoku"] or not v.Parent or v.Humanoid.Health <= 0
									StartMagnet = false
									Fast = false
								end
							end
						else
							StartMagnet = false
							Fast = false
							toTarget(CFrame.new(5525.7045898438, 262.90060424805, -6755.1186523438))
						end
					end
				end)
			end
		end)
	
		task.spawn(function()
			while wait() do
				pcall(function()
					if _G.Settings.Main["Auto Swan Glasses"] then
						if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Don Swan [Lv. 1000] [Boss]" and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
									repeat wait()
										StartMagnet = true
										Fast = true
										if _G.Settings.Configs["Auto Haki"] then
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
											end
										end
										if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
											wait()
											EquipWeapon(_G.Settings.Configs["Select Weapon"])
										end
										PosMon = v.HumanoidRootPart.CFrame
										if not _G.Settings.Configs["Fast Attack"] then
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										end
										if _G.Settings.Configs["Show Hitbox"] then
											v.HumanoidRootPart.Transparency = tonumber(_G.Hitbox_LocalTransparency)
										else
											v.HumanoidRootPart.Transparency = 1
										end
										v.Humanoid.JumpPower = 0
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid:ChangeState(11)
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
									until not _G.Settings.Main["Auto Swan Glasses"] or v.Humanoid.Health <= 0
									StartMagnet = false
									Fast = false
									if _G.Hopper then
										Fast_Hop()
									end
								end
							end
						else
							repeat wait()
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(2284.912109375, 15.537666320801, 905.48291015625)) 
							until (CFrame.new(2284.912109375, 15.537666320801, 905.48291015625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 or not _G.Settings.Main["Auto Swan Glasses"]
						end
					end
				end)
			end
		end)
	
	
		task.spawn(function()
			while wait() do
				pcall(function()
					if _G.Settings.Main["Auto Buy Legendary Sword"] then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","1")
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","2")
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","3")
						if _G.Settings.Main["Auto Buy Legendary Sword Hop"] then
							wait(15)
							Fast_Hop()
						end
					end
				end)
			end
		end)
	
		task.spawn(function()
			while wait() do
				pcall(function()
					if _G.Settings.Main["Auto Buy Enchanment Haki"] then
						local args = {
							[1] = "ColorsDealer",
							[2] = "2"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					end
				end)
			end
		end)
	
		task.spawn(function()
			while wait() do
				if _G.Settings.Main["Auto Holy Torch"] then
					repeat toTarget(CFrame.new(-10752, 417, -9366)) wait() until not _G.Settings.Main["Auto Holy Torch"] or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-10752, 417, -9366)).Magnitude <= 10
					wait(1)
					repeat toTarget(CFrame.new(-11672, 334, -9474)) wait() until not _G.Settings.Main["Auto Holy Torch"] or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-11672, 334, -9474)).Magnitude <= 10
					wait(1)
					repeat toTarget(CFrame.new(-12132, 521, -10655)) wait() until not _G.Settings.Main["Auto Holy Torch"] or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12132, 521, -10655)).Magnitude <= 10
					wait(1)
					repeat toTarget(CFrame.new(-13336, 486, -6985)) wait() until not _G.Settings.Main["Auto Holy Torch"] or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13336, 486, -6985)).Magnitude <= 10
					wait(1)
					repeat toTarget(CFrame.new(-13489, 332, -7925)) wait() until not _G.Settings.Main["Auto Holy Torch"] or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13489, 332, -7925)).Magnitude <= 10
				end
			end
		end)
	
	
		task.spawn(function()
			while wait() do
				pcall(function()
					if _G.Settings.Main["Auto Buddy Swords"] then
						if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == ("Cake Queen [Lv. 2175] [Boss]" or v.Name == "Cake Queen [Lv. 2175] [Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
									repeat wait()
										StartMagnet = true
										Fast = true
										if _G.Settings.Configs["Auto Haki"] then
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
											end
										end
										if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
											wait()
											EquipWeapon(_G.Settings.Configs["Select Weapon"])
										end
										PosMon = v.HumanoidRootPart.CFrame
										if not _G.Settings.Configs["Fast Attack"] then
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										end
										if _G.Settings.Configs["Show Hitbox"] then
											v.HumanoidRootPart.Transparency = tonumber(_G.Hitbox_LocalTransparency)
										else
											v.HumanoidRootPart.Transparency = 1
										end
										v.Humanoid.JumpPower = 0
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid:ChangeState(11)
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
									until not _G.Settings.Main["Auto Buddy Swords"] or v.Humanoid.Health <= 0
									StartMagnet = false
									Fast = false
									if _G.Hopper then
										Fast_Hop()
									end
								end
							end
						end
					end
				end)
			end
		end)
	
		task.spawn(function()
			while wait() do
				pcall(function()
					if _G.Settings.Main["Auto Farm Boss Hallow"] then
						if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if string.find(v.Name , "Soul Reaper") then
									repeat wait()
										StartMagnet = true
										Fast = true
										if _G.Settings.Configs["Auto Haki"] then
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
											end
										end
										if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
											wait()
											EquipWeapon(_G.Settings.Configs["Select Weapon"])
										end
										PosMon = v.HumanoidRootPart.CFrame
										if not _G.Settings.Configs["Fast Attack"] then
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										end
										if _G.Settings.Configs["Show Hitbox"] then
											v.HumanoidRootPart.Transparency = tonumber(_G.Hitbox_LocalTransparency)
										else
											v.HumanoidRootPart.Transparency = 1
										end
										v.Humanoid.JumpPower = 0
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid:ChangeState(11)
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
									until v.Humanoid.Health <= 0 or not _G.Settings.Main["Auto Farm Boss Hallow"]
									StartMagnet = false
									Fast = false
									if _G.Hopper then
										Fast_Hop()
									end
								end
							end
						else
							toTarget(CFrame.new(-9524.7890625, 315.80429077148, 6655.7192382813))
						end
					end
				end)
			end
		end)
	
	
		task.spawn(function()
			while wait() do
				pcall(function()
					if _G.Settings.Main["Auto Rainbow Haki"] then
						if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
							toTarget(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875))
							if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
								wait(1.5)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
							end
						elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Stone") then
							if game:GetService("Workspace").Enemies:FindFirstChild("Stone [Lv. 1550] [Boss]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Stone [Lv. 1550] [Boss]" then
										repeat wait()
											StartMagnet = true
											Fast = true
											if _G.Settings.Configs["Auto Haki"] then
												if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
												end
											end
											if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
												wait()
												EquipWeapon(_G.Settings.Configs["Select Weapon"])
											end
											PosMon = v.HumanoidRootPart.CFrame
											if not _G.Settings.Configs["Fast Attack"] then
												game:GetService'VirtualUser':CaptureController()
												game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
											end
											if _G.Settings.Configs["Show Hitbox"] then
												v.HumanoidRootPart.Transparency = tonumber(_G.Hitbox_LocalTransparency)
											else
												v.HumanoidRootPart.Transparency = 1
											end
											v.Humanoid.JumpPower = 0
											v.Humanoid.WalkSpeed = 0
											v.HumanoidRootPart.CanCollide = false
											v.Humanoid:ChangeState(11)												
											toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
										until not _G.Settings.Main["Auto Rainbow Haki"] or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
										StartMagnet = false
										Fast = false
									end
								end
							else
								toTarget(CFrame.new(-1086.11621, 38.8425903, 6768.71436, 0.0231462717, -0.592676699, 0.805107772, 2.03251839e-05, 0.805323839, 0.592835128, -0.999732077, -0.0137055516, 0.0186523199))
							end
						elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Island Empress") then
							if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Island Empress [Lv. 1675] [Boss]" then
										repeat wait()
											StartMagnet = true
											Fast = true
											if _G.Settings.Configs["Auto Haki"] then
												if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
												end
											end
											if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
												wait()
												EquipWeapon(_G.Settings.Configs["Select Weapon"])
											end
											PosMon = v.HumanoidRootPart.CFrame
											if not _G.Settings.Configs["Fast Attack"] then
												game:GetService'VirtualUser':CaptureController()
												game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
											end
											if _G.Settings.Configs["Show Hitbox"] then
												v.HumanoidRootPart.Transparency = tonumber(_G.Hitbox_LocalTransparency)
											else
												v.HumanoidRootPart.Transparency = 1
											end
											v.Humanoid.JumpPower = 0
											v.Humanoid.WalkSpeed = 0
											v.HumanoidRootPart.CanCollide = false
											v.Humanoid:ChangeState(11)
											toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
										until not _G.Settings.Main["Auto Rainbow Haki"] or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
										StartMagnet = false
										Fast = false
									end
								end
							else
								toTarget(CFrame.new(5713.98877, 601.922974, 202.751251, -0.101080291, -0, -0.994878292, -0, 1, -0, 0.994878292, 0, -0.101080291))
							end
						elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Kilo Admiral") then
							if game:GetService("Workspace").Enemies:FindFirstChild("Kilo Admiral [Lv. 1750] [Boss]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Kilo Admiral [Lv. 1750] [Boss]" then
										repeat wait()
											StartMagnet = true
											Fast = true
											if _G.Settings.Configs["Auto Haki"] then
												if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
												end
											end
											if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
												wait()
												EquipWeapon(_G.Settings.Configs["Select Weapon"])
											end
											PosMon = v.HumanoidRootPart.CFrame
											if not _G.Settings.Configs["Fast Attack"] then
												game:GetService'VirtualUser':CaptureController()
												game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
											end
											if _G.Settings.Configs["Show Hitbox"] then
												v.HumanoidRootPart.Transparency = tonumber(_G.Hitbox_LocalTransparency)
											else
												v.HumanoidRootPart.Transparency = 1
											end
											v.Humanoid.JumpPower = 0
											v.Humanoid.WalkSpeed = 0
											v.HumanoidRootPart.CanCollide = false
											v.Humanoid:ChangeState(11)
											toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
										until not _G.Settings.Main["Auto Rainbow Haki"] or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
										StartMagnet = false
										Fast = false
									end
								end
							else
								toTarget(CFrame.new(2877.61743, 423.558685, -7207.31006, -0.989591599, -0, -0.143904909, -0, 1.00000012, -0, 0.143904924, 0, -0.989591479))
							end
						elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") then
							if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
										repeat wait()
											StartMagnet = true
											Fast = true
											if _G.Settings.Configs["Auto Haki"] then
												if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
												end
											end
											if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
												wait()
												EquipWeapon(_G.Settings.Configs["Select Weapon"])
											end
											PosMon = v.HumanoidRootPart.CFrame
											if not _G.Settings.Configs["Fast Attack"] then
												game:GetService'VirtualUser':CaptureController()
												game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
											end
											if _G.Settings.Configs["Show Hitbox"] then
												v.HumanoidRootPart.Transparency = tonumber(_G.Hitbox_LocalTransparency)
											else
												v.HumanoidRootPart.Transparency = 1
											end
											v.Humanoid.JumpPower = 0
											v.Humanoid.WalkSpeed = 0
											v.HumanoidRootPart.CanCollide = false
											v.Humanoid:ChangeState(11)
											toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
										until not _G.Settings.Main["Auto Rainbow Haki"] or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
										StartMagnet = false
										Fast = false
									end
								end
							else
								toTarget(CFrame.new(-13485.0283, 331.709259, -8012.4873, 0.714521289, 7.98849911e-08, 0.69961375, -1.02065748e-07, 1, -9.94383065e-09, -0.69961375, -6.43015241e-08, 0.714521289))
							end
						elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful Pirate") then
							if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" then
										repeat wait()
											StartMagnet = true
											Fast = true
											if _G.Settings.Configs["Auto Haki"] then
												if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
												end
											end
											if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
												wait()
												EquipWeapon(_G.Settings.Configs["Select Weapon"])
											end
											PosMon = v.HumanoidRootPart.CFrame
											if not _G.Settings.Configs["Fast Attack"] then
												game:GetService'VirtualUser':CaptureController()
												game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
											end
											if _G.Settings.Configs["Show Hitbox"] then
												v.HumanoidRootPart.Transparency = tonumber(_G.Hitbox_LocalTransparency)
											else
												v.HumanoidRootPart.Transparency = 1
											end
											v.Humanoid.JumpPower = 0
											v.Humanoid.WalkSpeed = 0
											v.HumanoidRootPart.CanCollide = false
											v.Humanoid:ChangeState(11)
											toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
										until not _G.Settings.Main["Auto Rainbow Haki"] or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
										StartMagnet = false
										Fast = false
									end
								end
							else
								toTarget(CFrame.new(5312.3598632813, 20.141201019287, -10.158538818359))
							end
						else
							toTarget(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875))
							if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
								wait(1.5)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
							end
						end
					end
				end)
			end
		end)
		
	
	
		task.spawn(function()
			while wait() do
				pcall(function()
					if _G.Settings.Main["Auto Elite Hunter"] then
						if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
							if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Diablo") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Urban") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Deandre") then
								for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
									if string.find(v.Name,"Diablo") then
										EliteHunter = toTarget(v.HumanoidRootPart.CFrame)
										if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
											if EliteHunter then
												EliteHunter:Stop()
											end
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
										end
									end	
									if string.find(v.Name,"Urban") then
										EliteHunter = toTarget(v.HumanoidRootPart.CFrame)
										if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
											if EliteHunter then
												EliteHunter:Stop()
											end
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
										end
									end	
									if string.find(v.Name,"Deandre") then
										EliteHunter = toTarget(v.HumanoidRootPart.CFrame)
										if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
											if EliteHunter then
												EliteHunter:Stop()
											end
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
										end
									end	
								end
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if _G.Settings.Main["Auto Elite Hunter"] and string.find(v.Name,"Diablo") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
										repeat wait()
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >150 then
												Farmtween = toTarget(v.HumanoidRootPart.CFrame)
											elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
												if Farmtween then
													Farmtween:Stop()
												end
												if AttackRandomType == 1 then
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1)
												elseif AttackRandomType == 2 then
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30)
												elseif AttackRandomType == 3 then
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(1, 1, -30)
												elseif AttackRandomType == 4 then
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0)
												elseif AttackRandomType == 5 then
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0)
												else
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1)
												end
												Fast = true
												EquipWeapon(_G.Settings.Configs["Select Weapon"])
											end 
										until not _G.Settings.Main["Auto Elite Hunter"] or not v.Parent or v.Humanoid.Health <= 0
										Fast = false
									end
									if _G.Settings.Main["Auto Elite Hunter"] and string.find(v.Name,"Urban") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
										repeat wait()
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >150 then
												Farmtween = toTarget(v.HumanoidRootPart.CFrame)
											elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
												if Farmtween then
													Farmtween:Stop()
												end
												if AttackRandomType == 1 then
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1)
												elseif AttackRandomType == 2 then
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30)
												elseif AttackRandomType == 3 then
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(1, 1, -30)
												elseif AttackRandomType == 4 then
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0)
												elseif AttackRandomType == 5 then
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0)
												else
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1)
												end
												Fast = true
												EquipWeapon(_G.Settings.Configs["Select Weapon"])
											end 
										until not _G.Settings.Main["Auto Elite Hunter"] or not v.Parent or v.Humanoid.Health <= 0
										Fast = false
									end
									if _G.Settings.Main["Auto Elite Hunter"] and string.find(v.Name,"Deandre") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
										repeat wait()
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >150 then
												Farmtween = toTarget(v.HumanoidRootPart.CFrame)
											elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
												if Farmtween then
													Farmtween:Stop()
												end
												if AttackRandomType == 1 then
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1)
												elseif AttackRandomType == 2 then
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30)
												elseif AttackRandomType == 3 then
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(1, 1, -30)
												elseif AttackRandomType == 4 then
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0)
												elseif AttackRandomType == 5 then
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0)
												else
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1)
												end
												Fast = true
												EquipWeapon(_G.Settings.Configs["Select Weapon"])
											end 
										until not _G.Settings.Main["Auto Elite Hunter"] or not v.Parent or v.Humanoid.Health <= 0
										Fast = false
									end
								end
							else
								local string_1 = "EliteHunter";
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1);
							end
						else
							local string_1 = "EliteHunter";
							local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
							Target:InvokeServer(string_1);
						end
					end
				end)
			end
		end)
	
		task.spawn(function()
			while wait() do
				pcall(function()
					if _G.Settings.Main["Auto Musketeer Hat"] then
						if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBandits == false then
							if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Forest Pirate") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
								if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate [Lv. 1825]") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Forest Pirate [Lv. 1825]" then
											repeat wait()
												StartMagnet = true
												Fast = true
												if _G.Settings.Configs["Auto Haki"] then
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
													end
												end
												if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
													wait()
													EquipWeapon(_G.Settings.Configs["Select Weapon"])
												end
												PosMon = v.HumanoidRootPart.CFrame
												if not _G.Settings.Configs["Fast Attack"] then
													game:GetService'VirtualUser':CaptureController()
													game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												end
													if _G.Settings.Configs["Show Hitbox"] then
													v.HumanoidRootPart.Transparency = tonumber(_G.Hitbox_LocalTransparency)
												else
													v.HumanoidRootPart.Transparency = 1
												end
												v.Humanoid.JumpPower = 0
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid:ChangeState(11)
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
											until not _G.Settings.Main["Auto Musketeer Hat"] or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
											StartMagnet = false
											Fast = false
										end
									end
								else
									toTarget(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375))
								end
							else
								toTarget(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
								if (Vector3.new(-12443.8671875, 332.40396118164, -7675.4892578125) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
									wait(1.5)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","CitizenQuest",1)
								end
							end
						elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBoss == false then
							if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
								if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
											OldCFrameElephant = v.HumanoidRootPart.CFrame
											repeat wait()
												StartMagnet = true
												Fast = true
												if _G.Settings.Configs["Auto Haki"] then
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
													end
												end
												if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
													wait()
													EquipWeapon(_G.Settings.Configs["Select Weapon"])
												end
												PosMon = v.HumanoidRootPart.CFrame
												if not _G.Settings.Configs["Fast Attack"] then
													game:GetService'VirtualUser':CaptureController()
													game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												end
													if _G.Settings.Configs["Show Hitbox"] then
													v.HumanoidRootPart.Transparency = tonumber(_G.Hitbox_LocalTransparency)
												else
													v.HumanoidRootPart.Transparency = 1
												end
												v.Humanoid.JumpPower = 0
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid:ChangeState(11)
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
											until not _G.Settings.Main["Auto Musketeer Hat"] or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
											StartMagnet = false
											Fast = false
										end
									end
								else
									toTarget(CFrame.new(-13374.889648438, 421.27752685547, -8225.208984375))
								end
							else
								toTarget(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
								if (CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
									wait(1.5)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
								end
							end
						elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen") == 2 then
							toTarget(CFrame.new(-12512.138671875, 340.39279174805, -9872.8203125))
						end
					end
				end)
			end
		end)
	
		task.spawn(function()
			while wait() do
				pcall(function()
					if _G.Settings.Main["Auto Farm Bone"] then
						if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul [Lv. 2025]") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]" then
									if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
										repeat wait()
											StartMagnet = true
											Fast = true
											if _G.Settings.Configs["Auto Haki"] then
												if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
												end
											end
											if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
												wait()
												EquipWeapon(_G.Settings.Configs["Select Weapon"])
											end
											PosMon = v.HumanoidRootPart.CFrame
											if not _G.Settings.Configs["Fast Attack"] then
												game:GetService'VirtualUser':CaptureController()
												game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
											end
											if _G.Settings.Configs["Show Hitbox"] then
												v.HumanoidRootPart.Transparency = tonumber(_G.Hitbox_LocalTransparency)
											else
												v.HumanoidRootPart.Transparency = 1
											end
											v.Humanoid.JumpPower = 0
											v.Humanoid.WalkSpeed = 0
											v.HumanoidRootPart.CanCollide = false
											v.Humanoid:ChangeState(11)
											toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
										until not _G.Settings.Main["Auto Farm Bone"] or v.Humanoid.Health <= 0 or not v.Parent or v.Humanoid.Health <= 0
										StartMagnet = false
										Fast = false
									end
								end
							end
						else
							toTarget(CFrame.new(-9504.8564453125, 172.14292907714844, 6057.259765625))
						end
					end
				end)
			end
		end)
		task.spawn(function()
			while wait() do
				pcall(function()
					if _G.Settings.Main["Farm Observation"] then
						repeat wait()
							if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
								game:GetService('VirtualUser'):CaptureController()
								game:GetService('VirtualUser'):SetKeyDown('0x65')
								wait(2)
								game:GetService('VirtualUser'):SetKeyUp('0x65')
							end
						until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or not _G.Settings.Main["Farm Observation"]
					end
				end)
			end
		end)
	
		task.spawn(function()
			pcall(function()
				while wait() do
					if _G.Settings.Main["Farm Observation"] then
						if game:GetService("Players").LocalPlayer.VisionRadius.Value >= 3000 then
							game:GetService("StarterGui"):SetCore("SendNotification", {
								Icon = "rbxassetid://0";
								"Observation", 
								Text = "You Have Max Points"
							})
							wait(2)
						else
							if World2 then
								if game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]") then
									if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
										repeat wait()
											game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
										until _G.Settings.Main["Farm Observation"] == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
									else
										repeat wait()
											game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]").HumanoidRootPart.CFrame * CFrame.new(0,50,0)+
												wait(1)
											if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.Settings.Main["Farm Observation Hop"] == true then
												game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
											end
										until _G.Settings.Main["Farm Observation"] == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
									end
								else
									toTarget(CFrame.new(-5478.39209, 15.9775667, -5246.9126))
								end
							elseif World1 then
								if game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]") then
									if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
										repeat wait()
											game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
										until _G.Settings.Main["Farm Observation"] == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
									else
										repeat wait()
											game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
											wait(1)
											if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.Settings.Main["Farm Observation Hop"] == true then
												game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
											end
										until _G.Settings.Main["Farm Observation"] == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
									end
								else
									toTarget(CFrame.new(5533.29785, 88.1079102, 4852.3916))
								end
							elseif World3 then
								if game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander [Lv. 1650]") then
									if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
										repeat wait()
											game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander [Lv. 1650]").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
										until _G.Settings.Main["Farm Observation"] == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
									else
										repeat wait()
											game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander [Lv. 1650]").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
											wait(1)
											if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.Settings.Main["Farm Observation Hop"] == true then
												game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
											end
										until _G.Settings.Main["Farm Observation"] == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
									end
								else
									toTarget(CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789))
								end
							end
						end
					end
				end
			end)
		end)
		
		task.spawn(function()
			while wait() do
				pcall(function()
					if _G.Settings.Main["Auto Ken-Haki V2"] then
						if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
							repeat 
								toTarget(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625)) 
								wait() 
							until not _G.Settings.Main["Auto Ken-Haki V2"] or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12444.78515625, 332.40396118164, -7673.1806640625)).Magnitude <= 10
							wait(.5)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
							wait(1)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","CitizenQuest",1)
						else
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Banana") and  game.Players.LocalPlayer.Backpack:FindFirstChild("Apple") and game.Players.LocalPlayer.Backpack:FindFirstChild("Pineapple") then
								repeat 
									toTarget(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625)) 
									wait() 
								until not _G.Settings.Main["Auto Ken-Haki V2"] or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12444.78515625, 332.40396118164, -7673.1806640625)).Magnitude <= 10
								wait(.5)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
							elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Fruit Bowl") or game.Players.LocalPlayer.Character:FindFirstChild("Fruit Bowl") then
								repeat 
									toTarget(CFrame.new(-10920.125, 624.20275878906, -10266.995117188)) 
									wait() 
								until not _G.Settings.Main["Auto Ken-Haki V2"] or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-10920.125, 624.20275878906, -10266.995117188)).Magnitude <= 10
								wait(.5)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Start")
								wait(1)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Buy")
							elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Defeat 50 Forest Pirates") then
								if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate [Lv. 1825]") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Forest Pirate [Lv. 1825]" then
											repeat wait()
												StartMagnet = true
												Fast = true
												if _G.Settings.Configs["Auto Haki"] then
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
													end
												end
												if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
													wait()
													EquipWeapon(_G.Settings.Configs["Select Weapon"])
												end
												PosMon = v.HumanoidRootPart.CFrame
												if not _G.Settings.Configs["Fast Attack"] then
													game:GetService'VirtualUser':CaptureController()
													game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												end
													if _G.Settings.Configs["Show Hitbox"] then
													v.HumanoidRootPart.Transparency = tonumber(_G.Hitbox_LocalTransparency)
												else
													v.HumanoidRootPart.Transparency = 1
												end
												v.Humanoid.JumpPower = 0
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid:ChangeState(11)
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
											until not _G.Settings.Main["Auto Ken-Haki V2"] or v.Humanoid.Health <= 0
											StartMagnet = false
											Fast = false
										end
									end
								else
									repeat 
										toTarget(CFrame.new(-13277.568359375, 370.34185791016, -7821.1572265625)) 
										wait() 
									until not _G.Settings.Main["Auto Ken-Haki V2"] or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13277.568359375, 370.34185791016, -7821.1572265625)).Magnitude <= 10
								end
							elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text ==  "Defeat  Captain Elephant (0/1)" then 
								if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
											repeat wait()
												StartMagnet = true
												Fast = true
												if _G.Settings.Configs["Auto Haki"] then
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
													end
												end
												if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
													wait()
													EquipWeapon(_G.Settings.Configs["Select Weapon"])
												end
												PosMon = v.HumanoidRootPart.CFrame
												if not _G.Settings.Configs["Fast Attack"] then
													game:GetService'VirtualUser':CaptureController()
													game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												end
													if _G.Settings.Configs["Show Hitbox"] then
													v.HumanoidRootPart.Transparency = tonumber(_G.Hitbox_LocalTransparency)
												else
													v.HumanoidRootPart.Transparency = 1
												end
												v.Humanoid.JumpPower = 0
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid:ChangeState(11)
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
											until not _G.Settings.Main["Auto Ken-Haki V2"] or v.Humanoid.Health <= 0
											StartMagnet = false
											Fast = false
										end
									end
								else
									repeat 
										toTarget(CFrame.new(-13493.12890625, 318.89553833008, -8373.7919921875)) 
										wait() 
									until not _G.Settings.Main["Auto Ken-Haki V2"] or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-13493.12890625, 318.89553833008, -8373.7919921875)).Magnitude <= 10
								end
							else
								for i,v in pairs(game.Workspace:GetDescendants()) do
									if v.Name == "Apple" or v.Name == "Banana" or v.Name == "Pineapple" then
										v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,10)
										wait()
										firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,v.Handle,0)    
										wait()
									end
								end  
							end
						end
					end
				end)
			end
		end)
	
		task.spawn(function()
			while wait() do
				pcall(function()
					if _G.Settings.Main["Auto Cavander"] then
						if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == ("Beautiful Pirate [Lv. 1950] [Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
									repeat wait()
										StartMagnet = true
										Fast = true
										if _G.Settings.Configs["Auto Haki"] then
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
											end
										end
										if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
											wait()
											EquipWeapon(_G.Settings.Configs["Select Weapon"])
										end
										PosMon = v.HumanoidRootPart.CFrame
										if not _G.Settings.Configs["Fast Attack"] then
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										end
										if _G.Settings.Configs["Show Hitbox"] then
											v.HumanoidRootPart.Transparency = tonumber(_G.Hitbox_LocalTransparency)
										else
											v.HumanoidRootPart.Transparency = 1
										end
										v.Humanoid.JumpPower = 0
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid:ChangeState(11)
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
									until not _G.Settings.Main["Auto Cavander"] or v.Humanoid.Health <= 0
									StartMagnet = false
									Fast = false
								end
							end
						else
							toTarget(CFrame.new(5283.609375, 22.56223487854, -110.78285217285))
						end
					end
				end)
			end
		end)
		task.spawn(function()
			while wait() do
				if _G.Settings.Main["Auto Yama Sword"] then
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress") >= 30 then
						repeat wait()
							fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
						until game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") or not AutoYama
					end
				end
			end
		end)
	
		task.spawn(function()
			while wait() do
				if _G.Settings.Main["Auto Tushita Sword"] then
					if game:GetService("Workspace").Enemies:FindFirstChild("Longma [Lv. 2000] [Boss]") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == ("Longma [Lv. 2000] [Boss]" or v.Name == "Longma [Lv. 2000] [Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
								repeat wait()
									StartMagnet = true
									Fast = true
									if _G.Settings.Configs["Auto Haki"] then
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
										end
									end
									if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
										wait()
										EquipWeapon(_G.Settings.Configs["Select Weapon"])
									end
									PosMon = v.HumanoidRootPart.CFrame
									if not _G.Settings.Configs["Fast Attack"] then
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									end
									if _G.Settings.Configs["Show Hitbox"] then
										v.HumanoidRootPart.Transparency = tonumber(_G.Hitbox_LocalTransparency)
									else
										v.HumanoidRootPart.Transparency = 1
									end
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid:ChangeState(11)
									toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
								until not _G.Settings.Main["Auto Tushita Sword"] or not v.Parent or v.Humanoid.Health <= 0
								StartMagnet = false
								Fast = false
							end
						end
					else
						toTarget(CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125))
					end
				end
			end
		end)
		task.spawn(function()
			while wait() do
				if _G.Settings.Main["Auto Serpent Bow"] then
					if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == ("Island Empress [Lv. 1675] [Boss]" or v.Name == "Island Empress [Lv. 1675] [Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
								repeat wait()
									StartMagnet = true
									Fast = true
									if _G.Settings.Configs["Auto Haki"] then
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
										end
									end
									if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
										wait()
										EquipWeapon(_G.Settings.Configs["Select Weapon"])
									end
									PosMon = v.HumanoidRootPart.CFrame
									if not _G.Settings.Configs["Fast Attack"] then
										game:GetService'VirtualUser':CaptureController()
										game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
									end
									if _G.Settings.Configs["Show Hitbox"] then
										v.HumanoidRootPart.Transparency = tonumber(_G.Hitbox_LocalTransparency)
									else
										v.HumanoidRootPart.Transparency = 1
									end
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid:ChangeState(11)
									toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
								until not _G.Settings.Main["Auto Serpent Bow"] or not v.Parent or v.Humanoid.Health <= 0
								StartMagnet = false
								Fast = false
							end
						end
					else
						toTarget(CFrame.new(5543.86328125, 668.97399902344, 199.0341796875))
					end
				end
			end
		end)
	
	
		task.spawn(function()
			while wait() do
				pcall(function()
					if _G.Settings.Main["Auto Dark Dagger"] then
						if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == ("rip_indra True Form [Lv. 5000] [Raid Boss]" or v.Name == "rip_indra True Form [Lv. 5000] [Raid Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
									repeat wait()
										StartMagnet = true
										Fast = true
										if _G.Settings.Configs["Auto Haki"] then
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
											end
										end
										if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
											wait()
											EquipWeapon(_G.Settings.Configs["Select Weapon"])
										end
										PosMon = v.HumanoidRootPart.CFrame
										if not _G.Settings.Configs["Fast Attack"] then
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										end
										if _G.Settings.Configs["Show Hitbox"] then
											v.HumanoidRootPart.Transparency = tonumber(_G.Hitbox_LocalTransparency)
										else
											v.HumanoidRootPart.Transparency = 1
										end
										v.Humanoid.JumpPower = 0
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid:ChangeState(11)
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
									until not _G.Settings.Main["Auto Dark Dagger"] or not v.Parent or v.Humanoid.Health <= 0
									StartMagnet = false
									Fast = false
								end
							end
						else
							toTarget(CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781))
						end
					end
				end)
			end
		end)
	
		LPH_NO_VIRTUALIZE(function()
			task.spawn(function()
				while wait() do
					pcall(function()
						if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
							KillMob = (tonumber(string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41)) - 500)
						elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
							KillMob = (tonumber(string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),40,41)) - 500)
						elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
							KillMob = (tonumber(string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),41,41)) - 500)
						end
					end)
				end
			end)
		end)()
	
		task.spawn(function()
			while wait() do
				if _G.Settings.Main["Auto Cake Prince"] then
					pcall(function()
						if game.ReplicatedStorage:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
							if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if _G.Settings.Main["Auto Cake Prince"] and v.Name == "Cake Prince [Lv. 2300] [Raid Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
										repeat wait()
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
												Farmtween = toTarget(v.HumanoidRootPart.CFrame)
											elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
												if Farmtween then
													Farmtween:Stop()
												end
												Fast = true
												if _G.Settings.Configs["Auto Haki"] then
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
													end
												end
												if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
													wait()
													EquipWeapon(_G.Settings.Configs["Select Weapon"])
												end
												PosMon = v.HumanoidRootPart.CFrame
												if not _G.Settings.Configs["Fast Attack"] then
													game:GetService'VirtualUser':CaptureController()
													game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												end
													if _G.Settings.Configs["Show Hitbox"] then
													v.HumanoidRootPart.Transparency = tonumber(_G.Hitbox_LocalTransparency)
												else
													v.HumanoidRootPart.Transparency = 1
												end
												v.Humanoid.JumpPower = 0
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid:ChangeState(11)
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
											end
										until not _G.Settings.Main["Auto Cake Prince"] or not v.Parent or v.Humanoid.Health <= 0
										Fast = false
									end
								end
							else
								if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 and (CFrame.new(-1990.672607421875, 4532.99951171875, -14973.6748046875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >= 2000 then
									Fast = false
									Questtween = toTarget(CFrame.new(-2151.82153, 149.315704, -12404.9053))
									if (CFrame.new(-2151.82153, 149.315704, -12404.9053).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
										if Questtween then Questtween:Stop() end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2151.82153, 149.315704, -12404.9053)
										wait(.1)
									end
								end 
							end
						else
							if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker [Lv. 2275]") then
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if (v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
										repeat wait()
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
												Farmtween = toTarget(v.HumanoidRootPart.CFrame)
											elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
												if Farmtween then
													Farmtween:Stop()
												end
												Fast = true
												StartMagnet = true
												if _G.Settings.Configs["Auto Haki"] then
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
													end
												end
												if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
													wait()
													EquipWeapon(_G.Settings.Configs["Select Weapon"])
												end
												PosMon = v.HumanoidRootPart.CFrame
												if not _G.Settings.Configs["Fast Attack"] then
													game:GetService'VirtualUser':CaptureController()
													game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												end
													if _G.Settings.Configs["Show Hitbox"] then
													v.HumanoidRootPart.Transparency = tonumber(_G.Hitbox_LocalTransparency)
												else
													v.HumanoidRootPart.Transparency = 1
												end
												v.Humanoid.JumpPower = 0
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid:ChangeState(11)
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
											end
										until not _G.Settings.Main["Auto Cake Prince"] or not v.Parent or v.Humanoid.Health <= 0
										StartMagnet = false
										Fast = false
									end
								end
							else
								toTarget(CFrame.new(-2077, 252, -12373))
							end
						end
					end)
				end
			end
		end)
	
		DoughMob = {"Cookie Crafter [Lv. 2200]","Cake Guard [Lv. 2225]","Baking Staff [Lv. 2250]"}
	
		task.spawn(function()
			while wait() do
				if _G.Settings.Main["Auto Dough V2"] then
					if not game:GetService("Workspace").Map.CakeLoaf:FindFirstChild("RedDoor") then
						if game.Players.LocalPlayer.Character:FindFirstChild("Red Key") or game.Players.LocalPlayer.Backpack:FindFirstChild("Red Key") then
							local args = {
								[1] = "CakeScientist",
								[2] = "Check"
							}
	
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))    
							local args = {
								[1] = "RaidsNpc",
								[2] = "Check"
							}
	
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))                        
						end
					elseif game:GetService("Workspace").Map.CakeLoaf:FindFirstChild("RedDoor") then
						if game.Players.LocalPlayer.Character:FindFirstChild("Red Key") or game.Players.LocalPlayer.Backpack:FindFirstChild("Red Key") then
							RedDorTween = toTargetP(CFrame.new(-2681.97998, 64.3921585, -12853.7363, 0.149007782, -1.87902192e-08, 0.98883605, 3.60619588e-08, 1, 1.35681812e-08, -0.98883605, 3.36376011e-08, 0.149007782))
							if (CFrame.new(-2681.97998, 64.3921585, -12853.7363, 0.149007782, -1.87902192e-08, 0.98883605, 3.60619588e-08, 1, 1.35681812e-08, -0.98883605, 3.36376011e-08, 0.149007782).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 5 then
								if RedDorTween then RedDorTween:Stop() end
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2681.97998, 64.3921585, -12853.7363, 0.149007782, -1.87902192e-08, 0.98883605, 3.60619588e-08, 1, 1.35681812e-08, -0.98883605, 3.36376011e-08, 0.149007782)
								wait(0.5)
								EquipWeapon("Red Key")
								wait(0.5)
							end
						elseif game.Workspace:FindFirstChild("Enemies"):FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") then
							if game:GetService("Workspace").Enemies:FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") then
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if _G.Settings.Main["Auto Dough V2"] and v.Name == "Dough King [Lv. 2300] [Raid Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
										repeat wait()
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
												Farmtween = toTarget(v.HumanoidRootPart.CFrame)
											elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
												if Farmtween then
													Farmtween:Stop()
												end
												EquipWeapon(_G.Settings.Configs["Select Weapon"])
												v.HumanoidRootPart.Size = Vector3.new(55,55,55)
												Fast = true
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
											end
										until not _G.Settings.Main["Auto Dough V2"] or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("ReplicatedStorage"):FindFirstChild("Dough King [Lv. 2300] [Raid Boss]")
										Fast = false
									end
								end
							else
								if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 then
									Fast = false
									Questtween = toTargetP(CFrame.new(-2151.82153, 149.315704, -12404.9053))
									if (CFrame.new(-2151.82153, 149.315704, -12404.9053).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
										if Questtween then Questtween:Stop() end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2151.82153, 149.315704, -12404.9053)
										wait(1)
									end
								end 
							end
						elseif game.Players.LocalPlayer.Character:FindFirstChild("Sweet Chalice") or game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice") then
							--if string.find(tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner", true)),"already") then
	
							--else
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner", true)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
							if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker [Lv. 2275]") then
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if _G.Settings.Main["Auto Dough V2"] and (v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
										repeat wait()
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
												Farmtween = toTarget(v.HumanoidRootPart.CFrame)
											elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
												if Farmtween then Farmtween:Stop() end
												Fast = true
												PosMon = v.HumanoidRootPart.CFrame
												StartMagnet = true
												EquipWeapon(_G.Settings.Configs["Select Weapon"])
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner", true)
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
											end
										until not _G.Settings.Main["Auto Dough V2"] or not v.Parent or v.Humanoid.Health <= 0
										Fast = false
										StartMagnet = false
									end
								end
							else
								StartMagnet = false
								Fast = false
								Questtween = toTarget(CFrame.new(-2077, 252, -12373))
								if (CFrame.new(-2077, 252, -12373).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
									if Questtween then Questtween:Stop() end
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2077, 252, -12373)
								end
							end
	
							--end
						elseif (game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice")) and GetMaterial("Conjured Cocoa") >= 10 then
							game.ReplicatedStorage.Remotes.CommF_:InvokeServer("SweetChaliceNpc")
							wait(0.2)
						elseif not game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") and not game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") and (game.Workspace.Enemies:FindFirstChild("Deandre [Lv. 1750]") or game.Workspace.Enemies:FindFirstChild("Urban [Lv. 1750]") or game.Workspace.Enemies:FindFirstChild("Diablo [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Deandre [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Urban [Lv. 1750]") or game.ReplicatedStorage:FindFirstChild("Diablo [Lv. 1750]")) then
							if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
								if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Diablo") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Urban") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Deandre") then
									for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
										if string.find(v.Name,"Diablo") then
											DoughTween = toTarget(v.HumanoidRootPart.CFrame)
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
												if DoughTween then
													DoughTween:Stop()
												end
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
											end
										end	
										if string.find(v.Name,"Urban") then
											DoughTween = toTarget(v.HumanoidRootPart.CFrame)
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
												if DoughTween then
													DoughTween:Stop()
												end
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
											end
										end	
										if string.find(v.Name,"Deandre") then
											DoughTween = toTarget(v.HumanoidRootPart.CFrame)
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
												if DoughTween then
													DoughTween:Stop()
												end
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
											end
										end	
									end
									for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
										if _G.Settings.Main["Auto Dough V2"] and string.find(v.Name,"Diablo") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
											repeat wait()
												if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
													Farmtween = toTarget(v.HumanoidRootPart.CFrame)
												elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
													if Farmtween then
														Farmtween:Stop()
													end
													EquipWeapon(_G.Settings.Configs["Select Weapon"])
													Fast = true
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
												end 
											until not _G.Settings.Main["Auto Dough V2"] or not v.Parent or v.Humanoid.Health <= 0
											Fast = false
										end
										if _G.Settings.Main["Auto Dough V2"] and string.find(v.Name,"Urban") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
											repeat wait()
												if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
													Farmtween = toTarget(v.HumanoidRootPart.CFrame)
												elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
													if Farmtween then
														Farmtween:Stop()
													end
													EquipWeapon(_G.Settings.Configs["Select Weapon"])
													Fast = true
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
												end 
											until not _G.Settings.Main["Auto Dough V2"] or not v.Parent or v.Humanoid.Health <= 0
											Fast = false
										end
										if _G.Settings.Main["Auto Dough V2"] and string.find(v.Name,"Deandre") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
											repeat wait()
												if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
													Farmtween = toTarget(v.HumanoidRootPart.CFrame)
												elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
													if Farmtween then
														Farmtween:Stop()
													end
													EquipWeapon(_G.Settings.Configs["Select Weapon"])
													Fast = true
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
												end 
											until not _G.Settings.Main["Auto Dough V2"] or not v.Parent or v.Humanoid.Health <= 0
											Fast = false
										end
									end
								else
									local string_1 = "EliteHunter";
									local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
									Target:InvokeServer(string_1);
								end
							else
								local string_1 = "EliteHunter";
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1);
							end
						else
							if game:GetService("Workspace").Enemies:FindFirstChild("Candy Rebel [Lv. 2375]") or game:GetService("Workspace").Enemies:FindFirstChild("Sweet Thief [Lv. 2350]") or game:GetService("Workspace").Enemies:FindFirstChild("Chocolate Bar Battler [Lv. 2325]") or game:GetService("Workspace").Enemies:FindFirstChild("Cocoa Warrior [Lv. 2300]") then
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if _G.Settings.Main["Auto Dough V2"] and (v.Name == "Candy Rebel [Lv. 2375]" or v.Name == "Sweet Thief [Lv. 2350]" or v.Name == "Chocolate Bar Battler [Lv. 2325]" or v.Name == "Cocoa Warrior [Lv. 2300]") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
										repeat wait()
											-- if game.Players.LocalPlayer:DistanceFromCharacter(v.HumanoidRootPart.Position) > 3500 then
											--     if Questtween then Questtween:Stop() end
											--     if game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):GetState() == Enum.HumanoidStateType.Dead then return end
											--     ResetSetSpawn(v.HumanoidRootPart.CFrame)
											-- else
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 150 then
												Farmtween = toTarget(v.HumanoidRootPart.CFrame)
												Fast = false
											elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
												if Farmtween then Farmtween:Stop() end
												Fast = true
												PosFarmCoco = v.HumanoidRootPart.CFrame
												EquipWeapon(_G.Settings.Configs["Select Weapon"])
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
												MagnetFarmCoco = true
											end
										until not _G.Settings.Main["Auto Dough V2"] or not v.Parent or v.Humanoid.Health <= 0
										Fast = false
										MagnetFarmCoco = false
									end
								end
							else
								MagnetFarmCoco = false
								Fast = false
								Questtween = toTarget(CFrame.new(620.6344604492188, 78.93644714355469, -12581.369140625))
								if (CFrame.new(620.6344604492188, 78.93644714355469, -12581.369140625).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
									if Questtween then
										Questtween:Stop()
									end
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(620.6344604492188, 78.93644714355469, -12581.369140625)
								end
							end
						end
					else
						print("Error Whyyy")
					end
				else
					break;
				end
			end
		end)
	
		LPH_JIT_MAX(function()
			task.spawn(function() -- Bring Mob Function
				while wait() do
					if StartSoulGuitarMagnt then 
						pcall(function() 
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if v.Name == "Living Zombie [Lv. 2000]" then 
									v.HumanoidRootPart.CFrame = CFrame.new(-10138.3974609375, 138.6524658203125, 5902.89208984375)
									v.Head.CanCollide = false
									v.Humanoid.Sit = false
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									if v.Humanoid:FindFirstChild('Animator') then
										v.Humanoid:FindFirstChild('Animator'):Destroy() 
									end
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
								end
							end    
						end)
					end
				end
			end)
		end)()
	
	task.spawn(function()
		while wait() do 
			if _G.Settings.Main["Auto SeaBeast"] then
				if inmyself("Fist of Darkness") then
					return
				end
				if (game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == true) or CheckSeabeast() then
					if CheckSeabeast() then
						pcall(function()
							game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
							for i,v in pairs(game.Workspace.SeaBeasts:GetChildren()) do
								if _G.Settings.Main["Auto SeaBeast"] and v:FindFirstChild("HumanoidRootPart") and v.Health.Value > 0 then
									repeat wait()
										if (CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X,250,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 150 then
											Farmtween = toTarget(CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X,250,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z))
										elseif (CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X,250,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
											if Farmtween then
												Farmtween:Stop()
											end
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X,250,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z)
											SpamSkillSea = true
											PosKillSea = v.HumanoidRootPart.Position
										end
									until not _G.Settings.Main["Auto SeaBeast"] or not v.Parent or not v:FindFirstChild("HumanoidRootPart") or v.Health.Value == 0
									SpamSkillSea = false
								end
							end
						end)
					elseif game.Players.LocalPlayer.Character.Humanoid.Sit == true then
						SpamSkillSea = false
						game:service('VirtualInputManager'):SendKeyEvent(true, "W", false, game)
						wait(0.5)
						game:service('VirtualInputManager'):SendKeyEvent(false, "W", false, game)
						wait(1)
						game:service('VirtualInputManager'):SendKeyEvent(true, "S", false, game)
						wait(0.5)
						game:service('VirtualInputManager'):SendKeyEvent(false, "S", false, game)
						wait(1)
					end
				elseif myboat() and (game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == false) and (World2 and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(38.905670166015625, -0.4971587657928467, 5150.13623046875)).Magnitude > 30) or (World3 and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(163.8607940673828, -0.4971587657928467, 3242.834716796875)).Magnitude > 30) then
					SpamSkillSea = false
					local TweenToSea
					if World2 then
						TweenToSea = toTarget(CFrame.new(38.905670166015625, -0.4971587657928467, 5150.13623046875))
					elseif World3 then
						TweenToSea = toTarget(CFrame.new(163.8607940673828, -0.4971587657928467, 3242.834716796875))
					end
					TweenToSea:Wait()
					wait(2)
				elseif myboat() and (game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == false) then
					SpamSkillSea = false
					game:service('VirtualInputManager'):SendKeyEvent(true, "W", false, game)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = myboat()
					wait()
					game:service('VirtualInputManager'):SendKeyEvent(false, "W", false, game)
					game:service('VirtualInputManager'):SendKeyEvent(true, "W", false, game)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = myboat()
					wait()
					game:service('VirtualInputManager'):SendKeyEvent(false, "W", false, game)
				elseif not myboat() then
					Com("F_","BuyBoat","Dinghy")
					wait(1)
				end
			end
		end
	end)
	
	task.spawn(function()
		while wait() do 
			if _G.Settings.Main["Auto SeaBeast"] then
				if SpamSkillSea then
					local NameWeaponBounty = {}
					for index,value in pairs({"Melee", "Sword","DevilFruit","Gun"}) do 
						if value == "DevilFruit" then value = "Blox Fruit" end
						for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
							if v:IsA("Tool") then
								if v.ToolTip == value then
									table.insert(NameWeaponBounty,v.Name)
								end
							end
						end
						for i ,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
							if v:IsA("Tool") then
								if v.ToolTip == value then
									table.insert(NameWeaponBounty,v.Name)
								end
							end
						end
					end
					for i,v in pairs(NameWeaponBounty) do 
						repeat wait()
							EquipWeapon(v)
						until game.Players.LocalPlayer.Character:FindFirstChild(v)
						wait()
						local Module = require(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChild("Data") or game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):FindFirstChildOfClass("ModuleScript"))
						for i2,v2 in pairs(Module["Cooldown"]) do 
							if Module["Lvl"][i2] <= game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):WaitForChild("Level").Value then
								if i2 ~= nil and i2 and #i2 == 1 then
									game:service('VirtualInputManager'):SendKeyEvent(true, tostring(i2), false, game)
									wait(.1)
									game:service('VirtualInputManager'):SendKeyEvent(false, tostring(i2), false, game)
	
									wait()
								end
							end
						end
						wait(0.1)
					end
				end
			end
		end
	end)
	
	task.spawn(function()
		while wait() do 
			if AutoFarmMaterial then    
				pcall(function()
					if (SelectModeMaterial~="") then 
						CheckMaterial(SelectModeMaterial);
						if CustomFindFirstChild(MaterialMob) then
							for v0,v1 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
								if (AutoFarmMaterial and table.find(MaterialMob,v1.Name) and v1:FindFirstChild("HumanoidRootPart") and v1:FindFirstChild("Humanoid") and (v1.Humanoid.Health>0)) then 
									repeat wait();
										FarmtoTarget=toTarget(v1.HumanoidRootPart.CFrame * CFrame.new(0,30,1));
										if (v1:FindFirstChild("HumanoidRootPart") and v1:FindFirstChild("Humanoid") and ((v1.HumanoidRootPart.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude<=150)) then 
											if FarmtoTarget then FarmtoTarget:Stop(); end 
											Fast = true;
											StartMagnet = true;
											EquipWeapon(_G.Settings.Configs["Select Weapon"]);
											PosMon = v1.HumanoidRootPart.CFrame;
											if (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value>=150)) then 
												game:service("VirtualInputManager"):SendKeyEvent(true,"V",false,game);
												game:service("VirtualInputManager"):SendKeyEvent(false,"V",false,game);
											end 
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v1.HumanoidRootPart.CFrame * CFrame.new(0,30,1);
										end 
									until not CustomFindFirstChild(MaterialMob) or not AutoFarmMaterial or (v1.Humanoid.Health<=0) or not v1.Parent Fast=false;
									Fast = false;
									StartMagnet = false;
								end 
							end 
						else 
							Fast=false;
							Modstween = toTarget(CFrameMon);
							if (World1 and (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and ((CFrameMon.Position-game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude>50000)) then 
								if Modstween then Modstween:Stop(); end wait(0.5);game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625,11.6796875,1819.7841796875));
							elseif (World1 and not (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and ((CFrameMon.Position-game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude>50000)) then 
								if Modstween then Modstween:Stop();end wait(0.5);game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625,6.6796875, -1926.7841796875));
							elseif (World1 and (table.find(MaterialMob,"God's Guard [Lv. 450]")) and ((CFrameMon.Position-game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude>3000)) then 
								if Modstween then Modstween:Stop();end wait(0.5);game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new( -4607.8227539063,872.54248046875, -1667.5568847656));
							elseif ((CFrameMon.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude<=150) then 
								if Modstween then Modstween:Stop();end 
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon;
							end 
						end 
					end
				end)
			end
		end
	end)
	
	task.spawn(function()
		while wait() do
			pcall(function()
				if GetWeaponInventory("Soul Guitar") == false then
					if _G.Settings.Main["Auto Quest Soul Guitar"] then
						if GetMaterial("Bones") >= 500 and GetMaterial("Ectoplasm") >= 250 and GetMaterial("Dark Fragment") >= 1 then
							if (CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3000 then
								if game:GetService("Workspace").Map["Haunted Castle"].Candle1.Transparency == 0 then
									local Remotes = game.ReplicatedStorage:WaitForChild("Remotes");
									local __CommF = Remotes:WaitForChild("CommF_");
									local GuitarProgress = __CommF:InvokeServer("GuitarPuzzleProgress", "Check");
									if not GuitarProgress then 
										local gravestoneEvent = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("gravestoneEvent", 2);
										if gravestoneEvent == true then
											__CommF:InvokeServer("gravestoneEvent", 2, true);
										else 
											if _G.Settings.Main["Auto Quest Soul Guitar Hop"] then
												Fast_Hop()
											end
										end;
									end
									if GuitarProgress then 
										local Swamp = GuitarProgress.Swamp;
										local Gravestones = GuitarProgress.Gravestones;
										local Ghost = GuitarProgress.Ghost;
										local Trophies = GuitarProgress.Trophies;
										local Pipes = GuitarProgress.Pipes;
										local CraftedOnce = GuitarProgress.CraftedOnce;
										if Swamp and Gravestones and Ghost and Trophies and Pipes then 
											_G.Settings.Main["Auto Quest Soul Guitar"] = false
										end
										if not Swamp then 
											repeat wait() 
												Tween(CFrame.new(-10141.462890625, 138.6524658203125, 5935.06298828125) * CFrame.new(0,30,0))
											until game.Players.LocalPlayer:DistanceFromCharacter(Vector3.new(-10141.462890625, 138.6524658203125, 5935.06298828125)) <= 100
											for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
												if v.Name == "Living Zombie [Lv. 2000]" then
													if v:FindFirstChild('Humanoid') then 
														if v:FindFirstChild('HumanoidRootPart') then 
															if game.Players.LocalPlayer:DistanceFromCharacter(v.HumanoidRootPart.Position) <= 2000 then 
																repeat wait() 
																	if _G.Settings.Configs["Auto Haki"] then
																		if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
																		end
																	end
																	if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
																		wait()
																		EquipWeapon(_G.Settings.Configs["Select Weapon"])
																	end
																	if not _G.Settings.Configs["Fast Attack"] then
																		game:GetService'VirtualUser':CaptureController()
																		game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
																	end
																							if _G.Settings.Configs["Show Hitbox"] then
																		v.HumanoidRootPart.Transparency = tonumber(_G.Hitbox_LocalTransparency)
																	else
																		v.HumanoidRootPart.Transparency = 1
																	end
																	v.HumanoidRootPart.CFrame = CFrame.new(-10138.3974609375, 138.6524658203125, 5902.89208984375)
																	StartSoulGuitarMagnt = true
																	v.Humanoid.JumpPower = 0
																	v.Humanoid.WalkSpeed = 0
																	v.HumanoidRootPart.CanCollide = false
																	v.Humanoid:ChangeState(11)
																	toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,15))
																until not v.Parent or v.Humanoid.Health <= 0 or not  v:FindFirstChild('HumanoidRootPart') or not v:FindFirstChild('Humanoid') or not _G.Settings.Main["Auto Quest Soul Guitar"]
																StartSoulGuitarMagnt = false
															end
														end
													end
												end
											end   
										end
										wait(1)
										if Swamp and not Gravestones then 
											__CommF:InvokeServer("GuitarPuzzleProgress", "Gravestones");
										end
										wait(1)
										if Swamp and  Gravestones and not Ghost then 
											__CommF:InvokeServer("GuitarPuzzleProgress", "Ghost");
										end 
										wait(1)
										if  Swamp and  Gravestones and Ghost and not Trophies then 
											__CommF:InvokeServer("GuitarPuzzleProgress", "Trophies");
										end
										wait(1)
										if  Swamp and  Gravestones and Ghost and Trophies and not Pipes then 
											__CommF:InvokeServer("GuitarPuzzleProgress", "Pipes");
										end
									end
								else
									if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2), "Error") then
										print("Go to Grave")
										toTarget(CFrame.new(-8653.2060546875, 140.98487854003906, 6160.033203125))
									elseif string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2), "Nothing") then
										print("Wait Next Night")
									else
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2,true)
									end
								end
							else
								toTarget(CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125))
							end
						else
							if GetMaterial("Ectoplasm") <= 250 then
								if World2 then
									if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand [Lv. 1250]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer [Lv. 1275]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward [Lv. 1300]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer [Lv. 1325]") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior [Lv. 1350]") then
										for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
											if v.Name == "Ship Deckhand [Lv. 1250]" or v.Name == "Ship Engineer [Lv. 1275]" or v.Name == "Ship Steward [Lv. 1300]" or v.Name == "Ship Officer [Lv. 1325]" or v.Name == "Arctic Warrior [Lv. 1350]" then
												if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
													repeat wait()
														StartMagnet = true
														Fast = true
														if _G.Settings.Configs["Auto Haki"] then
															if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
															end
														end
														if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
															wait()
															EquipWeapon(_G.Settings.Configs["Select Weapon"])
														end
														PosMon = v.HumanoidRootPart.CFrame
														if not _G.Settings.Configs["Fast Attack"] then
															game:GetService'VirtualUser':CaptureController()
															game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
														end
																	if _G.Settings.Configs["Show Hitbox"] then
															v.HumanoidRootPart.Transparency = tonumber(_G.Hitbox_LocalTransparency)
														else
															v.HumanoidRootPart.Transparency = 1
														end
														v.Humanoid.JumpPower = 0
														v.Humanoid.WalkSpeed = 0
														v.HumanoidRootPart.CanCollide = false
														v.Humanoid:ChangeState(11)
														toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
													until not _G.Settings.Main["Auto Quest Soul Guitar"] or not v.Parent or v.Humanoid.Health <= 0
													StartMagnet = false
													Fast = false
												end
											end
										end
									else
										StartMagnet = false
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
									end
								else
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
								end
							elseif GetMaterial("Dark Fragment") < 1 then
								if World2 then
									if game.ReplicatedStorage:FindFirstChild("Darkbeard [Lv. 1000] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard [Lv. 1000] [Raid Boss]") then
										for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
											if v.Name == "Darkbeard [Lv. 1000] [Raid Boss]" and v.Humanoid.Health > 0 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
												repeat wait()
													Fast = true
													if _G.Settings.Configs["Auto Haki"] then
														if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
														end
													end
													if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
														wait()
														EquipWeapon(_G.Settings.Configs["Select Weapon"])
													end
													if not _G.Settings.Configs["Fast Attack"] then
														game:GetService'VirtualUser':CaptureController()
														game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
													end
															if _G.Settings.Configs["Show Hitbox"] then
														v.HumanoidRootPart.Transparency = tonumber(_G.Hitbox_LocalTransparency)
													else
														v.HumanoidRootPart.Transparency = 1
													end
													v.Humanoid.JumpPower = 0
													v.Humanoid.WalkSpeed = 0
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid:ChangeState(11)
													toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
												until _G.Settings.Main["Auto Quest Soul Guitar"] or v.Humanoid.Health <= 0
											end
										end
									else
										toTarget(CFrame.new(3798.4575195313, 13.826690673828, -3399.806640625))
									end
								else
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
								end
							elseif GetMaterial("Bones") <= 500 then
								if World3 then
									if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul [Lv. 2025]") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]") then
										for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
											if v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]" then
												if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
													repeat wait()
														StartMagnet = true
														Fast = true
														if _G.Settings.Configs["Auto Haki"] then
															if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
															end
														end
														if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
															wait()
															EquipWeapon(_G.Settings.Configs["Select Weapon"])
														end
														PosMon = v.HumanoidRootPart.CFrame
														if not _G.Settings.Configs["Fast Attack"] then
															game:GetService'VirtualUser':CaptureController()
															game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
														end
																	if _G.Settings.Configs["Show Hitbox"] then
															v.HumanoidRootPart.Transparency = tonumber(_G.Hitbox_LocalTransparency)
														else
															v.HumanoidRootPart.Transparency = 1
														end
														v.Humanoid.JumpPower = 0
														v.Humanoid.WalkSpeed = 0
														v.HumanoidRootPart.CanCollide = false
														v.Humanoid:ChangeState(11)
														toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
													until not _G.Settings.Main["Auto Quest Soul Guitar"] or v.Humanoid.Health <= 0 or not v.Parent or v.Humanoid.Health <= 0
													StartMagnet = false
													Fast = false
												end
											end
										end
									else
										toTarget(CFrame.new(-9504.8564453125, 172.14292907714844, 6057.259765625))
									end
								else
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
								end
							end
						end
					end
				end
			end)
		end
	end)
	
	task.spawn(function()
		while wait() do
			if _G.Settings.Boss["Auto All Boss"] then
				pcall(function()
					CheckBossQuest()
					if MsBoss == "Soul Reaper [Lv. 2100] [Raid Boss]" or MsBoss == "Longma [Lv. 2000] [Boss]" or MsBoss == "Don Swan [Lv. 1000] [Boss]" or MsBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" or MsBoss == "Order [Lv. 1250] [Raid Boss]" or MsBoss == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
						if game:GetService("ReplicatedStorage"):FindFirstChild(MsBoss) or game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
							if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == MsBoss then
										repeat wait()
											_G.GetBoss = true
											if _G.Settings.Configs["Auto Haki"] then
												if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
												end
											end
											if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
												wait()
												EquipWeapon(_G.Settings.Configs["Select Weapon"])
											end
											StartMagnet = true
											Fast = true
											toTarget(v.HumanoidRootPart.CFrame * CFrame.new(1,30,0))
											PosMon = v.HumanoidRootPart.CFrame
											v.Humanoid.JumpPower = 0
											v.Humanoid.WalkSpeed = 0
											v.HumanoidRootPart.CanCollide = false
											v.Humanoid:ChangeState(11)
										until _G.Settings.Boss["Auto All Boss"] == false or not v.Parent or v.Humanoid.Health <= 0
										_G.GetBoss = false
									end
								end
							else
								_G.GetBoss = true
								toTarget(CFrameBoss)
							end
						else
							_G.GetBoss = false
							wait(3)
							if game:GetService("ReplicatedStorage"):FindFirstChild(MsBoss) then
	
							else
								if _G.Settings.Boss["Auto All Boss Hop"] then
									Fast_Hop()
								end
							end
						end
					else
						if _G.Settings.Boss["Auto Quest"] then
							CheckBossQuest()
							if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
							end
							if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
								_G.GetBoss = true
								repeat wait() toTarget(CFrameQuestBoss) until (CFrameQuestBoss.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Settings.Boss["Auto All Boss"]
								if (CFrameQuestBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
									wait(1.1)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuestBoss, LevelQuestBoss)
								end
							elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
								if game:GetService("ReplicatedStorage"):FindFirstChild(MsBoss) or game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
									if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
										for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
											if v.Name == MsBoss then
												repeat wait()
													_G.GetBoss = true
													if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
														if _G.Settings.Configs["Auto Haki"] then
															if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
															end
														end
														if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
															wait()
															EquipWeapon(_G.Settings.Configs["Select Weapon"])
														end
														StartMagnet = true
														Fast = true
														toTarget(v.HumanoidRootPart.CFrame * CFrame.new(1,30,0))
														PosMon = v.HumanoidRootPart.CFrame
																	v.Humanoid.JumpPower = 0
														v.Humanoid.WalkSpeed = 0
														v.HumanoidRootPart.CanCollide = false
														v.Humanoid:ChangeState(11)								
													else
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
													end
												until _G.Settings.Boss["Auto All Boss"] == false or not v.Parent or v.Humanoid.Health <= 0
												_G.GetBoss = false
											end
										end
									else
										_G.GetBoss = true
										toTarget(CFrameBoss)
									end
								else
									_G.GetBoss = false
									wait(3)
									if game:GetService("ReplicatedStorage"):FindFirstChild(MsBoss) then
			
									else
										if _G.Settings.Boss["Auto All Boss Hop"] then
											Fast_Hop()
										end
									end
								end
							end
						else
							if game:GetService("ReplicatedStorage"):FindFirstChild(MsBoss) or game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
								if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == MsBoss then
											repeat wait()
												_G.GetBoss = true
												if _G.Settings.Configs["Auto Haki"] then
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
													end
												end
												if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
													wait()
													EquipWeapon(_G.Settings.Configs["Select Weapon"])
												end
												StartMagnet = true
												Fast = true
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(1,30,0))
												PosMon = v.HumanoidRootPart.CFrame
													v.Humanoid.JumpPower = 0
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid:ChangeState(11)								
											until _G.Settings.Boss["Auto All Boss"] == false or not v.Parent or v.Humanoid.Health <= 0
											_G.GetBoss = false
										end
									end
								else
									_G.GetBoss = true
									toTarget(CFrameBoss)
								end
							else
								_G.GetBoss = false
								wait(3)
								if game:GetService("ReplicatedStorage"):FindFirstChild(MsBoss) then
		
								else
									if _G.Settings.Boss["Auto All Boss Hop"] then
										Fast_Hop()
									end
								end
							end
						end
					end
				end)
			end
		end
	end)
	
	task.spawn(function()
		while wait() do
			if _G.Settings.Boss["Auto Boss Select"] then
				pcall(function()
					CheckBossQuest()
					if MsBoss == "Soul Reaper [Lv. 2100] [Raid Boss]" or MsBoss == "Longma [Lv. 2000] [Boss]" or MsBoss == "Don Swan [Lv. 1000] [Boss]" or MsBoss == "Cursed Captain [Lv. 1325] [Raid Boss]" or MsBoss == "Order [Lv. 1250] [Raid Boss]" or MsBoss == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
						if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == MsBoss then
									repeat wait()
										if _G.Settings.Configs["Auto Haki"] then
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
											end
										end
										if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
											wait()
											EquipWeapon(_G.Settings.Configs["Select Weapon"])
										end
										StartMagnet = true
										Fast = true
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(1,30,0))
										PosMon = v.HumanoidRootPart.CFrame
										v.Humanoid.JumpPower = 0
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid:ChangeState(11)
									until _G.Settings.Boss["Auto Boss Select"] == false or not v.Parent or v.Humanoid.Health <= 0
								end
							end
						else
							toTarget(CFrameBoss)
						end
					else
						if _G.Settings.Boss["Auto Quest"] then
							CheckBossQuest()
							if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
							end
							if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
								repeat wait() toTarget(CFrameQuestBoss) until (CFrameQuestBoss.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Settings.Boss["Auto Boss Select"]
								if (CFrameQuestBoss.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
									wait(1.1)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuestBoss, LevelQuestBoss)
								end
							elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
								if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == MsBoss then
											repeat wait()
												if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameBoss) then
													if _G.Settings.Configs["Auto Haki"] then
														if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
														end
													end
													if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
														wait()
														EquipWeapon(_G.Settings.Configs["Select Weapon"])
													end
													StartMagnet = true
													Fast = true
													toTarget(v.HumanoidRootPart.CFrame * CFrame.new(1,30,0))
													PosMon = v.HumanoidRootPart.CFrame
															v.Humanoid.JumpPower = 0
													v.Humanoid.WalkSpeed = 0
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid:ChangeState(11)								
												else
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
												end
											until _G.Settings.Boss["Auto Boss Select"] == false or not v.Parent or v.Humanoid.Health <= 0
										end
									end
								else
									toTarget(CFrameBoss)
								end
							end
						else
							if game:GetService("Workspace").Enemies:FindFirstChild(MsBoss) then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == MsBoss then
										repeat wait()
											if _G.Settings.Configs["Auto Haki"] then
												if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
												end
											end
											if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
												wait()
												EquipWeapon(_G.Settings.Configs["Select Weapon"])
											end
											StartMagnet = true
											Fast = true
											toTarget(v.HumanoidRootPart.CFrame * CFrame.new(1,30,0))
											PosMon = v.HumanoidRootPart.CFrame
											v.Humanoid.JumpPower = 0
											v.Humanoid.WalkSpeed = 0
											v.HumanoidRootPart.CanCollide = false
											v.Humanoid:ChangeState(11)								
										until _G.Settings.Boss["Auto Boss Select"] == false or not v.Parent or v.Humanoid.Health <= 0
									end
								end
							else
								toTarget(CFrameBoss)
							end
						end
					end
				end)
			end
		end
	end)
	
	local SupComplete = false
	local EClawComplete = false
	local TalComplete = false
	local SharkComplete = false
	local DeathComplete = false
	local GodComplete = false
	
	function GetAllMeleeFarm()
		if SupComplete == false then
			local args = {
				[1] = "BuySuperhuman"
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			if CheckMasteryWeapon("Superhuman",400) == "true UpTo" then
				SupComplete = true
			end
		end
		wait(.5)
		if EClawComplete == false then
			local string_1 = "BuyElectricClaw";
			local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
			Target:InvokeServer(string_1);
	
			if CheckMasteryWeapon("Electric Claw",400) == "true UpTo" then
				EClawComplete = true
			end
		end
		wait(.5)
		if TalComplete == false then
			game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon")
	
			if CheckMasteryWeapon("Dragon Talon",400) == "true UpTo" then
				TalComplete = true
			end
		end
		wait(.5)
		if SharkComplete == false then
			local args = {
				[1] = "BuySharkmanKarate"
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	
			if CheckMasteryWeapon("Sharkman Karate",400) == "true UpTo" then
				SharkComplete = true
			end
		end
		wait(.5)
		if DeathComplete == false then
			local args = {
				[1] = "BuyDeathStep"
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	
			if CheckMasteryWeapon("Death Step",400) == "true UpTo" then
				DeathComplete = true
			end
		end
		if GodComplete == false then
			local args = {
				[1] = "BuyGodhuman"
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	
			if CheckMasteryWeapon("Godhuman",350) == "true UpTo" then
				GodComplete = true
			end
		end
	end
	
	task.spawn(function()
		while wait() do
			pcall(function()
				if _G.Settings.FightingStyle["Auto God Human"] then
					BuyGodhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true))
					if BuyGodhuman then
						if BuyGodhuman == 1 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
							_G.Settings.FightingStyle["Auto God Human"] = false
						end
					end
					if not HasTalon then
						BuyDragonTalon = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true))
	
						if BuyDragonTalon then
							if BuyDragonTalon == 1 then
								HasTalon = true
							end
						end
					end
					if not HasSuperhuman then
						BuySuperhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman",true))
	
						if BuySuperhuman then
							if BuySuperhuman == 1 then
								HasSuperhuman = true
							end
						end
					end
					if not HasKarate then
						BuySharkmanKarate = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true))
	
						if BuySharkmanKarate then
							if BuySharkmanKarate == 1 then
								HasKarate = true
							end
						end
					end
					if not HasDeathStep then
						BuyDeathStep = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer( "BuyDeathStep",true))
	
						if BuyDeathStep then
							if BuyDeathStep == 1 then
								HasDeathStep = true
							end
						end
					end
					if not HasElectricClaw then
						BuyElectricClaw = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true))
						if BuyElectricClaw then
							if BuyElectricClaw == 1 then
								HasElectricClaw = true
							end
						end
					end
	
					if not HasSuperhuman then
						if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
							if not game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") and not game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
								if not game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and not game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") then
									if not game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and not game.Players.LocalPlayer.Character:FindFirstChild("Electro") then
										if not game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and not game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") then
											if not game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and not game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
												if not game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") and not game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") then
													local args = {
														[1] = "BuyElectro"
													}
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
												end
											end
										end
									end
								end
							end
							_G.Settings.Configs["Select Weapon"] = GetFightingStyle("Melee")
	
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
								local args = {
									[1] = "BuyElectro"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							end
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300 then
								local args = {
									[1] = "BuyBlackLeg"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							end
							if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 then
								local args = {
									[1] = "BuyBlackLeg"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							end
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300 then
								local args = {
									[1] = "BuyFishmanKarate"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							end
							if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300 then
								local args = {
									[1] = "BuyFishmanKarate"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							end
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300  then
								local args = {
									[1] = "BlackbeardReward",
									[2] = "DragonClaw",
									[3] = "2"
								}
								HaveDragonClaw = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								if _G.Settings.FightingStyle["Auto God Human"] and game.Players.LocalPlayer.Data.Fragments.Value <= 1500 and HaveDragonClaw == 0 then
									if game.Players.LocalPlayer.Data.Level.Value > 1100 then
										if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = false end
									end
								else
									if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = true end
									local args = {
										[1] = "BlackbeardReward",
										[2] = "DragonClaw",
										[3] = "2"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								end
							end
							if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300  then
								local args = {
									[1] = "BlackbeardReward",
									[2] = "DragonClaw",
									[3] = "2"
								}
								HaveDragonClaw = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								if _G.Settings.FightingStyle["Auto God Human"] and game.Players.LocalPlayer.Data.Fragments.Value <= 1500 and HaveDragonClaw == 0 then
									if game.Players.LocalPlayer.Data.Level.Value > 1100 then
										if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = false end
									end
								else
									if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = true end
									local args = {
										[1] = "BlackbeardReward",
										[2] = "DragonClaw",
										[3] = "2"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
									if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = true end
								end
							end
	
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300 then
								if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = true end
								local args = {
									[1] = "BuySuperhuman"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							end
							if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300 then
								if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = true end
								local args = {
									[1] = "BuySuperhuman"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							end 
						end
					elseif not HasKarate then
						if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
							if not game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and not game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") then
								if not game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and not game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") then
									local args = {
										[1] = "BuyFishmanKarate"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								end
							end
	
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 400 then
								if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) == "I lost my house keys, could you help me find them? Thanks." and not game.Players.LocalPlayer.Character:FindFirstChild("Water Key") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key") then
									if World2 then
										KillSharkMan = true
										if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = false end
									else
										KillSharkMan = false
										if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = true end
									end
								elseif tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)) == 1 then
									KillSharkMan = false
									if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = true end
									local args = {
										[1] = "BuySharkmanKarate"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								elseif game.Players.LocalPlayer.Character:FindFirstChild("Water Key") or game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key") then
									KillSharkMan = false
									if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = true end
									local args = {
										[1] = "BuySharkmanKarate"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								end
							end
	
							if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 400 then
								if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) == "I lost my house keys, could you help me find them? Thanks." and not game.Players.LocalPlayer.Character:FindFirstChild("Water Key") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key") then
									if World2 then
										KillSharkMan = true
										if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = false end
									else
										if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = true end
										KillSharkMan = false
									end
								elseif tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)) == 1 then
									KillSharkMan = false
									if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = true end
									local args = {
										[1] = "BuySharkmanKarate"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								elseif game.Players.LocalPlayer.Character:FindFirstChild("Water Key") or game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key") then
									KillSharkMan = false
									if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = true end
									local args = {
										[1] = "BuySharkmanKarate"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								end
							end
							_G.Settings.Configs["Select Weapon"] = GetFightingStyle("Melee")
						end
					elseif not HasDeathStep then
						if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 400 then
								local args = {
									[1] = "BuyDeathStep"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	
							end  
							if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 400 then
								local args = {
									[1] = "BuyDeathStep"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	
							end  
							_G.Settings.Configs["Select Weapon"] = GetFightingStyle("Melee")
						end
					elseif not HasTalon then
						if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
							_G.Settings.Configs["Select Weapon"] = GetFightingStyle("Melee")
	
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 400 and game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
								if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 3 then
									local string_1 = "Bones";
									local string_2 = "Buy";
									local number_1 = 1;
									local number_2 = 1;
									local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
									Target:InvokeServer(string_1, string_2, number_1, number_2);
	
									local string_1 = "BuyDragonTalon";
									local bool_1 = true;
									local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
									Target:InvokeServer(string_1, bool_1);
								elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
								else
									local string_1 = "Bones";
									local string_2 = "Buy";
									local number_1 = 1;
									local number_2 = 1;
									local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
									Target:InvokeServer(string_1, string_2, number_1, number_2);
								end 
							end
	
							if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 400 and game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
								if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 3 then
									local string_1 = "Bones";
									local string_2 = "Buy";
									local number_1 = 1;
									local number_2 = 1;
									local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
									Target:InvokeServer(string_1, string_2, number_1, number_2);
	
									local string_1 = "BuyDragonTalon";
									local bool_1 = true;
									local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
									Target:InvokeServer(string_1, bool_1);
								elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
								else
									local string_1 = "Bones";
									local string_2 = "Buy";
									local number_1 = 1;
									local number_2 = 1;
									local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
									Target:InvokeServer(string_1, string_2, number_1, number_2);
								end 
							end
						end
					elseif not HasElectricClaw then
						if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
							_G.Settings.Configs["Select Weapon"] = GetFightingStyle("Melee")
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 then
								local v175 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", true);
								if v175 == 4 then
									local v176 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start");
									if v176 == nil then
										game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12548, 337, -7481)
									end
								else
									local string_1 = "BuyElectricClaw";
									local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
									Target:InvokeServer(string_1);
								end
							end
	
							if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
								local v175 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", true);
								if v175 == 4 then
									local v176 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start");
									if v176 == nil then
										game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12548, 337, -7481)
									end
								else
									local string_1 = "BuyElectricClaw";
									local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
									Target:InvokeServer(string_1);
								end
							end
						end
					end
					if BuyGodhuman ~= 1 and HasSuperhuman and HasTalon and HasKarate and HasDeathStep and HasElectricClaw then
						if HasSuperhuman and not SupComplete then
							local args = {
								[1] = "BuySuperhuman"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							wait(0.2)
							if CheckMasteryWeapon("Superhuman",400) == "true UpTo" or CheckMasteryWeapon("Superhuman",400) == "true" and SupComplete == false then
								SupComplete = true
							end
						elseif HasTalon and not TalComplete then
							local args = {
								[1] = "BuyDragonTalon"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							wait(0.2)
							if CheckMasteryWeapon("Dragon Talon",400) == "true UpTo" or CheckMasteryWeapon("Superhuman",400) == "true" and TalComplete == false then
								TalComplete = true
							end
						elseif HasKarate and not SharkComplete then
							local args = {
								[1] = "BuySharkmanKarate"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							wait(0.2)
							if CheckMasteryWeapon("Sharkman Karate",400) == "true UpTo" or CheckMasteryWeapon("Superhuman",400) == "true" and SharkComplete == false then
								SharkComplete = true
							end
						elseif HasDeathStep and not DeathComplete then
							local args = {
								[1] = "BuyDeathStep"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							wait(0.2)
							if CheckMasteryWeapon("Death Step",400) == "true UpTo" or CheckMasteryWeapon("Superhuman",400) == "true" and DeathComplete == false then
								DeathComplete = true
							end
						elseif HasElectricClaw and not EClawComplete then
							local args = {
								[1] = "BuyElectricClaw"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							wait(0.2)
							if CheckMasteryWeapon("Electric Claw",400) == "true UpTo" or CheckMasteryWeapon("Superhuman",400) == "true" and EClawComplete == false then
								EClawComplete = true
							end
						end
					end
	
					if BuyGodhuman ~= 1 and SupComplete and EClawComplete and TalComplete and SharkComplete and DeathComplete and (not game.Players.LocalPlayer.Character:FindFirstChild("Godhuman") or not game.Players.LocalPlayer.Backpack:FindFirstChild("Godhuman")) then
						if GetMaterial("Fish Tail") >= 20 then
							if GetMaterial("Magma Ore") >= 20 then
								if GetMaterial("Dragon Scale") >= 10 then
									if GetMaterial("Mystic Droplet") >= 10 then
										Com("F_","BuyGodhuman")
										BuyGodhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true))
	
										if BuyGodhuman then
											if BuyGodhuman == 1 then
												_G.Settings.FightingStyle["Auto God Human"] = false
											end
										end
										if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = true end
									elseif not World2 then
										Com("F_","TravelDressrosa")
									elseif World2 then
										if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = false end
										CheckMaterial("Mystic Droplet")
										if CustomFindFirstChild(MaterialMob) then
											for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
												if _G.Settings.FightingStyle["Auto God Human"] and table.find(MaterialMob,v.Name) and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
													repeat wait()
														FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,1))
														if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
															if FarmtoTarget then FarmtoTarget:Stop() end
															Fast = true
															EquipWeapon(_G.Settings.Configs["Select Weapon"])
															StartMagnet = true
															PosMon = v.HumanoidRootPart.CFrame
															if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
																game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
																game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
															end
															toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
														end
													until not CustomFindFirstChild(MaterialMob) or not _G.Settings.FightingStyle["Auto God Human"] or v.Humanoid.Health <= 0 or not v.Parent
													Fast = false
													StartMagnet = false
												end
											end
										else
											Fast = false
											StartMagnet = false
											Modstween = toTarget(CFrameMon.Position,CFrameMon)
											if World1 and (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
												if Modstween then Modstween:Stop() end wait(.5)
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
											elseif World1 and not (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
												if Modstween then Modstween:Stop() end wait(.5)
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
											elseif World1 and (table.find(MaterialMob,"God's Guard [Lv. 450]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000 then
												if Modstween then Modstween:Stop() end wait(.5)
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
											elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
												if Modstween then Modstween:Stop() end
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
											end 
										end
									end
								elseif not World3 then
									Com("F_","TravelZou")
								elseif World3 then
									if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = false end
									CheckMaterial("Dragon Scale")
									if CustomFindFirstChild(MaterialMob) then
										for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
											if _G.Settings.FightingStyle["Auto God Human"] and table.find(MaterialMob,v.Name) and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
												repeat wait()
													FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
													if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
														if FarmtoTarget then FarmtoTarget:Stop() end
														Fast = true
														EquipWeapon(_G.Settings.Configs["Select Weapon"])
														StartMagnet = true
														PosMon = v.HumanoidRootPart.CFrame
														if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
															game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
															game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
														end
														toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
													end
												until not CustomFindFirstChild(MaterialMob) or not _G.Settings.FightingStyle["Auto God Human"] or v.Humanoid.Health <= 0 or not v.Parent
												Fast = false
												StartMagnet = false
											end
										end
									else
										StartMagnet = false
										Fast = false
										Modstween = toTarget(CFrameMon.Position,CFrameMon)
										if World1 and (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
											if Modstween then Modstween:Stop() end wait(.5)
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
										elseif World1 and not (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
											if Modstween then Modstween:Stop() end wait(.5)
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
										elseif World1 and (table.find(MaterialMob,"God's Guard [Lv. 450]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000 then
											if Modstween then Modstween:Stop() end wait(.5)
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
										elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
											if Modstween then Modstween:Stop() end
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
										end 
									end
								end
							elseif not World1 then
								Com("F_","TravelMain")
							elseif World1 then
								if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = false end
								CheckMaterial("Magma Ore")
								if CustomFindFirstChild(MaterialMob) then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if _G.Settings.FightingStyle["Auto God Human"] and table.find(MaterialMob,v.Name) and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
											repeat wait()
												FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
												if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
													if FarmtoTarget then FarmtoTarget:Stop() end
													Fast = true
													EquipWeapon(_G.Settings.Configs["Select Weapon"])
													StartMagnet = true
													PosMon = v.HumanoidRootPart.CFrame
													if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
														game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
														game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
													end
													toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
												end
											until not CustomFindFirstChild(MaterialMob) or not _G.Settings.FightingStyle["Auto God Human"] or v.Humanoid.Health <= 0 or not v.Parent
											Fast = false
											StartMagnet = false
										end
									end
								else
									StartMagnet = false
									Fast = false
									Modstween = toTarget(CFrameMon.Position,CFrameMon)
									if World1 and (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
										if Modstween then Modstween:Stop() end wait(.5)
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
									elseif World1 and not (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
										if Modstween then Modstween:Stop() end wait(.5)
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
									elseif World1 and (table.find(MaterialMob,"God's Guard [Lv. 450]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000 then
										if Modstween then Modstween:Stop() end wait(.5)
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
									elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
										if Modstween then Modstween:Stop() end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
									end 
								end
							end
						elseif not World1 then
							Com("F_","TravelMain")
						elseif World1 then
							if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = false end
							CheckMaterial("Fish Tail")
							if CustomFindFirstChild(MaterialMob) then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if _G.Settings.FightingStyle["Auto God Human"] and table.find(MaterialMob,v.Name) and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
										repeat wait()
											FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
											if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
												if FarmtoTarget then FarmtoTarget:Stop() end
												Fast = true
												EquipWeapon(_G.Settings.Configs["Select Weapon"])
												StartMagnet = true
												PosMon = v.HumanoidRootPart.CFrame
												if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
													game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
													game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
												end
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
											end
										until not CustomFindFirstChild(MaterialMob) or not _G.Settings.FightingStyle["Auto God Human"] or v.Humanoid.Health <= 0 or not v.Parent
										Fast = false
										StartMagnet = false
									end
								end
							else
								StartMagnet = false
								Fast = false
								Modstween = toTarget(CFrameMon.Position,CFrameMon)
								if World1 and (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
									if Modstween then Modstween:Stop() end wait(.5)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
								elseif World1 and not (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
									if Modstween then Modstween:Stop() end wait(.5)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
								elseif World1 and (table.find(MaterialMob,"God's Guard [Lv. 450]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000 then
									if Modstween then Modstween:Stop() end wait(.5)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
								elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
									if Modstween then Modstween:Stop() end
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
								end 
							end
						end
					end
				end
			end)
		end
	end)
	
	task.spawn(function()
		while wait() do
			pcall(function()
				if _G.Settings.FightingStyle["Auto God Human"] and World2 then
					if game.Workspace.Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") or game.ReplicatedStorage:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then
						if (KillSharkMan == true and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) == "I lost my house keys, could you help me find them? Thanks.") then
							if KillFish then KillFish:Stop() end
							Com("F_","SetSpawnPoint")
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do 
								if v.Name == "Tide Keeper [Lv. 1475] [Boss]" then
									repeat wait()
										if game.Workspace.Enemies:FindFirstChild(v.Name) then
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 200 then
												Farmtween = toTarget(v.HumanoidRootPart.CFrame)
											elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 200 then
												if Farmtween then Farmtween:Stop() end
												Fast = true
												if _G.Settings.Configs["Auto Haki"] then
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
													end
												end
												if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
													wait()
													EquipWeapon(_G.Settings.Configs["Select Weapon"])
												end
												if not _G.Settings.Configs["Fast Attack"] then
													game:GetService'VirtualUser':CaptureController()
													game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												end
													if _G.Settings.Configs["Show Hitbox"] then
													v.HumanoidRootPart.Transparency = tonumber(_G.Hitbox_LocalTransparency)
												else
													v.HumanoidRootPart.Transparency = 1
												end
												v.Humanoid.JumpPower = 0
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid:ChangeState(11)
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
												if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
													game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
													game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
												end
											end
										end
									until not v.Parent or not _G.Settings.FightingStyle["Auto God Human"] or KillSharkMan == false or v.Humanoid.Health == 0 or game.Players.LocalPlayer.Character:FindFirstChild("Water Key") or game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key")
									Fast = false
								end
							end
						end
					else
						if game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then
							KillFish = toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper [Lv. 1475] [Boss]").HumanoidRootPart.CFrame)
						else
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) == "I lost my house keys, could you help me find them? Thanks." then
								Fast_Hop()
							end
						end
					end
				end
			end)
		end
	end)
	
	task.spawn(function()
		while wait() do
			pcall(function()
				if _G.Settings.FightingStyle["Auto Superhuman"] then
					if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
						if not game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") and not game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
							if not game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and not game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") then
								if not game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and not game.Players.LocalPlayer.Character:FindFirstChild("Electro") then
									if not game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and not game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") then
										if not game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and not game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
											if not game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") and not game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") then
												local args = {
													[1] = "BuyElectro"
												}
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
											end
										end
									end
								end
							end
						end
	
						_G.Settings.Configs["Select Weapon"] = GetFightingStyle("Melee")
	
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
							local args = {
								[1] = "BuyElectro"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						end
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300 then
							local args = {
								[1] = "BuyBlackLeg"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						end
						if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 then
							local args = {
								[1] = "BuyBlackLeg"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						end
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300 then
							local args = {
								[1] = "BuyFishmanKarate"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						end
						if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300 then
							local args = {
								[1] = "BuyFishmanKarate"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						end
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300  then
							local args = {
								[1] = "BlackbeardReward",
								[2] = "DragonClaw",
								[3] = "2"
							}
							HaveDragonClaw = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							if _G.Settings.FightingStyle["Auto Superhuman"] and game.Players.LocalPlayer.Data.Fragments.Value <= 1500 and HaveDragonClaw == 0 then
								if game.Players.LocalPlayer.Data.Level.Value > 1100 then
									_G.Settings.Raids["Select Raids"] = "Flame"
									_G.Settings.Raids["Auto Raids"] = true
									if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = false end
								end
							else
								_G.Settings.Raids["Auto Raids"] = false
								if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = true end
								local args = {
									[1] = "BlackbeardReward",
									[2] = "DragonClaw",
									[3] = "2"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								_G.Settings.Raids["Auto Raids"] = false
								if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = true end
							end
						end
						if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300  then
							local args = {
								[1] = "BlackbeardReward",
								[2] = "DragonClaw",
								[3] = "2"
							}
							HaveDragonClaw = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							if _G.Settings.FightingStyle["Auto Superhuman"] and game.Players.LocalPlayer.Data.Fragments.Value <= 1500 and HaveDragonClaw == 0 then
								if game.Players.LocalPlayer.Data.Level.Value > 1100 then
									_G.Settings.Raids["Select Raids"] = "Flame"
									_G.Settings.Raids["Auto Raids"] = true
									if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = false end
								end
							else
								_G.Settings.Raids["Auto Raids"] = false
								if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = true end
								local args = {
									[1] = "BlackbeardReward",
									[2] = "DragonClaw",
									[3] = "2"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								_G.Settings.Raids["Auto Raids"] = false
								if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = true end
							end
						end
	
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300 then
							Auto_Farm_Level = _G.Settings.Main["Auto Farm Level"]
							local args = {
								[1] = "BuySuperhuman"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						end
						if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300 then
							Auto_Farm_Level = _G.Settings.Main["Auto Farm Level"]
							local args = {
								[1] = "BuySuperhuman"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						end 
					end
				end
			end)
		end
	end)
	
	task.spawn(function()
		while wait() do
			pcall(function()
				if _G.Settings.FightingStyle["Auto Electric Claw"] then
					if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value < 400 then
							_G.Settings.Configs["Select Weapon"] = "Electro"
						end  
						if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value < 400 then
							_G.Settings.Configs["Select Weapon"] = "Electro"
						end  
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 then
							local v175 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw", true);
							if v175 == 4 then
								local v176 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start");
								if v176 == nil then
									game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12548, 337, -7481)
								end
							else
								local string_1 = "BuyElectricClaw";
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1);
							end
						end
						if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
							local v175 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw", true);
							if v175 == 4 then
								local v176 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start");
								if v176 == nil then
									game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12548, 337, -7481)
								end
							else
								local string_1 = "BuyElectricClaw";
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1);
							end
						end
					end
				end
			end)
		end
	end)
	
	task.spawn(function()
		while wait() do
			pcall(function()
				if _G.Settings.FightingStyle["Auto Death Step"] then
					if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 400 then
							local args = {
								[1] = "BuyDeathStep"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							_G.Settings.Configs["Select Weapon"] = "Death Step"
						end  
						if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 400 then
							local args = {
								[1] = "BuyDeathStep"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	
							_G.Settings.Configs["Select Weapon"] = "Death Step"
						end  
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value < 400 then
							_G.Settings.Configs["Select Weapon"] = "Black Leg"
						end 
					end
				elseif _G.Settings.FightingStyle["Auto Fully Death Step"] then
					if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 400 or game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 400 then
						if game:GetService("Workspace").Map.IceCastle.Hall.LibraryDoor.PhoeyuDoor.Transparency == 0 then  
							if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Library Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Library Key") then
								EquipWeapon("Library Key")
								repeat wait() toTarget(CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375)) until (CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Settings.FightingStyle["Auto Death Step"]
								if (CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
									wait(1.2)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep",true)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
									wait(0.5)
								end
							elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 450 or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 450 then   
								if game:GetService("ReplicatedStorage"):FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]") then
									if game:GetService("Workspace").Enemies:FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]") then 	
										for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
											if v.Name == "Awakened Ice Admiral [Lv. 1400] [Boss]" then    
												repeat wait()
													if game.Workspace.Enemies:FindFirstChild(v.Name) then
														if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 200 then
															Farmtween = toTarget(v.HumanoidRootPart.CFrame)
														elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 200 then
															if Farmtween then Farmtween:Stop() end
															Fast = true
															if _G.Settings.Configs["Auto Haki"] then
																if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
																end
															end
															if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
																wait()
																EquipWeapon(_G.Settings.Configs["Select Weapon"])
															end
															if not _G.Settings.Configs["Fast Attack"] then
																game:GetService'VirtualUser':CaptureController()
																game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
															end
																			if _G.Settings.Configs["Show Hitbox"] then
																v.HumanoidRootPart.Transparency = tonumber(_G.Hitbox_LocalTransparency)
															else
																v.HumanoidRootPart.Transparency = 1
															end
															v.Humanoid.JumpPower = 0
															v.Humanoid.WalkSpeed = 0
															v.HumanoidRootPart.CanCollide = false
															v.Humanoid:ChangeState(11)
															toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
															if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
																game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
																game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
															end
														end
													end
												until not v.Parent or v.Humanoid.Health <= 0 or _G.Settings.FightingStyle["Auto Death Step"] == false or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Library Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Library Key")
												Fast = false
											end
										end
									else
										toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]").HumanoidRootPart.CFrame)
									end
								end
							end
						end
					else
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
					end
				end
			end)
		end
	end)
	
	
	task.spawn(function()
		while wait() do
			pcall(function()
				if _G.Settings.FightingStyle["Auto SharkMan Karate"] then
					if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
						if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sharkman Karate") then
							if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 400 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
								_G.Settings.Configs["Select Weapon"] = "Sharkman Karate"
							end  
							if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 400 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
								_G.Settings.Configs["Select Weapon"] = "Sharkman Karate"
							end  
							if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 400 then
								_G.Settings.Configs["Select Weapon"] = "Fishman Karate"
							end 
						else 
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
						end
					end
				elseif _G.Settings.FightingStyle["Auto Fully SharkMan Karate"] then
					if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 400 or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 400 then
						if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate"), "keys") then  
							if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key") then
								repeat wait() toTarget(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365) until (CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Auto_Fully_SharkMan_Karate
								if (CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
									wait(1.2)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
									wait(0.5)
								end
							elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 400 or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 400 then   
								if game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then
									if game:GetService("Workspace").Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then 	
										for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
											if v.Name == "Tide Keeper [Lv. 1475] [Boss]" then    
												repeat wait()
													if game.Workspace.Enemies:FindFirstChild(v.Name) then
														if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 200 then
															Farmtween = toTarget(v.HumanoidRootPart.CFrame)
														elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 200 then
															if Farmtween then Farmtween:Stop() end
															Fast = true
															if _G.Settings.Configs["Auto Haki"] then
																if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
																end
															end
															if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
																wait()
																EquipWeapon(_G.Settings.Configs["Select Weapon"])
															end
															if not _G.Settings.Configs["Fast Attack"] then
																game:GetService'VirtualUser':CaptureController()
																game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
															end
																			if _G.Settings.Configs["Show Hitbox"] then
																v.HumanoidRootPart.Transparency = tonumber(_G.Hitbox_LocalTransparency)
															else
																v.HumanoidRootPart.Transparency = 1
															end
															v.Humanoid.JumpPower = 0
															v.Humanoid.WalkSpeed = 0
															v.HumanoidRootPart.CanCollide = false
															v.Humanoid:ChangeState(11)
															toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
															if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
																game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
																game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
															end
														end
													end
												until not v.Parent or v.Humanoid.Health <= 0 or _G.Settings.FightingStyle["Auto Death Step"] == false or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Library Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Library Key")
												Fast = false													end
										end
									else
										toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper [Lv. 1475] [Boss]").HumanoidRootPart.CFrame)
									end
								end
							end
						else 
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
						end
					else
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
					end
				end
			end)
		end
	end)
	
	
	task.spawn(function()
		while wait() do
			pcall(function()
				if _G.Settings.FightingStyle["Auto Dragon Talon"] then
					if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 399 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
							_G.Settings.Configs["Select Weapon"] = "Dragon Claw"
						end
						if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value <= 399 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
							_G.Settings.Configs["Select Weapon"] = "Dragon Claw"
						end
	
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 400 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
							_G.Settings.Configs["Select Weapon"] = "Dragon Claw"
							if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 3 then
								local string_1 = "Bones";
								local string_2 = "Buy";
								local number_1 = 1;
								local number_2 = 1;
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1, string_2, number_1, number_2);
	
								local string_1 = "BuyDragonTalon";
								local bool_1 = true;
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1, bool_1);
							elseif game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1 then
								game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon")
							else
								local string_1 = "BuyDragonTalon";
								local bool_1 = true;
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1, bool_1);
								local string_1 = "BuyDragonTalon";
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1);
							end 
						end
	
						if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 400 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
							_G.Settings.Configs["Select Weapon"] = "Dragon Claw"
							if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 3 then
								local string_1 = "Bones";
								local string_2 = "Buy";
								local number_1 = 1;
								local number_2 = 1;
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1, string_2, number_1, number_2);
	
								local string_1 = "BuyDragonTalon";
								local bool_1 = true;
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1, bool_1);
							elseif game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1 then
								game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon")
							else
								local string_1 = "BuyDragonTalon";
								local bool_1 = true;
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1, bool_1);
								local string_1 = "BuyDragonTalon";
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1);
							end 
						end
					end
				end
			end)
		end
	end)
	
	task.spawn(function()
		local gg = getrawmetatable(game)
		local old = gg.__namecall
		setreadonly(gg,false)
		gg.__namecall = newcclosure(function(...)
			local method = getnamecallmethod()
			local args = {...}
			if tostring(method) == "FireServer" then
				if tostring(args[1]) == "RemoteEvent" then
					if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
						if UseSkillMasteryDevilFruit and _G.Settings.Mastery["Auto Farm Fruit Mastery"] then
							if type(args[2]) == "vector" then 
								args[2] = PositionSkillMasteryDevilFruit
							else
								args[2] = CFrame.new(PositionSkillMasteryDevilFruit)
							end
							return old(unpack(args))
						end
					end
				end
			end
			return old(...)
		end)
	end)
	
	task.spawn(function()
		local gt = getrawmetatable(game)
		local old = gt.__namecall
		setreadonly(gt,false)
		gt.__namecall = newcclosure(function(...)
			local args = {...}
			if getnamecallmethod() == "InvokeServer" then 
				if SelectWeaponGun then
					if SelectWeaponGun == "Soul Guitar" then
						if tostring(args[2]) == "TAP" then
							if _G.Settings.Mastery["Auto Farm Gun Mastery"] and UseSkillMasteryGun then
								args[3] = PositionSkillMasteryGun
							end
						end
					end
				end
			end
			return old(unpack(args))
		end)
		setreadonly(gt,true)
	end)
	
	LPH_NO_VIRTUALIZE(function()
		task.spawn(function()
			while wait() do
				for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
					if v:IsA("Tool") then
						if v:FindFirstChild("RemoteFunctionShoot") then 
							SelectWeaponGun = v.Name
						end
					end
				end
			end
		end)
	end)()
	
	function AutoFarmMasteryGun()
		if game:GetService("Workspace").Enemies:FindFirstChild(Name) then
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if _G.Settings.Mastery["Auto Farm Gun Mastery"] and v.Name == Name and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
					repeat wait()
						FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
						if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
							if FarmtoTarget then FarmtoTarget:Stop() end
							StartMagnet = true
							PosMon = v.HumanoidRootPart.CFrame
							if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
								game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
								game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
							end
							HealthMin = v.Humanoid.MaxHealth*_G.Settings.Mastery["Mob Health (%)"]/100
							PositionSkillMasteryGun = v.HumanoidRootPart.Position
							if v.Humanoid.Health <= HealthMin and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								EquipWeapon(SelectWeaponGun)
								UseSkillMasteryGun = true
								-- v.HumanoidRootPart.CanCollide = false
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
								if game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectWeaponGun) and game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectWeaponGun):FindFirstChild("RemoteFunctionShoot") then
									Click()
									local args = {
										[1] = v.HumanoidRootPart.Position,
										[2] = v.HumanoidRootPart
									}
									game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
								end 
							else
								UseSkillMasteryGun = false
								Click()
								EquipWeapon(_G.Settings.Configs["Select Weapon"])
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 15, 0)
							end
						end
					until not game:GetService("Workspace").Enemies:FindFirstChild(Name) or not _G.Settings.Mastery["Auto Farm Gun Mastery"] or v.Humanoid.Health <= 0 or not v.Parent
					UseSkillMasteryGun = false
					StartMagnet = false
				end
			end
		else
			StartMagnet = false
			Modstween = toTarget(CFrameMon)
			if World1 and (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
				if Modstween then Modstween:Stop() end wait(.5)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
			elseif World1 and not (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
				if Modstween then Modstween:Stop() end wait(.5)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
			elseif World1 and (Name == "God's Guard [Lv. 450]" or Name == "Sky Bandit [Lv. 150]" or Name == "Dark Master [Lv. 175]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000 then
				if Modstween then Modstween:Stop() end wait(.5)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
			elseif World1 and (Name == "Shanda [Lv. 475]" or Name == "Royal Squad [Lv. 525]"or Name == "Royal Soldier [Lv. 550]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 5000 then
				if Modstween then Modstween:Stop() end wait(.5)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
			elseif World2 and string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
				if Modstween then Modstween:Stop() end
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
			elseif World2 and not string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
				if Modstween then Modstween:Stop() end
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
			elseif (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
				if Modstween then Modstween:Stop() end wait(.5)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
			end 
		end
	end
	
	function AutoFarmMasteryDevilFruit()
		if game:GetService("Workspace").Enemies:FindFirstChild(Name) then
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if _G.Settings.Mastery["Auto Farm Fruit Mastery"] and v.Name == Name and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
					repeat wait()
						FarmtoTarget = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
						if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
							if FarmtoTarget then FarmtoTarget:Stop() end
							StartMagnet = true
							PosMon = v.HumanoidRootPart.CFrame
							HealthMin = v.Humanoid.MaxHealth*_G.Settings.Mastery["Mob Health (%)"]/100
							if v.Humanoid.Health <= HealthMin and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								EquipWeapon(game.Players.LocalPlayer.Data.DevilFruit.Value)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 40, 10)
								if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
									PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
									UseSkillMasteryDevilFruit = true
									if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
										MasteryDevilFruit = require(game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].Data)
										DevilFruitMastery = game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].Level.Value
									elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
										MasteryDevilFruit = require(game:GetService("Players").LocalPlayer.Backpack[game.Players.LocalPlayer.Data.DevilFruit.Value].Data)
										DevilFruitMastery = game:GetService("Players").LocalPlayer.Backpack[game.Players.LocalPlayer.Data.DevilFruit.Value].Level.Value
									end
									if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon-Dragon") then
										if _G.Settings.Configs["Skill Z"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.Z then
											game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
											wait(.1)
											game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
										end
										if _G.Settings.Configs["Skill X"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.X then
											game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
											wait(.1)
											game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
										end   
									elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha") then
										if _G.Settings.Configs["Skill Z"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and game.Players.LocalPlayer.Character.HumanoidRootPart.Size == Vector3.new(7.6, 7.676, 3.686) and DevilFruitMastery >= MasteryDevilFruit.Lvl.Z then
										else
											game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
											wait(.1)
											game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
										end
										if _G.Settings.Configs["Skill X"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.X then
											game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
											wait(.1)
											game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
										end
										if _G.Settings.Configs["Skill C"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.C then
											game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
											wait(.1)
											game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
										end  
									elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom-Venom") then
										if _G.Settings.Configs["Skill Z"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.Z then
											game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
											wait(4)
											game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
										end
										if _G.Settings.Configs["Skill X"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.X then
											game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
											wait(.1)
											game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
										end
										if _G.Settings.Configs["Skill C"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.C then
											game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
											wait(.1)
											game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
										end
									elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
										game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).MousePos.Value = v.HumanoidRootPart.Position
										if _G.Settings.Configs["Skill Z"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.Z then
											game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
											wait(.1)
											game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
										end
										if _G.Settings.Configs["Skill X"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.X then
											game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
											wait(.1)
											game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
										end
										if _G.Settings.Configs["Skill C"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.C then
											game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
											wait(.1)
											game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
										end
										if _G.Settings.Configs["Skill V"] and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= MasteryDevilFruit.Lvl.V then
											game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
											wait(.1)
											game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
										end
									end
								end
							else
								game:GetService('VirtualUser'):CaptureController()
								game:GetService('VirtualUser'):ClickButton1(Vector2.new(851, 158), game:GetService("Workspace").Camera.CFrame)
								UseSkillMasteryDevilFruit = false
								EquipWeapon(_G.Settings.Configs["Select Weapon"])
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0)
							end
						end
					until not game:GetService("Workspace").Enemies:FindFirstChild(Name) or not _G.Settings.Mastery["Auto Farm Fruit Mastery"] or v.Humanoid.Health <= 0 or not v.Parent
					StartMagnet = false
				end
			end
		else
			StartMagnet = false
			Modstween = toTarget(CFrameMon.Position,CFrameMon)
			if World1 and (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
				if Modstween then Modstween:Stop() end wait(.5)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
			elseif World1 and not (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
				if Modstween then Modstween:Stop() end wait(.5)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
			elseif World1 and (Name == "God's Guard [Lv. 450]" or Name == "Sky Bandit [Lv. 150]" or Name == "Dark Master [Lv. 175]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000 then
				if Modstween then Modstween:Stop() end wait(.5)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
			elseif World1 and (Name == "Shanda [Lv. 475]" or Name == "Royal Squad [Lv. 525]"or Name == "Royal Soldier [Lv. 550]") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 5000 then
				if Modstween then Modstween:Stop() end wait(.5)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
			elseif World2 and string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
				if Modstween then Modstween:Stop() end
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
			elseif World2 and not string.find(Name, "Ship") and (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
				if Modstween then Modstween:Stop() end
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
			elseif (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
				if Modstween then Modstween:Stop() end wait(.5)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
			end 
		end
	end
	
	function CheckMasteryWeapon(NameWe,MasNum)
		if game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe) then
			if tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
				return "true DownTo"
			elseif tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
				return "true UpTo"
			end
		end
		if game.Players.LocalPlayer.Character:FindFirstChild(NameWe) then
			if tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
				return "true DownTo"
			elseif tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
				return "true UpTo"
			end
		end
		return "else"
	end
	
	local AllSwordInInventroy = {};
	pcall(function()
		for i, v in pairs(game:GetService("ReplicatedStorage").Remotes['CommF_']:InvokeServer("getInventoryWeapons")) do
			if (type(v) ~= "table") then
			elseif (v.Type == "Sword") then
				table.insert(AllSwordInInventroy, v.Name);
			end
		end
	end)
	
	local function CheckQuestMasteryFarm()
		if World1 then
			Name = "Galley Captain [Lv. 650]";
			CFrameMon = CFrame.new(5649, 39, 4936);
		end
		if World2 then
			Name = "Water Fighter [Lv. 1450]";
			CFrameMon = CFrame.new(-3385, 239, -10542);
		end
		if World3 then
			Name = "Reborn Skeleton [Lv. 1975]";
			CFrameMon = CFrame.new(-9506.14648, 172.130661, 6101.79053);
		end
	end
	
	function AutoFarmMasterySwordList()
		if game:GetService("Workspace").Enemies:FindFirstChild(Name) or (World3 and (game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul [Lv. 2025]") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]"))) then
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if _G.Settings.Mastery["Farm Mastery SwordList"] and ((World3 and (v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]")) or v.Name == Name) and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
					repeat wait()
						FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,1))
						if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
							if FarmtoTarget then FarmtoTarget:Stop() end
							Fast = true
							EquipWeaponSword()
							StartMagnet = true
							PosMon = v.HumanoidRootPart.CFrame
							if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
								game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
								game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
							end
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1)
						end
					until not game:GetService("Workspace").Enemies:FindFirstChild(Name) and ((World3 and not (v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]")) or v.Name == Name) or not _G.Settings.Mastery["Farm Mastery SwordList"] or v.Humanoid.Health <= 0 or not v.Parent
					StartMagnet = false
					Fast = false
				end
			end
		else
			StartMagnet = false
			Modstween = toTarget(CFrameMon)
			if World1 and (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
				if Modstween then Modstween:Stop() end wait(.5)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
			elseif World1 and not (Name == "Fishman Commando [Lv. 400]" or Name == "Fishman Warrior [Lv. 375]") and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
				if Modstween then Modstween:Stop() end wait(.5)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
			elseif World1 and (Name == "God's Guard [Lv. 450]" or Name == "Sky Bandit [Lv. 150]" or Name == "Dark Master [Lv. 175]") and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000 then
				if Modstween then Modstween:Stop() end wait(.5)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
			elseif World1 and (Name == "Shanda [Lv. 475]" or Name == "Royal Squad [Lv. 525]"or Name == "Royal Soldier [Lv. 550]") and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 5000 then
				if Modstween then Modstween:Stop() end wait(.5)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
			elseif World2 and string.find(Name, "Ship") and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
				if Modstween then Modstween:Stop() end
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
			elseif World2 and not string.find(Name, "Ship") and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 30000 then
				if Modstween then Modstween:Stop() end
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422))
				-- elseif game.Players.LocalPlayer:DistanceFromCharacter(CFrameMon.Position) > 3500 then
				--     if Modstween then Modstween:Stop() end
				--     if game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):GetState() == Enum.HumanoidStateType.Dead then return end
				--     ResetSetSpawn(CFrameMon)
			elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
				if Modstween then Modstween:Stop() end
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
			end
		end
	end
	
	task.spawn(function()
		while wait() do
			if _G.Settings.Mastery["Farm Mastery SwordList"] and #_G.Settings.Mastery["Select Multi Sword"] ~= 0 then
				for i,v in pairs(_G.Settings.Mastery["Select Multi Sword"]) do
					if _G.Settings.Mastery["Farm Mastery SwordList"] == false and table.find(SwordListFarmComplete,v) then
						break;
					end
					if not game.Players.LocalPlayer.Backpack:FindFirstChild(v) and not game.Players.LocalPlayer.Character:FindFirstChild(v) and game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):GetState() ~= Enum.HumanoidStateType.Dead and game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health ~= 0 then
						while _G.Settings.Mastery["Farm Mastery SwordList"] do wait()
							if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health == 0 then repeat wait() until game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0; wait(0.2) end
							if game.Players.LocalPlayer.Backpack:FindFirstChild(v) or game.Players.LocalPlayer.Character:FindFirstChild(v) or _G.Settings.Mastery["Farm Mastery SwordList"] == false or table.find(SwordListFarmComplete,v) then 
								break;
							end
							wait(1)
							Com("F_","StoreItem",tostring(GetFightingStyle("Sword")),inmyself(GetFightingStyle("Sword")))
							wait(1)
							Com("F_","LoadItem",tostring(v))
							wait(0.5)
							if game.Players.LocalPlayer.Backpack:FindFirstChild(v) or game.Players.LocalPlayer.Character:FindFirstChild(v) then
								SelectWeaponInSwordList = v
								break;
							end
							if CheckMasteryWeapon(v,600) == "true" or CheckMasteryWeapon(v,600) == "true UpTo" then
								print("DONE "..v)     
								table.insert(SwordListFarmComplete,v)
								break;
							end
						end
					end
					wait(0.2)
					if game.Players.LocalPlayer.Backpack:FindFirstChild(v) or game.Players.LocalPlayer.Character:FindFirstChild(v) then
						while _G.Settings.Mastery["Farm Mastery SwordList"] do wait()
							if table.find(SwordListFarmComplete,v) and #_G.Settings.Mastery["Select Multi Sword"] ~= 0 and #SwordListFarmComplete ~= 0 then
								break
							end
							if _G.Settings.Mastery["Farm Mastery SwordList"] == false then
								break;
							end
							if game.Players.LocalPlayer.Backpack:FindFirstChild(v) or game.Players.LocalPlayer.Character:FindFirstChild(v) then
								SelectWeaponInSwordList = v
							end
							CheckQuestMasteryFarm()
							AutoFarmMasterySwordList()
							if CheckMasteryWeapon(v,600) == "true" or CheckMasteryWeapon(v,600) == "true UpTo" then
								print("DONE "..v)
								table.insert(SwordListFarmComplete,v)
								break;
							end
						end
					end
				end
			end
		end
	end)
	
		task.spawn(function()
			while wait() do
				pcall(function()
					if _G.Settings.Evo["Auto Evo Race [Mink]"] then
						if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") ~= -2 then
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 0 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
							elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 1 then
								if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 1") then
									toTargetP(game.Workspace.Flower1.CFrame)
								elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 2") then
									toTargetP(game.Workspace.Flower2.CFrame)
								elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 3") then
									if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
										for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
											if v.Name == "Swan Pirate [Lv. 775]" then
												repeat wait()
													StartMagnet = true
													Fast = true
													if _G.Settings.Configs["Auto Haki"] then
														if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
														end
													end
													if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
														wait()
														EquipWeapon(_G.Settings.Configs["Select Weapon"])
													end
													PosMon = v.HumanoidRootPart.CFrame
													if not _G.Settings.Configs["Fast Attack"] then
														game:GetService'VirtualUser':CaptureController()
														game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
													end
															if _G.Settings.Configs["Show Hitbox"] then
														v.HumanoidRootPart.Transparency = tonumber(_G.Hitbox_LocalTransparency)
													else
														v.HumanoidRootPart.Transparency = 1
													end
													v.Humanoid.JumpPower = 0
													v.Humanoid.WalkSpeed = 0
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid:ChangeState(11)
													toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
												until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") or not v.Parent or v.Humanoid.Health <= 0 or _G.Settings.Evo["Auto Evo Race [Mink]"] == false
											end
										end
									else
										StartMagnet = false
										toTarget(CFrame.new(980.0985107421875, 121.331298828125, 1287.2093505859375))
									end
								end
							elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 2 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
							end
						elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") == 0 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","2")
						elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") == 1 then
							for i,v in pairs(game:GetService("Workspace"):GetChildren()) do 
								if v.Name:find("Chest") then
									if game:GetService("Workspace"):FindFirstChild(v.Name) then
										if (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1500 then
											repeat wait()
												if game:GetService("Workspace"):FindFirstChild(v.Name) then
													toTargetP(v.CFrame)
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","3")
												end
											until _G.Settings.Evo["Auto Evo Race [Mink]"] == false or not v.Parent
												toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
										end
									end
								end
							end
						end
					elseif _G.Settings.Evo["Auto Evo Race [FishMan]"] then
						if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") ~= -2 then
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 0 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
							elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 1 then
								if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 1") then
									toTarget(game.Workspace.Flower1.CFrame)
								elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 2") then
									toTarget(game.Workspace.Flower2.CFrame)
								elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 3") then
									if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
										for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
											if v.Name == "Swan Pirate [Lv. 775]" then
												repeat wait()
													StartMagnet = true
													Fast = true
													if _G.Settings.Configs["Auto Haki"] then
														if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
														end
													end
													if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
														wait()
														EquipWeapon(_G.Settings.Configs["Select Weapon"])
													end
													PosMon = v.HumanoidRootPart.CFrame
													if not _G.Settings.Configs["Fast Attack"] then
														game:GetService'VirtualUser':CaptureController()
														game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
													end
															if _G.Settings.Configs["Show Hitbox"] then
														v.HumanoidRootPart.Transparency = tonumber(_G.Hitbox_LocalTransparency)
													else
														v.HumanoidRootPart.Transparency = 1
													end
													v.Humanoid.JumpPower = 0
													v.Humanoid.WalkSpeed = 0
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid:ChangeState(11)
													toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
												until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") or not v.Parent or v.Humanoid.Health <= 0 or _G.Settings.Evo["Auto Evo Race [FishMan]"] == false
											end
										end
									else
										StartMagnet = false
										toTarget(CFrame.new(980.0985107421875, 121.331298828125, 1287.2093505859375))
									end
								end
							elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 2 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
							end
						elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") == 0 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","2")
						elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") == 1 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","3")
							for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
								if v:FindFirstChild("HumanoidRootPart") then
									repeat wait()
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
									until not v.Parent or not _G.Setting_table.Fishman_Evo or game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") == -2
								end
							end
						end
					elseif _G.Settings.Evo["Auto Evo Race [Human]"] then
						if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") ~= -2 then
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 0 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
							elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 1 then
								if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 1") then
									toTarget(game.Workspace.Flower1.CFrame)
								elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 2") then
									toTarget(game.Workspace.Flower2.CFrame)
								elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 3") then
									if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
										for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
											if v.Name == "Swan Pirate [Lv. 775]" then
												repeat wait()
													StartMagnet = true
													Fast = true
													if _G.Settings.Configs["Auto Haki"] then
														if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
														end
													end
													if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
														wait()
														EquipWeapon(_G.Settings.Configs["Select Weapon"])
													end
													PosMon = v.HumanoidRootPart.CFrame
													if not _G.Settings.Configs["Fast Attack"] then
														game:GetService'VirtualUser':CaptureController()
														game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
													end
															if _G.Settings.Configs["Show Hitbox"] then
														v.HumanoidRootPart.Transparency = tonumber(_G.Hitbox_LocalTransparency)
													else
														v.HumanoidRootPart.Transparency = 1
													end
													v.Humanoid.JumpPower = 0
													v.Humanoid.WalkSpeed = 0
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid:ChangeState(11)
													toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
												until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") or not v.Parent or v.Humanoid.Health <= 0 or _G.Settings.Evo["Auto Evo Race [Human]"] == false
											end
										end
									else
										StartMagnet = false
										toTarget(CFrame.new(980.0985107421875, 121.331298828125, 1287.2093505859375))
									end
								end
							elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 2 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
							end
						elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") == 0 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","2")
						elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") == 1 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","3")
							if game.Workspace.Enemies:FindFirstChild("Fajita [Lv. 925] [Boss]") then
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if v.Name == "Fajita [Lv. 925] [Boss]" then
										if v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
											repeat wait()
												StartMagnet = true
												Fast = true
												if _G.Settings.Configs["Auto Haki"] then
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
													end
												end
												if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
													wait()
													EquipWeapon(_G.Settings.Configs["Select Weapon"])
												end
												PosMon = v.HumanoidRootPart.CFrame
												if not _G.Settings.Configs["Fast Attack"] then
													game:GetService'VirtualUser':CaptureController()
													game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												end
													if _G.Settings.Configs["Show Hitbox"] then
													v.HumanoidRootPart.Transparency = tonumber(_G.Hitbox_LocalTransparency)
												else
													v.HumanoidRootPart.Transparency = 1
												end
												v.Humanoid.JumpPower = 0
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid:ChangeState(11)
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
											until v.Humanoid.Health <= 0 or not v.Parent or not _G.Settings.Evo["Auto Evo Race [Human]"]
										end
									end
								end
							elseif game.ReplicatedStorage:FindFirstChild("Fajita [Lv. 925] [Boss]") then
								toTarget(game.ReplicatedStorage:FindFirstChild("Fajita [Lv. 925] [Boss]").HumanoidRootPart.CFrame*CFrame.new(0,30,0))
							elseif game.Workspace.Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if v.Name == "Jeremy [Lv. 850] [Boss]" then
										if v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
											repeat wait()
												StartMagnet = true
												Fast = true
												if _G.Settings.Configs["Auto Haki"] then
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
													end
												end
												if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
													wait()
													EquipWeapon(_G.Settings.Configs["Select Weapon"])
												end
												PosMon = v.HumanoidRootPart.CFrame
												if not _G.Settings.Configs["Fast Attack"] then
													game:GetService'VirtualUser':CaptureController()
													game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												end
													if _G.Settings.Configs["Show Hitbox"] then
													v.HumanoidRootPart.Transparency = tonumber(_G.Hitbox_LocalTransparency)
												else
													v.HumanoidRootPart.Transparency = 1
												end
												v.Humanoid.JumpPower = 0
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid:ChangeState(11)
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
											until v.Humanoid.Health <= 0 or not v.Parent or not _G.Settings.Evo["Auto Evo Race [Human]"]
										end
									end
								end
							elseif game.ReplicatedStorage:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
								toTarget(game.ReplicatedStorage:FindFirstChild("Jeremy [Lv. 850] [Boss]").HumanoidRootPart.CFrame*CFrame.new(0,30,0))
							elseif game.Workspace.Enemies:FindFirstChild("Diamond [Lv. 750] [Boss]") then
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if v.Name == "Diamond [Lv. 750] [Boss]" then
										if v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
											repeat wait()
												StartMagnet = true
												Fast = true
												if _G.Settings.Configs["Auto Haki"] then
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
													end
												end
												if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
													wait()
													EquipWeapon(_G.Settings.Configs["Select Weapon"])
												end
												PosMon = v.HumanoidRootPart.CFrame
												if not _G.Settings.Configs["Fast Attack"] then
													game:GetService'VirtualUser':CaptureController()
													game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												end
													if _G.Settings.Configs["Show Hitbox"] then
													v.HumanoidRootPart.Transparency = tonumber(_G.Hitbox_LocalTransparency)
												else
													v.HumanoidRootPart.Transparency = 1
												end
												v.Humanoid.JumpPower = 0
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid:ChangeState(11)
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
											until v.Humanoid.Health <= 0 or not v.Parent or not _G.Settings.Evo["Auto Evo Race [Human]"]
										end
									end
								end
							elseif game.ReplicatedStorage:FindFirstChild("Diamond [Lv. 750] [Boss]") then
								toTarget(game.ReplicatedStorage:FindFirstChild("Diamond [Lv. 750] [Boss]").HumanoidRootPart.CFrame*CFrame.new(0,30,0))
							end
						end
					elseif _G.Settings.Evo["Auto Evo Race [Sky]"] then
						if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") ~= -2 then
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 0 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
							elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 1 then
								if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 1") then
									toTarget(game.Workspace.Flower1.CFrame)
								elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 2") then
									toTarget(game.Workspace.Flower2.CFrame)
								elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 3") then
									if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
										for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
											if v.Name == "Swan Pirate [Lv. 775]" then
												repeat wait()
													StartMagnet = true
													Fast = true
													if _G.Settings.Configs["Auto Haki"] then
														if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
														end
													end
													if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
														wait()
														EquipWeapon(_G.Settings.Configs["Select Weapon"])
													end
													PosMon = v.HumanoidRootPart.CFrame
													if not _G.Settings.Configs["Fast Attack"] then
														game:GetService'VirtualUser':CaptureController()
														game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
													end
															if _G.Settings.Configs["Show Hitbox"] then
														v.HumanoidRootPart.Transparency = tonumber(_G.Hitbox_LocalTransparency)
													else
														v.HumanoidRootPart.Transparency = 1
													end
													v.Humanoid.JumpPower = 0
													v.Humanoid.WalkSpeed = 0
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid:ChangeState(11)
													toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
												until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") or not v.Parent or v.Humanoid.Health <= 0 or _G.Settings.Evo["Auto Evo Race [Sky]"] == false
											end
										end
									else
										StartMagnet = false
										toTarget(CFrame.new(980.0985107421875, 121.331298828125, 1287.2093505859375))
									end
								end
							elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 2 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
							end
						elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") == 0 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","2")
						elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","1") == 1 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad","3")
							for i,v in pairs(game.Players:GetChildren()) do
								if v.Name ~= game.Players.LocalPlayer.Name and tostring(v.Data.Race.Value) == "Skypiea" then
									repeat wait()
										StartMagnet = true
										Fast = true
										if _G.Settings.Configs["Auto Haki"] then
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
											end
										end
										if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
											wait()
											EquipWeapon(_G.Settings.Configs["Select Weapon"])
										end
										PosMon = v.HumanoidRootPart.CFrame
										if not _G.Settings.Configs["Fast Attack"] then
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										end
										if _G.Settings.Configs["Show Hitbox"] then
											v.HumanoidRootPart.Transparency = tonumber(_G.Hitbox_LocalTransparency)
										else
											v.HumanoidRootPart.Transparency = 1
										end
										v.Humanoid.JumpPower = 0
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid:ChangeState(11)
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
									until v.Humanoid.Health <= 0 or _G.Settings.Evo["Auto Evo Race [Sky]"] == false
								end
							end
						end
					end
				end)
			end
		end)
	
	task.spawn(function()
		while wait() do
			if _G.Settings.Stat["Auto Stats Kaitun"] then
				if game:GetService("Players").LocalPlayer.Data.Stats.Melee.Level.Value < 2400 then
					local args = {
						[1] = "AddPoint",
						[2] = "Melee",
						[3] = tonumber(UpStatus)
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				else
					local args = {
						[1] = "AddPoint",
						[2] = "Defense",
						[3] = tonumber(UpStatus)
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))				
				end
			end
		end
	end)
	
	task.spawn(function()
		pcall(function()
			while wait() do
				if _G.Settings.Stat["Enabled Auto Stats"] then
					if  _G.Settings.Stat["Select Stats"] == "Melee" then
						local args = {
							[1] = "AddPoint",
							[2] = "Melee",
							[3] = _G.Settings.Stat["Point Select"]
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					elseif _G.Settings.Stat["Select Stats"] == "Defense" then
						local args = {
							[1] = "AddPoint",
							[2] = "Defense",
							[3] = _G.Settings.Stat["Point Select"]
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					elseif _G.Settings.Stat["Select Stats"] == "Sword" then
						local args = {
							[1] = "AddPoint",
							[2] = "Sword",
							[3] = _G.Settings.Stat["Point Select"]
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					elseif _G.Settings.Stat["Select Stats"] == "Gun" then
						local args = {
							[1] = "AddPoint",
							[2] = "Gun",
							[3] = _G.Settings.Stat["Point Select"]
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					elseif _G.Settings.Stat["Select Stats"] == "Devil Fruits" then
						local args = {
							[1] = "AddPoint",
							[2] = "Demon Fruit",
							[3] = _G.Settings.Stat["Point Select"]
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					elseif _G.Settings.Stat["Select Stats"] == "Max Stats" then
						if game:GetService("Players").LocalPlayer.Data.Stats.Melee.Level.Value < 2400 then
							local args = {
								[1] = "AddPoint",
								[2] = "Melee",
								[3] = _G.Settings.Stat["Point Select"]
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						else
							local args = {
								[1] = "AddPoint",
								[2] = "Defense",
								[3] = _G.Settings.Stat["Point Select"]
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))	
						end
					end
				end
			end
		end)
	end)
	
	
	task.spawn(function()
		while wait() do
			pcall(function()
				local MyLevel = game.Players.LocalPlayer.Data.Level.Value
				if _G.Settings.Stat["Enabled Auto Redeem Code"] then
					if MyLevel >= _G.Settings.Stat["Select Level Redeem Code"] then
						function Redeem(value)
							game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(value)
						end
						for i,v in pairs(CodeApi) do
							Redeem(v)
						end
						wait(3)
						_G.Settings.Stat["Enabled Auto Redeem Code"] = false
					end
				end
			end)
		end
	end)
	
	
	task.spawn(function()
		while wait() do
			if SpectatorPlayer then
				pcall(function()
					if game.Players:FindFirstChild(SelectPlayer) then
						game.Workspace.Camera.CameraSubject = game.Players:FindFirstChild(SelectPlayer).Character.Humanoid
					end
				end)
			else
				game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
			end
		end
	end)
	
	task.spawn(function()
		while wait() do
			if teleporttop then
				pcall(function()
					if game.Players:FindFirstChild(SelectPlayer) then
						toTarget(game.Players[SelectPlayer].Character.HumanoidRootPart.CFrame)
					end
				end)
			end
		end
	end)
	
	
	local lp = game:GetService('Players').LocalPlayer
	local mouse = lp:GetMouse()
	task.spawn(function()
		while wait() do
			if _G.Settings.Combat["Aimbot Skill"] then
				pcall(function()
					local MaxDist, Closest = math.huge
					for i,v in pairs(game:GetService("Players"):GetChildren()) do 
						local Head = v.Character:FindFirstChild("HumanoidRootPart")
						local Pos, Vis = game.Workspace.CurrentCamera.WorldToScreenPoint(game.Workspace.CurrentCamera, Head.Position)
						local MousePos, TheirPos = Vector2.new(mouse.X, mouse.Y), Vector2.new(Pos.X, Pos.Y)
						local Dist = (TheirPos - MousePos).Magnitude
						if Dist < MaxDist and Dist <= tonumber(_G.Settings.Combat["Fov Size"]) and v.Name ~= game.Players.LocalPlayer.Name then
							MaxDist = Dist
							_G.Aim_Players = v
						end
					end
				end)
			end
		end
	end)
	
	task.spawn(function()
		local gg = getrawmetatable(game)
		local old = gg.__namecall
		setreadonly(gg,false)
		gg.__namecall = newcclosure(function(...)
			local method = getnamecallmethod()
			local args = {...}
			if tostring(method) == "FireServer" then
				if tostring(args[1]) == "RemoteEvent" then
					if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
						if _G.Settings.Combat["Aimbot Skill"] then
							args[2] = _G.Aim_Players.Character.HumanoidRootPart.Position
							return old(unpack(args))
						end
					end
				end
			end
			return old(...)
		end)
	end)
	
	local Circle = Drawing.new("Circle")
	Circle.Color =  Color3.fromRGB(255, 255, 255)
	Circle.Thickness = 1
	Circle.Radius = 250
	Circle.NumSides = 460
	Circle.Filled = false
	Circle.Transparency = 1
	
	LPH_NO_VIRTUALIZE(function()
		game:GetService("RunService").Stepped:Connect(function()
			Circle.Radius = tonumber(_G.Settings.Combat["Fov Size"])
			Circle.Thickness = 1
			Circle.NumSides = 460
			Circle.Position = game:GetService('UserInputService'):GetMouseLocation()
			if _G.Settings.Combat["Show Fov"] then
				Circle.Visible = true
			else
				Circle.Visible = false
			end
		end)
	end)()
	
	
	local gg = getrawmetatable(game)
	local old = gg.__namecall
	setreadonly(gg,false)
	gg.__namecall = newcclosure(function(...)
		local method = getnamecallmethod()
		local args = {...}
		if tostring(method) == "FireServer" then
			if tostring(args[1]) == "RemoteEvent" then
				if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
					if Skillaimbot then
						args[2] = AimBotSkillPosition
						return old(unpack(args))
					end
				end
			end
		end
		return old(...)
	end)
	
	LPH_NO_VIRTUALIZE(function()
		task.spawn(function()
			while wait() do
				for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
					if v:IsA("Tool") then
						if v:FindFirstChild("RemoteFunctionShoot") then 
							SelectToolWeaponGun = v.Name
						end
					end
				end
				for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
					if v:IsA("Tool") then
						if v:FindFirstChild("RemoteFunctionShoot") then 
							SelectToolWeaponGun = v.Name
						end
					end
				end
			end
		end)
	end)()
	
	--[aimbot skill]
	
	task.spawn(function()
		while wait() do
			if Skillaimbot then
				if game.Players:FindFirstChild(SelectPlayer) and game.Players:FindFirstChild(SelectPlayer).Character:FindFirstChild("HumanoidRootPart") and game.Players:FindFirstChild(SelectPlayer).Character:FindFirstChild("Humanoid") and game.Players:FindFirstChild(SelectPlayer).Character.Humanoid.Health > 0 then
					AimBotSkillPosition = game.Players:FindFirstChild(SelectPlayer).Character:FindFirstChild("HumanoidRootPart").Position
				end
			end
		end
	end)
	
	--[aimbot gun]
	
	local lp = game:GetService('Players').LocalPlayer
	local mouse = lp:GetMouse()
	mouse.Button1Down:Connect(function()
		if Aimbot and game.Players.LocalPlayer.Character:FindFirstChild(SelectToolWeaponGun) and game:GetService("Players"):FindFirstChild(SelectPlayer) then
			tool = game:GetService("Players").LocalPlayer.Character[SelectToolWeaponGun]
			v17 = workspace:FindPartOnRayWithIgnoreList(Ray.new(tool.Handle.CFrame.p, (game:GetService("Players"):FindFirstChild(SelectPlayer).Character.HumanoidRootPart.Position - tool.Handle.CFrame.p).unit * 100), { game.Players.LocalPlayer.Character, workspace._WorldOrigin });
			game:GetService("Players").LocalPlayer.Character[SelectToolWeaponGun].RemoteFunctionShoot:InvokeServer(game:GetService("Players"):FindFirstChild(SelectPlayer).Character.HumanoidRootPart.Position, (require(game.ReplicatedStorage.Util).Other.hrpFromPart(v17)));
		end 
	end)
	
	--
	
	task.spawn(function()
		while wait() do
			if _G.Settings.Devil_Fruit["Bring Fruit"] then
				pcall(function()
					for i,v in pairs(game.Workspace:GetChildren()) do
						if v:IsA("Tool") and v:FindFirstChild('Handle') then
							if _G.Settings.Devil_Fruit["Bring Fruit Type"] == "Bring" and _G.Settings.Devil_Fruit["Bring Fruit"] then 
								firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,v.Handle,0)  
								firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,v.Handle,1)  
							end
							if _G.Settings.Devil_Fruit["Bring Fruit Type"] == "Tween" and _G.Settings.Devil_Fruit["Bring Fruit"] then 
								_G.BringFound = true 
								toTarget(v.Handle.CFrame)
							end
						end
						if v.Name == "Fruit " and v:FindFirstChild("Handle") then
							if _G.Settings.Devil_Fruit["Bring Fruit Type"] == "Bring" and _G.Settings.Devil_Fruit["Bring Fruit"] then
								firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,v.Handle,0)  
								firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,v.Handle,1)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
							end
							if _G.Settings.Devil_Fruit["Bring Fruit Type"] == "Tween" and _G.Settings.Devil_Fruit["Bring Fruit"] then 
								toTargetP(v.Handle.CFrame)
							end
						end
					end	
					local i = game.Workspace:FindFirstChildOfClass('Tool')
					if _G.BringFound and not i then 
						_G.BringFound = false
					end
				end)
			end
		end
	end)
	
	function DropFruit()
		game.Players.LocalPlayer.PlayerGui.Main.FruitInventory.Position = UDim2.new(10.100, 0, 0.100, 0) -- HideUi
		game.Players.LocalPlayer.PlayerGui.Main.FruitInventory.Visible = true
		local invenfruit = game.Players.LocalPlayer.PlayerGui.Main.FruitInventory.Container.Stored.ScrollingFrame.Frame
		wait(.3)
		for i,v in pairs(invenfruit:GetChildren()) do
			if string.find(v.Name,"-") then
				for _,Backpack in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
					FruitStoreF = string.split(Backpack.Name, " ")[1]
					FruitStoreR = FruitStoreF.."-"..FruitStoreF
					if v.Name == FruitStoreR then
						game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(Backpack.Name):Destroy()
					end												
				end
			end
		end
		for i,v in pairs(invenfruit:GetChildren()) do
			if string.find(v.Name,"-") then
				for _,Character in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
					FruitStoreF = string.split(Character.Name, " ")[1]
					FruitStoreR = FruitStoreF.."-"..FruitStoreF
					if v.Name == FruitStoreR then
						game:GetService("Players").LocalPlayer.Character:FindFirstChild(Character.Name):Destroy()
					end												
				end
			end
		end
	end
	
	task.spawn(function()
		while wait() do
			if _G.Settings.Devil_Fruit["Auto Store Fruits"] then
				pcall(function()
					DropFruit()
					wait()
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bomb-Bomb",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spike-Spike",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Chop-Chop",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spring-Spring",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kilo Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Kilo-Kilo",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kilo Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Smoke-Smoke",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spin-Spin",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Flame-Flame",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bird-Bird: Falcon",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Ice-Ice",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Sand-Sand",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dark-Dark",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Revive Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Revive-Revive",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Revive Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Diamond-Diamond",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Light-Light",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Love-Love",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rubber-Rubber",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Barrier-Barrier",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Magma-Magma",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Door Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Door Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Door-Door",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Door Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Door Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Quake-Quake",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Human-Human: Buddha",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("String Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","String-String",game:GetService("Players").LocalPlayer.Character:FindFirstChild("String Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bird-Bird: Phoenix",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rumble-Rumble",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Paw Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Paw-Paw",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Paw Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Gravity-Gravity",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dough-Dough",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Shadow-Shadow",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Venom-Venom",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Control-Control",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dragon-Dragon",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit"))
					end
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Leopard-Leopard",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit"))
					end
				end)
			end
		end
	end)
		task.spawn(function()
			while wait() do
				pcall(function()
					if _G.Settings.Teleport["Teleport to Sea Beast"] then
						for i,v in pairs(game.Workspace.SeaBeasts:GetChildren()) do
							if v:FindFirstChild("HumanoidRootPart") then
								toTarget(v.HumanoidRootPart.CFrame * CFrame.new(1,500,1))
							end
						end
					end
				end)
			end
		end)
	
	
	function CheckFruit()
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v:IsA("Tool") and string.find(v.Name,"Fruit") then
				return true
			end
		end
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") and string.find(v.Name,"Fruit") then
				return true
			end
		end
	end
	
	task.spawn(function()
		while wait() do
			pcall(function()
				if _G.Settings.Raids["Auto Raids"] and _G.Settings.Raids["Select Mode Raids"] == "Normal" then
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
	
					else
						local args = {
							[1] = "RaidsNpc",
							[2] = "Select",
							[3] = tostring(_G.Settings.Raids["Select Raids"])
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					end
				elseif _G.Settings.Raids["Auto Raids"] and _G.Settings.Raids["Select Mode Raids"] == "Hop" then 
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
	
					else
						_G.Settings.Devil_Fruit["Bring Fruit"] = true
						wait(10)
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") and game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false then
							
						elseif game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == true then
	
						elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
	
						else
							Fast_Hop()
						end
					end
				elseif _G.Settings.Raids["Auto Raids"] and _G.Settings.Raids["Select Mode Raids"] == "Loop" then 
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
	
					else
						_G.Settings.Devil_Fruit["Bring Fruit"] = true
						wait(10)
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") and game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false then
							
						elseif game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == true then
	
						elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
	
						else
							FindFruit = false
							if CheckFruit() ~= true and not game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") and not game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip")
								and game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false then
									if Storr then _G.Settings.Devil_Fruit["Auto Store Fruits"] = false end
								for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryFruits")) do
									if v.Price < 1000000 then 
										FindFruit = true
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit",v.Name)
									end
								end
							end	
							if CheckFruit() == true and not game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") and not game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") 
								and game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false then
								FindFruit = true
								local args = {
									[1] = "RaidsNpc",
									[2] = "Select",
									[3] = tostring(_G.Settings.Raids["Select Raids"])
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								if Storr then _G.Settings.Devil_Fruit["Auto Store Fruits"] = true end
							end
						end
					end
				end
			end)
		end
	end)
	
	task.spawn(function()
		while wait() do
			pcall(function()
				if _G.Settings.Raids["Auto Raids"] then 
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") and game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false then
						if World2 then
							fireclickdetector(Workspace.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
						elseif World3 then
							fireclickdetector(Workspace.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
						end
						wait(5)         
					elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
						if game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == true then				
							repeat wait()
								if game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false then
	
								elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
									game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame = CFrame.new(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame.x,60,game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame.z)
									if (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350 then
										Farmtween = toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame)
									elseif (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
										if Farmtween then
											Farmtween:Stop()
										end
										toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 5"].CFrame*CFrame.new(4,65,10))
									end
								elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
									game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame = CFrame.new(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame.x,60,game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame.z)
									if (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350 then
										Farmtween = toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame)
									elseif (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
										if Farmtween then
											Farmtween:Stop()
										end
										toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 4"].CFrame*CFrame.new(4,65,10))
									end
								elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
									game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame = CFrame.new(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame.x,60,game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame.z)
									if (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350 then
										Farmtween = toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame)
									elseif (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
										if Farmtween then
											Farmtween:Stop()
										end
										toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 3"].CFrame*CFrame.new(4,65,10))
									end
								elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
									game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame = CFrame.new(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame.x,60,game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame.z)
									if (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350 then
										Farmtween = toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame)
									elseif (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
										if Farmtween then
											Farmtween:Stop()
										end
										toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 2"].CFrame*CFrame.new(4,65,10))
									end
								elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
									game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame = CFrame.new(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame.x,60,game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame.z)
									if (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350 then
										Farmtween = toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame)
									elseif (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
										if Farmtween then
											Farmtween:Stop()
										end
										toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 1"].CFrame*CFrame.new(4,65,10))
									end
								end
							until not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") or game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false
						end  
					else
						if _G.Settings.Raids["Auto Awakened"] then	
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
						end
						local args = {
							[1] = "RaidsNpc",
							[2] = "Select",
							[3] = tostring(_G.Settings.Raids["Select Raids"])
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					end
				end
			end)
		end
	end)
	
	task.spawn(function()
		while wait() do
			pcall(function()
				if _G.Settings.Raids["Auto Raids"] then
					for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
						if game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == true then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat wait()
									v.Humanoid.Health = 0
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(50,50,50)
									v.HumanoidRootPart.Transparency = 0.8
								until not _G.Settings.Raids["Auto Raids"] or not RaidSuperhuman or not v.Parent or v.Humanoid.Health <= 0
							end
						end
					end
				end
			end)
		end
	end)
	
		task.spawn(function()
			while wait() do
				if _G.Settings.Raids["Auto Farm Law Dungeon"] then
					pcall(function()
						if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") then
							fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
						elseif game:GetService("ReplicatedStorage"):FindFirstChild("Order [Lv. 1250] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Order [Lv. 1250] [Raid Boss]") then
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if _G.Settings.Raids["Auto Farm Law Dungeon"] and v.Name == "Order [Lv. 1250] [Raid Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
									repeat wait()
										Fast = true
										if _G.Settings.Configs["Auto Haki"] then
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
											end
										end
										if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
											wait()
											EquipWeapon(_G.Settings.Configs["Select Weapon"])
										end
										if not _G.Settings.Configs["Fast Attack"] then
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										end
										if _G.Settings.Configs["Show Hitbox"] then
											v.HumanoidRootPart.Transparency = tonumber(_G.Hitbox_LocalTransparency)
										else
											v.HumanoidRootPart.Transparency = 1
										end
										v.Humanoid.JumpPower = 0
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid:ChangeState(11)
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Auto Farm"],0))
									until not _G.Settings.Raids["Auto Farm Law Dungeon"] or v.Humanoid.Health <= 0 or not v.Parent
									Fast = false
								end
							end
						else
							wait(3)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Microchip","2")
						end 
					end)
				end
			end
		end)
	
	task.spawn(function()
		while wait() do
			if _G.Settings.Main["Auto Buy Legendary Sword"] then
				local args = {
					[1] = "LegendarySwordDealer",
					[2] = "1"
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				local args = {
					[1] = "LegendarySwordDealer",
					[2] = "2"
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				local args = {
					[1] = "LegendarySwordDealer",
					[2] = "3"
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end 
		end
	end)
	
	local a = game.Lighting
	local c = Instance.new("ColorCorrectionEffect", a)
	local e = Instance.new("ColorCorrectionEffect", a)
	OldAmbient = a.Ambient
	OldBrightness = a.Brightness
	OldColorShift_Top = a.ColorShift_Top
	OldBrightnessc = c.Brightness
	OldContrastc = c.Contrast
	OldTintColorc = c.TintColor
	OldTintColore = e.TintColor
	
	
	local UserInputService = game:GetService("UserInputService")
	local RunService = game:GetService("RunService")
	
	-- [Boost Fps Windows]
	if _G.Settings.HUD["Boost FPS Windows"] then
		local WindowFocusReleasedFunction = function()
			RunService:Set3dRenderingEnabled(false)
			setfpscap(120)
			return
		end
	
		local WindowFocusedFunction = function()
			RunService:Set3dRenderingEnabled(true)
			setfpscap(360)
			return
		end
	
		local Initialize = function()
			UserInputService.WindowFocusReleased:Connect(WindowFocusReleasedFunction)
			UserInputService.WindowFocused:Connect(WindowFocusedFunction)
			return
		end
		Initialize()
	end
	
	
	LPH_JIT_MAX(function()
		task.spawn(function()
			while wait() do
				if _G.Settings.Misc['Auto Rejoin'] then
					_G.Settings.Misc['Auto Rejoin'] = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
						if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
							game:GetService("TeleportService"):Teleport(game.PlaceId)
						end
					end)
				end
			end
		end)
	end)()
	
	task.spawn(function()
		while wait() do
			if _G.Settings.Lock['Auto Lock Level'] then
				if game.Players.localPlayer.Data.Level.Value >= tonumber(_G.Settings.Lock["Level Lock"]) then
					game.Players.localPlayer:Kick(" \nLevel Lock \nSuccess")
				end
			end
		end
	end)
	
	task.spawn(function()
		while wait() do
			if _G.Settings.Lock['Auto Lock Beli'] then
				if game.Players.localPlayer.Data.Beli.Value >= tonumber(_G.Settings.Lock["Beli Lock"]) then
					game.Players.localPlayer:Kick(" \nBeil Lock \nSuccess")
				end
			end
		end
	end)
	pcall(function()
		--[World 1]
		if _G.Settings.Main["Auto Farm Level"] or _G.Settings.Main["Auto New World"] or  _G.AutoFarmBounty or MobAura or
			_G.Settings.Main["Auto Saber"] or _G.Settings.Main["Auto Pole"] or
			--[World 2]
			_G.Settings.Main["Auto Third Sea"] or _G.Settings.Main["Auto Bartilo Quest"] or _G.Settings.Main["Auto Dark Coat"] or _G.Settings.Main["Auto Swan Glasses"] or
			_G.Settings.Main["Auto True Triple Katana"] or _G.Settings.Main["Auto Rengoku"] or _G.Settings.Main["Auto Ectoplasm"]  or  _G.Settings.FightingStyle["Auto Fully Death Step"] or 
			_G.Settings.FightingStyle["Auto Fully SharkMan Karate"] or _G.Settings.Raids["Auto Farm Law Dungeon"] or  
			--[World 3]
			_G.Settings.Main["Auto Rainbow Haki"] or _G.Settings.Main["Auto Elite Hunter"] or _G.Settings.Main["Auto Musketeer Hat"] or _G.Settings.Main["Auto Buddy Sword"] or
			_G.Settings.Main["Auto Farm Bone"] or _G.Settings.Main["Auto Ken-Haki V2"] or _G.Settings.FightingStyle["Auto God Human"] or _G.Settings.Main["Auto Cavander"] or 
			_G.Settings.Main["Auto Cursed Dual Katana"] or _G.Settings.Main["Auto Yama Sword"] or _G.Settings.Main["Auto Tushita Sword"] or _G.Settings.Main["Auto Serpent Bow"] or
			_G.Settings.Main["Auto Dark Dagger"] or _G.Settings.Main["Auto Cake Prince"] or _G.Settings.Main["Auto Dough V2"] or _G.Settings.Main["Auto Holy Torch"] or
			_G.Settings.Main["Auto Buddy Swords"] or _G.Settings.Main["Auto Farm Boss Hallow"] or _G.Settings.Main["Mob Aura"] or _G.Settings.Main["Auto Quest Soul Guitar"] or _G.Settings.Main["Auto Quest Soul Guitar Hop"] or YamaQuest2 or YamaQuest1 or Auto_Cursed_Dual_Katana or
			Tushita_Quest2 or Tushita_Quest1 or AutoFarmMaterial or teleporttop or AutoFarmChest or 
			--[For God Human]
			--_G.Settings.Main["Auto Fish Tail Sea 1"] or _G.Settings.Main["Auto Fish Tail Sea 3"] or _G.Settings.Main["Auto Magma Ore Sea 2"] or 
			--_G.Settings.Main["Auto Magma Ore Sea 1"] or _G.Settings.Main["Auto Mystic Droplet"] or _G.Settings.Main["Auto Dragon Scales"] or 
			--[Boss]
			_G.Settings.Boss["Auto All Boss"] or _G.Settings.Boss["Auto Boss Select"] or
			--[Mastery]
			_G.Settings.Mastery["Auto Farm Fruit Mastery"] or _G.Settings.Mastery["Auto Farm Gun Mastery"] or _G.Settings.Mastery["Farm Mastery SwordList"] or
			--[Teleport]
			_G.Settings.Teleport["Teleport to Sea Beast"] or _G.Settings.Main["Auto SeaBeast"] or
			--[Raids]
			_G.Settings.Raids["Auto Raids"] or _G.Settings.Raids["Auto Next Place"] or _G.Teleport or _G.MysticIsland
			--[Bring Fruit]
			or _G.BringFound or
			--[Evo Race]
			_G.Settings.Evo["Auto Evo Race [Mink]"] or _G.Settings.Evo["Auto Evo Race [FishMan]"] or _G.Settings.Evo["Auto Evo Race [Human]"] or _G.Settings.Evo["Auto Evo Race [Sky]"]
		== false  then
		end
				toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
	
	end)
	end
	A()
