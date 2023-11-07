--// Decompiled Code. 
--SCRIPT
getgenv().Notifi = loadstring(game:HttpGet"https://raw.githubusercontent.com/L1ZOT/Project-PJM/main/Notifycation")()
getgenv().SecureMode = true
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local Window = Rayfield:CreateWindow({
    Name = "Galaxy Hub | Arsenal",
    LoadingTitle = "Galaxy Hub",
    LoadingSubtitle = "Arsenal",
    ConfigurationSaving = {
        Enabled = false,
        FileName = "Galaxy Hub"
    },
    KeySystem = false,
    KeySettings = {
        Title = "Galaxy Hub",
        Subtitle = "Key System",
        Note = "Press Enter When You Put The The Right Key",
        Key = "Galaxy"
    }
})

local Home = Window:CreateTab("Home")
local Main = Window:CreateTab("Main")
local Misc = Window:CreateTab("Misc")

local Label = Home:CreateLabel("Made By : MHD444#8522")
local Label = Home:CreateLabel("Anti-AFK Always Working")
local Button = Home:CreateButton({
	Name = "Join Galaxy Hub Discord",
	Callback = function()
    setclipboard("https://discord.gg/MsxyGRh7Zw")
	getgenv().Notification:Notify("Galaxy Hub", "Discord Link Successfully")

    local req = (syn and syn.request) or (http and http.request) or http_request
    if req then
        req({
            Url = 'http://127.0.0.1:6463/rpc?v=1',
            Method = 'POST',
            Headers = {
                ['Content-Type'] = 'application/json',
                Origin = 'https://discord.com'
            },
            Body = game:GetService('HttpService'):JSONEncode({
                cmd = 'INVITE_BROWSER',
                nonce = game:GetService('HttpService'):GenerateGUID(false),
                args = {code = 'MsxyGRh7Zw'}
            })
        })
    end
end,
})

local Button = Main:CreateButton({
	Name = "AimBot",
	Callback = function()
		local function GetService(Name)
        return game:GetService(Name)
    end
    local Players = GetService("Players")
    local LocalPlayer = Players.LocalPlayer
    local RunService = GetService("RunService")
    local BodyPart = nil
    local Camera = workspace.CurrentCamera
    local Mouse = LocalPlayer:GetMouse()
    local function WTS(Object)
        local ObjectVector = Camera:WorldToScreenPoint(Object.Position)
        return Vector2.new(ObjectVector.X, ObjectVector.Y)
    end
    local function PositionToRay(Origin, Target)
        return Ray.new(Origin, (Target - Origin).Unit * 600)
    end
    local function Filter(Object)
        if string.find(Object.Name, "Gun") then
            return
        end
        if Object:IsA("Part") or Object:IsA("MeshPart") then
            return true
        end
    end
    local function MousePositionToVector2()
        return Vector2.new(Mouse.X, Mouse.Y)
    end
    local function IsOnScreen(Object)
        local IsOnScreen = Camera:WorldToScreenPoint(Object.Position)
        return IsOnScreen
    end
    local function GetClosestBodyPartFromCursor()
        local ClosestDistance = math.huge
        for i,  v in next, Players:GetPlayers() do
            if v ~= LocalPlayer and v.Team ~= LocalPlayer.Team and v.Character and v.Character:FindFirstChild("Humanoid") then
                for k,  x in next, v.Character:GetChildren() do
                    if Filter(x) and IsOnScreen(x) then
                        local Distance = (WTS(x) - MousePositionToVector2()).Magnitude
                        if Distance < ClosestDistance then
                            ClosestDistance = Distance
                            BodyPart = x
                        end
                    end
                end
            end
        end
    end
    local OldNameCall;
    OldNameCall = hookmetamethod(game, "__namecall", function(Self, ...)
        local Method = getnamecallmethod()
        local Args = {...}
        if Method == "FindPartOnRayWithIgnoreList" and BodyPart ~= nil then
            Args[1] = PositionToRay(Camera.CFrame.Position, BodyPart.Position)
            return OldNameCall(Self, unpack(Args))
        end
        return OldNameCall(Self, ...)
    end)
    RunService:BindToRenderStep("Dynamic Silent Aim", 120, GetClosestBodyPartFromCursor)
    print(load,Sucsess)
      		print("AimBot Is Now Working")
  	end
})

local Button = Main:CreateButton({
	Name = "ESP",
	Callback = function()
function IllIlllIllIlllIlllIlllIll(IllIlllIllIllIll) if (IllIlllIllIllIll==(((((919 + 636)-636)*3147)/3147)+919)) then return not true end if (IllIlllIllIllIll==(((((968 + 670)-670)*3315)/3315)+968)) then return not false end end; local IllIllIllIllI = (7*3-9/9+3*2/0+3*3);local IIlllIIlllIIlllIIlllII = (3*4-7/7+6*4/3+9*9);local IllIIIllIIIIllI = table.concat;function IllIIIIllIIIIIl(IIllllIIllll) function IIllllIIllll(IllIllIllIllI) function IllIllIllIllI(IIllllIIllll) end end end;IllIIIIllIIIIIl(900283);function IllIlllIllIlllIlllIlllIllIlllIIIlll(IllIllIllIllI) function IllIllIllIllI(IIllllIIllll) local IIlllIIlllIIlllIIlllII = (9*0-7/5+3*1/3+8*2) end end;IllIlllIllIlllIlllIlllIllIlllIIIlll(9083);local IllIIllIIllIII = loadstring;local IlIlIlIlIlIlIlIlII = {'\45','\45','\47','\47','\32','\68','\101','\99','\111','\109','\112','\105','\108','\101','\100','\32','\67','\111','\100','\101','\46','\32','\10','\45','\45','\83','\67','\82','\73','\80','\84','\10','\95','\71','\46','\70','\114','\105','\101','\110','\100','\67','\111','\108','\111','\114','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\102','\114','\111','\109','\82','\71','\66','\40','\48','\44','\32','\48','\44','\32','\50','\53','\53','\41','\10','\95','\71','\46','\69','\110','\101','\109','\121','\67','\111','\108','\111','\114','\32','\61','\32','\67','\111','\108','\111','\114','\51','\46','\102','\114','\111','\109','\82','\71','\66','\40','\50','\53','\53','\44','\32','\48','\44','\32','\48','\41','\10','\95','\71','\46','\85','\115','\101','\84','\101','\97','\109','\67','\111','\108','\111','\114','\32','\61','\32','\102','\97','\108','\115','\101','\10','\10','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\45','\10','\10','\108','\111','\97','\100','\115','\116','\114','\105','\110','\103','\40','\103','\97','\109','\101','\58','\72','\116','\116','\112','\71','\101','\116','\40','\34','\104','\116','\116','\112','\115','\58','\47','\47','\114','\97','\119','\46','\103','\105','\116','\104','\117','\98','\117','\115','\101','\114','\99','\111','\110','\116','\101','\110','\116','\46','\99','\111','\109','\47','\122','\101','\114','\111','\105','\115','\115','\119','\97','\103','\47','\117','\110','\105','\118','\101','\114','\115','\97','\108','\45','\101','\115','\112','\47','\109','\97','\105','\110','\47','\101','\115','\112','\46','\108','\117','\97','\34','\41','\41','\40','\41','\10','\10',}IllIIllIIllIII(IllIIIllIIIIllI(IlIlIlIlIlIlIlIlII,IIIIIIIIllllllllIIIIIIII))()
end
})

local Toggle = Main:CreateButton({
	Name = "Traces",
	CurrentValue = false,
	Flag = "",
	Callback = function(State)
        local Plrs = game:GetService('Players')
		local MyPlr = Plrs.LocalPlayer
		local RunS = game:GetService('RunService')
		local Teams = game:GetService('Teams')
		local C = workspace.CurrentCamera
		repeat
			RunS.RenderStepped:wait()
		until C.ViewportSize.X > 0 and C.ViewportSize.Y > 0
		local Settings = {
			KeyCodeToToggle = 285,
			KeyCodeToScrollRight = 275,
			KeyCodeToScrollLeft = 276,
			ColorCodes = {
				Enemy = Color3.new(1, 0, 0),
				Ally = Color3.new(0, 0, 255),
			},
			ShowTracers = true,
			TracerOptions = {
				ShowEnemies = true,
				ShowAllies = true,
			},
			ShowESP = false,
			ESPOptions = {
				ShowEnemies = true,
				ShowAllies = true,
				ShowHealth = true,
				ShowName = true,
				ShowDistance = true,
			},
			PlayerESPCrap = {},
			PlayerCrap = {},
			FakeCrap = {},
		}
		local CC = Settings.ColorCodes
		local TO = Settings.TracerOptions
		local ESPO = Settings.ESPOptions
		local PESPC = Settings.PlayerESPCrap
		local PC = Settings.PlayerCrap
		local DONT_IGNORE = {
			"Head",
			"Torso",
			"HumanoidRootPart",
			"Left Arm",
			"Right Arm",
			"Left Leg",
			"Right Leg",
		}
		function CheckNameToDontIgnore(Str)
			for i, v in pairs(DONT_IGNORE) do
				if (Str == v) then
					return true
				end
			end
			return false
		end
		local Called = 0
		function AddShitToIgnoreList(Par)
			Called = Called + 1
			local function ScanEverything(Par)
				for i, v in pairs(Par:GetChildren()) do
					if not (CheckNameToDontIgnore(v.Name)) then
						table.insert(Settings.FakeCrap, v)

						v.ChildAdded:connect(function(EEEE)
							ScanEverything(EEEE)
						end)
						ScanEverything(v)
					else
						ScanEverything(v)
					end
				end
			end
			local function Scan(Par)
				for i, v in pairs(Par:GetChildren()) do
					if not (Plrs:FindFirstChild(v.Name)) then
						table.insert(Settings.FakeCrap, v)

					else
						ScanEverything(v)
					end
					RunS.RenderStepped:wait()
				end
			end
			Scan(Par)
		end
		function RecursiveGetChildren(Par)
			local returnValue = {}
			local rgc
			rgc = function(Par)
				for i, c in next, Par:GetChildren() do
					table.insert(returnValue, c)
					rgc(c)
				end
			end
			rgc(Par)
			return returnValue
		end
		function CheckCameraForPlrModel(Plr)
			local Find = C:FindFirstChild("ESPStuff " .. Plr.Name)
			if (Find) then
				local Find2 = Find:FindFirstChild("Tracer Stuff")
				if not (Find2) then
					local T = Instance.new("Model", Find)
					T.Name = "Tracer Stuff"
				end
				Find2 = Find:FindFirstChild("ESP Stuff")
				if not (Find2) then
					local T = Instance.new("Model", Find)
					T.Name = "ESP Stuff"
				end
				return Find
			end
			local mod = Instance.new("Model", C)
			mod.Name = "ESPStuff " .. Plr.Name
			local T = Instance.new("Model", mod)
			T.Name = "Tracer Stuff"
			local ESP = Instance.new("Model", mod)
			ESP.Name = "ESP Stuff"
			return mod
		end
		function UpdateTracerCrap(What, Plr)
			if ((MyPlr.Character ~= nil and Plr.Character ~= nil) and (MyPlr.Character.PrimaryPart ~= nil and Plr.Character.PrimaryPart ~= nil)) then
				if ((MyPlr.Character.PrimaryPart.Position - Plr.Character.PrimaryPart.Position).magnitude < 2000) then
					local P = What.Part
					P.Transparency = 0
					local M = P.Mesh
					if (Plr.Character == nil) then
						repeat
							RunS.RenderStepped:wait()
						until Plr.Character ~= nil
					end
					local R = C:ScreenPointToRay(C.ViewportSize.X / 2, C.ViewportSize.Y, 0)
					local Dist = (R.Origin - (Plr.Character.PrimaryPart.Position - Vector3.new(0, 3, 0))).magnitude
					P.Size = Vector3.new(0.1, 0.1, Dist)
					P.CFrame = CFrame.new(R.Origin, (Plr.Character.PrimaryPart.Position - Vector3.new(0, 4.5, 0))) * CFrame.new(0, 0, -Dist / 2)
					P.BrickColor = BrickColor.new(
						#Teams:GetChildren() > 0 and (
						Plr.TeamColor == MyPlr.TeamColor and CC.Ally or
							Plr.TeamColor ~= MyPlr.TeamColor and CC.Enemy
						) or #Teams:GetChildren() <= 0 and CC.Enemy
					)
					M.Scale = Vector3.new(0.05, 0.05, P.Size.Z / Dist)
				else
					local P = What.Part
					P.Transparency = 1
				end
			end
		end
		local Aim = 1
		function UpdateESPGui(HealthBar, HealthTxt, Plr, DistTxt, PlrName)
			if (Plr.Character == nil) then
				repeat
					RunS.RenderStepped:wait()
				until Plr.Character ~= nil
			end
			if ((Plr.Character.PrimaryPart.Position - MyPlr.Character.PrimaryPart.Position).magnitude <= 2000) then
				HealthBar.Parent.Parent.Visible = true
			else
				HealthBar.Parent.Parent.Visible = false
			end
			HealthBar.Size = UDim2.new(Plr.Character.Humanoid.Health / Plr.Character.Humanoid.MaxHealth, -2, 1, -2)
			HealthTxt.Text = math.floor(Plr.Character.Humanoid.Health) .. "/" .. math.floor(Plr.Character.Humanoid.MaxHealth)
			local Dist = (Plr.Character.PrimaryPart.Position - MyPlr.Character.PrimaryPart.Position).magnitude
			DistTxt.Text = math.floor(Dist) .. " Studs"
			PlrName.TextColor3 = (
				#Teams:GetChildren() > 0 and (
				Plr.TeamColor == MyPlr.TeamColor and CC.Ally or
					Plr.TeamColor ~= MyPlr.TeamColor and CC.Enemy
				) or #Teams:GetChildren() <= 0 and CC.Enemy
			)
			DistTxt.TextColor3 = (
				#Teams:GetChildren() > 0 and (
				Plr.TeamColor == MyPlr.TeamColor and CC.Ally or
					Plr.TeamColor ~= MyPlr.TeamColor and CC.Enemy
				) or #Teams:GetChildren() <= 0 and CC.Enemy
			)
		end
		function UpdateESPCrap(What, Plr)
			if ((MyPlr.Character ~= nil and Plr.Character ~= nil) and (MyPlr.Character.PrimaryPart ~= nil and Plr.Character.PrimaryPart ~= nil)) then
				if ((MyPlr.Character.PrimaryPart.Position - Plr.Character.PrimaryPart.Position).magnitude < 2000) then
					if (PC[Plr] ~= nil) then
						local viewpoint = C.CoordinateFrame
						local PDists = {}
						for i, p in next, PC[Plr] do
							table.insert(PDists, (viewpoint.p - i.Position).magnitude)
						end
						local nearestDistance = math.min(unpack(PDists))
						local furthestDistance = math.max(unpack(PDists))
						for i, p in next, PC[Plr] do
							local O, M, S = unpack(p)
							local Dist = (i.Position - viewpoint.p).magnitude
							local DistMult = Aim + (Dist - nearestDistance) / (furthestDistance - nearestDistance)
							O.Transparency = math.max(S + (i.Transparency * (1 - S)), 0.001)
							local unit = (i.Position - viewpoint.p).unit * DistMult
							local pos = viewpoint.p + unit
							local OF = CFrame.new(pos) * CFrame.Angles(i.CFrame:toEulerAnglesXYZ())
							O.CFrame = OF
							local OS = DistMult / Dist
							if (M == nil) then
								O.Mesh.Scale = i.Size * OS
							else
								if (M:IsA("SpecialMesh") and M.MeshType.Name == "FileMesh") or (M:IsA("SpecialMesh") == false) then
									O[M.Name].Scale = M.Scale * OS
								else
									O[M.Name].Scale = M.Scale * i.Size * OS
								end
							end
							O.BrickColor = BrickColor.new(
								#Teams:GetChildren() > 0 and (
								Plr.TeamColor == MyPlr.TeamColor and CC.Ally or
									Plr.TeamColor ~= MyPlr.TeamColor and CC.Enemy
								) or #Teams:GetChildren() <= 0 and CC.Enemy
							)
						end
						local Mouse = MyPlr:GetMouse()
						local R = Ray.new(Mouse.UnitRay.Origin, Mouse.UnitRay.Direction * 5000)
						local RP = workspace:FindPartOnRayWithIgnoreList(R, Settings.FakeCrap, false, true)
						if (RP ~= nil) then
							local Find = Plrs:FindFirstChild(RP.Parent.Name) or Plrs:FindFirstChild(string.sub(RP.Parent.Name, string.len("ESPStuff ") + 1))
							if ((Find and Find:IsA("Player")) and (Find ~= MyPlr and Find == Plr)) then
								Aim = 500000
								wait(3)
							else
								Aim = 1
							end
						else
							Aim = 1
						end
					end
				end
			end
		end
		function CreateESPStuff(Plr)
			local ESPModel = CheckCameraForPlrModel(Plr)
			PESPC[Plr] = ESPModel
			if (Settings.ShowTracers) then
				local T = ESPModel["Tracer Stuff"]
				if not (T:FindFirstChild(Plr.Name)) then
					local mod = Instance.new("Model", T)
					mod.Name = Plr.Name
					local P = Instance.new("Part", mod)
					P.FormFactor = "Custom"
					P.Material = "Neon"
					P.Transparency = 0
					P.Anchored = true
					P.Locked = true
					P.CanCollide = false
					table.insert(Settings.FakeCrap, P)
					local M = Instance.new("BlockMesh", P)
					RunS:BindToRenderStep("TracerUpdate " .. Plr.Name, Enum.RenderPriority.Character.Value - 1, function()
						UpdateTracerCrap(mod, Plr)
					end)
				end
			end
			if (Settings.ShowESP) then
				local ESP = ESPModel["ESP Stuff"]
				local mod = Instance.new("Model", ESP)
				mod.Name = Plr.Name
				repeat
					RunS.RenderStepped:wait()
				until Plr.Character ~= nil
				for i, v in next, RecursiveGetChildren(Plr.Character) do
					if (v:IsA("BasePart")) then
						local O = Instance.new("Part", mod)
						O.Anchored = true
						O.CanCollide = false
						O.FormFactor = "Custom"
						O.Size = Vector3.new(1, 1, 1)
						O.Name = "Fake " .. v.Name
						O.Material = "SmoothPlastic"
						O.TopSurface = "SmoothNoOutlines"
						O.BottomSurface = "SmoothNoOutlines"
						O.FrontSurface = "SmoothNoOutlines"
						O.BackSurface = "SmoothNoOutlines"
						O.LeftSurface = "SmoothNoOutlines"
						O.RightSurface = "SmoothNoOutlines"
						local P = nil
						local PMesh = nil
						for ii, vv in next, RecursiveGetChildren(v) do
							if (vv:IsA("DataModelMesh")) then
								local ThisPMesh = vv:clone()
								local meshChanged = vv.Changed:connect(function(Prop)
									if (Prop == "MeshType" or Prop == "MeshId" or Prop == "TextureProp") then
										ThisPMesh[Prop] = vv[Prop]
									end
								end)
								PMesh = ThisPMesh
							elseif (vv:IsA("FaceInstance")) then
								vv:clone().Parent = O
							end
						end
						if (PMesh == nil) then
						else
							PMesh:clone().Parent = O
						end
						if (O.Name == "Fake Head") then
							local Info = Instance.new("BillboardGui", O.Mesh)
							Info.Name = "ESPStats"
							Info.Adornee = O
							Info.Size = UDim2.new(0, 100, 0, 75)
							Info.ExtentsOffset = Vector3.new(0, 0.3, 0)
							local Stats = Instance.new("Frame", Info)
							Stats.BackgroundTransparency = 1
							Stats.Name = "Stats"
							Stats.Size = UDim2.new(1, 0, 1, 0)
							Stats.Visible = false
							local Health = Instance.new("Frame", Stats)
							Health.Name = "HealthBG"
							Health.BackgroundColor3 = Color3.new(0, 0, 0)
							Health.BorderSizePixel = 0
							Health.Position = UDim2.new(0, 0, 0, 25)
							Health.Size = UDim2.new(1, 0, 0, 25)
							local HealthBG = Instance.new("Frame", Health)
							HealthBG.Name = "Health"
							HealthBG.BackgroundColor3 = Color3.new(0, 1, 0)
							HealthBG.BorderSizePixel = 0
							HealthBG.Position = UDim2.new(0, 1, 0, 1)
							HealthBG.Size = UDim2.new(1, -2, 1, -2)
							local HealthNum = Instance.new("TextLabel", Health)
							HealthNum.Name = "HealthNum"
							HealthNum.BackgroundTransparency = 1
							HealthNum.Size = UDim2.new(1, 0, 1, 0)
							HealthNum.Font = "Legacy"
							HealthNum.FontSize = "Size8"
							HealthNum.Text = "???"
							HealthNum.TextColor3 = Color3.new(1, 0, 0)
							local PlrName = Instance.new("TextLabel", Stats)
							PlrName.Name = "PlrName"
							PlrName.BackgroundTransparency = 1
							PlrName.Size = UDim2.new(1, 0, 0, 25)
							PlrName.Font = "Legacy"
							PlrName.FontSize = "Size8"
							PlrName.Text = Plr.Name
							PlrName.TextColor3 = (
								#Teams:GetChildren() > 0 and (
								Plr.TeamColor == MyPlr.TeamColor and CC.Ally or
									Plr.TeamColor ~= MyPlr.TeamColor and CC.Enemy
								) or #Teams:GetChildren() <= 0 and CC.Enemy
							)
							local PlrDist = PlrName:clone()
							PlrDist.Parent = PlrName.Parent
							PlrDist.Name = "Dist"
							PlrDist.Text = "???"
							PlrDist.Position = UDim2.new(0, 0, 0, 50)
							PlrDist.TextColor3 = (
								#Teams:GetChildren() > 0 and (
								Plr.TeamColor == MyPlr.TeamColor and CC.Ally or
									Plr.TeamColor ~= MyPlr.TeamColor and CC.Enemy
								) or #Teams:GetChildren() <= 0 and CC.Enemy
							)
							RunS:BindToRenderStep("UpdateESPGui " .. Plr.Name, Enum.RenderPriority.Character.Value - 1, function()
								UpdateESPGui(HealthBG, HealthNum, Plr, PlrDist, PlrName)
							end)
						end
						if (PC[Plr] == nil) then
							PC[Plr] = {}
						end
						PC[Plr][v] = {O, PMesh, 0}
						table.insert(Settings.FakeCrap, O)
						table.insert(Settings.FakeCrap, PMesh)
					end
				end
				RunS:BindToRenderStep("UpdateESP " .. Plr.Name, Enum.RenderPriority.Character.Value - 1, function()
					UpdateESPCrap(mod, Plr)
				end)
			end
		end
		function RemoveESP(Plr)
			RunS:UnbindFromRenderStep("UpdateESP " .. Plr.Name)
			RunS:UnbindFromRenderStep("UpdateESPGui " .. Plr.Name)
			local Find = C:FindFirstChild("ESPStuff " .. Plr.Name)
			if (Find) then
				Find = Find:FindFirstChild("ESP Stuff")
				if (Find) then
					Find:Destroy()
				end
			end
			PC[Plr] = {}
		end
		function OnCharacterAdded(Char, Plr)
			RemoveESP(Plr)
			CreateESPStuff(Plr)
		end
		function OnPlayerAdded(Plr)
			CreateESPStuff(Plr)
			Plr.CharacterAdded:connect(function(Char)
				OnCharacterAdded(Char, Plr)
			end)
		end
		function OnPlayerRemoved(Plr)
			RunS:UnbindFromRenderStep("TracerUpdate " .. Plr.Name)
			RunS:UnbindFromRenderStep("UpdateESP " .. Plr.Name)
			RunS:UnbindFromRenderStep("UpdateESPGui " .. Plr.Name)
			local Find = C:FindFirstChild("ESPStuff " .. Plr.Name)
			if (Find) then
				Find:Destroy()
			end
		end
		function GetCurrentPlayers()
			for i, v in pairs(Plrs:GetPlayers()) do
				if (v ~= MyPlr) then
					CreateESPStuff(v)
					v.CharacterAdded:connect(function(Char)
						OnCharacterAdded(Char, v)
					end)
				end
			end
		end
		AddShitToIgnoreList(workspace)
		GetCurrentPlayers()
		Plrs.PlayerAdded:connect(OnPlayerAdded)
		Plrs.PlayerRemoving:connect(OnPlayerRemoved)
    end
})

local Toggle = Misc:CreateToggle({
	Name = "No Recoil",
	CurrentValue = false,
	Flag = "",
	Callback = function(State)
		getgenv().NoSpread = State
		for i, v in pairs(game:GetService("ReplicatedStorage").Weapons:GetDescendants()) do
			if v.Name == "RecoilControl" or v.Name == "Recoil" then
				if getgenv().NoSpread then
					v.Value = 0
				else
					v.Value = 1
				end
			end
		end
	end
})

local Toggle = Misc:CreateToggle({
	Name = "No Spread",
	CurrentValue = false,
	Flag = "",
	Callback = function(State)
		getgenv().NoSpread = State
		for i, v in pairs(game:GetService("ReplicatedStorage").Weapons:GetDescendants()) do
			if v.Name == "MaxSpread" or v.Name == "Spread" or v.Name == "SpreadControl" then
				if getgenv().NoSpread then
					v.Value = 0
				else
					v.Value = 1
				end
			end
		end
    end
})

local Toggle = Misc:CreateToggle({
	Name = "INF Ammo",
	CurrentValue = false,
	Flag = "",
	Callback = function(State)
		getgenv().INFAmmo = State
		spawn(function()
				if getgenv().INFAmmo then
					game:GetService('RunService').Stepped:connect(function()
						game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount.Value = 999
						game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount2.Value = 999
						end)
					else
						game:GetService("ReplicatedStorage").wkspc.Status.RoundOver.Value = true
					end
				end)
			end,
		})

getgenv().Notifi:Notify("Galaxy Hub", "Game Supported")
