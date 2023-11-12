if game.PlaceId == 2753915549 then
    World1 = true
elseif game.PlaceId == 4442272183 then
    World2 = true
elseif game.PlaceId == 7449423635 then
    World3 = true
end
function CheckQuest()
	local MyLevel=game.Players.LocalPlayer.Data.Level.Value
	if World1 then
	if ((MyLevel==1) or (MyLevel <= 9)) then
	LevelFarm=1
	Name="Bandit [Lv. 5]"
	QuestName="BanditQuest1"
	LevelQuest=1
	NameMon="Bandit"
	CFrameMon=CFrame.new(1060, 17, 1547)
	VectorMon=Vector3.new(1060, 17, 1547)
	CFrameQuest=CFrame.new(1060, 17, 1547)
	VectorQuest=Vector3.new(1060, 17, 1547)
	elseif ((MyLevel==10) or (MyLevel <= 14)) then
	LevelFarm=2
	Name="Monkey [Lv. 14]"
	QuestName="JungleQuest"
	LevelQuest=1
	NameMon="Monkey"
	CFrameMon=CFrame.new(-1496, 39, 35)
	VectorMon=Vector3.new(-1496, 39, 35)
	CFrameQuest=CFrame.new(-1496, 39, 35)
	VectorQuest=Vector3.new(-1496, 39, 35)
	elseif ((MyLevel==15) or (MyLevel <= 29)) then
	LevelFarm=3
	Name="Gorilla [Lv. 20]"
	QuestName="JungleQuest"
	LevelQuest=2
	NameMon="Gorilla"
	CFrameMon=CFrame.new(-1237, 6, -486)
	VectorMon=Vector3.new(-1237, 7, -486)
	CFrameQuest=CFrame.new(-1237, 6, -486)
	VectorQuest=Vector3.new(-1237, 6, -486)
	elseif ((MyLevel==30) or (MyLevel <= 39)) then
	LevelFarm=4
	Name="Pirate [Lv. 35]"
	QuestName="BuggyQuest1"
	LevelQuest=1
	NameMon="Pirate"
	CFrameMon=CFrame.new(-1115, 14, 3938)
	VectorMon=Vector3.new(-1115, 14, 3938)
	CFrameQuest=CFrame.new(-1140, 5, 3828)
	VectorQuest=Vector3.new(-1140, 5, 3828)
	elseif ((MyLevel==40) or (MyLevel <= 59)) then
	LevelFarm=5
	Name="Brute [Lv. 45]"
	QuestName="BuggyQuest1"
	LevelQuest=2
	NameMon="Brute"
	CFrameMon=CFrame.new(-1145, 15, 4350)
	VectorMon=Vector3.new(-1146, 15, 4350)
	CFrameQuest=CFrame.new(-1140, 5, 3828)
	VectorQuest=Vector3.new(-1140, 5, 3828)
	elseif ((MyLevel==60) or (MyLevel <= 74)) then
	LevelFarm=6
	Name="Desert Bandit [Lv. 60]"
	QuestName="DesertQuest"
	LevelQuest=1
	NameMon="Desert Bandit"
	CFrameMon=CFrame.new(932, 7, 4484)
	VectorMon=Vector3.new(932, 7, 4484)
	CFrameQuest=CFrame.new(897, 7, 4388)
	VectorQuest=Vector3.new(897, 7, 4388)
	elseif ((MyLevel==75) or (MyLevel <= 89)) then
	LevelFarm=7
	Name="Desert Officer [Lv. 70]"
	QuestName="DesertQuest"
	LevelQuest=2
	NameMon="Desert Officer"
	CFrameMon=CFrame.new(1572, 10, 4373)
	VectorMon=Vector3.new(1572, 10, 4373)
	CFrameQuest=CFrame.new(897, 7, 4388)
	VectorQuest=Vector3.new(897, 7, 4388)
	elseif ((MyLevel==90) or (MyLevel <= 99)) then
	LevelFarm=8
	Name="Snow Bandit [Lv. 90]"
	QuestName="SnowQuest"
	LevelQuest=1
	NameMon="Snow Bandits"
	CFrameMon=CFrame.new(1289, 150, -1442)
	VectorMon=Vector3.new(1289, 106, -1442)
	CFrameQuest=CFrame.new(1386, 87, -1297)
	VectorQuest=Vector3.new(1386, 87, -1297)
	elseif ((MyLevel==100) or (MyLevel <= 119)) then
	LevelFarm=9
	Name="Snowman [Lv. 100]"
	QuestName="SnowQuest"
	LevelQuest=2
	NameMon="Snowman"
	CFrameMon=CFrame.new(1289, 150, -1442)
	VectorMon=Vector3.new(1289, 106, -1442)
	CFrameQuest=CFrame.new(1386, 87, -1297)
	VectorQuest=Vector3.new(1386, 87, -1297)
	elseif ((MyLevel==120) or (MyLevel <= 149)) then
	LevelFarm=10
	Name="Chief Petty Officer [Lv. 120]"
	QuestName="MarineQuest2"
	LevelQuest=1
	NameMon="Chief Petty Officer"
	CFrameMon=CFrame.new(-4855, 23, 4308)
	VectorMon=Vector3.new(-4855, 23, 4308)
	CFrameQuest=CFrame.new(-5036, 29, 4325)
	VectorQuest=Vector3.new(-5036, 29, 4325)
	elseif ((MyLevel==150) or (MyLevel <= 174)) then
	LevelFarm=11
	Name="Sky Bandit [Lv. 150]"
	QuestName="SkyQuest"
	LevelQuest=1
	NameMon="Sky Bandit"
	CFrameMon=CFrame.new(-4981, 278, -2830)
	VectorMon=Vector3.new(-4981, 278, -2830)
	CFrameQuest=CFrame.new(-4842, 718, -2623)
	VectorQuest=Vector3.new(-4842, 718, -2623)
	elseif ((MyLevel==175) or (MyLevel <= 189)) then
	LevelFarm=12
	Name="Dark Master [Lv. 175]"
	QuestName="SkyQuest"
	LevelQuest=2
	NameMon="Dark Master"
	CFrameMon=CFrame.new(-5250, 389, -2272)
	VectorMon=Vector3.new(-5250, 389, -2272)
	CFrameQuest=CFrame.new(-4842, 718, -2623)
	VectorQuest=Vector3.new(-4842, 718, -2623)
	elseif ((MyLevel==190) or (MyLevel <= 209)) then
	LevelFarm=13
	Name="Prisoner [Lv. 190]"
	QuestName="PrisonerQuest"
	LevelQuest=1
	NameMon="Prisoner"
	CFrameMon=CFrame.new(5411, 96, 690)
	VectorMon=Vector3.new(5411, 96, 690)
	CFrameQuest=CFrame.new(5308, 2, 474)
	VectorQuest=Vector3.new(5308, 2, 474)
	elseif ((MyLevel==210) or (MyLevel <= 249)) then
	LevelFarm=14
	Name="Dangerous Prisoner [Lv. 210]"
	QuestName="PrisonerQuest"
	LevelQuest=2
	NameMon="Dangerous Prisoner"
	CFrameMon=CFrame.new(5411, 96, 690)
	VectorMon=Vector3.new(5411, 96, 690)
	CFrameQuest=CFrame.new(5308, 2, 474)
	VectorQuest=Vector3.new(5308, 2, 474)
	elseif ((MyLevel==250) or (MyLevel <= 299)) then
	LevelFarm=15
	Name="Toga Warrior [Lv. 250]"
	QuestName="ColosseumQuest"
	LevelQuest=1
	NameMon="Toga Warrior"
	CFrameMon=CFrame.new(-1824, 50, -2743)
	VectorMon=Vector3.new(-1824, 50, -2743)
	CFrameQuest=CFrame.new(-1576, 8, -2985)
	VectorQuest=Vector3.new(-1576, 8, -2985)
	elseif ((MyLevel==300) or (MyLevel <= 329)) then
	LevelFarm=16
	Name="Military Soldier [Lv. 300]"
	QuestName="MagmaQuest"
	LevelQuest=1
	NameMon="Military Soldier"
	CFrameMon=CFrame.new(-5408, 11, 8447)
	VectorMon=Vector3.new(-5408, 11, 8447)
	CFrameQuest=CFrame.new(-5316, 12, 8517)
	VectorQuest=Vector3.new(-5316, 12, 8517)
	elseif ((MyLevel==330) or (MyLevel <= 374)) then
	LevelFarm=17
	Name="Military Spy [Lv. 325]"
	QuestName="MagmaQuest"
	LevelQuest=2
	NameMon="Military Spy"
	CFrameMon=CFrame.new(-5815, 84, 8820)
	VectorMon=Vector3.new(-5815, 84, 8820)
	CFrameQuest=CFrame.new(-5316, 12, 8517)
	VectorQuest=Vector3.new(-5316, 12, 8517)
	elseif ((MyLevel==375) or (MyLevel <= 399)) then
	LevelFarm=18
	Name="Fishman Warrior [Lv. 375]"
	QuestName="FishmanQuest"
	LevelQuest=1
	NameMon="Fishman Warrior"
	CFrameMon=CFrame.new(60859, 19, 1501)
	VectorMon=Vector3.new(60859, 19, 1501)
	CFrameQuest=CFrame.new(61123, 19, 1569)
	VectorQuest=Vector3.new(61123, 19, 1569)
	elseif ((MyLevel==400) or (MyLevel <= 449)) then
	LevelFarm=19
	Name="Fishman Commando [Lv. 400]"
	QuestName="FishmanQuest"
	LevelQuest=2
	NameMon="Fishman Commando"
	CFrameMon=CFrame.new(61891, 19, 1470)
	VectorMon=Vector3.new(61891, 19, 1470)
	CFrameQuest=CFrame.new(61123, 19, 1569)
	VectorQuest=Vector3.new(61123, 19, 1569)
	elseif ((MyLevel==450) or (MyLevel <= 474)) then
	LevelFarm=20
	Name="God's Guard [Lv. 450]"
	QuestName="SkyExp1Quest"
	LevelQuest=1
	NameMon="God's Guards"
	CFrameMon=CFrame.new(-4698, 845, -1912)
	VectorMon=Vector3.new(-4698, 845, -1912)
	CFrameQuest=CFrame.new(-4722, 845, -1954)
	VectorQuest=Vector3.new(-4722, 846, -1954)
	elseif ((MyLevel==475) or (MyLevel <= 524)) then
	LevelFarm=21
	Name="Shanda [Lv. 475]"
	QuestName="SkyExp1Quest"
	LevelQuest=2
	NameMon="Shandas"
	CFrameMon=CFrame.new(-7685, 5567, -502)
	VectorMon=Vector3.new(-7685, 5567, -502)
	CFrameQuest=CFrame.new(-7862, 5546, -380)
	VectorQuest=Vector3.new(-7862, 5546, -380)
	elseif ((MyLevel==525) or (MyLevel <= 549)) then
	LevelFarm=22
	Name="Royal Squad [Lv. 525]"
	QuestName="SkyExp2Quest"
	LevelQuest=1
	NameMon="Royal Squad"
	CFrameMon=CFrame.new(-7670, 5607, -1460)
	VectorMon=Vector3.new(-7670, 5607, -1460)
	CFrameQuest=CFrame.new(-7904, 5636, -1412)
	VectorQuest=Vector3.new(-7904, 5636, -1412)
	elseif ((MyLevel==550) or (MyLevel <= 624)) then
	LevelFarm=23
	Name="Royal Soldier [Lv. 550]"
	QuestName="SkyExp2Quest"
	LevelQuest=2
	NameMon="Royal Soldier"
	CFrameMon=CFrame.new(-7828, 5607, -1744)
	VectorMon=Vector3.new(-7828, 5607, -1744)
	CFrameQuest=CFrame.new(-7904, 5636, -1412)
	VectorQuest=Vector3.new(-7904, 5636, -1412)
	elseif ((MyLevel==625) or (MyLevel <= 649)) then
	LevelFarm=24
	Name="Galley Pirate [Lv. 625]"
	QuestName="FountainQuest"
	LevelQuest=1
	NameMon="Galley Pirate"
	CFrameMon=CFrame.new(5589, 45, 3996)
	VectorMon=Vector3.new(5589, 45, 3996)
	CFrameQuest=CFrame.new(5256, 39, 4050)
	VectorQuest=Vector3.new(5256, 39, 4050)
	elseif (MyLevel >= 650) then
	LevelFarm=25
	Name="Galley Captain [Lv. 650]"
	QuestName="FountainQuest"
	LevelQuest=2
	NameMon="Galley Captain"
	CFrameMon=CFrame.new(5649, 39, 4936)
	VectorMon=Vector3.new(5649, 39, 4936)
	CFrameQuest=CFrame.new(5256, 39, 4050)
	VectorQuest=Vector3.new(5256, 39, 4050)
	end
	end
	if World2 then
	if ((MyLevel==700) or (MyLevel <= 724)) then
	LevelFarm=1
	Name="Raider [Lv. 700]"
	QuestName="Area1Quest"
	LevelQuest=1
	NameMon="Raider"
	CFrameQuest=CFrame.new(-425, 73, 1837)
	VectorQuest=Vector3.new(-425, 73, 1837)
	CFrameMon=CFrame.new(-746, 39, 2390)
	VectorMon=Vector3.new(-746, 39, 2389)
	elseif ((MyLevel==725) or (MyLevel <= 774)) then
	LevelFarm=2
	Name="Mercenary [Lv. 725]"
	QuestName="Area1Quest"
	LevelQuest=2
	NameMon="Mercenary"
	CFrameQuest=CFrame.new(-425, 73, 1837)
	VectorQuest=Vector3.new(-425, 73, 1837)
	CFrameMon=CFrame.new(-874, 141, 1312)
	VectorMon=Vector3.new(-874, 141, 1312)
	elseif ((MyLevel==775) or (MyLevel <= 799)) then
	LevelFarm=3
	Name="Swan Pirate [Lv. 775]"
	QuestName="Area2Quest"
	LevelQuest=1
	NameMon="Swan Pirate"
	CFrameQuest=CFrame.new(634, 73, 918)
	VectorQuest=Vector3.new(634, 73, 918)
	CFrameMon=CFrame.new(878, 122, 1235)
	VectorMon=Vector3.new(878, 122, 1235)
	elseif ((MyLevel==800) or (MyLevel <= 874)) then
	LevelFarm=4
	Name="Factory Staff [Lv. 800]"
	QuestName="Area2Quest"
	LevelQuest=2
	NameMon="Factory Staff"
	CFrameQuest=CFrame.new(634, 73, 918)
	VectorQuest=Vector3.new(634, 73, 918)
	CFrameMon=CFrame.new(295, 73, -56)
	VectorMon=Vector3.new(295, 73, -56)
	elseif ((MyLevel==875) or (MyLevel <= 899)) then
	LevelFarm=5
	Name="Marine Lieutenant [Lv. 875]"
	QuestName="MarineQuest3"
	LevelQuest=1
	NameMon="Marine Lieutenant"
	CFrameMon=CFrame.new(-2806, 73, -3038)
	VectorMon=Vector3.new(-2806, 73, -3038)
	CFrameQuest=CFrame.new(-2443, 73, -3219)
	VectorQuest=Vector3.new(-2443, 73, -3219)
	elseif ((MyLevel==900) or (MyLevel <= 949)) then
	LevelFarm=6
	Name="Marine Captain [Lv. 900]"
	QuestName="MarineQuest3"
	LevelQuest=2
	NameMon="Marine Captain"
	CFrameMon=CFrame.new(-1869, 73, -3320)
	VectorMon=Vector3.new(-1869, 73, -3320)
	CFrameQuest=CFrame.new(-2443, 73, -3219)
	VectorQuest=Vector3.new(-2443, 73, -3219)
	elseif ((MyLevel==950) or (MyLevel <= 974)) then
	LevelFarm=7
	Name="Zombie [Lv. 950]"
	QuestName="ZombieQuest"
	LevelQuest=1
	NameMon="Zombie"
	CFrameMon=CFrame.new(-5736, 126, -728)
	VectorMon=Vector3.new(-5736, 126, -728)
	CFrameQuest=CFrame.new(-5494, 49, -795)
	VectorQuest=Vector3.new(-5494, 49, -794)
	elseif ((MyLevel==975) or (MyLevel <= 999)) then
	LevelFarm=8
	Name="Vampire [Lv. 975]"
	QuestName="ZombieQuest"
	LevelQuest=2
	NameMon="Vampire"
	CFrameMon=CFrame.new(-6033, 7, -1317)
	VectorMon=Vector3.new(-6033, 7, -1317)
	CFrameQuest=CFrame.new(-5494, 49, -795)
	VectorQuest=Vector3.new(-5494, 49, -795)
	elseif ((MyLevel==1000) or (MyLevel <= 1049)) then
	LevelFarm=9
	Name="Snow Trooper [Lv. 1000]"
	QuestName="SnowMountainQuest"
	LevelQuest=1
	NameMon="Snow Trooper"
	CFrameMon=CFrame.new(478, 402, -5362)
	VectorMon=Vector3.new(478, 402, -5362)
	CFrameQuest=CFrame.new(605, 402, -5371)
	VectorQuest=Vector3.new(605, 402, -5371)
	elseif ((MyLevel==1050) or (MyLevel <= 1099)) then
	LevelFarm=10
	Name="Winter Warrior [Lv. 1050]"
	QuestName="SnowMountainQuest"
	LevelQuest=2
	NameMon="Winter Warrior"
	CFrameMon=CFrame.new(1157, 430, -5188)
	VectorMon=Vector3.new(1157, 430, -5188)
	CFrameQuest=CFrame.new(605, 402, -5371)
	VectorQuest=Vector3.new(605, 402, -5371)
	elseif ((MyLevel==1100) or (MyLevel <= 1124)) then
	LevelFarm=11
	Name="Lab Subordinate [Lv. 1100]"
	QuestName="IceSideQuest"
	LevelQuest=1
	NameMon="Lab Subordinate"
	CFrameMon=CFrame.new(-5782, 42, -4484)
	VectorMon=Vector3.new(-5782, 42, -4484)
	CFrameQuest=CFrame.new(-6060, 16, -4905)
	VectorQuest=Vector3.new(-6060, 16, -4905)
	elseif ((MyLevel==1125) or (MyLevel <= 1174)) then
	LevelFarm=12
	Name="Horned Warrior [Lv. 1125]"
	QuestName="IceSideQuest"
	LevelQuest=2
	NameMon="Horned Warrior"
	CFrameMon=CFrame.new(-6406, 24, -5805)
	VectorMon=Vector3.new(-6406, 24, -5805)
	CFrameQuest=CFrame.new(-6060, 16, -4905)
	VectorQuest=Vector3.new(-6060, 16, -4905)
	elseif ((MyLevel==1175) or (MyLevel <= 1199)) then
	LevelFarm=13
	Name="Magma Ninja [Lv. 1175]"
	QuestName="FireSideQuest"
	LevelQuest=1
	NameMon="Magma Ninja"
	CFrameMon=CFrame.new(-5428, 78, -5959)
	VectorMon=Vector3.new(-5428, 78, -5959)
	CFrameQuest=CFrame.new(-5430, 16, -5295)
	VectorQuest=Vector3.new(-5430, 16, -5296)
	elseif ((MyLevel==1200) or (MyLevel <= 1249)) then
	LevelFarm=14
	Name="Lava Pirate [Lv. 1200]"
	QuestName="FireSideQuest"
	LevelQuest=2
	NameMon="Lava Pirate"
	CFrameMon=CFrame.new(-5270, 42, -4800)
	VectorMon=Vector3.new(-5270, 42, -4800)
	CFrameQuest=CFrame.new(-5430, 16, -5295)
	VectorQuest=Vector3.new(-5430, 16, -5296)
	elseif ((MyLevel==1250) or (MyLevel <= 1274)) then
	LevelFarm=15
	Name="Ship Deckhand [Lv. 1250]"
	QuestName="ShipQuest1"
	LevelQuest=1
	NameMon="Ship Deckhand"
	CFrameMon=CFrame.new(1198, 126, 33031)
	VectorMon=Vector3.new(1198, 126, 33031)
	CFrameQuest=CFrame.new(1038, 125, 32913)
	VectorQuest=Vector3.new(1038, 125, 32913)
	elseif ((MyLevel==1275) or (MyLevel <= 1299)) then
	LevelFarm=16
	Name="Ship Engineer [Lv. 1275]"
	QuestName="ShipQuest1"
	LevelQuest=2
	NameMon="Ship Engineer"
	CFrameMon=CFrame.new(918, 44, 32787)
	VectorMon=Vector3.new(918, 44, 32787)
	CFrameQuest=CFrame.new(1038, 125, 32913)
	VectorQuest=Vector3.new(1038, 125, 32913)
	elseif ((MyLevel==1300) or (MyLevel <= 1324)) then
	LevelFarm=17
	Name="Ship Steward [Lv. 1300]"
	QuestName="ShipQuest2"
	LevelQuest=1
	NameMon="Ship Steward"
	CFrameMon=CFrame.new(915, 130, 33419)
	VectorMon=Vector3.new(915, 130, 33419)
	CFrameQuest=CFrame.new(969, 125, 33245)
	VectorQuest=Vector3.new(969, 125, 33245)
	elseif ((MyLevel==1325) or (MyLevel <= 1349)) then
	LevelFarm=18
	Name="Ship Officer [Lv. 1325]"
	QuestName="ShipQuest2"
	LevelQuest=2
	NameMon="Ship Officer"
	CFrameMon=CFrame.new(916, 181, 33335)
	VectorMon=Vector3.new(916, 181, 33335)
	CFrameQuest=CFrame.new(969, 125, 33245)
	VectorQuest=Vector3.new(969, 125, 33245)
	elseif ((MyLevel==1350) or (MyLevel <= 1374)) then
	LevelFarm=19
	Name="Arctic Warrior [Lv. 1350]"
	QuestName="FrostQuest"
	LevelQuest=1
	NameMon="Arctic Warrior"
	CFrameMon=CFrame.new(6038, 29, -6231)
	VectorMon=Vector3.new(6038, 29, -6231)
	VectorQuest=Vector3.new(5669, 28, -6482)
	CFrameQuest=CFrame.new(5669, 28, -6482)
	elseif ((MyLevel==1375) or (MyLevel <= 1424)) then
	LevelFarm=20
	Name="Snow Lurker [Lv. 1375]"
	QuestName="FrostQuest"
	LevelQuest=2
	NameMon="Snow Lurker"
	CFrameMon=CFrame.new(5560, 42, -6826)
	VectorMon=Vector3.new(5560, 42, -6826)
	VectorQuest=Vector3.new(5669, 28, -6482)
	CFrameQuest=CFrame.new(5669, 28, -6482)
	elseif ((MyLevel==1425) or (MyLevel <= 1449)) then
	LevelFarm=21
	Name="Sea Soldier [Lv. 1425]"
	QuestName="ForgottenQuest"
	LevelQuest=1
	NameMon="Sea Soldier"
	CFrameMon=CFrame.new(-3022, 16, -9722)
	VectorMon=Vector3.new(-3022, 16, -9722)
	CFrameQuest=CFrame.new(-3054, 237, -10148)
	VectorQuest=Vector3.new(-3054, 237, -10148)
	elseif (MyLevel >= 1450) then
	LevelFarm=22
	Name="Water Fighter [Lv. 1450]"
	QuestName="ForgottenQuest"
	LevelQuest=2
	NameMon="Water Fighter"
	CFrameMon=CFrame.new(-3385, 239, -10542)
	VectorMon=Vector3.new(-3385, 239, -10542)
	CFrameQuest=CFrame.new(-3054, 237, -10148)
	VectorQuest=Vector3.new(-3054, 237, -10148)
	end
	end
	if World3 then
	if ((MyLevel==1500) or (MyLevel <= 1524)) then
	LevelFarm=1
	Name="Pirate Millionaire [Lv. 1500]"
	QuestName="PiratePortQuest"
	LevelQuest=1
	NameMon="Pirate"
	CFrameMon=CFrame.new(-373, 75, 5550)
	VectorMon=Vector3.new(-373, 75, 5550)
	CFrameQuest=CFrame.new(-288, 44, 5576)
	VectorQuest=Vector3.new(-288, 44, 5576)
	elseif ((MyLevel==1525) or (MyLevel <= 1574)) then
	LevelFarm=2
	Name="Pistol Billionaire [Lv. 1525]"
	QuestName="PiratePortQuest"
	LevelQuest=2
	NameMon="Pistol"
	CFrameMon=CFrame.new(-469, 74, 5904)
	VectorMon=Vector3.new(-469, 74, 5904)
	CFrameQuest=CFrame.new(-288, 44, 5576)
	VectorQuest=Vector3.new(-288, 44, 5576)
	elseif ((MyLevel==1575) or (MyLevel <= 1599)) then
	LevelFarm=3
	Name="Dragon Crew Warrior [Lv. 1575]"
	QuestName="AmazonQuest"
	LevelQuest=1
	NameMon="Warrior"
	CFrameMon=CFrame.new(6339, 52, -1213)
	VectorMon=Vector3.new(6338, 52, -1213)
	CFrameQuest=CFrame.new(5835, 52, -1105)
	VectorQuest=Vector3.new(5835, 52, -1105)
	elseif ((MyLevel==1600) or (MyLevel <= 1624)) then
	LevelFarm=4
	Name="Dragon Crew Archer [Lv. 1600]"
	QuestName="AmazonQuest"
	LevelQuest=2
	NameMon="Archer"
	CFrameMon=CFrame.new(6594, 383, 139)
	VectorMon=Vector3.new(6594, 383, 139)
	CFrameQuest=CFrame.new(5835, 52, -1105)
	VectorQuest=Vector3.new(5835, 52, -1105)
	elseif ((MyLevel==1625) or (MyLevel <= 1649)) then
	LevelFarm=5
	Name="Female Islander [Lv. 1625]"
	QuestName="AmazonQuest2"
	LevelQuest=1
	NameMon="Female"
	CFrameMon=CFrame.new(5308, 819, 1047)
	VectorMon=Vector3.new(5308, 819, 1047)
	CFrameQuest=CFrame.new(5443, 602, 751)
	VectorQuest=Vector3.new(5443, 602, 751)
	elseif ((MyLevel==1650) or (MyLevel <= 1699)) then
	LevelFarm=6
	Name="Giant Islander [Lv. 1650]"
	QuestName="AmazonQuest2"
	LevelQuest=2
	NameMon="Giant Islanders"
	CFrameMon=CFrame.new(4951, 602, -68)
	VectorMon=Vector3.new(4951, 602, -68)
	CFrameQuest=CFrame.new(5443, 602, 751)
	VectorQuest=Vector3.new(5443, 602, 751)
	elseif ((MyLevel==1700) or (MyLevel <= 1724)) then
	LevelFarm=7
	Name="Marine Commodore [Lv. 1700]"
	QuestName="MarineTreeIsland"
	LevelQuest=1
	NameMon="Marine Commodore"
	CFrameMon=CFrame.new(2447, 73, -7470)
	VectorMon=Vector3.new(2447, 73, -7470)
	CFrameQuest=CFrame.new(2180, 29, -6737)
	VectorQuest=Vector3.new(2180, 29, -6737)
	elseif ((MyLevel==1725) or (MyLevel <= 1774)) then
	LevelFarm=8
	Name="Marine Rear Admiral [Lv. 1725]"
	QuestName="MarineTreeIsland"
	LevelQuest=2
	NameMon="Marine Rear Admiral"
	CFrameMon=CFrame.new(3671, 161, -6932)
	VectorMon=Vector3.new(3671, 161, -6932)
	CFrameQuest=CFrame.new(2180, 29, -6737)
	VectorQuest=Vector3.new(2180, 29, -6737)
	elseif ((MyLevel==1775) or (MyLevel <= 1800)) then
	LevelFarm=9
	Name="Fishman Raider [Lv. 1775]"
	QuestName="DeepForestIsland3"
	LevelQuest=1
	NameMon="Fishman Raider"
	CFrameMon=CFrame.new(-10560, 332, -8466)
	VectorMon=Vector3.new(-10560, 332, -8466)
	CFrameQuest=CFrame.new(-10584, 332, -8758)
	VectorQuest=Vector3.new(-10584, 332, -8758)
	elseif ((MyLevel==1800) or (MyLevel <= 1824)) then
	LevelFarm=10
	Name="Fishman Captain [Lv. 1800]"
	QuestName="DeepForestIsland3"
	LevelQuest=2
	NameMon="Fishman Captain"
	CFrameMon=CFrame.new(-10993, 332, -8940)
	VectorMon=Vector3.new(-10993, 332, -8940)
	CFrameQuest=CFrame.new(-10584, 332, -8758)
	VectorQuest=Vector3.new(-10584, 332, -8758)
	elseif ((MyLevel==1825) or (MyLevel <= 1849)) then
	LevelFarm=11
	Name="Forest Pirate [Lv. 1825]"
	QuestName="DeepForestIsland"
	LevelQuest=1
	NameMon="Forest Pirate"
	CFrameMon=CFrame.new(-13479, 333, -7905)
	VectorMon=Vector3.new(-13479, 333, -7905)
	CFrameQuest=CFrame.new(-13232, 333, -7627)
	VectorQuest=Vector3.new(-13232, 333, -7627)
	elseif ((MyLevel==1850) or (MyLevel <= 1899)) then
	LevelFarm=12
	Name="Mythological Pirate [Lv. 1850]"
	QuestName="DeepForestIsland"
	LevelQuest=2
	NameMon="Mythological Pirate"
	CFrameMon=CFrame.new(-13545, 470, -6917)
	VectorMon=Vector3.new(-13545, 470, -6917)
	CFrameQuest=CFrame.new(-13232, 333, -7627)
	VectorQuest=Vector3.new(-13232, 333, -7627)
	elseif ((MyLevel==1900) or (MyLevel <= 1924)) then
	LevelFarm=13
	Name="Jungle Pirate [Lv. 1900]"
	QuestName="DeepForestIsland2"
	LevelQuest=1
	NameMon="Jungle Pirate"
	CFrameMon=CFrame.new(-12107, 332, -10549)
	VectorMon=Vector3.new(-12106, 332, -10549)
	CFrameQuest=CFrame.new(-12684, 391, -9902)
	VectorQuest=Vector3.new(-12684, 391, -9902)
	elseif ((MyLevel==1925) or (MyLevel <= 1974)) then
	LevelFarm=14
	Name="Musketeer Pirate [Lv. 1925]"
	QuestName="DeepForestIsland2"
	LevelQuest=2
	NameMon="Musketeer Pirate"
	CFrameMon=CFrame.new(-13286, 392, -9769)
	VectorMon=Vector3.new(-13286, 392, -9768)
	CFrameQuest=CFrame.new(-12684, 391, -9902)
	VectorQuest=Vector3.new(-12684, 391, -9902)
	elseif ((MyLevel==1975) or (MyLevel <= 1999)) then
	LevelFarm=15
	Name="Reborn Skeleton [Lv. 1975]"
	QuestName="HauntedQuest1"
	LevelQuest=1
	NameMon="Reborn Skeleton"
	CFrameMon=CFrame.new(-8760, 142, 6039)
	VectorMon=Vector3.new(-8760, 142, 6039)
	CFrameQuest=CFrame.new(-9482, 142, 5567)
	VectorQuest=Vector3.new(-9482, 142, 5567)
	elseif ((MyLevel==2000) or (MyLevel <= 2024)) then
	LevelFarm=16
	Name="Living Zombie [Lv. 2000]"
	QuestName="HauntedQuest1"
	LevelQuest=2
	NameMon="Living Zombie"
	CFrameMon=CFrame.new(-10144, 140, 5932)
	VectorMon=Vector3.new(-10144, 140, 5932)
	CFrameQuest=CFrame.new(-9482, 142, 5567)
	VectorQuest=Vector3.new(-9482, 142, 5567)
	elseif ((MyLevel==2025) or (MyLevel <= 2049)) then
	LevelFarm=17
	Name="Demonic Soul [Lv. 2025]"
	QuestName="HauntedQuest2"
	LevelQuest=1
	NameMon="Demonic Soul"
	CFrameMon=CFrame.new(-9507, 172, 6158)
	VectorMon=Vector3.new(-9506, 172, 6158)
	CFrameQuest=CFrame.new(-9513, 172, 6079)
	VectorQuest=Vector3.new(-9513, 172, 6079)
	elseif ((MyLevel==2050) or (MyLevel <= 2074)) then
	LevelFarm=18
	Name="Posessed Mummy [Lv. 2050]"
	QuestName="HauntedQuest2"
	LevelQuest=2
	NameMon="Posessed Mummy"
	CFrameMon=CFrame.new(-9577, 6, 6223)
	VectorMon=Vector3.new(-9577, 6, 6223)
	CFrameQuest=CFrame.new(-9513, 172, 6079)
	VectorQuest=Vector3.new(-9513, 172, 6079)
	elseif ((MyLevel==2075) or (MyLevel <= 2099)) then
	LevelFarm=19
	Name="Peanut Scout [Lv. 2075]"
	QuestName="NutsIslandQuest"
	LevelQuest=1
	NameMon="Peanut Scout"
	CFrameMon=CFrame.new(-2124, 123, -10435)
	VectorMon=Vector3.new(-2124, 123, -10435)
	CFrameQuest=CFrame.new(-2104, 38, -10192)
	VectorQuest=Vector3.new(-2104, 38, -10192)
	elseif ((MyLevel==2100) or (MyLevel <= 2124)) then
	LevelFarm=20
	Name="Peanut President [Lv. 2100]"
	QuestName="NutsIslandQuest"
	LevelQuest=2
	NameMon="Peanut President"
	CFrameMon=CFrame.new(-2124, 123, -10435)
	VectorMon=Vector3.new(-2124, 123, -10435)
	CFrameQuest=CFrame.new(-2104, 38, -10192)
	VectorQuest=Vector3.new(-2104, 38, -10192)
	elseif ((MyLevel==2125) or (MyLevel <= 2149)) then
	LevelFarm=21
	Name="Ice Cream Chef [Lv. 2125]"
	QuestName="IceCreamIslandQuest"
	LevelQuest=1
	NameMon="Ice Cream Chef"
	CFrameMon=CFrame.new(-641, 127, -11062)
	VectorMon=Vector3.new(-641, 127, -11062)
	CFrameQuest=CFrame.new(-822, 66, -10965)
	VectorQuest=Vector3.new(-822, 66, -10965)
	elseif ((MyLevel==2150) or (MyLevel <= 2199)) then
	LevelFarm=22
	Name="Ice Cream Commander [Lv. 2150]"
	QuestName="IceCreamIslandQuest"
	LevelQuest=2
	NameMon="Ice Cream Commander"
	CFrameMon=CFrame.new(-641, 127, -11062)
	VectorMon=Vector3.new(-641, 127, -11062)
	CFrameQuest=CFrame.new(-822, 66, -10965)
	VectorQuest=Vector3.new(-822, 66, -10965)
	elseif ((MyLevel==2200) or (MyLevel <= 2224)) then
	LevelFarm=23
	Name="Cookie Crafter [Lv. 2200]"
	QuestName="CakeQuest1"
	LevelQuest=1
	NameMon="Cookie Crafter"
	CFrameMon=CFrame.new(-2365, 38, -12099)
	VectorMon=Vector3.new(-2365, 38, -12099)
	CFrameQuest=CFrame.new(-2020, 38, -12025)
	VectorQuest=Vector3.new(-2020, 38, -12025)
	elseif ((MyLevel==2225) or (MyLevel <= 2249)) then
	LevelFarm=24
	Name="Cake Guard [Lv. 2225]"
	QuestName="CakeQuest1"
	LevelQuest=2
	NameMon="Cake Guard"
	CFrameMon=CFrame.new(-1651, 38, -12308)
	VectorMon=Vector3.new(-1651, 38, -12308)
	CFrameQuest=CFrame.new(-2020, 38, -12025)
	VectorQuest=Vector3.new(-2020, 38, -12025)
	elseif ((MyLevel==2250) or (MyLevel <= 2274)) then
	LevelFarm=25
	Name="Baking Staff [Lv. 2250]"
	QuestName="CakeQuest2"
	LevelQuest=1
	NameMon="Baking Staff"
	CFrameMon=CFrame.new(-1870, 38, -12938)
	VectorMon=Vector3.new(-1870, 38, -12938)
	CFrameQuest=CFrame.new(-1926, 38, -12850)
	VectorQuest=Vector3.new(-1926, 38, -12850)
	elseif ((MyLevel==2275) or (MyLevel <= 2299)) then
	LevelFarm=26
	Name="Head Baker [Lv. 2275]"
	QuestName="CakeQuest2"
	LevelQuest=2
	NameMon="Head Baker"
	CFrameMon=CFrame.new(-1926, 88, -12850)
	VectorMon=CFrame.new(-1870, 38, -12938)
	CFrameQuest=CFrame.new(-1926, 38, -12850)
	VectorQuest=Vector3.new(-1926, 38, -12850)
	elseif ((MyLevel==2300) or (MyLevel <= 2324)) then
	LevelFarm=27
	Name="Cocoa Warrior [Lv. 2300]"
	QuestName="ChocQuest1"
	LevelQuest=1
	NameMon="Cocoa Warrior"
	CFrameMon=CFrame.new(231, 23, -12194)
	VectorMon=CFrame.new(231, 23, -12194)
	CFrameQuest=CFrame.new(231, 23, -12194)
	VectorQuest=Vector3.new(231, 23, -12194)
	elseif ((MyLevel==2325) or (MyLevel <= 2349)) then
	LevelFarm=28
	Name="Chocolate Bar Battler [Lv. 2325]"
	QuestName="ChocQuest1"
	LevelQuest=2
	NameMon="Chocolate Bar Battler"
	CFrameMon=CFrame.new(231, 23, -12194)
	VectorMon=CFrame.new(231, 23, -12194)
	CFrameQuest=CFrame.new(231, 23, -12194)
	VectorQuest=Vector3.new(231, 23, -12194)
	elseif ((MyLevel==2350) or (MyLevel <= 2374)) then
	LevelFarm=29
	Name="Sweet Thief [Lv. 2350]"
	QuestName="ChocQuest2"
	LevelQuest=1
	NameMon="Sweet Thief"
	CFrameMon=CFrame.new(71, 77, -12632)
	VectorMon=CFrame.new(71, 77, -12632)
	CFrameQuest=CFrame.new(151, 23, -12774)
	VectorQuest=Vector3.new(151, 23, -12774)
	elseif ((MyLevel==2375) or (MyLevel <= 2400)) then
	LevelFarm=30
	Name="Candy Rebel [Lv. 2375]"
	QuestName="ChocQuest2"
	LevelQuest=2
	NameMon="Candy Rebel"
	CFrameMon=CFrame.new(134, 77, -12882)
	VectorMon=CFrame.new(134, 77, -12882)
	CFrameQuest=CFrame.new(151, 23, -12774)
	VectorQuest=Vector3.new(151, 23, -12774)
	elseif ((MyLevel==2400) or (MyLevel <= 2449)) then
	LevelFarm=31
	Name="Candy Pirate [Lv. 2400]"
	QuestName="CandyQuest1"
	LevelQuest=1
	NameMon="Candy Pirate"
	CFrameMon=CFrame.new(-1408.46521, 16.1423531, -14552.2041, 0.90175873, -8.1721694e-8, -0.432239741, 7.812645e-8, 1, -2.6074616e-8, 0.432239741, -1.0256343e-8, 0.90175873)
	VectorQuest=Vector3.new(-1408.46521, 16.1423531, -14552.2041, 0.90175873, -8.1721694e-8, -0.432239741, 7.812645e-8, 1, -2.6074616e-8, 0.432239741, -1.0256343e-8, 0.90175873)
	CFrameQuest=CFrame.new(-1151.48987, 16.1422901, -14445.6904, -0.316594511, -6.8569825e-8, -0.948560953, -2.0534307e-8, 1, -6.543467e-8, 0.948560953, -1.2382168e-9, -0.316594511)
	VectorQuest=Vector3.new(-1151.48987, 16.1422901, -14445.6904, -0.316594511, -6.8569825e-8, -0.948560953, -2.0534307e-8, 1, -6.543467e-8, 0.948560953, -1.2382168e-9, -0.316594511)
	elseif (MyLevel==2475 or MyLevel >= 2450) then
	LevelFarm=32
	Name="Isle Outlaw"
	QuestName="TikiQuest1"
	LevelQuest=1
	NameMon="Isle Outlaw"
	CFrameMon=CFrame.new(-16309, 138, -167)
	VectorQuest=Vector3.new(-16546, 56, -174)
	CFrameQuest=CFrame.new(-16546, 56, -174)
	VectorQuest=Vector3.new(-16546, 56, -174)
	elseif (MyLevel==2500 or MyLevel >= 2475) then
	LevelFarm=33
	Name="Island Boy"
	QuestName="TikiQuest1"
	LevelQuest=2
	NameMon="Island Boy"
	CFrameMon=CFrame.new(-16831, 146, -216)
	VectorQuest=Vector3.new(-16546, 56, -174)
	CFrameQuest=CFrame.new(-16546, 56, -174)
	VectorQuest=Vector3.new(-16546, 56, -174)
	elseif (MyLevel==2525 or MyLevel >= 2500) then
	LevelFarm=34
	Name="Sun-kissed Warrior"
	QuestName="TikiQuest2"
	LevelQuest=1
	NameMon="Sun-kissed Warrior"
	CFrameMon=CFrame.new(-16241, 137, 1016)
	VectorQuest=Vector3.new(-16540, 56, 1051)
	CFrameQuest=CFrame.new(-16540, 56, 1051)
	VectorQuest=Vector3.new(-16540, 56, 1051)
	elseif (MyLevel >= 2525) then
	LevelFarm=35
	Name="Isle Champion"
	QuestName="TikiQuest2"
	LevelQuest=2
	NameMon="Isle Champion"
	CFrameMon=CFrame.new(-16873, 146, 1069)
	VectorQuest=Vector3.new(-16540, 56, 1051)
	CFrameQuest=CFrame.new(-16540, 56, 1051)
	VectorQuest=Vector3.new(-16540, 56, 1051)
	end
	end
	end
	function CheckOldQuest(LevelFarm)
	if World1 then
	if (LevelFarm==1) then
	Name="Bandit [Lv. 5]"
	QuestName="BanditQuest1"
	LevelQuest=1
	NameMon="Bandit"
	CFrameMon=CFrame.new(1060, 17, 1547)
	VectorMon=Vector3.new(1060, 17, 1547)
	CFrameQuest=CFrame.new(1060, 17, 1547)
	VectorQuest=Vector3.new(1060, 17, 1547)
	elseif (LevelFarm==2) then
	Name="Monkey [Lv. 14]"
	QuestName="JungleQuest"
	LevelQuest=1
	NameMon="Monkey"
	CFrameMon=CFrame.new(-1496, 39, 35)
	VectorMon=Vector3.new(-1496, 39, 35)
	CFrameQuest=CFrame.new(-1602, 37, 152)
	VectorQuest=Vector3.new(-1602, 37, 152)
	elseif (LevelFarm==3) then
	Name="Gorilla [Lv. 20]"
	QuestName="JungleQuest"
	LevelQuest=2
	NameMon="Gorilla"
	CFrameMon=CFrame.new(-1237, 6, -486)
	VectorMon=Vector3.new(-1237, 7, -486)
	CFrameQuest=CFrame.new(-1602, 37, 152)
	VectorQuest=Vector3.new(-1602, 37, 152)
	elseif (LevelFarm==4) then
	Name="Pirate [Lv. 35]"
	QuestName="BuggyQuest1"
	LevelQuest=1
	NameMon="Pirate"
	CFrameMon=CFrame.new(-1115, 14, 3938)
	VectorMon=Vector3.new(-1115, 14, 3938)
	CFrameQuest=CFrame.new(-1140, 5, 3828)
	VectorQuest=Vector3.new(-1140, 5, 3828)
	elseif (LevelFarm==5) then
	Name="Brute [Lv. 45]"
	QuestName="BuggyQuest1"
	LevelQuest=2
	NameMon="Brute"
	CFrameMon=CFrame.new(-1145, 15, 4350)
	VectorMon=Vector3.new(-1146, 15, 4350)
	CFrameQuest=CFrame.new(-1140, 5, 3828)
	VectorQuest=Vector3.new(-1140, 5, 3828)
	elseif (LevelFarm==6) then
	Name="Desert Bandit [Lv. 60]"
	QuestName="DesertQuest"
	LevelQuest=1
	NameMon="Desert Bandit"
	CFrameMon=CFrame.new(932, 7, 4484)
	VectorMon=Vector3.new(932, 7, 4484)
	CFrameQuest=CFrame.new(897, 7, 4388)
	VectorQuest=Vector3.new(897, 7, 4388)
	elseif (LevelFarm==7) then
	Name="Desert Officer [Lv. 70]"
	QuestName="DesertQuest"
	LevelQuest=2
	NameMon="Desert Officer"
	CFrameMon=CFrame.new(1572, 10, 4373)
	VectorMon=Vector3.new(1572, 10, 4373)
	CFrameQuest=CFrame.new(897, 7, 4388)
	VectorQuest=Vector3.new(897, 7, 4388)
	elseif (LevelFarm==8) then
	Name="Snow Bandit [Lv. 90]"
	QuestName="SnowQuest"
	LevelQuest=1
	NameMon="Snow Bandits"
	CFrameMon=CFrame.new(1289, 150, -1442)
	VectorMon=Vector3.new(1289, 106, -1442)
	CFrameQuest=CFrame.new(1386, 87, -1297)
	VectorQuest=Vector3.new(1386, 87, -1297)
	elseif (LevelFarm==9) then
	Name="Snowman [Lv. 100]"
	QuestName="SnowQuest"
	LevelQuest=2
	NameMon="Snowman"
	CFrameMon=CFrame.new(1289, 150, -1442)
	VectorMon=Vector3.new(1289, 106, -1442)
	CFrameQuest=CFrame.new(1386, 87, -1297)
	VectorQuest=Vector3.new(1386, 87, -1297)
	elseif (LevelFarm==10) then
	Name="Chief Petty Officer [Lv. 120]"
	QuestName="MarineQuest2"
	LevelQuest=1
	NameMon="Chief Petty Officer"
	CFrameMon=CFrame.new(-4855, 23, 4308)
	VectorMon=Vector3.new(-4855, 23, 4308)
	CFrameQuest=CFrame.new(-5036, 29, 4325)
	VectorQuest=Vector3.new(-5036, 29, 4325)
	elseif (LevelFarm==11) then
	Name="Sky Bandit [Lv. 150]"
	QuestName="SkyQuest"
	LevelQuest=1
	NameMon="Sky Bandit"
	CFrameMon=CFrame.new(-4981, 278, -2830)
	VectorMon=Vector3.new(-4981, 278, -2830)
	CFrameQuest=CFrame.new(-4842, 718, -2623)
	VectorQuest=Vector3.new(-4842, 718, -2623)
	elseif (LevelFarm==12) then
	Name="Dark Master [Lv. 175]"
	QuestName="SkyQuest"
	LevelQuest=2
	NameMon="Dark Master"
	CFrameMon=CFrame.new(-5250, 389, -2272)
	VectorMon=Vector3.new(-5250, 389, -2272)
	CFrameQuest=CFrame.new(-4842, 718, -2623)
	VectorQuest=Vector3.new(-4842, 718, -2623)
	elseif (LevelFarm==13) then
	Name="Prisoner [Lv. 190]"
	QuestName="PrisonerQuest"
	LevelQuest=1
	NameMon="Prisoner"
	CFrameMon=CFrame.new(5411, 96, 690)
	VectorMon=Vector3.new(5411, 96, 690)
	CFrameQuest=CFrame.new(5308, 2, 474)
	VectorQuest=Vector3.new(5308, 2, 474)
	elseif (LevelFarm==14) then
	Name="Dangerous Prisoner [Lv. 210]"
	QuestName="PrisonerQuest"
	LevelQuest=2
	NameMon="Dangerous Prisoner"
	CFrameMon=CFrame.new(5411, 96, 690)
	VectorMon=Vector3.new(5411, 96, 690)
	CFrameQuest=CFrame.new(5308, 2, 474)
	VectorQuest=Vector3.new(5308, 2, 474)
	elseif (LevelFarm==15) then
	Name="Toga Warrior [Lv. 250]"
	QuestName="ColosseumQuest"
	LevelQuest=1
	NameMon="Toga Warrior"
	CFrameMon=CFrame.new(-1770, 8, -2777)
	VectorMon=Vector3.new(-1770, 8, -2777)
	CFrameQuest=CFrame.new(-1576, 8, -2985)
	VectorQuest=Vector3.new(-1576, 8, -2985)
	elseif (LevelFarm==16) then
	Name="Military Soldier [Lv. 300]"
	QuestName="MagmaQuest"
	LevelQuest=1
	NameMon="Military Soldier"
	CFrameMon=CFrame.new(-5408, 11, 8447)
	VectorMon=Vector3.new(-5408, 11, 8447)
	CFrameQuest=CFrame.new(-5316, 12, 8517)
	VectorQuest=Vector3.new(-5316, 12, 8517)
	elseif (LevelFarm==17) then
	Name="Military Spy [Lv. 325]"
	QuestName="MagmaQuest"
	LevelQuest=2
	NameMon="Military Spy"
	CFrameMon=CFrame.new(-5815, 84, 8820)
	VectorMon=Vector3.new(-5815, 84, 8820)
	CFrameQuest=CFrame.new(-5316, 12, 8517)
	VectorQuest=Vector3.new(-5316, 12, 8517)
	elseif (LevelFarm==18) then
	Name="Fishman Warrior [Lv. 375]"
	QuestName="FishmanQuest"
	LevelQuest=1
	NameMon="Fishman Warrior"
	CFrameMon=CFrame.new(60859, 19, 1501)
	VectorMon=Vector3.new(60859, 19, 1501)
	CFrameQuest=CFrame.new(61123, 19, 1569)
	VectorQuest=Vector3.new(61123, 19, 1569)
	elseif (LevelFarm==19) then
	Name="Fishman Commando [Lv. 400]"
	QuestName="FishmanQuest"
	LevelQuest=2
	NameMon="Fishman Commando"
	CFrameMon=CFrame.new(61891, 19, 1470)
	VectorMon=Vector3.new(61891, 19, 1470)
	CFrameQuest=CFrame.new(61123, 19, 1569)
	VectorQuest=Vector3.new(61123, 19, 1569)
	elseif (LevelFarm==20) then
	Name="God's Guard [Lv. 450]"
	QuestName="SkyExp1Quest"
	LevelQuest=1
	NameMon="God's Guards"
	CFrameMon=CFrame.new(-4698, 845, -1912)
	VectorMon=Vector3.new(-4698, 845, -1912)
	CFrameQuest=CFrame.new(-4722, 845, -1954)
	VectorQuest=Vector3.new(-4722, 846, -1954)
	elseif (LevelFarm==21) then
	Name="Shanda [Lv. 475]"
	QuestName="SkyExp1Quest"
	LevelQuest=2
	NameMon="Shandas"
	CFrameMon=CFrame.new(-7685, 5567, -502)
	VectorMon=Vector3.new(-7685, 5567, -502)
	CFrameQuest=CFrame.new(-7862, 5546, -380)
	VectorQuest=Vector3.new(-7862, 5546, -380)
	elseif (LevelFarm==22) then
	Name="Royal Squad [Lv. 525]"
	QuestName="SkyExp2Quest"
	LevelQuest=1
	NameMon="Royal Squad"
	CFrameMon=CFrame.new(-7670, 5607, -1460)
	VectorMon=Vector3.new(-7670, 5607, -1460)
	CFrameQuest=CFrame.new(-7904, 5636, -1412)
	VectorQuest=Vector3.new(-7904, 5636, -1412)
	elseif (LevelFarm==23) then
	Name="Royal Soldier [Lv. 550]"
	QuestName="SkyExp2Quest"
	LevelQuest=2
	NameMon="Royal Soldier"
	CFrameMon=CFrame.new(-7828, 5607, -1744)
	VectorMon=Vector3.new(-7828, 5607, -1744)
	CFrameQuest=CFrame.new(-7904, 5636, -1412)
	VectorQuest=Vector3.new(-7904, 5636, -1412)
	elseif (LevelFarm==24) then
	Name="Galley Pirate [Lv. 625]"
	QuestName="FountainQuest"
	LevelQuest=1
	NameMon="Galley Pirate"
	CFrameMon=CFrame.new(5589, 45, 3996)
	VectorMon=Vector3.new(5589, 45, 3996)
	CFrameQuest=CFrame.new(5256, 39, 4050)
	VectorQuest=Vector3.new(5256, 39, 4050)
	elseif (LevelFarm==25) then
	Name="Galley Captain [Lv. 650]"
	QuestName="FountainQuest"
	LevelQuest=2
	NameMon="Galley Captain"
	CFrameMon=CFrame.new(5649, 39, 4936)
	VectorMon=Vector3.new(5649, 39, 4936)
	CFrameQuest=CFrame.new(5256, 39, 4050)
	VectorQuest=Vector3.new(5256, 39, 4050)
	end
	end
	if World2 then
	if (LevelFarm==1) then
	Name="Raider [Lv. 700]"
	QuestName="Area1Quest"
	LevelQuest=1
	NameMon="Raider"
	CFrameQuest=CFrame.new(-425, 73, 1837)
	VectorQuest=Vector3.new(-425, 73, 1837)
	CFrameMon=CFrame.new(-746, 39, 2390)
	VectorMon=Vector3.new(-746, 39, 2389)
	elseif (LevelFarm==2) then
	Name="Mercenary [Lv. 725]"
	QuestName="Area1Quest"
	LevelQuest=2
	NameMon="Mercenary"
	CFrameQuest=CFrame.new(-425, 73, 1837)
	VectorQuest=Vector3.new(-425, 73, 1837)
	CFrameMon=CFrame.new(-874, 141, 1312)
	VectorMon=Vector3.new(-874, 141, 1312)
	elseif (LevelFarm==3) then
	Name="Swan Pirate [Lv. 775]"
	QuestName="Area2Quest"
	LevelQuest=1
	NameMon="Swan Pirate"
	CFrameQuest=CFrame.new(634, 73, 918)
	VectorQuest=Vector3.new(634, 73, 918)
	CFrameMon=CFrame.new(878, 122, 1235)
	VectorMon=Vector3.new(878, 122, 1235)
	elseif (LevelFarm==4) then
	Name="Factory Staff [Lv. 800]"
	QuestName="Area2Quest"
	LevelQuest=2
	NameMon="Factory Staff"
	CFrameQuest=CFrame.new(634, 73, 918)
	VectorQuest=Vector3.new(634, 73, 918)
	CFrameMon=CFrame.new(295, 73, -56)
	VectorMon=Vector3.new(295, 73, -56)
	elseif (LevelFarm==5) then
	Name="Marine Lieutenant [Lv. 875]"
	QuestName="MarineQuest3"
	LevelQuest=1
	NameMon="Marine Lieutenant"
	CFrameMon=CFrame.new(-2806, 73, -3038)
	VectorMon=Vector3.new(-2806, 73, -3038)
	CFrameQuest=CFrame.new(-2443, 73, -3219)
	VectorQuest=Vector3.new(-2443, 73, -3219)
	elseif (LevelFarm==6) then
	Name="Marine Captain [Lv. 900]"
	QuestName="MarineQuest3"
	LevelQuest=2
	NameMon="Marine Captain"
	CFrameMon=CFrame.new(-1869, 73, -3320)
	VectorMon=Vector3.new(-1869, 73, -3320)
	CFrameQuest=CFrame.new(-2443, 73, -3219)
	VectorQuest=Vector3.new(-2443, 73, -3219)
	elseif (LevelFarm==7) then
	Name="Zombie [Lv. 950]"
	QuestName="ZombieQuest"
	LevelQuest=1
	NameMon="Zombie"
	CFrameMon=CFrame.new(-5736, 126, -728)
	VectorMon=Vector3.new(-5736, 126, -728)
	CFrameQuest=CFrame.new(-5494, 49, -795)
	VectorQuest=Vector3.new(-5494, 49, -794)
	elseif (LevelFarm==8) then
	Name="Vampire [Lv. 975]"
	QuestName="ZombieQuest"
	LevelQuest=2
	NameMon="Vampire"
	CFrameMon=CFrame.new(-6033, 7, -1317)
	VectorMon=Vector3.new(-6033, 7, -1317)
	CFrameQuest=CFrame.new(-5494, 49, -795)
	VectorQuest=Vector3.new(-5494, 49, -795)
	elseif (LevelFarm==9) then
	Name="Snow Trooper [Lv. 1000]"
	QuestName="SnowMountainQuest"
	LevelQuest=1
	NameMon="Snow Trooper"
	CFrameMon=CFrame.new(478, 402, -5362)
	VectorMon=Vector3.new(478, 402, -5362)
	CFrameQuest=CFrame.new(605, 402, -5371)
	VectorQuest=Vector3.new(605, 402, -5371)
	elseif (LevelFarm==10) then
	Name="Winter Warrior [Lv. 1050]"
	QuestName="SnowMountainQuest"
	LevelQuest=2
	NameMon="Winter Warrior"
	CFrameMon=CFrame.new(1157, 430, -5188)
	VectorMon=Vector3.new(1157, 430, -5188)
	CFrameQuest=CFrame.new(605, 402, -5371)
	VectorQuest=Vector3.new(605, 402, -5371)
	elseif (LevelFarm==11) then
	Name="Lab Subordinate [Lv. 1100]"
	QuestName="IceSideQuest"
	LevelQuest=1
	NameMon="Lab Subordinate"
	CFrameMon=CFrame.new(-5782, 42, -4484)
	VectorMon=Vector3.new(-5782, 42, -4484)
	CFrameQuest=CFrame.new(-6060, 16, -4905)
	VectorQuest=Vector3.new(-6060, 16, -4905)
	elseif (LevelFarm==12) then
	Name="Horned Warrior [Lv. 1125]"
	QuestName="IceSideQuest"
	LevelQuest=2
	NameMon="Horned Warrior"
	CFrameMon=CFrame.new(-6406, 24, -5805)
	VectorMon=Vector3.new(-6406, 24, -5805)
	CFrameQuest=CFrame.new(-6060, 16, -4905)
	VectorQuest=Vector3.new(-6060, 16, -4905)
	elseif (LevelFarm==13) then
	Name="Magma Ninja [Lv. 1175]"
	QuestName="FireSideQuest"
	LevelQuest=1
	NameMon="Magma Ninja"
	CFrameMon=CFrame.new(-5428, 78, -5959)
	VectorMon=Vector3.new(-5428, 78, -5959)
	CFrameQuest=CFrame.new(-5430, 16, -5295)
	VectorQuest=Vector3.new(-5430, 16, -5296)
	elseif (LevelFarm==14) then
	Name="Lava Pirate [Lv. 1200]"
	QuestName="FireSideQuest"
	LevelQuest=2
	NameMon="Lava Pirate"
	CFrameMon=CFrame.new(-5270, 42, -4800)
	VectorMon=Vector3.new(-5270, 42, -4800)
	CFrameQuest=CFrame.new(-5430, 16, -5295)
	VectorQuest=Vector3.new(-5430, 16, -5296)
	elseif (LevelFarm==15) then
	Name="Ship Deckhand [Lv. 1250]"
	QuestName="ShipQuest1"
	LevelQuest=1
	NameMon="Ship Deckhand"
	CFrameMon=CFrame.new(1198, 126, 33031)
	VectorMon=Vector3.new(1198, 126, 33031)
	CFrameQuest=CFrame.new(1038, 125, 32913)
	VectorQuest=Vector3.new(1038, 125, 32913)
	elseif (LevelFarm==16) then
	Name="Ship Engineer [Lv. 1275]"
	QuestName="ShipQuest1"
	LevelQuest=2
	NameMon="Ship Engineer"
	CFrameMon=CFrame.new(918, 44, 32787)
	VectorMon=Vector3.new(918, 44, 32787)
	CFrameQuest=CFrame.new(1038, 125, 32913)
	VectorQuest=Vector3.new(1038, 125, 32913)
	elseif (LevelFarm==17) then
	Name="Ship Steward [Lv. 1300]"
	QuestName="ShipQuest2"
	LevelQuest=1
	NameMon="Ship Steward"
	CFrameMon=CFrame.new(915, 130, 33419)
	VectorMon=Vector3.new(915, 130, 33419)
	CFrameQuest=CFrame.new(969, 125, 33245)
	VectorQuest=Vector3.new(969, 125, 33245)
	elseif (LevelFarm==18) then
	Name="Ship Officer [Lv. 1325]"
	QuestName="ShipQuest2"
	LevelQuest=2
	NameMon="Ship Officer"
	CFrameMon=CFrame.new(916, 181, 33335)
	VectorMon=Vector3.new(916, 181, 33335)
	CFrameQuest=CFrame.new(969, 125, 33245)
	VectorQuest=Vector3.new(969, 125, 33245)
	elseif (LevelFarm==19) then
	Name="Arctic Warrior [Lv. 1350]"
	QuestName="FrostQuest"
	LevelQuest=1
	NameMon="Arctic Warrior"
	CFrameMon=CFrame.new(6038, 29, -6231)
	VectorMon=Vector3.new(6038, 29, -6231)
	VectorQuest=Vector3.new(5669, 28, -6482)
	CFrameQuest=CFrame.new(5669, 28, -6482)
	elseif (LevelFarm==20) then
	Name="Snow Lurker [Lv. 1375]"
	QuestName="FrostQuest"
	LevelQuest=2
	NameMon="Snow Lurker"
	CFrameMon=CFrame.new(5560, 42, -6826)
	VectorMon=Vector3.new(5560, 42, -6826)
	VectorQuest=Vector3.new(5669, 28, -6482)
	CFrameQuest=CFrame.new(5669, 28, -6482)
	elseif (LevelFarm==21) then
	Name="Sea Soldier [Lv. 1425]"
	QuestName="ForgottenQuest"
	LevelQuest=1
	NameMon="Sea Soldier"
	CFrameMon=CFrame.new(-3022, 16, -9722)
	VectorMon=Vector3.new(-3022, 16, -9722)
	CFrameQuest=CFrame.new(-3054, 237, -10148)
	VectorQuest=Vector3.new(-3054, 237, -10148)
	elseif (LevelFarm==22) then
	Name="Water Fighter [Lv. 1450]"
	QuestName="ForgottenQuest"
	LevelQuest=2
	NameMon="Water Fighter"
	CFrameMon=CFrame.new(-3385, 239, -10542)
	VectorMon=Vector3.new(-3385, 239, -10542)
	CFrameQuest=CFrame.new(-3054, 237, -10148)
	VectorQuest=Vector3.new(-3054, 237, -10148)
	end
	end
	if World3 then
	if (LevelFarm==1) then
	Name="Pirate Millionaire [Lv. 1500]"
	QuestName="PiratePortQuest"
	LevelQuest=1
	NameMon="Pirate"
	CFrameMon=CFrame.new(-373, 75, 5550)
	VectorMon=Vector3.new(-373, 75, 5550)
	CFrameQuest=CFrame.new(-288, 44, 5576)
	VectorQuest=Vector3.new(-288, 44, 5576)
	elseif (LevelFarm==2) then
	Name="Pistol Billionaire [Lv. 1525]"
	QuestName="PiratePortQuest"
	LevelQuest=2
	NameMon="Pistol"
	CFrameMon=CFrame.new(-469, 74, 5904)
	VectorMon=Vector3.new(-469, 74, 5904)
	CFrameQuest=CFrame.new(-288, 44, 5576)
	VectorQuest=Vector3.new(-288, 44, 5576)
	elseif (LevelFarm==3) then
	Name="Dragon Crew Warrior [Lv. 1575]"
	QuestName="AmazonQuest"
	LevelQuest=1
	NameMon="Warrior"
	CFrameMon=CFrame.new(6339, 52, -1213)
	VectorMon=Vector3.new(6338, 52, -1213)
	CFrameQuest=CFrame.new(5835, 52, -1105)
	VectorQuest=Vector3.new(5835, 52, -1105)
	elseif (LevelFarm==4) then
	Name="Dragon Crew Archer [Lv. 1600]"
	QuestName="AmazonQuest"
	LevelQuest=2
	NameMon="Archer"
	CFrameMon=CFrame.new(6594, 383, 139)
	VectorMon=Vector3.new(6594, 383, 139)
	CFrameQuest=CFrame.new(5835, 52, -1105)
	VectorQuest=Vector3.new(5835, 52, -1105)
	elseif (LevelFarm==5) then
	Name="Female Islander [Lv. 1625]"
	QuestName="AmazonQuest2"
	LevelQuest=1
	NameMon="Female"
	CFrameMon=CFrame.new(5308, 819, 1047)
	VectorMon=Vector3.new(5308, 819, 1047)
	CFrameQuest=CFrame.new(5443, 602, 751)
	VectorQuest=Vector3.new(5443, 602, 751)
	elseif (LevelFarm==6) then
	Name="Giant Islander [Lv. 1650]"
	QuestName="AmazonQuest2"
	LevelQuest=2
	NameMon="Giant Islanders"
	CFrameMon=CFrame.new(4951, 602, -68)
	VectorMon=Vector3.new(4951, 602, -68)
	CFrameQuest=CFrame.new(5443, 602, 751)
	VectorQuest=Vector3.new(5443, 602, 751)
	elseif (LevelFarm==7) then
	Name="Marine Commodore [Lv. 1700]"
	QuestName="MarineTreeIsland"
	LevelQuest=1
	NameMon="Marine Commodore"
	CFrameMon=CFrame.new(2447, 73, -7470)
	VectorMon=Vector3.new(2447, 73, -7470)
	CFrameQuest=CFrame.new(2180, 29, -6737)
	VectorQuest=Vector3.new(2180, 29, -6737)
	elseif (LevelFarm==8) then
	Name="Marine Rear Admiral [Lv. 1725]"
	QuestName="MarineTreeIsland"
	LevelQuest=2
	NameMon="Marine Rear Admiral"
	CFrameMon=CFrame.new(3671, 161, -6932)
	VectorMon=Vector3.new(3671, 161, -6932)
	CFrameQuest=CFrame.new(2180, 29, -6737)
	VectorQuest=Vector3.new(2180, 29, -6737)
	elseif (LevelFarm==9) then
	Name="Fishman Raider [Lv. 1775]"
	QuestName="DeepForestIsland3"
	LevelQuest=1
	NameMon="Fishman Raider"
	CFrameMon=CFrame.new(-10560, 332, -8466)
	VectorMon=Vector3.new(-10560, 332, -8466)
	CFrameQuest=CFrame.new(-10584, 332, -8758)
	VectorQuest=Vector3.new(-10584, 332, -8758)
	elseif (LevelFarm==10) then
	Name="Fishman Captain [Lv. 1800]"
	QuestName="DeepForestIsland3"
	LevelQuest=2
	NameMon="Fishman Captain"
	CFrameMon=CFrame.new(-10993, 332, -8940)
	VectorMon=Vector3.new(-10993, 332, -8940)
	CFrameQuest=CFrame.new(-10584, 332, -8758)
	VectorQuest=Vector3.new(-10584, 332, -8758)
	elseif (LevelFarm==11) then
	Name="Forest Pirate [Lv. 1825]"
	QuestName="DeepForestIsland"
	LevelQuest=1
	NameMon="Forest Pirate"
	CFrameMon=CFrame.new(-13479, 333, -7905)
	VectorMon=Vector3.new(-13479, 333, -7905)
	CFrameQuest=CFrame.new(-13232, 333, -7627)
	VectorQuest=Vector3.new(-13232, 333, -7627)
	elseif (LevelFarm==12) then
	Name="Mythological Pirate [Lv. 1850]"
	QuestName="DeepForestIsland"
	LevelQuest=2
	NameMon="Mythological Pirate"
	CFrameMon=CFrame.new(-13545, 470, -6917)
	VectorMon=Vector3.new(-13545, 470, -6917)
	CFrameQuest=CFrame.new(-13232, 333, -7627)
	VectorQuest=Vector3.new(-13232, 333, -7627)
	elseif (LevelFarm==13) then
	Name="Jungle Pirate [Lv. 1900]"
	QuestName="DeepForestIsland2"
	LevelQuest=1
	NameMon="Jungle Pirate"
	CFrameMon=CFrame.new(-12107, 332, -10549)
	VectorMon=Vector3.new(-12106, 332, -10549)
	CFrameQuest=CFrame.new(-12684, 391, -9902)
	VectorQuest=Vector3.new(-12684, 391, -9902)
	elseif (LevelFarm==14) then
	Name="Musketeer Pirate [Lv. 1925]"
	QuestName="DeepForestIsland2"
	LevelQuest=2
	NameMon="Musketeer Pirate"
	CFrameMon=CFrame.new(-13286, 392, -9769)
	VectorMon=Vector3.new(-13286, 392, -9768)
	CFrameQuest=CFrame.new(-12684, 391, -9902)
	VectorQuest=Vector3.new(-12684, 391, -9902)
	elseif (LevelFarm==15) then
	Name="Reborn Skeleton [Lv. 1975]"
	QuestName="HauntedQuest1"
	LevelQuest=1
	NameMon="Reborn Skeleton"
	CFrameMon=CFrame.new(-8760, 142, 6039)
	VectorMon=Vector3.new(-8760, 142, 6039)
	CFrameQuest=CFrame.new(-9482, 142, 5567)
	VectorQuest=Vector3.new(-9482, 142, 5567)
	elseif (LevelFarm==16) then
	Name="Living Zombie [Lv. 2000]"
	QuestName="HauntedQuest1"
	LevelQuest=2
	NameMon="Living Zombie"
	CFrameMon=CFrame.new(-10144, 140, 5932)
	VectorMon=Vector3.new(-10144, 140, 5932)
	CFrameQuest=CFrame.new(-9482, 142, 5567)
	VectorQuest=Vector3.new(-9482, 142, 5567)
	elseif (LevelFarm==17) then
	Name="Demonic Soul [Lv. 2025]"
	QuestName="HauntedQuest2"
	LevelQuest=1
	NameMon="Demonic Soul"
	CFrameMon=CFrame.new(-9507, 172, 6158)
	VectorMon=Vector3.new(-9506, 172, 6158)
	CFrameQuest=CFrame.new(-9513, 172, 6079)
	VectorQuest=Vector3.new(-9513, 172, 6079)
	elseif (LevelFarm==18) then
	Name="Posessed Mummy [Lv. 2050]"
	QuestName="HauntedQuest2"
	LevelQuest=2
	NameMon="Posessed Mummy"
	CFrameMon=CFrame.new(-9577, 6, 6223)
	VectorMon=Vector3.new(-9577, 6, 6223)
	CFrameQuest=CFrame.new(-9513, 172, 6079)
	VectorQuest=Vector3.new(-9513, 172, 6079)
	elseif (LevelFarm==19) then
	Name="Peanut Scout [Lv. 2075]"
	QuestName="NutsIslandQuest"
	LevelQuest=1
	NameMon="Peanut Scout"
	CFrameMon=CFrame.new(-2124, 123, -10435)
	VectorMon=Vector3.new(-2124, 123, -10435)
	CFrameQuest=CFrame.new(-2104, 38, -10192)
	VectorQuest=Vector3.new(-2104, 38, -10192)
	elseif (LevelFarm==20) then
	Name="Peanut President [Lv. 2100]"
	QuestName="NutsIslandQuest"
	LevelQuest=2
	NameMon="Peanut President"
	CFrameMon=CFrame.new(-2124, 123, -10435)
	VectorMon=Vector3.new(-2124, 123, -10435)
	CFrameQuest=CFrame.new(-2104, 38, -10192)
	VectorQuest=Vector3.new(-2104, 38, -10192)
	elseif (LevelFarm==21) then
	Name="Ice Cream Chef [Lv. 2125]"
	QuestName="IceCreamIslandQuest"
	LevelQuest=1
	NameMon="Ice Cream Chef"
	CFrameMon=CFrame.new(-641, 127, -11062)
	VectorMon=Vector3.new(-641, 127, -11062)
	CFrameQuest=CFrame.new(-822, 66, -10965)
	VectorQuest=Vector3.new(-822, 66, -10965)
	elseif (LevelFarm==22) then
	Name="Ice Cream Commander [Lv. 2150]"
	QuestName="IceCreamIslandQuest"
	LevelQuest=2
	NameMon="Ice Cream Commander"
	CFrameMon=CFrame.new(-641, 127, -11062)
	VectorMon=Vector3.new(-641, 127, -11062)
	CFrameQuest=CFrame.new(-822, 66, -10965)
	VectorQuest=Vector3.new(-822, 66, -10965)
	elseif (LevelFarm==23) then
	Name="Cookie Crafter [Lv. 2200]"
	QuestName="CakeQuest1"
	LevelQuest=1
	NameMon="Cookie Crafter"
	CFrameMon=CFrame.new(-2365, 38, -12099)
	VectorMon=Vector3.new(-2365, 38, -12099)
	CFrameQuest=CFrame.new(-2020, 38, -12025)
	VectorQuest=Vector3.new(-2020, 38, -12025)
	elseif (LevelFarm==24) then
	Name="Cake Guard [Lv. 2225]"
	QuestName="CakeQuest1"
	LevelQuest=2
	NameMon="Cake Guard"
	CFrameMon=CFrame.new(-1651, 38, -12308)
	VectorMon=Vector3.new(-1651, 38, -12308)
	CFrameQuest=CFrame.new(-2020, 38, -12025)
	VectorQuest=Vector3.new(-2020, 38, -12025)
	elseif (LevelFarm==25) then
	Name="Baking Staff [Lv. 2250]"
	QuestName="CakeQuest2"
	LevelQuest=1
	NameMon="Baking Staff"
	CFrameMon=CFrame.new(-1870, 38, -12938)
	VectorMon=Vector3.new(-1870, 38, -12938)
	CFrameQuest=CFrame.new(-1926, 38, -12850)
	VectorQuest=Vector3.new(-1926, 38, -12850)
	elseif (LevelFarm==26) then
	Name="Head Baker [Lv. 2275]"
	QuestName="CakeQuest2"
	LevelQuest=2
	NameMon="Head Baker"
	CFrameMon=CFrame.new(-1926, 88, -12850)
	VectorMon=CFrame.new(-1870, 38, -12938)
	CFrameQuest=CFrame.new(-1926, 38, -12850)
	VectorQuest=Vector3.new(-1926, 38, -12850)
	elseif (LevelFarm==27) then
	Name="Cocoa Warrior [Lv. 2300]"
	QuestName="ChocQuest1"
	LevelQuest=1
	NameMon="Cocoa Warrior"
	CFrameMon=CFrame.new(231, 23, -12194)
	VectorMon=CFrame.new(231, 23, -12194)
	CFrameQuest=CFrame.new(231, 23, -12194)
	VectorQuest=Vector3.new(231, 23, -12194)
	elseif (LevelFarm==28) then
	Name="Chocolate Bar Battler [Lv. 2325]"
	QuestName="ChocQuest1"
	LevelQuest=2
	NameMon="Chocolate Bar Battler"
	CFrameMon=CFrame.new(231, 23, -12194)
	VectorMon=CFrame.new(231, 23, -12194)
	CFrameQuest=CFrame.new(231, 23, -12194)
	VectorQuest=Vector3.new(231, 23, -12194)
	elseif (LevelFarm==29) then
	Name="Sweet Thief [Lv. 2350]"
	QuestName="ChocQuest2"
	LevelQuest=1
	NameMon="Sweet Thief"
	CFrameMon=CFrame.new(71, 77, -12632)
	VectorMon=CFrame.new(71, 77, -12632)
	CFrameQuest=CFrame.new(151, 23, -12774)
	VectorQuest=Vector3.new(151, 23, -12774)
	elseif (MyLevel==30) then
	Name="Candy Rebel [Lv. 2375]"
	QuestName="ChocQuest2"
	LevelQuest=2
	NameMon="Candy Rebel"
	CFrameMon=CFrame.new(134, 77, -12882)
	VectorMon=CFrame.new(134, 77, -12882)
	CFrameQuest=CFrame.new(151, 23, -12774)
	VectorQuest=Vector3.new(151, 23, -12774)
	elseif (MyLevel==31) then
	Name="Candy Pirate [Lv. 2400]"
	QuestName="CandyQuest1"
	LevelQuest=1
	NameMon="Candy Pirate"
	CFrameMon=CFrame.new(-1408.46521, 16.1423531, -14552.2041, 0.90175873, -8.1721694e-8, -0.432239741, 7.812645e-8, 1, -2.6074616e-8, 0.432239741, -1.0256343e-8, 0.90175873)
	VectorQuest=Vector3.new(-1408.46521, 16.1423531, -14552.2041, 0.90175873, -8.1721694e-8, -0.432239741, 7.812645e-8, 1, -2.6074616e-8, 0.432239741, -1.0256343e-8, 0.90175873)
	CFrameQuest=CFrame.new(-1151.48987, 16.1422901, -14445.6904, -0.316594511, -6.8569825e-8, -0.948560953, -2.0534307e-8, 1, -6.543467e-8, 0.948560953, -1.2382168e-9, -0.316594511)
	VectorQuest=Vector3.new(-1151.48987, 16.1422901, -14445.6904, -0.316594511, -6.8569825e-8, -0.948560953, -2.0534307e-8, 1, -6.543467e-8, 0.948560953, -1.2382168e-9, -0.316594511)
	elseif (MyLevel >= 32) then
	Name="Snow Demon [Lv. 2425]"
	QuestName="CandyQuest1"
	LevelQuest=2
	NameMon="Snow Demon"
	CFrameMon=CFrame.new(-782, 382, -14474)
	VectorQuest=Vector3.new(-782, 382, -14474)
	CFrameQuest=CFrame.new(-1151.48987, 16.1422901, -14445.6904, -0.316594511, -6.8569825e-8, -0.948560953, -2.0534307e-8, 1, -6.543467e-8, 0.948560953, -1.2382168e-9, -0.316594511)
	VectorQuest=Vector3.new(-1151.48987, 16.1422901, -14445.6904, -0.316594511, -6.8569825e-8, -0.948560953, -2.0534307e-8, 1, -6.543467e-8, 0.948560953, -1.2382168e-9, -0.316594511)
	elseif (MyLevel >= 33) then
	Name="Isle Outlaw"
	QuestName="TikiQuest1"
	LevelQuest=1
	NameMon="Isle Outlaw"
	CFrameMon=CFrame.new(-16309, 138, -167)
	VectorQuest=Vector3.new(-16546, 56, -174)
	CFrameQuest=CFrame.new(-16546, 56, -174)
	VectorQuest=Vector3.new(-16546, 56, -174)
	 elseif (MyLevel >= 34) then
	 LevelFarm=33
	 Name="Island Boy"
	 QuestName="TikiQuest1"
	 LevelQuest=2
	 NameMon="Island Boy"
	 CFrameMon=CFrame.new(-16831, 146, -216)
	 VectorQuest=Vector3.new(-16546, 56, -174)
	 CFrameQuest=CFrame.new(-16546, 56, -174)
	 VectorQuest=Vector3.new(-16546, 56, -174)
	 elseif (MyLevel >= 35) then
	 Name="Sun-kissed Warrior"
	 QuestName="TikiQuest2"
	 LevelQuest=1
	 NameMon="Sun-kissed Warrior"
	 CFrameMon=CFrame.new(-16241, 137, 1016)
	 VectorQuest=Vector3.new(-16540, 56, 1051)
	 CFrameQuest=CFrame.new(-16540, 56, 1051)
	 VectorQuest=Vector3.new(-16540, 56, 1051)
	elseif (MyLevel >= 36) then
	 Name="Isle Champion"
	 QuestName="TikiQuest2"
	 LevelQuest=2
	 NameMon="Isle Champion"
	 CFrameMon=CFrame.new(-16873, 146, 1069)
	 VectorQuest=Vector3.new(-16540, 56, 1051)
	 CFrameQuest=CFrame.new(-16540, 56, 1051)
	 VectorQuest=Vector3.new(-16540, 56, 1051)
	end
	
	end
	end

function Hop()
    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local Deleted = false
    function TPReturner()
        local Site;
        if foundAnything == "" then
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
        else
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
        end
        local ID = ""
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
            foundAnything = Site.nextPageCursor
        end
        local num = 0;
        for i,v in pairs(Site.data) do
            local Possible = true
            ID = tostring(v.id)
            if tonumber(v.maxPlayers) > tonumber(v.playing) then
                for _,Existing in pairs(AllIDs) do
                    if num ~= 0 then
                        if ID == tostring(Existing) then
                            Possible = false
                        end
                    else
                        if tonumber(actualHour) ~= tonumber(Existing) then
                            local delFile = pcall(function()
                                AllIDs = {}
                                table.insert(AllIDs, actualHour)
                            end)
                        end
                    end
                    num = num + 1
                end
                if Possible == true then
                    table.insert(AllIDs, ID)
                    wait()
                    pcall(function()
                        wait()
                        game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                    end)
                    wait(4)
                end
            end
        end
    end
    function Teleport() 
        while wait() do
            pcall(function()
                TPReturner()
                if foundAnything ~= "" then
                    TPReturner()
                end
            end)
        end
    end
    Teleport()
end       

function UpdateIslandESP() 
    for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
        pcall(function()
            if IslandESP then 
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
                        name.TextColor3 = Color3.fromRGB(7, 236, 240)
                    else
                        v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
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
                    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance')
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
                    v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
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
function UpdateChestChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if string.find(v.Name,"Chest") then
            if ChestESP then
                if string.find(v.Name,"Chest") then
                    if not v:FindFirstChild('NameEsp'..Number) then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'..Number
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = Enum.Font.GothamSemibold
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        if v.Name == "Chest1" then
                            name.TextColor3 = Color3.fromRGB(109, 109, 109)
                            name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                        if v.Name == "Chest2" then
                            name.TextColor3 = Color3.fromRGB(173, 158, 21)
                            name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                        if v.Name == "Chest3" then
                            name.TextColor3 = Color3.fromRGB(85, 255, 255)
                            name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                    else
                        v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                    end
                end
            else
                if v:FindFirstChild('NameEsp'..Number) then
                    v:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end
    end)
end
end
function UpdateDevilChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if DevilFruitESP then
            if string.find(v.Name, "Fruit") then   
                if not v.Handle:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v.Handle)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v.Handle
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(255, 255, 255)
                    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
                else
                    v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
                end
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end
    end)
end
end
function UpdateFlowerChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if v.Name == "Flower2" or v.Name == "Flower1" then
            if FlowerESP then 
                if not v:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(255, 0, 0)
                    if v.Name == "Flower1" then 
                        name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        name.TextColor3 = Color3.fromRGB(0, 0, 255)
                    end
                    if v.Name == "Flower2" then
                        name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        name.TextColor3 = Color3.fromRGB(255, 0, 0)
                    end
                else
                    v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                end
            else
                if v:FindFirstChild('NameEsp'..Number) then
                v:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end   
    end)
end
end
function UpdateRealFruitChams() 
for i,v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
    if v:IsA("Tool") then
        if RealFruitESP then 
            if not v.Handle:FindFirstChild('NameEsp'..Number) then
                local bill = Instance.new('BillboardGui',v.Handle)
                bill.Name = 'NameEsp'..Number
                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                bill.Size = UDim2.new(1,200,1,30)
                bill.Adornee = v.Handle
                bill.AlwaysOnTop = true
                local name = Instance.new('TextLabel',bill)
                name.Font = Enum.Font.GothamSemibold
                name.FontSize = "Size14"
                name.TextWrapped = true
                name.Size = UDim2.new(1,0,1,0)
                name.TextYAlignment = 'Top'
                name.BackgroundTransparency = 1
                name.TextStrokeTransparency = 0.5
                name.TextColor3 = Color3.fromRGB(255, 0, 0)
                name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
for i,v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
    if v:IsA("Tool") then
        if RealFruitESP then 
            if not v.Handle:FindFirstChild('NameEsp'..Number) then
                local bill = Instance.new('BillboardGui',v.Handle)
                bill.Name = 'NameEsp'..Number
                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                bill.Size = UDim2.new(1,200,1,30)
                bill.Adornee = v.Handle
                bill.AlwaysOnTop = true
                local name = Instance.new('TextLabel',bill)
                name.Font = Enum.Font.GothamSemibold
                name.FontSize = "Size14"
                name.TextWrapped = true
                name.Size = UDim2.new(1,0,1,0)
                name.TextYAlignment = 'Top'
                name.BackgroundTransparency = 1
                name.TextStrokeTransparency = 0.5
                name.TextColor3 = Color3.fromRGB(255, 174, 0)
                name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
for i,v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
    if v:IsA("Tool") then
        if RealFruitESP then 
            if not v.Handle:FindFirstChild('NameEsp'..Number) then
                local bill = Instance.new('BillboardGui',v.Handle)
                bill.Name = 'NameEsp'..Number
                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                bill.Size = UDim2.new(1,200,1,30)
                bill.Adornee = v.Handle
                bill.AlwaysOnTop = true
                local name = Instance.new('TextLabel',bill)
                name.Font = Enum.Font.GothamSemibold
                name.FontSize = "Size14"
                name.TextWrapped = true
                name.Size = UDim2.new(1,0,1,0)
                name.TextYAlignment = 'Top'
                name.BackgroundTransparency = 1
                name.TextStrokeTransparency = 0.5
                name.TextColor3 = Color3.fromRGB(251, 255, 0)
                name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
end

function UpdateIslandESP() 
    for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
        pcall(function()
            if IslandESP then 
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
                        name.TextColor3 = Color3.fromRGB(7, 236, 240)
                    else
                        v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
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
                    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance')
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
                    v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
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
function UpdateChestChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if string.find(v.Name,"Chest") then
            if ChestESP then
                if string.find(v.Name,"Chest") then
                    if not v:FindFirstChild('NameEsp'..Number) then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'..Number
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = Enum.Font.GothamSemibold
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        if v.Name == "Chest1" then
                            name.TextColor3 = Color3.fromRGB(109, 109, 109)
                            name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                        if v.Name == "Chest2" then
                            name.TextColor3 = Color3.fromRGB(173, 158, 21)
                            name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                        if v.Name == "Chest3" then
                            name.TextColor3 = Color3.fromRGB(85, 255, 255)
                            name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        end
                    else
                        v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                    end
                end
            else
                if v:FindFirstChild('NameEsp'..Number) then
                    v:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end
    end)
end
end
function UpdateDevilChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if DevilFruitESP then
            if string.find(v.Name, "Fruit") then   
                if not v.Handle:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v.Handle)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v.Handle
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(255, 255, 255)
                    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
                else
                    v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
                end
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end
    end)
end
end
function UpdateFlowerChams() 
for i,v in pairs(game.Workspace:GetChildren()) do
    pcall(function()
        if v.Name == "Flower2" or v.Name == "Flower1" then
            if FlowerESP then 
                if not v:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
                    name.TextColor3 = Color3.fromRGB(255, 0, 0)
                    if v.Name == "Flower1" then 
                        name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        name.TextColor3 = Color3.fromRGB(0, 0, 255)
                    end
                    if v.Name == "Flower2" then
                        name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                        name.TextColor3 = Color3.fromRGB(255, 0, 0)
                    end
                else
                    v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
                end
            else
                if v:FindFirstChild('NameEsp'..Number) then
                v:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end   
    end)
end
end
function UpdateRealFruitChams() 
for i,v in pairs(game.Workspace.AppleSpawner:GetChildren()) do
    if v:IsA("Tool") then
        if RealFruitESP then 
            if not v.Handle:FindFirstChild('NameEsp'..Number) then
                local bill = Instance.new('BillboardGui',v.Handle)
                bill.Name = 'NameEsp'..Number
                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                bill.Size = UDim2.new(1,200,1,30)
                bill.Adornee = v.Handle
                bill.AlwaysOnTop = true
                local name = Instance.new('TextLabel',bill)
                name.Font = Enum.Font.GothamSemibold
                name.FontSize = "Size14"
                name.TextWrapped = true
                name.Size = UDim2.new(1,0,1,0)
                name.TextYAlignment = 'Top'
                name.BackgroundTransparency = 1
                name.TextStrokeTransparency = 0.5
                name.TextColor3 = Color3.fromRGB(255, 0, 0)
                name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
for i,v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
    if v:IsA("Tool") then
        if RealFruitESP then 
            if not v.Handle:FindFirstChild('NameEsp'..Number) then
                local bill = Instance.new('BillboardGui',v.Handle)
                bill.Name = 'NameEsp'..Number
                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                bill.Size = UDim2.new(1,200,1,30)
                bill.Adornee = v.Handle
                bill.AlwaysOnTop = true
                local name = Instance.new('TextLabel',bill)
                name.Font = Enum.Font.GothamSemibold
                name.FontSize = "Size14"
                name.TextWrapped = true
                name.Size = UDim2.new(1,0,1,0)
                name.TextYAlignment = 'Top'
                name.BackgroundTransparency = 1
                name.TextStrokeTransparency = 0.5
                name.TextColor3 = Color3.fromRGB(255, 174, 0)
                name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
for i,v in pairs(game.Workspace.BananaSpawner:GetChildren()) do
    if v:IsA("Tool") then
        if RealFruitESP then 
            if not v.Handle:FindFirstChild('NameEsp'..Number) then
                local bill = Instance.new('BillboardGui',v.Handle)
                bill.Name = 'NameEsp'..Number
                bill.ExtentsOffset = Vector3.new(0, 1, 0)
                bill.Size = UDim2.new(1,200,1,30)
                bill.Adornee = v.Handle
                bill.AlwaysOnTop = true
                local name = Instance.new('TextLabel',bill)
                name.Font = Enum.Font.GothamSemibold
                name.FontSize = "Size14"
                name.TextWrapped = true
                name.Size = UDim2.new(1,0,1,0)
                name.TextYAlignment = 'Top'
                name.BackgroundTransparency = 1
                name.TextStrokeTransparency = 0.5
                name.TextColor3 = Color3.fromRGB(251, 255, 0)
                name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            else
                v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
            end
        else
            if v.Handle:FindFirstChild('NameEsp'..Number) then
                v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
            end
        end 
    end
end
end

spawn(function()
while wait() do
    pcall(function()
        if MobESP then
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if v:FindFirstChild('HumanoidRootPart') then
                    if not v:FindFirstChild("MobEap") then
                        local BillboardGui = Instance.new("BillboardGui")
                        local TextLabel = Instance.new("TextLabel")

                        BillboardGui.Parent = v
                        BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                        BillboardGui.Active = true
                        BillboardGui.Name = "MobEap"
                        BillboardGui.AlwaysOnTop = true
                        BillboardGui.LightInfluence = 1.000
                        BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                        BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

                        TextLabel.Parent = BillboardGui
                        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        TextLabel.BackgroundTransparency = 1.000
                        TextLabel.Size = UDim2.new(0, 200, 0, 50)
                        TextLabel.Font = Enum.Font.GothamBold
                        TextLabel.TextColor3 = Color3.fromRGB(7, 236, 240)
                        TextLabel.Text.Size = 35
                    end
                    local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude)
                    v.MobEap.TextLabel.Text = v.Name.." - "..Dis.." Distance"
                end
            end
        else
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if v:FindFirstChild("MobEap") then
                    v.MobEap:Destroy()
                end
            end
        end
    end)
end
end)

spawn(function()
while wait() do
    pcall(function()
        if SeaESP then
            for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                if v:FindFirstChild('HumanoidRootPart') then
                    if not v:FindFirstChild("Seaesps") then
                        local BillboardGui = Instance.new("BillboardGui")
                        local TextLabel = Instance.new("TextLabel")

                        BillboardGui.Parent = v
                        BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                        BillboardGui.Active = true
                        BillboardGui.Name = "Seaesps"
                        BillboardGui.AlwaysOnTop = true
                        BillboardGui.LightInfluence = 1.000
                        BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                        BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

                        TextLabel.Parent = BillboardGui
                        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        TextLabel.BackgroundTransparency = 1.000
                        TextLabel.Size = UDim2.new(0, 200, 0, 50)
                        TextLabel.Font = Enum.Font.GothamBold
                        TextLabel.TextColor3 = Color3.fromRGB(7, 236, 240)
                        TextLabel.Text.Size = 35
                    end
                    local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude)
                    v.Seaesps.TextLabel.Text = v.Name.." - "..Dis.." Distance"
                end
            end
        else
            for i,v in pairs (game:GetService("Workspace").SeaBeasts:GetChildren()) do
                if v:FindFirstChild("Seaesps") then
                    v.Seaesps:Destroy()
                end
            end
        end
    end)
end
end)

spawn(function()
while wait() do
    pcall(function()
        if NpcESP then
            for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
                if v:FindFirstChild('HumanoidRootPart') then
                    if not v:FindFirstChild("NpcEspes") then
                        local BillboardGui = Instance.new("BillboardGui")
                        local TextLabel = Instance.new("TextLabel")

                        BillboardGui.Parent = v
                        BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                        BillboardGui.Active = true
                        BillboardGui.Name = "NpcEspes"
                        BillboardGui.AlwaysOnTop = true
                        BillboardGui.LightInfluence = 1.000
                        BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                        BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

                        TextLabel.Parent = BillboardGui
                        TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        TextLabel.BackgroundTransparency = 1.000
                        TextLabel.Size = UDim2.new(0, 200, 0, 50)
                        TextLabel.Font = Enum.Font.GothamBold
                        TextLabel.TextColor3 = Color3.fromRGB(7, 236, 240)
                        TextLabel.Text.Size = 35
                    end
                    local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude)
                    v.NpcEspes.TextLabel.Text = v.Name.." - "..Dis.." Distance"
                end
            end
        else
            for i,v in pairs (game:GetService("Workspace").NPCs:GetChildren()) do
                if v:FindFirstChild("NpcEspes") then
                    v.NpcEspes:Destroy()
                end
            end
        end
    end)
end
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

function isnil(thing)
return (thing == nil)
end
local function round(n)
return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)

function UpdateAfdESP() 
for i,v in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
    pcall(function()
        if AfdESP then 
            if v.Name == "Advanced Fruit Dealer" then
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



function InfAb()
    if InfAbility then
        if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
            local inf = Instance.new("ParticleEmitter")
            inf.Acceleration = Vector3.new(0,0,0)
            inf.Archivable = true
            inf.Drag = 20
            inf.EmissionDirection = Enum.NormalId.Top
            inf.Enabled = true
            inf.Lifetime = NumberRange.new(0,0)
            inf.LightInfluence = 0
            inf.LockedToPart = true
            inf.Name = "Agility"
            inf.Rate = 500
            local numberKeypoints2 = {
                NumberSequenceKeypoint.new(0, 0);
                NumberSequenceKeypoint.new(1, 4); 
            }
            inf.Size = NumberSequence.new(numberKeypoints2)
            inf.RotSpeed = NumberRange.new(9999, 99999)
            inf.Rotation = NumberRange.new(0, 0)
            inf.Speed = NumberRange.new(30, 30)
            inf.SpreadAngle = Vector2.new(0,0,0,0)
            inf.Texture = ""
            inf.VelocityInheritance = 0
            inf.ZOffset = 2
            inf.Transparency = NumberSequence.new(0)
            inf.Color = ColorSequence.new(Color3.fromRGB(0,0,0),Color3.fromRGB(0,0,0))
            inf.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        end
    else
        if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
        end
    end
end

local LocalPlayer = game:GetService'Players'.LocalPlayer
local originalstam = LocalPlayer.Character.Energy.Value
function infinitestam()
    LocalPlayer.Character.Energy.Changed:connect(function()
        if InfiniteEnergy then
            LocalPlayer.Character.Energy.Value = originalstam
        end 
    end)
end

spawn(function()
    pcall(function()
        while wait(.1) do
            if InfiniteEnergy then
                wait(0.1)
                originalstam = LocalPlayer.Character.Energy.Value
                infinitestam()
            end
        end
    end)
end)

function NoDodgeCool()
    if nododgecool then
        for i,v in next, getgc() do
            if game:GetService("Players").LocalPlayer.Character.Dodge then
                if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Dodge then
                    for i2,v2 in next, getupvalues(v) do
                        if tostring(v2) == "0.1" then
                        repeat wait(.1)
                            setupvalue(v,i2,0)
                        until not nododgecool
                        end
                    end
                end
            end
        end
    end
end

function fly()
    local mouse=game:GetService("Players").LocalPlayer:GetMouse''
    localplayer=game:GetService("Players").LocalPlayer
    game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")
    local torso = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    local speedSET=25
    local keys={a=false,d=false,w=false,s=false}
    local e1
    local e2
    local function start()
        local pos = Instance.new("BodyPosition",torso)
        local gyro = Instance.new("BodyGyro",torso)
        pos.Name="EPIXPOS"
        pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        pos.position = torso.Position
        gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
        gyro.CFrame = torso.CFrame
        repeat
                wait()
                localplayer.Character.Humanoid.PlatformStand=true
                local new=gyro.CFrame - gyro.CFrame.p + pos.position
                if not keys.w and not keys.s and not keys.a and not keys.d then
                speed=1
                end
                if keys.w then
                new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                speed=speed+speedSET
                end
                if keys.s then
                new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
                speed=speed+speedSET
                end
                if keys.d then
                new = new * CFrame.new(speed,0,0)
                speed=speed+speedSET
                end
                if keys.a then
                new = new * CFrame.new(-speed,0,0)
                speed=speed+speedSET
                end
                if speed>speedSET then
                speed=speedSET
                end
                pos.position=new.p
                if keys.w then
                gyro.CFrame = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*15),0,0)
                elseif keys.s then
                gyro.CFrame = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*15),0,0)
                else
                gyro.CFrame = workspace.CurrentCamera.CoordinateFrame
                end
        until not Fly
        if gyro then 
                gyro:Destroy() 
        end
        if pos then 
                pos:Destroy() 
        end
        flying=false
        localplayer.Character.Humanoid.PlatformStand=false
        speed=0
    end
    e1=mouse.KeyDown:connect(function(key)
        if not torso or not torso.Parent then 
                flying=false e1:disconnect() e2:disconnect() return 
        end
        if key=="w" then
            keys.w=true
        elseif key=="s" then
            keys.s=true
        elseif key=="a" then
            keys.a=true
        elseif key=="d" then
            keys.d=true
        end
    end)
    e2=mouse.KeyUp:connect(function(key)
        if key=="w" then
            keys.w=false
        elseif key=="s" then
            keys.s=false
        elseif key=="a" then
            keys.a=false
        elseif key=="d" then
            keys.d=false
        end
    end)
    start()
end

function Click()
    wait(.1)
    game:GetService'VirtualUser':CaptureController()
    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end

function AutoHaki()
    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
    end
end

function UnEquipWeapon(Weapon)
    if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
        _G.NotAutoEquip = true
        wait(.5)
        game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
        wait(.1)
        _G.NotAutoEquip = false
    end
end

function EquipWeapon(ToolSe)
    if not _G.NotAutoEquip then
        if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
            Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
            wait(.1)
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
        end
    end
end

spawn(function()
while wait() do
    for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"]:GetChildren()) do
        pcall(function()
            if v.Name == ("CurvedRing") or v.Name == ("SlashHit") or v.Name == ("SwordSlash") or v.Name == ("SlashTail") or v.Name == ("Sounds") then
                v:Destroy()
            end
        end)
    end
end
end)

function GetDistance(target)
    return math.floor((target.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude)
end

function BTP(P)
repeat wait(1)
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
    task.wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
until (P.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1500
end

function TelePPlayer(P)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = P
end

function TP(Pos)
Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
if Distance < 25 then
    Speed = 10000
elseif Distance < 250 then
    Speed = 3000
elseif Distance < 500 then
    Speed = 1500
elseif Distance < 1000 then
    Speed = 1200
elseif Distance < 2000 then
    Speed = 1000
elseif Distance < 4000 then
    Speed = 1000
elseif Distance >= 5000 then
    Speed = 1000
end
game:GetService("TweenService"):Create(
    game.Players.LocalPlayer.Character.HumanoidRootPart,
    TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
    {CFrame = Pos}
):Play()
end

function TP1(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance < 25 then
        Speed = 5000
    elseif Distance < 50 then
        Speed = 2000
    elseif Distance < 150 then
        Speed = 800
    elseif Distance < 250 then
        Speed = 600
    elseif Distance < 500 then
        Speed = 300
    elseif Distance < 750 then
        Speed = 250
    elseif Distance >= 1000 then
        Speed = 200
    end
    game:GetService("TweenService"):Create(
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
        {CFrame = Pos}
    ):Play()
end

function topos(Pos)
    Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance < 25 then
        Speed = 5000
    elseif Distance < 50 then
        Speed = 2000
    elseif Distance < 150 then
        Speed = 800
    elseif Distance < 250 then
        Speed = 600
    elseif Distance < 500 then
        Speed = 300
    elseif Distance < 750 then
        Speed = 250
    elseif Distance >= 1000 then
        Speed = 200
    end
    game:GetService("TweenService"):Create(
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
        {CFrame = Pos}
    ):Play()
end

function TPB(CFgo)
local tween_s = game:service"TweenService"
local info = TweenInfo.new((game:GetService("Workspace").Boats.MarineBrigade.VehicleSeat.CFrame.Position - CFgo.Position).Magnitude/300, Enum.EasingStyle.Linear)
tween = tween_s:Create(game:GetService("Workspace").Boats.MarineBrigade.VehicleSeat, info, {CFrame = CFgo})
tween:Play()

local tweenfunc = {}

function tweenfunc:Stop()
    tween:Cancel()
end

return tweenfunc
end

function TPP(CFgo)
if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health <= 0 or not game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") then tween:Cancel() repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") and game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 wait(7) return end
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

getgenv().ToTargets = function(p)
task.spawn(function()
    pcall(function()
        if game:GetService("Players").LocalPlayer:DistanceFromCharacter(p.Position) <= 250 then 
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = p
        elseif not game.Players.LocalPlayer.Character:FindFirstChild("Root")then 
            local K = Instance.new("Part",game.Players.LocalPlayer.Character)
            K.Size = Vector3.new(1,0.5,1)
            K.Name = "Root"
            K.Anchored = true
            K.Transparency = 1
            K.CanCollide = false
            K.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,20,0)
        end
        local U = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude
        local z = game:service("TweenService")
        local B = TweenInfo.new((p.Position-game.Players.LocalPlayer.Character.Root.Position).Magnitude/300,Enum.EasingStyle.Linear)
        local S,g = pcall(function()
        local q = z:Create(game.Players.LocalPlayer.Character.Root,B,{CFrame = p})
        q:Play()
    end)
    if not S then 
        return g
    end
    game.Players.LocalPlayer.Character.Root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        if S and game.Players.LocalPlayer.Character:FindFirstChild("Root") then 
            pcall(function()
                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude >= 20 then 
                    spawn(function()
                        pcall(function()
                            if (game.Players.LocalPlayer.Character.Root.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150 then 
                                game.Players.LocalPlayer.Character.Root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                            else 
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Players.LocalPlayer.Character.Root.CFrame
                            end
                        end)
                    end)
                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude >= 10 and(game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude < 20 then 
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude < 10 then 
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
                end
            end)
        end
    end)
end)
end

Type = 1
spawn(function()
while wait(.1) do
    if Type == 1 then
        Pos = CFrame.new(0,PosY,0)
    elseif Type == 2 then
        Pos = CFrame.new(0,PosY,-30)
    elseif Type == 3 then
        Pos = CFrame.new(30,PosY,0)
    elseif Type == 4 then
        Pos = CFrame.new(0,PosY,30)	
    elseif Type == 5 then
        Pos = CFrame.new(-30,PosY,0)
    elseif Type == 6 then
        Pos = CFrame.new(0,35,0)
    end
    end
end)

spawn(function()
while wait(.1) do
    Type = 1
    wait(0.5)
    Type = 2
    wait(0.5)
    Type = 3
    wait(0.5)
    Type = 4
    wait(0.5)
    Type = 5
    wait(0.5)
end
end)

spawn(function()
game:GetService("RunService").Heartbeat:Connect(function()
    if _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFactory or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Autoheart or _G.Autodoughking or _G.AutoFarmMaterial or _G.AutoNevaSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.d or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.AutoFarmNearest or AutoFarmChest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or _G.AutoKai or _G.TeleportNPC or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or Auto_Cursed_Dual_Katana or _G.AutoFarmMob or _G.AutoMysticIsland or _G.AutoFarmDungeon or _G.AutoRaidPirate or _G.AutoQuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.AutoPlayerHunter or _G.AutoFactory or Grab_Chest or _G.Namfon or _G.AutoSwordMastery or _G.AutoSeaBest or _G.AutoKillTial or _G.Auto_Saber or _G.Position_Spawn or _G.Farmfast or _G.AutoRace or _G.RaidPirate then
        if not game:GetService("Workspace"):FindFirstChild("LOL") then
            local LOL = Instance.new("Part")
            LOL.Name = "LOL"
            LOL.Parent = game.Workspace
            LOL.Anchored = true
            LOL.Transparency = 1
            LOL.Size = Vector3.new(30,-0.5,30)
        elseif game:GetService("Workspace"):FindFirstChild("LOL") then
            game.Workspace["LOL"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -3.6, 0)
        end
    else
        if game:GetService("Workspace"):FindFirstChild("LOL") then
            game:GetService("Workspace"):FindFirstChild("LOL"):Destroy()
        end
    end
end)
end)

spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFactory or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or FarmBoss or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Autoheart or _G.Autodoughking or _G.AutoFarmMaterial or _G.AutoNevaSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.d or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.AutoFarmNearest or AutoFarmChest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or _G.TeleportNPC or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or Auto_Cursed_Dual_Katana or _G.AutoFarmMob or _G.AutoMysticIsland or _G.AutoFarmDungeon or _G.AutoRaidPirate or _G.AutoQuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.AutoPlayerHunter or _G.AutoFactory or Grab_Chest or _G.Namfon or _G.AutoSwordMastery or _G.Auto_Seabest or _G.AutoSeaBest or _G.AutoKillTial or _G.Auto_Saber or _G.Position_Spawn or _G.Farmfast or _G.AutoRace or _G.RaidPirate == true then
                if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    local Noclip = Instance.new("BodyVelocity")
                    Noclip.Name = "BodyClip"
                    Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    Noclip.MaxForce = Vector3.new(100000,100000,100000)
                    Noclip.Velocity = Vector3.new(0,0,0)
                end
            end
        end
    end)
end)

spawn(function()
    pcall(function()
        game:GetService("RunService").Stepped:Connect(function()
            if _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFactory or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Autoheart or _G.Autodoughking or _G.AutoFarmMaterial or _G.AutoNevaSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.AutoFarmNearest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or _G.TeleportNPC or _G.AutoKai or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or Auto_Cursed_Dual_Katana or _G.AutoFarmMob or _G.AutoMysticIsland or _G.AutoFarmDungeon or _G.AutoRaidPirate or _G.AutoQuestRace or _G.TweenMGear or getgenv().AutoFarm or _G.AutoPlayerHunter or _G.AutoFactory or _G.Namfon or _G.AutoSwordMastery or _G.Auto_Seabest or _G.AutoSeaBest or _G.AutoKillTial or _G.Auto_Saber or _G.Position_Spawn or _G.TPB or _G.Farmfast or _G.AutoRace or _G.RaidPirate == true then
                for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false    
                    end
                end
            end
        end)
    end)
end)

function InstancePos(pos)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end

function TP3(pos)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end

spawn(function()
    while wait() do
        if _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFactory or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Autoheart or _G.Autodoughking or _G.d or _G.Autowaden or _G.Autogay or _G.AutoObservationHakiV2 or _G.AutoFarmMaterial or _G.AutoFarmNearest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest or Auto_Cursed_Dual_Katana or _G.AutoFarmMob or _G.AutoRaidPirate or getgenv().AutoFarm or _G.AutoPlayerHunter or _G.AutoFactory or _G.AttackDummy or _G.AutoSwordMastery or _G.Auto_Seabest or _G.AutoSeaBest or _G.AutoKillTial or _G.Auto_Saber or _G.Farmfast or _G.RaidPirate == true then
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken",true)
            end)
        end    
    end
end)

spawn(function()
game:GetService("RunService").RenderStepped:Connect(function()
    if _G.AutoClick or Fastattack then
         pcall(function()
            game:GetService'VirtualUser':CaptureController()
            game:GetService'VirtualUser':Button1Down(Vector2.new(0,1,0,1))
        end)
    end
end)
end)

function StopTween(target)
    if not target then
        _G.StopTween = true
        wait()
        topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
        if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
        end
        _G.StopTween = false
        _G.Clip = false
    end
end

spawn(function()
    pcall(function()
        while wait() do
            for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do  
                if v:IsA("Tool") then
                    if v:FindFirstChild("RemoteFunctionShoot") then 
                        SelectWeaponGun = v.Name
                    end
                end
            end
        end
    end)
end)

game:GetService("Players").LocalPlayer.Idled:connect(function()
    game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)



local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Uria", HidePremium = false, IntroText = "Uria Library", SaveConfig = true, ConfigFolder = "ConfigSetting"})


local M = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = M:AddSection({
	Name = "Select Weapon"
})

local WeaponList = {"Melee","Sword","Fruit","Gun"}
_G.SelectWeapon = "Melee"
M:AddDropdown({
	Name = "Select Weapon",
	Default = "",
	Options = WeaponList,
	Callback = function(Value)
		_G.SelectWeapon = Value
	end    
})
task.spawn(function()
	while wait() do
		pcall(function()
			if _G.SelectWeapon == "Melee" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Melee" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.SelectWeapon = v.Name
						end
					end
				end
			elseif _G.SelectWeapon == "Sword" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Sword" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.SelectWeapon = v.Name
						end
					end
				end
			elseif _G.SelectWeapon == "Gun" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Gun" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.SelectWeapon = v.Name
						end
					end
				end
			elseif _G.SelectWeapon == "Fruit" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Blox Fruit" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.SelectWeapon = v.Name
						end
					end
				end
			end
		end)
	end
    end)

    local Section = M:AddSection({
        Name = "BOOTS"
    })

    M:AddButton({
        Name = "Revome all Sound",
        Callback = function(Value)
               _G.RemoveHit = Value 
          end    
    })  
    spawn(function()
        game:GetService("RunService").RenderStepped:Connect(function()
            if _G.RemoveHit == true then
                game:GetService("ReplicatedStorage").Effect.Container.LevelUp:Destroy()
            game:GetService("ReplicatedStorage").Util.Sound:Destroy()
            game:GetService("ReplicatedStorage").Util.Sound.Storage.Other:FindFirstChild("LevelUp_Proxy"):Destroy()
            game:GetService("ReplicatedStorage").Util.Sound.Storage.Other:FindFirstChild("LevelUp"):Destroy()
            game:GetService("ReplicatedStorage").Effect.Container.Respawn:Destroy()     
            end
        end)
    end)

    M:AddButton({
        Name = "BOOST FPS",
        Callback = function()
            pcall(function()
                game:GetService("Lighting").FantasySky:Destroy()
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
                    elseif v:IsA("Decal") or v:IsA("Texture") then
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
                for i, v in pairs(game:GetService("Workspace").Camera:GetDescendants()) do
                    if v.Name == ("Water;") then
                        v.Transparency = 1
                        v.Material = "Plastic"
                    end
                end
            end)
          end    
    })

    local Section = M:AddSection({
        Name = "Auto Farm Level"
    })

M:AddToggle({
	Name = "AutoFarm",
	Default = false,
	Callback = function(Value)
		_G.AutoFarm = Value
        StopTween(_G.AutoFarm)
	end    
})
spawn(function()
    while wait() do
        if _G.AutoFarm then
            pcall(function()
                local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                if not string.find(QuestTitle, NameMon) then
                    StartMagnet = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    StartMagnet = false
                    CheckQuest()
                    if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude > 1500 then
                    BTP(CFrameQuest)
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude < 1500 then
                    TP1(CFrameQuest)
                    end
                else
                    TP1(CFrameQuest)
                end
                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 20 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    CheckQuest()
                    if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if v.Name == Mon then
                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                        repeat task.wait()
                                            EquipWeapon(_G.SelectWeapon)
                                            AutoHaki()                                            
                                            PosMon = v.HumanoidRootPart.CFrame
                                            TP1(v.HumanoidRootPart.CFrame * Pos)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(70,70,70)
                                            StartMagnet = true
                                            game:GetService'VirtualUser':CaptureController()
                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        until not _G.AutoFarm or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    else
                                        StartMagnet = false
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                    end
                                end
                            end
                        end
                    else
                        TP1(CFrameMon)
                        StartMagnet = false
                        if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
                         TP1(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(15,10,2))
                        end
                    end
                end
            end)
        end
    end
end)

local Section = M:AddSection({
	Name = "Mastery Menu"
})


M:AddToggle({
	Name = "Auto Farm BF Mastery",
	Default = false,
	Callback = function(Value)
		_G.AutoFarmFruitMastery = Value
        StopTween(_G.AutoFarmFruitMastery)
        if _G.AutoFarmFruitMastery == false then
            UseSkill = false 
        end
	end    
})

spawn(function()
    while wait() do
        if _G.AutoFarmFruitMastery then
            pcall(function()
                local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                if not string.find(QuestTitle, NameMon) then
                    Magnet = false
                    UseSkill = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    StartMasteryFruitMagnet = false
                    UseSkill = false
                    CheckQuest()
                    repeat wait()
                        TP1(CFrameQuest)
                    until (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.AutoFarmFruitMastery
                    if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5 then
                        wait(0.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                        wait(0.1)
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    CheckQuest()
                    if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if v.Name == Mon then
                                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                        HealthMs = v.Humanoid.MaxHealth * _G.Kill_At/100
                                        repeat task.wait()
                                            if v.Humanoid.Health <= HealthMs then
                                                AutoHaki()
                                                EquipWeapon(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value)
                                                TP1(v.HumanoidRootPart.CFrame * CFrame.new(0,10,0))
                                                v.HumanoidRootPart.CanCollide = false
                                                PosMonMasteryFruit = v.HumanoidRootPart.CFrame
                                                v.Humanoid.WalkSpeed = 0
                                                v.Head.CanCollide = false
                                                UseSkill = true
                                            else           
                                                UseSkill = false 
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                TP1(v.HumanoidRootPart.CFrame * Pos)
                                                v.HumanoidRootPart.CanCollide = false
                                                            PosMonMasteryFruit = v.HumanoidRootPart.CFrame
                                                v.Humanoid.WalkSpeed = 0
                                                v.Head.CanCollide = false
                                            end
                                            StartMasteryFruitMagnet = true
                                            game:GetService'VirtualUser':CaptureController()
                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        until not _G.AutoFarmFruitMastery or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    else
                                        UseSkill = false
                                        StartMasteryFruitMagnet = false
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                    end
                                end
                            end
                        end
                    else
                        TP1(CFrameMon)
                        StartMasteryFruitMagnet = false   
                        UseSkill = false 
                        local Mob = game:GetService("ReplicatedStorage"):FindFirstChild(Mon) 
                        if Mob then
                            TP1(Mob.HumanoidRootPart.CFrame * CFrame.new(0,0,10))
                        else
                            if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1 then
                                game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = true
                                task.wait()
                                game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = false
                            end
                        end
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        if UseSkill then
            pcall(function()
                CheckQuest()
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
                        MasBF = game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].Level.Value
                    elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
                        MasBF = game:GetService("Players").LocalPlayer.Backpack[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].Level.Value
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon-Dragon") then                      
                        if _G.SkillZ then
                            local args = {
                                [1] = PosMonMasteryFruit.Position
                            }
                            game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                        
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                        end
                        if _G.SkillX then          
                            local args = {
                                [1] = PosMonMasteryFruit.Position
                            }
                            game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))               
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                        end
                        if _G.SkillC then
                            local args = {
                                [1] = PosMonMasteryFruit.Position
                            }
                            game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                          
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                            wait(2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                        end
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom-Venom") then   
                        if _G.SkillZ then
                            local args = {
                                [1] = PosMonMasteryFruit.Position
                            }
                            game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                        
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                        end
                        if _G.SkillX then        
                            local args = {
                                [1] = PosMonMasteryFruit.Position
                            }
                            game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))               
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                        end
                        if _G.SkillC then 
                            local args = {
                                [1] = PosMonMasteryFruit.Position
                            }
                            game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                          
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                            wait(2)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                        end
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha") then
                        if _G.SkillZ and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Size == Vector3.new(2, 2.0199999809265, 1) then
                            local args = {
                                [1] = PosMonMasteryFruit.Position
                            }
                            game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                         
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                        end
                        if _G.SkillX then
                            local args = {
                                [1] = PosMonMasteryFruit.Position
                            }
                            game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                           
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                        end
                        if _G.SkillC then
                            local args = {
                                [1] = PosMonMasteryFruit.Position
                            }
                            game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                           
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                        end
                        if _G.SkillV then
                            local args = {
                                [1] = PosMonMasteryFruit.Position
                            }
                            game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
                        end
                        if _G.SkillF then
                            local args = {
                                [1] = PosMonMasteryFruit.Position
                            }
                            game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,"F",false,game)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,"F",false,game)
                        end
                    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
                        if _G.SkillZ then 
                            local args = {
                                [1] = PosMonMasteryFruit.Position
                            }
                            game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                         
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                        end
                        if _G.SkillX then
                            local args = {
                                [1] = PosMonMasteryFruit.Position
                            }
                            game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                           
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                        end
                        if _G.SkillC then
                            local args = {
                                [1] = PosMonMasteryFruit.Position
                            }
                            game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))                           
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                        end
                        if _G.SkillV then
                            local args = {
                                [1] = PosMonMasteryFruit.Position
                            }
                            game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
                            game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
                            game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
                        if _G.SkillF then
                                local args = {
                                    [1] = PosMonMasteryFruit.Position
                                }
                                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
                                game:GetService("VirtualInputManager"):SendKeyEvent(true,"F",false,game)
                                game:GetService("VirtualInputManager"):SendKeyEvent(false,"F",false,game)
                            end
                        end
                    end
                end
            end)
        end
    end
end)

spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        pcall(function()
            if UseSkill then
                for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:GetChildren()) do
                    if v.Name == "NotificationTemplate" then
                        if string.find(v.Text,"Skill locked!") then
                            v:Destroy()
                        end
                    end
                end
            end
        end)
    end)
end)

spawn(function()
    pcall(function()
        game:GetService("RunService").RenderStepped:Connect(function()
            if UseSkill then
                local args = {
                    [1] = PosMonMasteryFruit.Position
                }
                game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
            end
        end)
    end)
end)

M:AddToggle({
	Name = "Auto Farm Gun Mastery",
	Default = false,
	Callback = function(Value)
		_G.AutoFarmGunMastery = Value
        StopTween(_G.AutoFarmGunMastery)
	end    
})
spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoFarmGunMastery then
                local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                if not string.find(QuestTitle, NameMon) then
                    Magnet = false                                      
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    StartMasteryGunMagnet = false
                    CheckQuest()
                    TP1(CFrameQuest)
                    if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                        wait(0.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest)
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    CheckQuest()
                    if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                        pcall(function()
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == Mon then
                                    repeat task.wait()
                                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                            HealthMin = v.Humanoid.MaxHealth * _G.Kill_At/100
                                            if v.Humanoid.Health <= HealthMin then                                                
                                                EquipWeapon(SelectWeaponGun)
                                                TP1(v.HumanoidRootPart.CFrame * CFrame.new(0,10,0))
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(2,2,1)
                                                v.Head.CanCollide = false                                                
                                                local args = {
                                                    [1] = v.HumanoidRootPart.Position,
                                                    [2] = v.HumanoidRootPart
                                                }
                                                game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
                                            else
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Head.CanCollide = false               
                                                            TP1(v.HumanoidRootPart.CFrame * Pos)
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            end
                                            StartMasteryGunMagnet = true 
                                            PosMonMasteryGun = v.HumanoidRootPart.CFrame
                                        else
                                            StartMasteryGunMagnet = false
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                        end
                                    until v.Humanoid.Health <= 0 or _G.AutoFarmGunMastery == false or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    StartMasteryGunMagnet = false
                                end
                            end
                        end)
                    else
                       TP1(CFrameMon)
                        AutoFarmNearestMagnet = false
                        local Mob = game:GetService("ReplicatedStorage"):FindFirstChild(Mon) 
                        if Mob then
                            TP1(Mob.HumanoidRootPart.CFrame * CFrame.new(0,0,10))
                        else
                            if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1 then
                                game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = true
                                task.wait()
                                game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = false
                            end
                        end
                    end 
                end
            end
        end
    end)
end)

M:AddLabel("Setting Mastery Farm")

    M:AddSlider({
        Name = "Health Mob",
        Min = 0,
        Max = 100,
        Default = 25,
        Color = Color3.fromRGB(255,255,255),
        Increment = 1,
        ValueName = "Health",
        Callback = function(Value)
            _G.Kill_At = Value
        end    
    })

    M:AddToggle({
        Name = "Skill Z",
        Default = false,
        Callback = function(Value)
            _G.SkillZ = Value
        end    
    })

    M:AddToggle({
        Name = "Skill! X",
        Default = false,
        Callback = function(Value)
            _G.SkillX = Value
        end    
    })


    M:AddToggle({
        Name = "Skill C",
        Default = false,
        Callback = function(Value)
            _G.SkillC = Value
        end    
    })


    M:AddToggle({
        Name = "Skill V",
        Default = false,
        Callback = function(Value)
            _G.SkillV = Value
        end    
    })

    M:AddToggle({
        Name = "Skill F",
        Default = false,
        Callback = function(Value)
            _G.SkillF = Value
        end    
    })

M:AddToggle({
	Name = "Bring Mobs",
	Default = true,
	Callback = function(Value)
		_G.BringMonster = Value
	end    
})
spawn(function()
    while task.wait() do
        pcall(function()
            if _G.BringMonster then
                CheckQuest()
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if _G.AutoFarm and StartMagnet and v.Name == Mon and (Mon == "Factory Staff [Lv. 800]" or Mon == "Monkey [Lv. 14]" or Mon == "Dragon Crew Warrior [Lv. 1575]" or Mon == "Dragon Crew Archer [Lv. 1600]") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 220 then
                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                        v.HumanoidRootPart.CFrame = PosMon
                        v.Humanoid:ChangeState(14)
                        v.HumanoidRootPart.CanCollide = false
                        v.Head.CanCollide = false
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                    elseif _G.AutoFarm and StartMagnet and v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 275 then
                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                        v.HumanoidRootPart.CFrame = PosMon
                        v.Humanoid:ChangeState(14)
                        v.HumanoidRootPart.CanCollide = false
                        v.Head.CanCollide = false
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                    end
                    if _G.Farmfast and StardMag then
                        if (v.Name == "Shanda [Lv. 475]" or v.Name == "Shanda [Lv. 475]") and (v.HumanoidRootPart.Position - RengokuMon.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = FastMon
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    if _G.AutoEctoplasm and StartEctoplasmMagnet then
                        if string.find(v.Name, "Ship") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - EctoplasmMon.Position).Magnitude <= 250 then
                            v.HumanoidRootPart.CFrame = EctoplasmMon
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    if _G.AutoRengoku and StartRengokuMagnet then
                        if (v.Name == "Snow Lurker [Lv. 1375]" or v.Name == "Arctic Warrior [Lv. 1350]") and (v.HumanoidRootPart.Position - RengokuMon.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = RengokuMon
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    if _G.AutoMusketeerHat and StartMagnetMusketeerhat then
                        if v.Name == "Forest Pirate [Lv. 1825]" and (v.HumanoidRootPart.Position - MusketeerHatMon.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = MusketeerHatMon
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    if _G.Auto_EvoRace and StartEvoMagnet then
                        if v.Name == "Zombie [Lv. 950]" and (v.HumanoidRootPart.Position - PosMonEvo.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = PosMonEvo
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    if _G.AutoBartilo and AutoBartiloBring then
                        if v.Name == "Swan Pirate [Lv. 775]" and (v.HumanoidRootPart.Position - PosMonBarto.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = PosMonBarto
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    if _G.AutoFarmFruitMastery and StartMasteryFruitMagnet then
                        if v.Name == "Monkey [Lv. 14]" then
                            if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = PosMonMasteryFruit
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        elseif v.Name == "Factory Staff [Lv. 800]" then
                            if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = PosMonMasteryFruit
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        elseif v.Name == Mon then
                            if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = PosMonMasteryFruit
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                    end
                    if _G.AutoFarmGunMastery and StartMasteryGunMagnet then
                        if v.Name == "Monkey [Lv. 14]" then
                            if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        elseif v.Name == "Factory Staff [Lv. 800]" then
                            if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        elseif v.Name == Mon then
                            if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                    end
                    if _G.Auto_Bone and StartMagnetBoneMon then
                        if (v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]") and (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = PosMonBone
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    if _G.AutoDoughtBoss and MagnetDought then
                        if (v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]") and (v.HumanoidRootPart.Position - PosMonDoughtOpenDoor.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = PosMonDoughtOpenDoor
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                    if _G.AutoCandy and StartMagnetCandy then
                        if (v.HumanoidRootPart.Position - PosMonCandy.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            v.HumanoidRootPart.CFrame = PosMonCandy
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            if _G.AutoRace and StardFarm then
                                if (v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]") and (v.HumanoidRootPart.Position - PosMonDoughtOpenDoor.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosGG
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            end
                        end
                    end
                end
            end
        end)
    end
end)


_G.BringMode = 450

local CamShake = require(game.ReplicatedStorage.Util.CameraShaker)
CamShake:Stop()

M:AddToggle({
	Name = "Bypass TP[BETA]",
	Default = false,
	Callback = function(Value)
        BypassTP = Value
	end    
})


M:AddLabel("Distance Farm")

PosY = 15
M:AddSlider({
	Name = "Distance Mob",
	Min = 0,
	Max = 65,
	Default = PosY,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Distance",
	Callback = function(Value)
		PosY = Value
	end    
})

M:AddLabel("Auto Farm Fast")

M:AddToggle({
	Name = "Auto Farm Fast[Reading text down]",
	Default = false,
	Callback = function(Value)
		_G.Farmfast = Value
        StopTween(_G.Farmfast)
	end    
})

M:AddLabel("You cant stop Fram Fast?? Tutorial You can stop with turn on")
M:AddLabel("auto farm and turn off now!!")

spawn(function()
    pcall(function()
        while wait() do
            if _G.Farmfast and World1 then
                if game.Players.LocalPlayer.Data.Level.Value >= 0 then
                    _G.AutoFarm = false
                    _G.Farmfast = true
                end
            end
        end
    end)
end)

spawn(function()
    while wait() do
        if _G.Farmfast and World1 then
            pcall(function()
                if game.Players.LocalPlayer.Data.Level.Value >= 0 then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Shanda [Lv. 475]" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    _G.BringMonster = true
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    StardMag = true
                                    FastMon = v.HumanoidRootPart.CFrame
                                    TP1(v.HumanoidRootPart.CFrame * Pos)
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                until not _G.Farmfast or not v.Parent or v.Humanoid.Health <= 0
                                StardMag = false
                                TP1(CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531))
                            end
                        end
                    end
                else
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Shanda [Lv. 475]") then
                        TP1(game:GetService("ReplicatedStorage"):FindFirstChild("Shanda [Lv. 475]").HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                    end
                end
            end)
        end
    end
end)

spawn(function()
    pcall(function()
        while wait() do
            if _G.Farmfast and World1 then
                if game.Players.LocalPlayer.Data.Level.Value >= 50 then
                    _G.Farmfast = false
                end
            end
        end
    end)
end)

M:AddLabel("Lưu ý!!, do đây là bản Beta nên kill players cần tay!!")
M:AddLabel("Lúc Kill players bạn có thể tắt Kaitun đi rồi bật lại sẽ Next Players")   
M:AddLabel("Note!!, because this is a Beta version, you need to kill players manually!!")


M:AddLabel("Kaitun")

local x2Code = {
    "KITTGAMING",
    "ENYU_IS_PRO",
    "FUDD10",
    "BIGNEWS",
    "THEGREATACE",
    "SUB2GAMERROBOT_EXP1",
    "STRAWHATMAIME",
    "SUB2OFFICIALNOOBIE",
    "SUB2NOOBMASTER123",
    "SUB2DAIGROCK",
    "AXIORE",
    "TANTAIGAMIMG",
    "STRAWHATMAINE",
    "JCWK",
    "FUDD10_V2",
    "SUB2FER999",
    "MAGICBIS",
    "TY_FOR_WATCHING",
    "STARCODEHEO"
}



M:AddButton({
	Name = "Redeem all code",
	Callback = function()
        function RedeemCode(value)
            game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(value)
        end
        for i,v in pairs(x2Code) do
            RedeemCode(v)
        end
  	end    
})

M:AddToggle({
	Name = "Kaitun[BETA]",
	Default = false,
	Callback = function(Value)
	    _G.AutoFarm = Value
        _G.Farmfast = Value
       _G.SelectWeapon = "Combat"
       _G.Auto_Stats_Kaitun = Value
       _G.AutoPlayerHunter = Value
       _G.AutoSaber = Value
       _G.AutoSuperhuman = Value
       _G.AutoSecondSea = Value
       _G.AutoThirdSea = Value
       _G.AutoBuyLegendarySword = Value
       _G.AutoStoreFruit = Value
       _G.Random_Auto = Value
       _G.BuyAllAib = Value
      StopTween(_G.AutoFarm)
	end    
})

spawn(function()
    while wait() do
        if _G.BuyAllSword then
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cutlass")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Katana")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Iron Mace")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Duel Katana")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Triple Katana")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Pipe")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Bisento")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Dual-Headed Blade")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Soul Cane")
                if _G.BuyHop then
                    wait(10)
                    Hop()
                end
            end)
        end 
    end
end)

spawn(function()
    while wait() do
        if _G.BuyAllAib then
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
                if _G.HopBuy then
                    wait(10)
                    Hop()
                end
            end)
        end 
    end
end)


spawn(function()
    pcall(function()
        while wait() do 
            if _G.AutoSuperhuman then
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 150000 then
                    UnEquipWeapon("Combat")
                    wait(.1)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
                end   
                if game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") then
                    _G.SelectWeapon = "Superhuman"
                end  
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 299 then
                        _G.SelectWeapon = "Black Leg"
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 299 then
                        _G.SelectWeapon = "Electro"
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 299 then
                        _G.SelectWeapon = "Fishman Karate"
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 299 then
                        _G.SelectWeapon = "Dragon Claw"
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 300000 then
                        UnEquipWeapon("Black Leg")
                        wait(.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 300000 then
                        UnEquipWeapon("Black Leg")
                        wait(.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 750000 then
                        UnEquipWeapon("Electro")
                        wait(.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 750000 then
                        UnEquipWeapon("Electro")
                        wait(.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300 and game:GetService("Players")["Localplayer"].Data.Fragments.Value >= 1500 then
                        UnEquipWeapon("Fishman Karate")
                        wait(.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2") 
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300 and game:GetService("Players")["Localplayer"].Data.Fragments.Value >= 1500 then
                        UnEquipWeapon("Fishman Karate")
                        wait(.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2") 
                    end
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 3000000 then
                        UnEquipWeapon("Dragon Claw")
                        wait(.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
                    end
                    if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 3000000 then
                        UnEquipWeapon("Dragon Claw")
                        wait(.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
                    end 
                end
            end
        end
    end)
end)


spawn(function()
    while wait() do 
        if _G.AutoSecondSea then
            pcall(function()
                local MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
                if MyLevel >= 700 and World1 then
                    if game:GetService("Workspace").Map.Ice.Door.CanCollide == false and game:GetService("Workspace").Map.Ice.Door.Transparency == 1 then
                        local CFrame1 = CFrame.new(4849.29883, 5.65138149, 719.611877)
                        repeat topos(CFrame1) wait() until (CFrame1.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or _G.AutoSecondSea == false
                        wait(1.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
                        wait(0.5)
                        EquipWeapon("Key")
                        repeat topos(CFrame.new(1347.7124, 37.3751602, -1325.6488)) wait() until (Vector3.new(1347.7124, 37.3751602, -1325.6488)-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or _G.AutoSecondSea == false
                        wait(0.5)
                    else
                        if game:GetService("Workspace").Map.Ice.Door.CanCollide == false and game:GetService("Workspace").Map.Ice.Door.Transparency == 1 then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
                                        if not v.Humanoid.Health <= 0 then
                                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                OldCFrameSecond = v.HumanoidRootPart.CFrame
                                                repeat task.wait()
                                                    AutoHaki()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.Head.CanCollide = false
                                                    v.HumanoidRootPart.CFrame = OldCFrameSecond
                                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                                    game:GetService("VirtualUser"):CaptureController()
                                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                                    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                                until not _G.AutoSecondSea or not v.Parent or v.Humanoid.Health <= 0
                                            end
                                        else 
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                                        end
                                    end
                                end
                            else
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Ice Admiral [Lv. 700] [Boss]") then
                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Ice Admiral [Lv. 700] [Boss]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)

M:AddToggle({
	Name = "AutoClick",
	Default = false,
	Callback = function(Value)
		_G.AutoClick = Value
	end    
})

spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.AutoClick or Fastattack then
             pcall(function()
                game:GetService'VirtualUser':CaptureController()
			    game:GetService'VirtualUser':Button1Down(Vector2.new(0,1,0,1))
            end)
        end
    end)
   end)

M:AddLabel("Auto Farm Mobs & Boss")

local Mons = {}
local xx = {}

for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
    if string.find(v.Name , "Lv.") then
        table.insert(xx, v.Name)
    end
end

for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
    if string.find(v.Name , "Lv.") then
        table.insert(xx, v.Name)
    end
end

table.sort(xx)
local result = {}

for key,value in ipairs(xx) do
    if value ~=xx[key+1] then
        table.insert(result,value)
    end
end
for key,value in ipairs(result) do
    table.insert(Mons, value)
end



local Select_M = M:AddDropdown({
	Name = "Select Mob Farm",
	Default = "",
	Options = Mons,
	Callback = function(Value)
        _G.SelectMob = Value
	end    
})



M:AddToggle({
	Name = "Auto Farm Mobs & Boss",
	Default = false,
	Callback = function(Value)
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
        _G.AutoFarmMob = Value
        StopTween(_G.AutoFarmMob)
	end    
})
spawn(function()
    while wait() do
        if _G.AutoFarmMob then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectMob) then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == _G.SelectMob then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    SelectMag = true
                                    PosMon = v.HumanoidRootPart.CFrame
                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                until not _G.AutoFarmMob or not v.Parent or v.Humanoid.Health <= 0
                                SelectMag = false
                            end
                        end
                    end
                else
                    if game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectMob) then
                        topos(game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectMob).HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                    end
                end
            end)
        end
    end
end)

M:AddLabel("Auto Farm Nearest")

M:AddToggle({
	Name = "Auto Farm Nearest",
	Default = false,
	Callback = function(Value)
		_G.AutoFarmNearest = Value
        StopTween(_G.AutoFarmNearest)
	end    
})

spawn(function()
	while wait() do
		if _G.AutoFarmNearest then
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if v.Name and v:FindFirstChild("Humanoid") then
			        if v.Humanoid.Health > 0 then
			            repeat wait()
			              EquipWeapon(_G.SelectWeapon)
			                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
			                	local args = {
				                	[1] = "Buso"
			                	}
			                	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			               	end
			                topos(v.HumanoidRootPart.CFrame * Pos)
			                v.HumanoidRootPart.CanCollide = false
			                Fastattack = true
			                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
						    game:GetService("VirtualUser"):CaptureController()
				       	    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672), game.Workspace.CurrentCamera.CFrame)
				       	    AutoFarmNearestMagnet = true
				       	    PosMon = v.HumanoidRootPart.CFrame
			            until not _G.AutoFarmNearest or not v.Parent or v.Humanoid.Health <= 0 
			            AutoFarmNearestMagnet = false
			            Fastattack = false
			        end
			    end
			end
		end
	end
    end)

    M:AddLabel("Chest Farm")

    M:AddToggle({
        Name = "Auto Chest [MUP]",
        Default = false,
        Callback = function(Value)
            AutoFarmChest = Value
            StopTween(AutoFarmChest)
        end    
    })
    
    _G.MagnitudeAdd = 0
    spawn(function()
        while wait() do 
            if AutoFarmChest then
                for i,v in pairs(game:GetService("Workspace"):GetChildren()) do 
                    if v.Name:find("Chest") then
                        if game:GetService("Workspace"):FindFirstChild(v.Name) then
                            if (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5000+_G.MagnitudeAdd then
                                repeat wait()
                                    if game:GetService("Workspace"):FindFirstChild(v.Name) then
                                        topos(v.CFrame)
                                    end
                                until AutoFarmChest == false or not v.Parent
                                topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                                _G.MagnitudeAdd = _G.MagnitudeAdd+1500
                                break
                            end
                        end
                    end
                end
            end
        end
    end)

    M:AddToggle({
        Name = "Auto Chest[Bypass]",
        Default = false,
        Callback = function(Value)
            _G.ChestBypass = Value
        end    
    })
_G.MagnitudeAdd = 0
spawn(function()
	while wait() do 
		if _G.ChestBypass then
			for i,v in pairs(game:GetService("Workspace"):GetChildren()) do 
				if v.Name:find("Chest") then
					if game:GetService("Workspace"):FindFirstChild(v.Name) then
						if (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5000+_G.MagnitudeAdd then
							repeat wait()
								if game:GetService("Workspace"):FindFirstChild(v.Name) then
									TP3(v.CFrame)
								end
							until AutoFarmChest == false or not v.Parent
							topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
							_G.MagnitudeAdd = _G.MagnitudeAdd+1500
							break
						end
					end
				end
			end
		end
	end
end)

spawn(function()
while task.wait() do
if _G.ChestBypass then
        local ohString1 = "SetTeam"
        local ohString2 = "Pirates"
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(ohString1, ohString2)
     end
end
end)

M:AddToggle({
	Name = "Auto Chest[Stop Only Have Chaile & Dark Key]",
	Default = false,
	Callback = function(Value)
		Grab_Chest = Value
    StopTween(Grab_Chest)
	T_P_H = Value
	_G.STP = Value
	end    
})

spawn(function()
    while wait(.2) do
        pcall(function()
            if Grab_Chest then
                if T_P_H then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Fist of Darkness") or game.Players.LocalPlayer.Character:FindFirstChild("Fist of Darkness") then
                        TP(CFrame.new(-379.70889282227, 73.0458984375, 304.84692382813))
                        H_F = true
						game:GetService'VirtualUser':Button1Down(Vector2.new(1280,600))
                        wait(3)
                    else
						_G.Chest_100 = nil
						_G.Chest_500 = nil
						_G.Chest_1000 = nil
						_G.Chest_1500 = nil
						_G.Chest_2000 = nil
						_G.Chest_2500 = nil
						_G.Chest_3500 = nil
						_G.Chest_4500 = nil
						_G.Chest_5500 = nil
						_G.Chest_6500 = nil
						_G.Chest_7500 = nil
						_G.Chest_9500 = nil
						_G.Chest_10500 = nil
						_G.Chest_12500 = nil
						_G.Chest_15500 = nil
						_G.Chest_17500 = nil
						Chest_100()
						Chest_500()
						Chest_1000()
						Chest_1500()
						Chest_2000()
						Chest_2500()
						Chest_3500()
						Chest_4500()
						Chest_5500()
						Chest_6500()
						Chest_7500()
						Chest_9500()
						Chest_10500()
						Chest_12500()
						Chest_15500()
						Chest_17500()
						if _G.Chest_100 ~= nil then
							repeat wait(.3)
								TP(_G.Chest_100.CFrame)
							until not _G.Chest_100.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1
								K_C:Set('Chest : '..tostring(K_CH).."/".._G.K_MAX)
							end
						elseif _G.Chest_500 ~= nil then
							repeat wait(.3)
								TP(_G.Chest_500.CFrame)
							until not _G.Chest_500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1
								K_C:Set('Chest : '..tostring(K_CH).."/".._G.K_MAX)
							end
						elseif _G.Chest_1000 ~= nil then
							repeat wait(.3)
								TP(_G.Chest_1000.CFrame)
							until not _G.Chest_1000.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1
								K_C:Set('Chest : '..tostring(K_CH).."/".._G.K_MAX)
							end
						elseif _G.Chest_1500 ~= nil then
							repeat wait(.3)
								TP(_G.Chest_1500.CFrame)
							until not _G.Chest_1500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1
								K_C:Set('Chest : '..tostring(K_CH).."/".._G.K_MAX)
							end
						elseif _G.Chest_2000 ~= nil then
							repeat wait(.3)
								TP(_G.Chest_2000.CFrame)
							until not _G.Chest_2000.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1
								K_C:Set('Chest : '..tostring(K_CH).."/".._G.K_MAX)
							end
						elseif _G.Chest_2500 ~= nil then
							repeat wait(.3)
								TP(_G.Chest_2500.CFrame)
							until not _G.Chest_2500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1
								K_C:Set('Chest : '..tostring(K_CH).."/".._G.K_MAX)
							end
						elseif _G.Chest_3500 ~= nil then
							repeat wait(.3)
								TP(_G.Chest_3500.CFrame)
							until not _G.Chest_3500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1
								K_C:Set('Chest : '..tostring(K_CH).."/".._G.K_MAX)
							end
						elseif _G.Chest_4500 ~= nil then
							repeat wait(.3)
								TP(_G.Chest_4500.CFrame)
							until not _G.Chest_4500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1
								K_C:Set('Chest : '..tostring(K_CH).."/".._G.K_MAX)
							end
						elseif _G.Chest_5500 ~= nil then
							repeat wait(.3)
								TP(_G.Chest_5500.CFrame)
							until not _G.Chest_5500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1
								K_C:Set('Chest : '..tostring(K_CH).."/".._G.K_MAX)
							end
						elseif _G.Chest_6500 ~= nil then
							repeat wait(.3)
								TP(_G.Chest_6500.CFrame)
							until not _G.Chest_6500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1
								K_C:Set('Chest : '..tostring(K_CH).."/".._G.K_MAX)
							end
						elseif _G.Chest_7500 ~= nil then
							repeat wait(.3)
								TP(_G.Chest_7500.CFrame)
							until not _G.Chest_7500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1
								K_C:Set('Chest : '..tostring(K_CH).."/".._G.K_MAX)
							end
						elseif _G.Chest_9500 ~= nil then
							repeat wait(.3)
								TP(_G.Chest_9500.CFrame)
							until not _G.Chest_9500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1
								K_C:Set('Chest : '..tostring(K_CH).."/".._G.K_MAX)
							end
						elseif _G.Chest_10500 ~= nil then
							repeat wait(.3)
								TP(_G.Chest_10500.CFrame)
							until not _G.Chest_10500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1
								K_C:Set('Chest : '..tostring(K_CH).."/".._G.K_MAX)
							end
						elseif _G.Chest_12500 ~= nil then
							repeat wait(.3)
								TP(_G.Chest_12500.CFrame)
							until not _G.Chest_12500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1
								K_C:Set('Chest : '..tostring(K_CH).."/".._G.K_MAX)
							end
						elseif _G.Chest_15500 ~= nil then
							repeat wait(.3)
								TP(_G.Chest_15500.CFrame)
							until not _G.Chest_15500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1
								K_C:Set('Chest : '..tostring(K_CH).."/".._G.K_MAX)
							end
						elseif _G.Chest_17500 ~= nil then
							repeat wait(.3)
								TP(_G.Chest_17500.CFrame)
							until not _G.Chest_17500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1
								K_C:Set('Chest : '..tostring(K_CH).."/".._G.K_MAX)
							end
						end
                    end
                else
                    _G.Chest_100 = nil
						_G.Chest_500 = nil
						_G.Chest_1000 = nil
						_G.Chest_1500 = nil
						_G.Chest_2000 = nil
						_G.Chest_2500 = nil
						_G.Chest_3500 = nil
						_G.Chest_4500 = nil
						_G.Chest_5500 = nil
						_G.Chest_6500 = nil
						_G.Chest_7500 = nil
						_G.Chest_9500 = nil
						_G.Chest_10500 = nil
						_G.Chest_12500 = nil
						_G.Chest_15500 = nil
						_G.Chest_17500 = nil
						Chest_100()
						Chest_500()
						Chest_1000()
						Chest_1500()
						Chest_2000()
						Chest_2500()
						Chest_3500()
						Chest_4500()
						Chest_5500()
						Chest_6500()
						Chest_7500()
						Chest_9500()
						Chest_10500()
						Chest_12500()
						Chest_15500()
						Chest_17500()
						if _G.Chest_100 ~= nil then
							repeat wait(.3)
								TP(_G.Chest_100.CFrame)
							until not _G.Chest_100.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1
								K_C:Set('Chest : '..tostring(K_CH).."/".._G.K_MAX)
							end
						elseif _G.Chest_500 ~= nil then
							repeat wait(.3)
								TP(_G.Chest_500.CFrame)
							until not _G.Chest_500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1
								K_C:Set('Chest : '..tostring(K_CH).."/".._G.K_MAX)
							end
						elseif _G.Chest_1000 ~= nil then
							repeat wait(.3)
								TP(_G.Chest_1000.CFrame)
							until not _G.Chest_1000.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1
								K_C:Set('Chest : '..tostring(K_CH).."/".._G.K_MAX)
							end
						elseif _G.Chest_1500 ~= nil then
							repeat wait(.3)
								TP(_G.Chest_1500.CFrame)
							until not _G.Chest_1500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1
								K_C:Set('Chest : '..tostring(K_CH).."/".._G.K_MAX)
							end
						elseif _G.Chest_2000 ~= nil then
							repeat wait(.3)
								TP(_G.Chest_2000.CFrame)
							until not _G.Chest_2000.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1
								K_C:Set('Chest : '..tostring(K_CH).."/".._G.K_MAX)
							end
						elseif _G.Chest_2500 ~= nil then
							repeat wait(.3)
								TP(_G.Chest_2500.CFrame)
							until not _G.Chest_2500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1
								K_C:Set('Chest : '..tostring(K_CH).."/".._G.K_MAX)
							end
						elseif _G.Chest_3500 ~= nil then
							repeat wait(.3)
								TP(_G.Chest_3500.CFrame)
							until not _G.Chest_3500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1
								K_C:Set('Chest : '..tostring(K_CH).."/".._G.K_MAX)
							end
						elseif _G.Chest_4500 ~= nil then
							repeat wait(.3)
								TP(_G.Chest_4500.CFrame)
							until not _G.Chest_4500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1
								K_C:Set('Chest : '..tostring(K_CH).."/".._G.K_MAX)
							end
						elseif _G.Chest_5500 ~= nil then
							repeat wait(.3)
								TP(_G.Chest_5500.CFrame)
							until not _G.Chest_5500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1
								K_C:Set('Chest : '..tostring(K_CH).."/".._G.K_MAX)
							end
						elseif _G.Chest_6500 ~= nil then
							repeat wait(.3)
								TP(_G.Chest_6500.CFrame)
							until not _G.Chest_6500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1
								K_C:Set('Chest : '..tostring(K_CH).."/".._G.K_MAX)
							end
						elseif _G.Chest_7500 ~= nil then
							repeat wait(.3)
								TP(_G.Chest_7500.CFrame)
							until not _G.Chest_7500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1
								K_C:Set('Chest : '..tostring(K_CH).."/".._G.K_MAX)
							end
						elseif _G.Chest_9500 ~= nil then
							repeat wait(.3)
								TP(_G.Chest_9500.CFrame)
							until not _G.Chest_9500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1
								K_C:Set('Chest : '..tostring(K_CH).."/".._G.K_MAX)
							end
						elseif _G.Chest_10500 ~= nil then
							repeat wait(.3)
								TP(_G.Chest_10500.CFrame)
							until not _G.Chest_10500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1
								K_C:Set('Chest : '..tostring(K_CH).."/".._G.K_MAX)
							end
						elseif _G.Chest_12500 ~= nil then
							repeat wait(.3)
								TP(_G.Chest_12500.CFrame)
							until not _G.Chest_12500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1
								K_C:Set('Chest : '..tostring(K_CH).."/".._G.K_MAX)
							end
						elseif _G.Chest_15500 ~= nil then
							repeat wait(.3)
								TP(_G.Chest_15500.CFrame)
							until not _G.Chest_15500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1
								K_C:Set('Chest : '..tostring(K_CH).."/".._G.K_MAX)
							end
						elseif _G.Chest_17500 ~= nil then
							repeat wait(.3)
								TP(_G.Chest_17500.CFrame)
							until not _G.Chest_17500.Parent or not Grab_Chest
							if Grab_Chest then
								K_CH = K_CH + 1
								K_C:Set('Chest : '..tostring(K_CH).."/".._G.K_MAX)
							end
						end
                end
            end
        end)
    end
end)

function Chest_100()
	for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
		if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
			_G.Chest_100 = v
			return
		elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
			_G.Chest_100 = v
			return
		end
	end
end
function Chest_500()
	for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
		if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
			_G.Chest_500 = v
			return
		elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
			_G.Chest_500 = v
			return
		end
	end
end
function Chest_1000()
	for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
		if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
			_G.Chest_1000 = v
			return
		elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
			_G.Chest_1000 = v
			return
		end
	end
end
function Chest_1500()
	for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
		if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1500 then
			_G.Chest_1500 = v
			return
		elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1500 then
			_G.Chest_1500 = v
			return
		end
	end
end
function Chest_2000()
	for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
		if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
			_G.Chest_2000 = v
			return
		elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
			_G.Chest_2000 = v
			return
		end
	end
end
function Chest_2500()
	for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
		if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2500 then
			_G.Chest_2500 = v
			return
		elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2500 then
			_G.Chest_2500 = v
			return
		end
	end
end
function Chest_3500()
	for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
		if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3500 then
			_G.Chest_3500 = v
			return
		elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3500 then
			_G.Chest_3500 = v
			return
		end
	end
end
function Chest_4500()
	for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
		if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4500 then
			_G.Chest_4500 = v
			return
		elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4500 then
			_G.Chest_4500 = v
			return
		end
	end
end
function Chest_5500()
	for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
		if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5500 then
			_G.Chest_5500 = v
			return
		elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5500 then
			_G.Chest_5500 = v
			return
		end
	end
end
function Chest_6500()
	for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
		if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 6500 then
			_G.Chest_6500 = v
			return
		elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 6500 then
			_G.Chest_6500 = v
			return
		end
	end
end
function Chest_7500()
	for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
		if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 7500 then
			_G.Chest_7500 = v
			return
		elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 7500 then
			_G.Chest_7500 = v
			return
		end
	end
end
function Chest_9500()
	for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
		if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 9500 then
			_G.Chest_9500 = v
			return
		elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 9500 then
			_G.Chest_9500 = v
			return
		end
	end
end
function Chest_10500()
	for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
		if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10500 then
			_G.Chest_10500 = v
			return
		elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10500 then
			_G.Chest_10500 = v
			return
		end
	end
end
function Chest_12500()
	for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
		if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 12500 then
			_G.Chest_12500 = v
			return
		elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 12500 then
			_G.Chest_12500 = v
			return
		end
	end
end
function Chest_15500()
	for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
		if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 15500 then
			_G.Chest_15500 = v
			return
		elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 15500 then
			_G.Chest_15500 = v
			return
		end
	end
end
function Chest_17500()
	for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
		if v.Name == "Chest1" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 17500 then
			_G.Chest_17500 = v
			return
		elseif v.Name == "Chest2" and (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 17500 then
			_G.Chest_17500 = v
			return
		end
	end
end

M:AddToggle({
	Name = "Auto Farm Chest[HOP]",
	Default = false,
	Callback = function(Value)
		_G.AutoFarmChest_Hop = Value
	end    
})



local Section = M:AddSection({
	Name = "Bone Menu"
})


M:AddToggle({
	Name = "Auto Farm Bone",
	Default = false,
	Callback = function(Value)
		_G.Auto_Bone = Value
        StopTween(_G.Auto_Bone)
	end    
})
local BonePos = CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375)
spawn(function()
    while wait() do 
        if _G.Auto_Bone and World3 then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul [Lv. 2025]") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.Head.CanCollide = false 
                                    StartMagnetBoneMon = true
                                    PosMonBone = v.HumanoidRootPart.CFrame
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0,25,15))
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                until not _G.Auto_Bone or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    topos(CFrame.new(-9466.72949, 171.162918, 6132.01514))
                    StartMagnetBoneMon = false
                    for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                        if v.Name == "Reborn Skeleton [Lv. 1975]" then
                            topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        elseif v.Name == "Living Zombie [Lv. 2000]" then
                            topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        elseif v.Name == "Demonic Soul [Lv. 2025]" then
                            topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        elseif v.Name == "Posessed Mummy [Lv. 2050]" then
                            topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        end
                    end
                end
            end)
        end
    end
end)


    M:AddToggle({
        Name = "Auto Random Bone",
        Default = false,
        Callback = function(Value)
            _G.Auto_Random_Bone = Value
        end    
    })
    spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.Auto_Random_Bone then    
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
                end
            end
        end)
    end)



local Section = M:AddSection({
	Name = "Boss"
})

local Boss = {}
    
    for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
        if string.find(v.Name, "Boss") then
            if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
                else
                table.insert(Boss, v.Name)
            end
        end
    end

    local BossName = M:AddDropdown({
        Name = "Select Boss",
        Default = "",
        Options = Boss,
        Callback = function(Value)
            _G.SelectBoss = Value
        end    
    })

    M:AddToggle({
        Name = "Auto Farm Boss",
        Default = false,
        Callback = function(Value)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
            _G.AutoFarmBoss = Value
            StopTween(_G.AutoFarmBoss)
        end    
    })

    spawn(function()
        while wait() do
            if _G.AutoFarmBoss then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == _G.SelectBoss then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.AutoFarmBoss or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss) then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame * CFrame.new(5,10,2))
                        end
                    end
                end)
            end
        end
    end)

    M:AddToggle({
        Name = "Auto Farm All Boss",
        Default = false,
        Callback = function(Value)
            _G.AutoAllBoss = Value
            StopTween(_G.AutoAllBoss)
        end    
    })

    M:AddToggle({
        Name = "Auto Farm All Boss[HOP]",
        Default = false,
        Callback = function(Value)
            _G.AutoAllBossHop = Value
        end    
    })

    spawn(function()
        while wait() do
            if _G.AutoAllBoss then
                pcall(function()
                    for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
                        if string.find(v.Name,"Boss") then
                            if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 17000 then
                                repeat task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(80,80,80)
                                    topos(v.HumanoidRootPart.CFrame*Pos)
                                    game:GetService'VirtualUser':CaptureController()
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                until v.Humanoid.Health <= 0 or _G.AutoAllBoss == false or not v.Parent
                            end
                        else
                            if _G.AutoAllBossHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)

    local Section = M:AddSection({
        Name = "Observation Haki"
    })

    M:AddToggle({
        Name = "Auto Farm Observation Haki",
        Default = false,
        Callback = function(Value)
            _G.AutoObservation = Value
            StopTween(_G.AutoObservation)
        end    
    })
    spawn(function()
        while wait() do
            pcall(function()
                if _G.AutoObservation then
                    repeat task.wait()
                        if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                            game:GetService('VirtualUser'):CaptureController()
                            game:GetService('VirtualUser'):SetKeyDown('0x65')
                            wait(2)
                            game:GetService('VirtualUser'):SetKeyUp('0x65')
                        end
                    until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or not _G.AutoObservation
                end
            end)
        end
    end)
    
    M:AddToggle({
        Name = "Auto Farm Observation Haki[HOP]",
        Default = false,
        Callback = function(Value)
            _G.AutoObservation_Hop = Value
        end    
    })
    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoObservation then
                    if game:GetService("Players").LocalPlayer.VisionRadius.Value >= 3000 then
                        game:GetService("StarterGui"):SetCore("SendNotification", {
                            Icon = "rbxassetid://0";
                            Title = "Observation", 
                            Text = "You Are Max Point"
                        })
                        wait(2)
                    else
                        if World2 then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]") then
                                if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                    repeat task.wait()
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                                    until _G.AutoObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                else
                                    repeat task.wait()
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]").HumanoidRootPart.CFrame * CFrame.new(0,50,0)+
                                            wait(1)
                                        if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoObservation_Hop == true then
                                            game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
                                        end
                                    until _G.AutoObservation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                end
                            else
                                topos(CFrame.new(-5478.39209, 15.9775667, -5246.9126))
                            end
                        elseif World1 then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]") then
                                if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                    repeat task.wait()
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                                    until _G.AutoObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                else
                                    repeat task.wait()
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
                                        wait(1)
                                        if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoObservation_Hop == true then
                                            game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
                                        end
                                    until _G.AutoObservation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                end
                            else
                                topos(CFrame.new(5533.29785, 88.1079102, 4852.3916))
                            end
                        elseif World3 then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander [Lv. 1650]") then
                                if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
                                    repeat task.wait()
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander [Lv. 1650]").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
                                    until _G.AutoObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                else
                                    repeat task.wait()
                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander [Lv. 1650]").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
                                        wait(1)
                                        if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoObservation_Hop == true then
                                            game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
                                        end
                                    until _G.AutoObservation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
                                end
                            else
                                topos(CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789))
                            end
                        end
                    end
                end
            end
        end)
    end)


local S = Window:MakeTab({
        Name = "Setting",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    S:AddToggle({
        Name = "Auto Haki",
        Default = true,
        Callback = function(Value)
            _G.AUTOHAKI = Value
        end    
    })
    spawn(function()
        while wait(.1) do
            if _G.AUTOHAKI then 
                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                    local args = {
                        [1] = "Buso"
                    }
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                end
            end
        end
    end)

    S:AddToggle({
        Name = "Anti Afk",
        Default = true,
        Callback = function(Value)
            local vu = game:GetService("VirtualUser")
    repeat wait() until game:IsLoaded() 
	game:GetService("Players").LocalPlayer.Idled:connect(function()
    game:GetService("VirtualUser"):ClickButton2(Vector2.new())
		vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		wait(1)
		vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
            end)
        end    
    })

    S:AddToggle({
        Name = "White screen",
        Default = false,
        Callback = function(Value)
            _G.WhiteScreen = Value
if _G.WhiteScreen == true then
    game:GetService("RunService"):Set3dRenderingEnabled(false)
elseif _G.WhiteScreen == false then
    game:GetService("RunService"):Set3dRenderingEnabled(true)
        end
    end
    })



local IQ = Window:MakeTab({
	Name = "Item & Quest",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

IQ:AddToggle({
	Name = "Auto Second Sea",
	Default = false,
	Callback = function(Value)
		_G.AutoSecondSea = Value
        StopTween(_G.AutoSecondSea)
	end    
})


IQ:AddToggle({
	Name = "Auto SuperHuman",
	Default = false,
	Callback = function(Value)
		_G.AutoSuperhuman = Value
        StopTween(_G.AutoSuperhuman)
	end    
})

IQ:AddToggle({
	Name = "Auto Third Sea",
	Default = false,
	Callback = function(Value)
		_G.AutoThirdSea = Value
        StopTween(_G.AutoThirdSea)
	end    
})

IQ:AddToggle({
	Name = "Auto Buy Legend Sword",
	Default = false,
	Callback = function(Value)
        _G.AutoBuyLegendarySword = Value
	end    
})
spawn(function()
    while wait() do
        if _G.AutoBuyLegendarySword then
            pcall(function()
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
                if _G.AutoBuyLegendarySword_Hop and _G.AutoBuyLegendarySword and World2 then
                    wait(10)
                    Hop()
                end
            end)
        end 
    end
end)



local Section = IQ:AddSection({
	Name = "Buddy Sword"
})

IQ:AddToggle({
	Name = "Auto Buddy Sword",
	Default = false,
	Callback = function(Value)
		_G.AutoBudySword = Value
        StopTween(_G.AutoBudySword)
	end    
})

IQ:AddToggle({
	Name = "Auto Buddy Sword[HOP]",
	Default = false,
	Callback = function(Value)
		_G.Hop = Value
	end    
})

local BigMomPos = CFrame.new(-731.2034301757812, 381.5658874511719, -11198.4951171875)
    spawn(function()
        while wait() do
            if _G.AutoBudySword and World3 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Cake Queen [Lv. 2175] [Boss]" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.AutoBudySword or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BigMomPos.Position).Magnitude > 1500 then
			        BTP(BigMomPos)
				    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BigMomPos.Position).Magnitude < 1500 then
				    topos(BigMomPos)
					end
				else
				    topos(BigMomPos)
				end
                    topos(CFrame.new(-731.2034301757812, 381.5658874511719, -11198.4951171875))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen [Lv. 2175] [Boss]").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if _G.AutoBudySwordHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)

    local Section = IQ:AddSection({
        Name = "Soul Guita"
    })

    IQ:AddToggle({
        Name = "Auto Soul Guita",
        Default = false,
        Callback = function(Value)
            _G.AutoNevaSoulGuitar = Value    
            StopTween(_G.AutoNevaSoulGuitar)
        end    
    })
    spawn(function()
		while wait() do
			pcall(function()
				if _G.AutoNevaSoulGuitar then
					if GetWeaponInventory("Soul Guitar") == false then
						if (CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5000 then
							if game:GetService("Workspace").NPCs:FindFirstChild("Skeleton Machine") then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("soulGuitarBuy",true)
							else
								if game:GetService("Workspace").Map["Haunted Castle"].Candle1.Transparency == 0 then
									if game:GetService("Workspace").Map["Haunted Castle"].Placard1.Left.Part.Transparency == 0 then
										Quest2 = true
										repeat wait() topos(CFrame.new(-8762.69140625, 176.84783935546875, 6171.3076171875)) until (CFrame.new(-8762.69140625, 176.84783935546875, 6171.3076171875).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.AutoNevaSoulGuitar
										wait(1)
										fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard7.Left.ClickDetector)
										wait(1)
										fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard6.Left.ClickDetector)
										wait(1)
										fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard5.Left.ClickDetector)
										wait(1)
										fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard4.Right.ClickDetector)
										wait(1)
										fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard3.Left.ClickDetector)
										wait(1)
										fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard2.Right.ClickDetector)
										wait(1)
										fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard1.Right.ClickDetector)
										wait(1)
									elseif game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment1:FindFirstChild("ClickDetector") then
										if game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part1:FindFirstChild("ClickDetector") then
											Quest4 = true
											repeat wait() topos(CFrame.new(-9553.5986328125, 65.62338256835938, 6041.58837890625)) until (CFrame.new(-9553.5986328125, 65.62338256835938, 6041.58837890625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.AutoNevaSoulGuitar
											wait(1)
											topos(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.CFrame)
											wait(1)
											fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.ClickDetector)
											wait(1)
											topos(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.CFrame)
											wait(1)
											fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
											wait(1)
											fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
											wait(1)
											fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
											wait(1)
											topos(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.CFrame)
											wait(1)
											fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector)
											wait(1)
											fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector)
											wait(1)
											topos(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.CFrame)
											wait(1)
											fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.ClickDetector)
											wait(1)
											topos(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.CFrame)
											wait(1)
											fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
											wait(1)
											fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
											wait(1)
											fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
										else
											Quest3 = true
											--Not Work Yet
										end
									else
										if game:GetService("Workspace").NPCs:FindFirstChild("Ghost") then
											local args = {
												[1] = "GuitarPuzzleProgress",
												[2] = "Ghost"
											}

											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
										end
										if game.Workspace.Enemies:FindFirstChild("Living Zombie [Lv. 2000]") then
											for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
												if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
													if v.Name == "Living Zombie [Lv. 2000]" then
														EquipWeapon(_G.SelectWeapon)
														v.HumanoidRootPart.Size = Vector3.new(60,60,60)
														v.HumanoidRootPart.Transparency = 1
														v.Humanoid.JumpPower = 0
														v.Humanoid.WalkSpeed = 0
														v.HumanoidRootPart.CanCollide = false
														v.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,20,0)
														topos(CFrame.new(-10160.787109375, 138.6616973876953, 5955.03076171875))
														game:GetService'VirtualUser':CaptureController()
														game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
													end
												end
											end
										else
											topos(CFrame.new(-10160.787109375, 138.6616973876953, 5955.03076171875))
										end
									end
								else    
									if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2), "Error") then
										print("Go to Grave")
										topos(CFrame.new(-8653.2060546875, 140.98487854003906, 6160.033203125))
									elseif string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2), "Nothing") then
										print("Wait Next Night")
									else
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2,true)
									end
								end
							end
						else
							topos(CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125))
	end
	else
if _G.soulGuitarhop then
hop()
end
						end
					end
			end)
		end
end)

IQ:AddToggle({
	Name = "Auto Soul Guita[HOP]",
	Default = false,
	Callback = function(Value)
		_G.Hop = Value  
	end    
})

local Section = IQ:AddSection({
	Name = "Auto Dual Curset Katana[FIX]"
})

IQ:AddToggle({
	Name = "Auto Dual Curset Katana",
	Default = false,
	Callback = function(Value)
        Auto_Cursed_Dual_Katana = Value
        StopTween(Auto_Cursed_Dual_Katana)
	end    
})
spawn(function()
    while wait() do
        pcall(function()
            if Auto_Cursed_Dual_Katana then
                if game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") or game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                    if game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
                            EquipWeapon("Tushita")
                        end
                    elseif game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                            EquipWeapon("Yama")
                            
                        end
                    end
                else
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Tushita")
                end
            end
        end)
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            if Auto_Cursed_Dual_Katana then
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
                                        EquipWeapon(Sword)
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        --v.Humanoid:ChangeState(11)
                                        --v.Humanoid:ChangeState(14)
                                        PosMon = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        Click()
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
                            topos(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875))
                            wait(1.5)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                            wait(1.5)
                            topos(CFrame.new(-12253.5419921875, 598.8999633789062, -6546.8388671875))
                        else
                            topos(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875))
                        end   
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while wait() do
        if Auto_Quest_Yama_1 then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Mythological Pirate [Lv. 1850]") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Mythological Pirate [Lv. 1850]" then
                            repeat wait()
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0,0,-2))
                            until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_1 == false
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                        end
                    end
                else
                    topos(CFrame.new(-13451.46484375, 543.712890625, -6961.0029296875))
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
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
    while wait() do
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
    while wait() do
        if Auto_Quest_Yama_2 then 
            pcall(function() 
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v:FindFirstChild("HazeESP") then
                        repeat wait()
                            if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                                topos(v.HumanoidRootPart.CFrame * Pos)
                            else
                                EquipWeapon(Sword)
                                topos(v.HumanoidRootPart.CFrame * Pos)
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                v.HumanoidRootPart.Transparency = 1
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                --v.Humanoid:ChangeState(11)
                                --v.Humanoid:ChangeState(14)
                                PosMon = v.HumanoidRootPart.CFrame
                                MonFarm = v.Name
                                Click()
                                if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end							
                            end      
                        until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_2 == false or not v.Parent or v.Humanoid.Health <= 0 or not v:FindFirstChild("HazeESP")
                    else
                        for x,y in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                            if y:FindFirstChild("HazeESP") then
                                if (y.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                                    topos(y.HumanoidRootPart.CFrameMon* Farm_Mode)
                                else
                                    topos(y.HumanoidRootPart.CFrame * Farm_Mode)
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
    while wait() do
        if Auto_Quest_Yama_3 then
            pcall(function()
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") then         
                    topos(game:GetService("Workspace").Map["Haunted Castle"].Summoner.Detection.CFrame)
                elseif game:GetService("Workspace").Map:FindFirstChild("HellDimension") then
                    repeat wait()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Hell's Messenger [Lv. 2200] [Boss]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Cursed Skeleton [Lv. 2200]" or v.Name == "Cursed Skeleton [Lv. 2200] [Boss]" or v.Name == "Hell's Messenger [Lv. 2200] [Boss]" then
                                    if v.Humanoid.Health > 0 then
                                        repeat wait()
                                            EquipWeapon(Sword)
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            --v.Humanoid:ChangeState(11)
                                            --v.Humanoid:ChangeState(14)
                                            PosMon = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            Click()
                                            if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                                v.Humanoid.Animator:Destroy()
                                            end
                                        until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Yama_3 == false
                                    end
                                end
                            end
                        else
                            wait(5)
                            topos(game:GetService("Workspace").Map.HellDimension.Torch1.CFrame)
                            wait(1.5)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                            wait(1.5)        
                            topos(game:GetService("Workspace").Map.HellDimension.Torch2.CFrame)
                            wait(1.5)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                            wait(1.5)     
                            topos(game:GetService("Workspace").Map.HellDimension.Torch3.CFrame)
                            wait(1.5)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                            wait(1.5)     
                            topos(game:GetService("Workspace").Map.HellDimension.Exit.CFrame)
                        end
                    until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_3 == false or GetMaterial("Alucard Fragment") == 3
                else
                    if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") or game.ReplicatedStorage:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Soul Reaper [Lv. 2100] [Raid Boss]" then
                                    if v.Humanoid.Health > 0 then
                                        repeat wait()
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                        until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_3 == false or game:GetService("Workspace").Map:FindFirstChild("HellDimension")
                                    end
                                end
                            end
                        else
                            topos(CFrame.new(-9570.033203125, 315.9346923828125, 6726.89306640625))
                        end
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
                    end
                end
            end)
        end
    end
end)
spawn(function()
    while wait() do
        if Auto_Quest_Tushita_1 then
            topos(CFrame.new(-9546.990234375, 21.139892578125, 4686.1142578125))
            wait(5)
            topos(CFrame.new(-6120.0576171875, 16.455780029296875, -2250.697265625))
            wait(5)
            topos(CFrame.new(-9533.2392578125, 7.254445552825928, -8372.69921875))    
        end
    end
end)
spawn(function()
    while wait() do
        if Auto_Quest_Tushita_2 then
            pcall(function()
                if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if Auto_Quest_Tushita_2 and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                            if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
                                repeat wait()
                                    EquipWeapon(Sword)
                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    v.HumanoidRootPart.Transparency = 1
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    --v.Humanoid:ChangeState(11)
                                    --v.Humanoid:ChangeState(14)
                                    PosMon = v.HumanoidRootPart.CFrame
                                    MonFarm = v.Name
                                    Click()
                                    if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Tushita_2 == false
                            end
                        end
                    end
                else
                    topos(CFrame.new(-5545.1240234375, 313.800537109375, -2976.616455078125))
                end
            end)
        end
    end
end)
spawn(function()
    while wait() do
        if Auto_Quest_Tushita_3 then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") or game.ReplicatedStorage:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Cake Queen [Lv. 2175] [Boss]" then
                                if v.Humanoid.Health > 0 then
                                    repeat wait()
                                        EquipWeapon(Sword)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        --v.Humanoid:ChangeState(11)
                                        --v.Humanoid:ChangeState(14)
                                        PosMon = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        Click()
                                        if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                    until Auto_Cursed_Dual_Katana == false or Auto_Quest_Tushita_3 == false or game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension")
                                end
                            end
                        end
                    else
                        topos(CFrame.new(-709.3132934570312, 381.6005859375, -11011.396484375))
                    end
                elseif game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension") then
                    repeat wait()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Heaven's Guardian [Lv. 2200] [Boss]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Cursed Skeleton [Lv. 2200]" or v.Name == "Cursed Skeleton [Lv. 2200] [Boss]" or v.Name == "Heaven's Guardian [Lv. 2200] [Boss]" then
                                    if v.Humanoid.Health > 0 then
                                        repeat wait()
                                            EquipWeapon(Sword)
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            --v.Humanoid:ChangeState(11)
                                            --v.Humanoid:ChangeState(14)
                                            PosMon = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name
                                            Click()
                                            if v.Humanoid.Health <= 0 and v.Humanoid:FindFirstChild("Animator") then
                                                v.Humanoid.Animator:Destroy()
                                            end
                                        until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Tushita_3 == false
                                    end
                                end
                            end
                        else
                            wait(5)
                            topos(game:GetService("Workspace").Map.HeavenlyDimension.Torch1.CFrame)
                            wait(1.5)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                            wait(1.5)        
                            topos(game:GetService("Workspace").Map.HeavenlyDimension.Torch2.CFrame)
                            wait(1.5)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                            wait(1.5)     
                            topos(game:GetService("Workspace").Map.HeavenlyDimension.Torch3.CFrame)
                            wait(1.5)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                            wait(1.5)     
                            topos(game:GetService("Workspace").Map.HeavenlyDimension.Exit.CFrame)
                        end
                    until not Auto_Cursed_Dual_Katana or not Auto_Quest_Tushita_3 or GetMaterial("Alucard Fragment") == 6
                end
            end)
        end
    end
end)

local Section = IQ:AddSection({
	Name = "Tushita"
})

IQ:AddToggle({
	Name = "Auto Tushita",
	Default = false,
	Callback = function(Value)
		_G.Autotushita = Value
        StopTween( _G.Autotushita)
	  
	end    
})

IQ:AddToggle({
	Name = "Auto Tushita[HOP]",
	Default = false,
	Callback = function(Value)
		_G.Hop = Value
    end  
})

local TushitaPos = CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125)
    spawn(function()
        while wait() do
            if  _G.Autotushita and World3 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Longma [Lv. 2000] [Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Longma [Lv. 2000] [Boss]" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not  _G.Autotushita or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - TushitaPos.Position).Magnitude > 1500 then
			        BTP(TushitaPos)
				    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - TushitaPos.Position).Magnitude < 1500 then
				    topos(TushitaPos)
					end
				else
				    topos(TushitaPos)
				end
                    topos(CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Longma [Lv. 2000] [Boss]") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Longma [Lv. 2000] [Boss]").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if  _G.Autotushitahop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)

local Section = IQ:AddSection({
	Name = "Cavander"
})

IQ:AddToggle({
	Name = "Auto Cavander",
	Default = false,
	Callback = function(Value)
		_G.AutoCarvender = Value
        StopTween( _G.AutoCarvender)
	end    
})

IQ:AddToggle({
	Name = "Auto Cavander[HOP]",
	Default = false,
	Callback = function(Value)
		_G.Hop = Value
	end    
})
local CavandisPos = CFrame.new(5314.58203, 22.8796749, -125.942276, 1, 1.69639192e-10, 1.5617945e-15, -1.69639192e-10, 1, 5.38001999e-08, -1.55266783e-15, -5.38001999e-08, 1)
    spawn(function()
        while wait() do
            if  _G.AutoCarvender and World3 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not  _G.AutoCarvender or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CavandisPos.Position).Magnitude > 1500 then
			        BTP(CavandisPos)
				    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CavandisPos.Position).Magnitude < 1500 then
				    topos(CavandisPos)
					end
				else
				    topos(CavandisPos)
				end
                    topos(CFrame.new(5311.07421875, 426.0243835449219, 165.12762451171875))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if  _G.AutoCavanderhop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)

    local Section = IQ:AddSection({
        Name = "Pirate Raid [BETA]"
    })

    IQ:AddToggle({
        Name = "Auto Raid Pirates",
        Default = false,
        Callback = function(Value)
            _G.RaidPirate = Value
            StopTween(_G.RaidPirate)
        end    
    })

    spawn(function()
        while wait() do
            if _G.RaidPirate then
                pcall(function()
                    local CFrameBoss = CFrame.new(-5496.17432, 313.768921, -2841.53027, 0.924894512, 7.37058015e-09, 0.380223751, 3.5881019e-08, 1, -1.06665446e-07, -0.380223751, 1.12297109e-07, 0.924894512)
                    if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if _G.RaidPirate and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
                                    repeat wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        Click()
                                    until v.Humanoid.Health <= 0 or not v.Parent or not _G.RaidPirate
                                end
                            end
                        end
                    else
                        if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameBoss.Position).Magnitude > 1500 then
                        BTP(CFrameBoss)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameBoss.Position).Magnitude < 1500 then
                        topos(CFrameBoss)
                        end
                        end
                    end
                end)
            end
        end
        end)


        local Section = IQ:AddSection({
            Name = "Twin Hook"
        })

        IQ:AddToggle({
            Name = "Auto Twin Hook",
            Default = false,
            Callback = function(Value)
                _G.AutoTwinHook = Value
                StopTween( _G.AutoTwinHook)
            end    
        })
        
        IQ:AddToggle({
            Name = "Auto Twin Hook[HOP]",
            Default = false,
            Callback = function(Value)
                _G.Hop = Value
            end    
        })
        
        local ElephantPos = CFrame.new(-13348.0654296875, 405.8904113769531, -8570.62890625)
        spawn(function()
            while wait() do
                if  _G.AutoTwinHook and World3 then
                    pcall(function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        repeat task.wait()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                            sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                        until not  _G.AutoTwinHook or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                end
                            end
                        else
                        if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - ElephantPos.Position).Magnitude > 1500 then
                        BTP(ElephantPos)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - ElephantPos.Position).Magnitude < 1500 then
                        topos(ElephantPos)
                        end
                    else
                        topos(ElephantPos)
                    end
                        topos(CFrame.new(-13348.0654296875, 405.8904113769531, -8570.62890625))
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Captain Elephant [Lv. 1875] [Boss]").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            else
                                if  _G.AutoTwinHook_Hop then
                                    Hop()
                                end
                            end
                        end
                    end)
                end
            end
        end)
        
        local Section = IQ:AddSection({
            Name = "ArenaTrainer"
        })

        IQ:AddLabel("Cho thằng nào đell hiểu thì đây là tự động đánh hình nộm")

        IQ:AddToggle({
            Name = "Automatically hit the dummy",
            Default = false,
            Callback = function(Value)
                _G.Namfon = Value
                StopTween(_G.Namfon)
            end    
        })

        local GGPos = CFrame.new(3757.732421875, 91.99540710449219, 253.65066528320312)
        spawn(function()
            while wait() do
                if _G.Namfon and World3 then
                    pcall(function()
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Training Dummy") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Training Dummy") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Training Dummy") then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Training Dummy [Lv. 1500]") or game:GetService("Workspace").Enemies:FindFirstChild("Training Dummy [Lv. 1500]") or game:GetService("Workspace").Enemies:FindFirstChild("Training Dummy [Lv. 1500]") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Training Dummy [Lv. 1500]" or v.Name == "Training Dummy [Lv. 1500]" or v.Name == "Training Dummy [Lv. 1500]" then
                                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                repeat wait()
                                                    AutoHaki()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    Fastattack = true
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Humanoid.WalkSpeed = 0
                                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                                    game:GetService("VirtualUser"):CaptureController()
                                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                                until _G.Namfon == false or v.Humanoid.Health <= 0 or not v.Parent
                                                Fastattack = false
                                            end
                                        end
                                    end
                                else
                                if BypassTP then
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - GGPos.Position).Magnitude > 1500 then
                                BTP(GGPos)
                                elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - GGPos.Position).Magnitude < 1500 then
                                topos(GGPos)
                                end
                            else
                                topos(GGPos)
                            end
                                    topos(CFrame.new(3757.732421875, 91.99540710449219, 253.65066528320312))
                                    if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") then
                                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Training Dummy [Lv. 1500]").HumanoidRootPart.CFrame * MethodFarm)
                                    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Training Dummy [Lv. 1500]") then
                                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Training Dummy [Lv. 1500]").HumanoidRootPart.CFrame * MethodFarm)
                                    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Training Dummy [Lv. 1500]") then
                                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Training Dummy [Lv. 1500]").HumanoidRootPart.CFrame * MethodFarm)
                                    end
                                end                    
                            end
                        else
                            if _G.AutoArenaTrainerHop and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ArenaTrainer") == "I don't have anything for you right now. Come back later." then
                                hop()
                            else
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ArenaTrainer")
                            end
                        end
                    end)
                end
            end
        end)

        IQ:AddToggle({
            Name = "Automatically hit the dummy[HOP]",
            Default = false,
            Callback = function(Value)
                _G.Hop = Value
            end    
        })

        local Section = IQ:AddSection({
            Name = "Seperator Hallow Scythe"
        })

        

        IQ:AddToggle({
            Name = "Auto Hallow Scythe",
            Default = false,
            Callback = function(Value)
                _G.AutoFarmBossHallow = Value
                StopTween(_G.AutoFarmBossHallow)
            end    
        })

        IQ:AddToggle({
            Name = "Auto Hallow Scythe[HOP]",
            Default = false,
            Callback = function(Value)
                _G.Hop = Value
            end    
        })
        spawn(function()
            while wait() do
                if _G.AutoFarmBossHallow then
                    pcall(function()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if string.find(v.Name , "Soul Reaper") then
                                    repeat task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        AutoHaki()
                                            topos(v.HumanoidRootPart.CFrame*Pos)
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
                                        v.HumanoidRootPart.Transparency = 1
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until v.Humanoid.Health <= 0 or _G.AutoFarmBossHallow == false
                                end
                            end
                        elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
                            repeat topos(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125)) wait() until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8                        
                            EquipWeapon("Hallow Essence")
                        else
                            if game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            else
                                if _G.AutoFarmBossHallowHop then
                                    Hop()
                                end
                            end
                        end
                    end)
                end
            end
        end)

        local Section = IQ:AddSection({
            Name = "Dark Dragger"
        })

        IQ:AddToggle({
            Name = "Auto Dark Dragger",
            Default = false,
            Callback = function(Value)
                _G.AutoDarkDagger = Value
                StopTween(_G.AutoDarkDagger)
            end    
        })
        local AdminPos = CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781)
        spawn(function()
            pcall(function()
                while wait() do
                    if _G.AutoDarkDagger then
                        if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 5000] [Raid Boss]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == ("rip_indra True Form [Lv. 5000] [Raid Boss]" or v.Name == "rip_indra [Lv. 5000] [Raid Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                                    repeat task.wait()
                                        pcall(function()
                                            AutoHaki()
                                            EquipWeapon(_G.SelectWeapon)
                                            v.HumanoidRootPart.CanCollide = false
                                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
                                        end)
                                    until _G.AutoDarkDagger == false or v.Humanoid.Health <= 0
                                end
                            end
                        else
                        if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - AdminPos.Position).Magnitude > 1500 then
                        BTP(AdminPos)
                        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - AdminPos.Position).Magnitude < 1500 then
                        topos(AdminPos)
                        end
                    else
                        topos(AdminPos)
                    end
                            topos(CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781))
                        end
                    end
                end
            end)
        end)

        IQ:AddToggle({
            Name = "Auto Dark Dragger[HOP]",
            Default = false,
            Callback = function(Value)
                _G.Hop = Value
            end    
        })

        spawn(function()
            pcall(function()
                while wait() do
                    if (_G.AutoDarkDagger_Hop and _G.AutoDarkDagger) and World3 and not game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") and not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
                        Hop()
                    end
                end
            end)
        end)
        
        
    function EquipAllWeapon()
        pcall(function()
            for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v:IsA('Tool') and not (v.Name == "Summon Sea Beast" or v.Name == "Water Body" or v.Name == "Awakening") then
                    local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name) 
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
                    wait(1)
                end
            end
        end)
    end

    local Section = IQ:AddSection({
        Name = "SeaBeast"
    })

    IQ:AddToggle({
        Name = "Auto Seabeast",
        Default = false,
        Callback = function(Value)
            _G.AutoSeaBest = Value
            StopTween(_G.AutoSeaBest)
            _G.Auto_Seabest = Value
            StopTween(_G.Auto_Seabest)

        end    
    })
    


    spawn(function()
        while wait() do
            if _G.AutoSeaBest then
                   pcall(function()
                     for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                         if v:FindFirstChild("HumanoidRootPart") then
                            AutoHaki()
                            EquipWeapon(_G.SelectWeapon)
                            TP1(v.HumanoidRootPart.CFrame * CFrame.new(0,300,0))
                            game:GetService("VirtualUser"):CaptureController()
                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                       else
                           if _G.AutoSeaBestHop then
                             Hop()
							    end
							end
                         end
                    end)
                end
            end
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


Skillz = true
Skillx = true
Skillc = true
Skillv = true

spawn(function()
    while wait() do
        pcall(function()
            if AutoSkill then
                if Skillz then
                    game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                    wait(.1)
                    game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                end
                if Skillx then
                    game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                    wait(.1)
                    game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                end
                if Skillc then
                    game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                    wait(.1)
                    game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                end
                if Skillv then
                    game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                    wait(.1)
                    game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                end
            end
        end)
    end
end)

task.spawn(function()
    while wait() do
        pcall(function()
            if _G.Auto_Seabest then
                if not game:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1") then
                    if not game:GetService("Workspace").Boats:FindFirstChild("PirateBrigade") then 
                        if not game:GetService("Workspace").Boats:FindFirstChild("PirateBasic") then
                            if not game:GetService("Workspace").Boats:FindFirstChild("PirateBrigade") then
                                buyb = TPP(CFrame.new(-11.78054428100586, 10.302456855773926, 2927.2255859375))
                                if (CFrame.new(-11.78054428100586, 10.302456855773926, 2927.2255859375).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 10 then
                                    if buyb then buyb:Stop() end
                                    local args = {
                                        [1] = "BuyBoat",
                                        [2] = "PirateBrigade"
                                    }
        
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                end
                            elseif game:GetService("Workspace").Boats:FindFirstChild("PirateBrigade") then
                                if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == false then
                                    TPP(game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame * CFrame.new(0,1,0))
                                elseif game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == true then
                                    repeat wait()
                                        if (game:GetService("Workspace").Boats.PirateBrigade.VehicleSeat.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 10 then
                                            TPB(CFrame.new(35.04552459716797, 17.750778198242188, 4819.267578125))
                                        end
                                    until game:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1") or _G.Auto_Seabest == false
                                end
                            end
                        elseif game:GetService("Workspace").Boats:FindFirstChild("PirateBrigade") then
                            for is,vs in pairs(game:GetService("Workspace").Boats:GetChildren()) do
                                if vs.Name == "PirateBrigade" then
                                    if v:FindFirstChild("VehicleSeat") then
                                        repeat wait()
                                            game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
                                            TPP(vs.VehicleSeat.CFrame * CFrame.new(0,30,0))
                                            EquipAllWeapon()  
                                            AutoSkill = true
                                            AimBotSkillPosition = vs.VehicleSeat
                                            Skillaimbot = true
                                        until not game:GetService("Workspace").Boats:FindFirstChild("PirateBrigade") or _G.Auto_Seabest == false
                                        AutoSkill = false
                                        Skillaimbot = false
                                    end
                                end
                            end
                        end
                    elseif game:GetService("Workspace").Boats:FindFirstChild("PirateBrigade") then
                        for iss,vss in pairs(game:GetService("Workspace").Boats:GetChildren()) do
                            if vss.Name == "PirateBrigade" then
                                if v:FindFirstChild("VehicleSeat") then
                                    repeat wait()
                                        game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
                                        TPP(vss.VehicleSeat.CFrame * CFrame.new(0,30,0))
                                        EquipAllWeapon()  
                                        AutoSkill = true
                                        AimBotSkillPosition = vss.VehicleSeat
                                        Skillaimbot = true
                                    until not game:GetService("Workspace").Boats:FindFirstChild("PirateBrigade") or _G.Auto_Seabest == false
                                    AutoSkill = false
                                    Skillaimbot = false
                                end
                            end
                        end
                    end
                elseif game:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1") then  
                    for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                        if v:FindFirstChild("HumanoidRootPart") then
                            repeat wait()
                                game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
                                TPP(v.HumanoidRootPart.CFrame * CFrame.new(0,500,0))
                                EquipAllWeapon()  
                                AutoSkill = true
                                AimBotSkillPosition = v.HumanoidRootPart
                                Skillaimbot = true
                            until not v:FindFirstChild("HumanoidRootPart") or _G.Auto_Seabest == false
                            AutoSkill = false
                            Skillaimbot = false
                        end
                    end
                end
            end
        end)
    end
end)

IQ:AddToggle({
	Name = "Auto Seabeast[HOP]",
	Default = false,
	Callback = function(Value)
		_G.Hop = Value
	end    
})


spawn(function()
    pcall(function()
        while wait() do
            if _G.Hop == true then
                Hop()
            elseif _G.Hop == false then
            end
        end
    end)
end)

local S = Window:MakeTab({
	Name = "Stats",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = S:AddSection({
	Name = "Stats Select"
})

spawn(function()
	while wait() do
		local count10 = 0
		local count = 0
		for i,v in pairs(game.workspace:GetChildren()) do
			if string.find(v.Name,"Chest") and v:IsA("Part") then
				count10 = count10 + 1
			end
		end
		for i,v in pairs(game.Workspace:GetChildren()) do
			if v.Name == "Blox Fruit Dealer" then
			else
				if string.find(v.Name, "Fruit") and v:IsA("Tool") then
					count = count + 1
				end
				if string.find(v.Name, "Fruit") and v:IsA("Model") then
					count = count + 1
				end
			end
		end
		Fruit:Set("Fruit : "..count)
		Chest:Set("Chest : "..count10)
		wait(5)
	end
end)

Chest = S:AddLabel("Chest")

Fruit = S:AddLabel("Fruit")

  local Pointstat = S:AddLabel("Stat Points")
    
    spawn(function()
        while wait() do
            pcall(function()
                Pointstat:Set("Stat Points : "..tostring(game:GetService("Players")["LocalPlayer"].Data.Points.Value))
            end)
        end
    end)
    
local Melee = S:AddLabel("Melee : ")
local Defense = S:AddLabel("Defense : ")
local Sword = S:AddLabel("Sword : ")
local Gun = S:AddLabel("Gun : ")
local Fruit = S:AddLabel("Fruit : ")

    spawn(function()
        while wait() do
            pcall(function()
                Melee:Set("Melee : "..game.Players.localPlayer.Data.Stats.Melee.Level.Value)
            end)
        end
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                Defense:Set("Defense : "..game.Players.localPlayer.Data.Stats.Defense.Level.Value)
            end)
        end
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                Sword:Set("Sword : "..game.Players.localPlayer.Data.Stats.Sword.Level.Value)
            end)
        end
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                Gun:Set("Gun : "..game.Players.localPlayer.Data.Stats.Gun.Level.Value)
            end)
        end
    end)
    
    spawn(function()
        while wait() do
            pcall(function()
                Fruit:Set("Fruit : "..game.Players.localPlayer.Data.Stats["Demon Fruit"].Level.Value)
            end)
        end
    end)

S:AddToggle({
	Name = "Auto Stats Kaitun",
	Default = false,
	Callback = function(Value)
		_G.Auto_Stats_Kaitun = Value
	end    
})

spawn(function()
	while wait() do
		pcall(function()
			if _G.Auto_Stats_Kaitun then
				if World1 then
					local args = {
						[1] = "AddPoint",
						[2] = "Melee",
						[3] = _G.Point
						}
						
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				elseif World2 then
					local args = {
						[1] = "AddPoint",
						[2] = "Melee",
						[3] = _G.Point
						}
						
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					local args = {
						[1] = "AddPoint",
						[2] = "Defense",
						[3] = _G.Point
						}
						
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
			end
		end)
	end
end)

S:AddToggle({
	Name = "Melee",
	Default = false,
	Callback = function(Value)
		melee = Value
	end    
})

S:AddToggle({
	Name = "Defense",
	Default = false,
	Callback = function(Value)
		defense = Value
	end    
})

S:AddToggle({
	Name = "Sword",
	Default = false,
	Callback = function(Value)
		sword = Value
	end    
})

S:AddToggle({
	Name = "Gun",
	Default = false,
	Callback = function(Value)
		gun = Value
	end    
})

S:AddToggle({
	Name = "Devil Fruit",
	Default = false,
	Callback = function(Value)
		demonfruit = Value
	end    
})

PointStats = 1
S:AddSlider({
	Name = "Point",
	Min = 1,
	Max = 2450,
	Default = 1,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Point",
	Callback = function(Value)
		PointStats = Value
	end    
})

spawn(function()
    while wait() do
        if game.Players.localPlayer.Data.Points.Value >= PointStats then
            if melee then
                local args = {
                    [1] = "AddPoint",
                    [2] = "Melee",
                    [3] = PointStats
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end 
            if defense then
                local args = {
                    [1] = "AddPoint",
                    [2] = "Defense",
                    [3] = PointStats
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end 
            if sword then
                local args = {
                    [1] = "AddPoint",
                    [2] = "Sword",
                    [3] = PointStats
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end 
            if gun then
                local args = {
                    [1] = "AddPoint",
                    [2] = "Gun",
                    [3] = PointStats
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end 
            if demonfruit then
                local args = {
                    [1] = "AddPoint",
                    [2] = "Demon Fruit",
                    [3] = PointStats
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
        end
    end
end)

local E = Window:MakeTab({
	Name = "ESP",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = E:AddSection({
	Name = "ESP MENU"
})

E:AddToggle({
	Name = "ESP Players",
	Default = false,
	Callback = function(a)
		ESPPlayer = a
	    UpdatePlayerChams()
	end    
})
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
						name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance')
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
						v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
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

E:AddToggle({
	Name = "ESP Fruits",
	Default = false,
	Callback = function(b)
		DevilFruitESP = b
        while DevilFruitESP do wait()
        UpdateDevilChams() 
        end
	end    
})
function UpdateDevilChams() 
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if DevilFruitESP then
				if string.find(v.Name, "Fruit") then   
					if not v.Handle:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v.Handle)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v.Handle
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						name.TextColor3 = Color3.fromRGB(255, 255, 255)
						name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
					else
						v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' Distance')
					end
				end
			else
				if v.Handle:FindFirstChild('NameEsp'..Number) then
					v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
				end
			end
		end)
	end
end

spawn(function()
    while wait(2) do
        if FlowerESP then
            UpdateFlowerChams() 
        end
        if DevilFruitESP then
            UpdateDevilChams() 
        end
        if ChestESP then
            UpdateChestChams() 
        end
        if ESPPlayer then
            UpdatePlayerChams()
        end
        if RealFruitESP then
            UpdateRealFruitChams()
        end
    end
end)

E:AddToggle({
	Name = "ESP Island",
	Default = false,
	Callback = function(Value)
        IslandESP = Value
        while IslandESP do wait()
        UpdateIslandESP() 
        end
	end    
})
function UpdateIslandESP() 
    for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
        pcall(function()
            if IslandESP then 
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
                        name.TextColor3 = Color3.fromRGB(7, 236, 240)
                    else
                        v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
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

E:AddToggle({
	Name = "ESP Flower",
	Default = false,
	Callback = function(Value)
		FlowerESP = Value
	    UpdateFlowerChams() 
	end    
})
function UpdateFlowerChams() 
	for i,v in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if v.Name == "Flower2" or v.Name == "Flower1" then
				if FlowerESP then 
					if not v:FindFirstChild('NameEsp'..Number) then
						local bill = Instance.new('BillboardGui',v)
						bill.Name = 'NameEsp'..Number
						bill.ExtentsOffset = Vector3.new(0, 1, 0)
						bill.Size = UDim2.new(1,200,1,30)
						bill.Adornee = v
						bill.AlwaysOnTop = true
						local name = Instance.new('TextLabel',bill)
						name.Font = Enum.Font.GothamSemibold
						name.FontSize = "Size14"
						name.TextWrapped = true
						name.Size = UDim2.new(1,0,1,0)
						name.TextYAlignment = 'Top'
						name.BackgroundTransparency = 1
						name.TextStrokeTransparency = 0.5
						name.TextColor3 = Color3.fromRGB(255, 0, 0)
						if v.Name == "Flower1" then 
							name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							name.TextColor3 = Color3.fromRGB(0, 0, 255)
						end
						if v.Name == "Flower2" then
							name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
							name.TextColor3 = Color3.fromRGB(255, 0, 0)
						end
					else
						v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' Distance')
					end
				else
					if v:FindFirstChild('NameEsp'..Number) then
					v:FindFirstChild('NameEsp'..Number):Destroy()
					end
				end
			end   
		end)
	end
end
















local RA = Window:MakeTab({
	Name = "Raid",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = RA:AddSection({
	Name = "Raid Menu"
})

local TimeRaid = RA:AddLabel("Wait For Dungeon")

spawn(function()
    pcall(function()
        while wait() do
            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true then
                TimeRaid:Set(game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Text)
            else
                TimeRaid:Set("Wait For Dungeon")
            end
        end
    end)
end)

local checkisland = RA:AddLabel("Island : Not Raid")

spawn(function()
    pcall(function()
        while wait() do
if game.Workspace._WorldOrigin.Locations:FindFirstChild('Island 1') then
checkisland:Set(' Island : 1')
        end
    end
    end)
end)

spawn(function()
    pcall(function()
        while wait() do
if game.Workspace._WorldOrigin.Locations:FindFirstChild('Island 2') then
checkisland:Set('Island : 2')
        end
    end
    end)
end)

spawn(function()
    pcall(function()
        while wait() do
if game.Workspace._WorldOrigin.Locations:FindFirstChild('Island 3') then
checkisland:Set('Island : 3')
        end
    end
    end)
end)

spawn(function()
    pcall(function()
        while wait() do
if game.Workspace._WorldOrigin.Locations:FindFirstChild('Island 4') then
checkisland:Set('Island : 4')
end
end
    end)
end)

spawn(function()
    pcall(function()
        while wait() do
if game.Workspace._WorldOrigin.Locations:FindFirstChild('Island 5') then
checkisland:Set('Island : 5')
        end
    end
    end)
end)

_G.SelectChip = selectraids or ""
	Raidslist = {}
	RaidsModule = require(game.ReplicatedStorage.Raids)
	for i,v in pairs(RaidsModule.raids) do
		table.insert(Raidslist,v)
	end
	for i,v in pairs(RaidsModule.advancedRaids) do
		table.insert(Raidslist,v)
	end


    RA:AddDropdown({
        Name = "Select Chips",
        Default = "",
        Options = Raidslist,
        Callback = function(Value)
            _G.SelectChip = Value
        end    
    })



RA:AddButton({
	Name = "Buy Chip",
	Callback = function()
      	_G.AutoBuyChip = value
  	end    
})
spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoBuyChip then
                if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
                    if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectChip)
                    end
                end
            end
        end
    end)
end)

RA:AddButton({
	Name = "Buy Chips Select",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc","Select",_G.SelectChip)
  	end    
})

RA:AddToggle({
	Name = "Auto Start Raid",
	Default = false,
	Callback = function(Value)
		_G.Auto_StartRaid = Value
	end    
})
spawn(function()
    while wait(.1) do
        pcall(function()
            if _G.Auto_StartRaid then
                if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
                    if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
                        if World2 then
                            fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                        elseif World3 then
                            fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                        end
                    end
                end
            end
        end)
    end
end)

RA:AddToggle({
	Name = "KillAura",
	Default = false,
	Callback = function(Value)
		_G.Kill_Aura = Value
	end    
})
spawn(function()
    while wait() do
        if _G.Kill_Aura then
            for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                    pcall(function()
                        repeat wait(.1)
                            v.Humanoid.Health = 0
                            v.HumanoidRootPart.CanCollide = false
							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                        until not _G.Kill_Aura  or not v.Parent or v.Humanoid.Health <= 0
                    end)
                end
            end
        end
    end
    end)

    RA:AddToggle({
        Name = "Next Island",
        Default = false,
        Callback = function(Value)
            _G.Auto_Dungeon = Value
            StopTween(_G.Auto_Dungeon)
        end    
    })
    spawn(function()
        pcall(function()
            while wait() do
                if _G.Auto_Dungeon then
                    if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
                        if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
                            topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame*RaidPos)
                        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
                            topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame*RaidPos)
                        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
                            topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame*RaidPos)
                        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
                            topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame*RaidPos)
                        elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                            topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame*RaidPos)
                        end
                    end
                end
            end
        end)
    end)
    
    Type = 1
spawn(function()
    while wait(.1) do
        if Type == 1 then
            RaidPos = CFrame.new(0,25,0)
		elseif Type == 2 then
			RaidPos = CFrame.new(0,25,-40)
		elseif Type == 3 then
			RaidPos = CFrame.new(40,25,0)
		elseif Type == 4 then
			RaidPos = CFrame.new(0,25,40)	
		elseif Type == 5 then
			RaidPos = CFrame.new(-40,25,0)
		elseif Type == 6 then
			RaidPos = CFrame.new(0,25,0)
        end
        end
    end)

spawn(function()
    while wait(.1) do
        Type = 1
        wait(0.9)
        Type = 2
        wait(0.9)
        Type = 3
        wait(0.9)
        Type = 4
        wait(0.9)
        Type = 5
        wait(0.9)
    end
end)

RA:AddToggle({
	Name = "Auto Awakener",
	Default = false,
	Callback = function(Value)
		_G.Auto_Awakener = Value
	end    
})
spawn(function()
    pcall(function()
        while wait(.1) do
            if _G.Auto_Awakener then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Check")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
            end
        end
    end)
end)





local LC = Window:MakeTab({
	Name = "Local Players",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = LC:AddSection({
	Name = "Teleport Island"
})


if World1 then
LC:AddDropdown({
	Name = "Select Island",
	Default = "",
	Options = {"WindMill",
    "Marine",
    "Middle Town",
    "Jungle",
    "Pirate Village",
    "Desert",
    "Snow Island",
    "MarineFord",
    "Colosseum",
    "Sky Island 1",
    "Sky Island 2",
    "Sky Island 3",
    "Prison",
    "Magma Village",
    "Under Water Island",
    "Fountain City",
    "Shank Room",
    "Mob Island",},
	Callback = function(Value)
		_G.SelectIsland = Value
	end    
})
end

if World2 then
LC:AddDropdown({
	Name = "Select Island",
	Default = "",
	Options = {"The Cafe",
    "Frist Spot",
    "Dark Area",
    "Flamingo Mansion",
    "Flamingo Room",
    "Green Zone",
    "Factory",
    "Colossuim",
    "Zombie Island",
    "Two Snow Mountain",
    "Punk Hazard",
    "Cursed Ship",
    "Ice Castle",
    "Forgotten Island",
    "Ussop Island",
    "Mini Sky Island"},
	Callback = function(Value)
		_G.SelectIsland = Value
	end    
})
end

if World3 then
LC:AddDropdown({
	Name = "Select Island",
	Default = "",
	Options = {"Mansion",
    "Port Town",
    "Great Tree",
    "Castle On The Sea",
    "MiniSky", 
    "Hydra Island",
    "Floating Turtle",
    "Haunted Castle",
    "Ice Cream Island",
    "Peanut Island",
    "Cake Island",
    "Cocoa Island",
    "Candy Island New⛄"},
	Callback = function(Value)
		_G.SelectIsland = Value
	end    
})
end

LC:AddToggle({
	Name = "Teleport To Island",
	Default = false,
	Callback = function(Value)
		_G.TeleportIsland = Value
        if _G.TeleportIsland == true then
            repeat wait()
                if _G.SelectIsland == "WindMill" then
                    topos(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
                elseif _G.SelectIsland == "Marine" then
                    topos(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
                elseif _G.SelectIsland == "Middle Town" then
                    topos(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
                elseif _G.SelectIsland == "Jungle" then
                    topos(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
                elseif _G.SelectIsland == "Pirate Village" then
                    topos(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
                elseif _G.SelectIsland == "Desert" then
                    topos(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
                elseif _G.SelectIsland == "Snow Island" then
                    topos(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
                elseif _G.SelectIsland == "MarineFord" then
                    topos(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
                elseif _G.SelectIsland == "Colosseum" then
                    topos( CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
                elseif _G.SelectIsland == "Sky Island 1" then
                    topos(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
                elseif _G.SelectIsland == "Sky Island 2" then  
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
                elseif _G.SelectIsland == "Sky Island 3" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                elseif _G.SelectIsland == "Prison" then
                    topos( CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
                elseif _G.SelectIsland == "Magma Village" then
                    topos(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
                elseif _G.SelectIsland == "Under Water Island" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                elseif _G.SelectIsland == "Fountain City" then
                    topos(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
                elseif _G.SelectIsland == "Shank Room" then
                    topos(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
                elseif _G.SelectIsland == "Mob Island" then
                    topos(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
                elseif _G.SelectIsland == "The Cafe" then
                    topos(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
                elseif _G.SelectIsland == "Frist Spot" then
                    topos(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
                elseif _G.SelectIsland == "Dark Area" then
                    topos(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
                elseif _G.SelectIsland == "Flamingo Mansion" then
                    topos(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
                elseif _G.SelectIsland == "Flamingo Room" then
                    topos(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
                elseif _G.SelectIsland == "Green Zone" then
                    topos( CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
                elseif _G.SelectIsland == "Factory" then
                    topos(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
                elseif _G.SelectIsland == "Colossuim" then
                    topos( CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
                elseif _G.SelectIsland == "Zombie Island" then
                    topos(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
                elseif _G.SelectIsland == "Two Snow Mountain" then
                    topos(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
                elseif _G.SelectIsland == "Punk Hazard" then
                    topos(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
                elseif _G.SelectIsland == "Cursed Ship" then
                    topos(CFrame.new(923.40197753906, 125.05712890625, 32885.875))
                elseif _G.SelectIsland == "Ice Castle" then
                    topos(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
                elseif _G.SelectIsland == "Forgotten Island" then
                    topos(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
                elseif _G.SelectIsland == "Ussop Island" then
                    topos(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
                elseif _G.SelectIsland == "Mini Sky Island" then
                    topos(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
                elseif _G.SelectIsland == "Great Tree" then
                    topos(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
                elseif _G.SelectIsland == "Castle On The Sea" then
                    topos(CFrame.new(-5074.45556640625, 314.5155334472656, -2991.054443359375))
                elseif _G.SelectIsland == "MiniSky" then
                    topos(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
                elseif _G.SelectIsland == "Port Town" then
                    topos(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
                elseif _G.SelectIsland == "Hydra Island" then
                    topos(CFrame.new(5228.8842773438, 604.23400878906, 345.0400390625))
                elseif _G.SelectIsland == "Floating Turtle" then
                    topos(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
                elseif _G.SelectIsland == "Mansion" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
                elseif _G.SelectIsland == "Haunted Castle" then
                    topos(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
                elseif _G.SelectIsland == "Ice Cream Island" then
                    topos(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625))
                elseif _G.SelectIsland == "Peanut Island" then
                    topos(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
                elseif _G.SelectIsland == "Cake Island" then
                    topos(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
                elseif _G.SelectIsland == "Cocoa Island" then
                    topos(CFrame.new(87.94276428222656, 73.55451202392578, -12319.46484375))
                elseif _G.SelectIsland == "Candy Island New⛄" then
                    topos(CFrame.new(-1014.4241943359375, 149.11068725585938, -14555.962890625))
                end
            until not _G.TeleportIsland
        end
        StopTween(_G.TeleportIsland)
	end    
})

LC:AddToggle({
	Name = "Teleport to Seabeast",
	Default = false,
	Callback = function(Value)
		for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
            if v:FindFirstChild("HumanoidRootPart") then
                topos(v.HumanoidRootPart.CFrame*CFrame.new(0,100,0))
            end
        end
	end    
})

LC:AddButton({
	Name = "Revome Frog",
	Callback = function()
        game:GetService("Lighting").LightingLayers:Destroy()
        game:GetService("Lighting").Sky:Destroy()
  	end    
})

LC:AddToggle({
	Name = "Teleport To Mirage Island",
	Default = false,
	Callback = function(Value)
		_G.AutoMysticIsland = Value
        StopTween(_G.AutoMysticIsland)
	end    
})
spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoMysticIsland then
                if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                    topos(CFrame.new(game:GetService("Workspace").Map.MysticIsland.Center.Position.X,500,game:GetService("Workspace").Map.MysticIsland.Center.Position.Z))
                end
            end
        end
    end)
end)

local Section = LC:AddSection({
	Name = "Players"
})

spawn(function()
    while wait() do
        pcall(function()
            for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                if i == 12 then
                    plyserv:Set("Players :".." "..i.." ".."/".." ".."12".." ".."(Max)")
                elseif i == 1 then
                    plyserv:Set("Player :".." "..i.." ".."/".." ".."12")
                else
                    plyserv:Set("Players :".." "..i.." ".."/".." ".."12")
                end
            end
        end)
    end
end)

Playerslist = {}

for i,v in pairs(game:GetService("Players"):GetChildren()) do
    table.insert(Playerslist,v.Name)
end

local SelectedPly = LC:AddDropdown({
	Name = "Select Players",
	Default = "",
	Options = Playerslist,
	Callback = function(Value)
		_G.SelectPly = Value
	end    
})

LC:AddButton({
	Name = "Refresh Players",
	Callback = function()
        Playerslist = {}
        SelectedPly:Clear()
        for i,v in pairs(game:GetService("Players"):GetChildren()) do  
            SelectedPly:Add(v.Name)
        end
  	end    
})

LC:AddToggle({
	Name = "Teleport To Players",
	Default = false,
	Callback = function(Value)
		_G.TeleportPly = Value
        pcall(function()
            if _G.TeleportPly then
                repeat topos(game:GetService("Players")[_G.SelectPly].Character.HumanoidRootPart.CFrame) wait() until _G.TeleportPly == false
            end
            StopTween(_G.TeleportPly)
        end)
	end    
})


LC:AddToggle({
	Name = "Auto Kill Players",
	Default = false,
	Callback = function(Value)
        _G.Auto_Kill_Ply = Value
        StopTween(_G.Auto_Kill_Ply)
	end    
})

spawn(function()
    while wait() do
        if _G.Auto_Kill_Ply then
            pcall(function()
                if _G.SelectPly ~= nil then 
                    if game.Players:FindFirstChild(_G.SelectPly) then
                        if game.Players:FindFirstChild(_G.SelectPly).Character.Humanoid.Health > 0 then
                            repeat task.wait()
                                EquipWeapon(_G.SelectWeapon)
                                AutoHaki()
                                game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.CanCollide = false
                                topos(game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.CFrame * CFrame.new(0,5,0))
                                spawn(function()
                                    pcall(function()
                                        if _G.SelectWeapon == SelectWeaponGun then
                                            local args = {
                                                [1] = game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.Position,
                                                [2] = game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart
                                            }
                                            game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
                                        else
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        end
                                    end)
                                end)
                            until game.Players:FindFirstChild(_G.SelectPly).Character.Humanoid.Health <= 0 or not game.Players:FindFirstChild(_G.SelectPly) or not _G.Auto_Kill_Ply
                        end
                    end
                end
            end)
        end
    end
end)

local Section = LC:AddSection({
	Name = "AimBot"
})

spawn(function()
    while wait() do
        pcall(function()
            local MaxDistance = math.huge
            for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                if v.Name ~= game:GetService("Players").LocalPlayer.Name then
                    local Distance = v:DistanceFromCharacter(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position)
                    if Distance < MaxDistance then
                        MaxDistance = Distance
                        PlayerSelectAimbot = v.Name
                    end
                end
            end
        end)
    end
end)

LC:AddToggle({
	Name = "AimBot",
	Default = false,
	Callback = function(Value)
		_G.Aimbot_Gun = Value
        _G.Aimbot_Skill = Value

	end    
})
spawn(function()
    while task.wait() do
        if _G.Aimbot_Gun and game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectWeaponGun) then
            pcall(function()
                game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].Cooldown.Value = 0
                local args = {
                    [1] = game:GetService("Players"):FindFirstChild(PlayerSelectAimbot).Character.HumanoidRootPart.Position,
                    [2] = game:GetService("Players"):FindFirstChild(PlayerSelectAimbot).Character.HumanoidRootPart
                }
                game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
                game:GetService'VirtualUser':CaptureController()
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
            end)
        end
    end
end)
spawn(function()
    pcall(function()
        while task.wait() do
            if _G.Aimbot_Skill and PlayerSelectAimbot ~= nil and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and game.Players.LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name]:FindFirstChild("MousePos") then
                local args = {
                    [1] = game:GetService("Players"):FindFirstChild(PlayerSelectAimbot).Character.HumanoidRootPart.Position
                }
                
                game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name).RemoteEvent:FireServer(unpack(args))
            end
        end
    end)
end)



LC:AddToggle({
	Name = "Aimbot Skill Nearest",
	Default = false,
	Callback = function(Value)
		AimSkillNearest = Value
	end    
})
spawn(function()
	while wait(.1) do
		pcall(function()
			local MaxDistance = math.huge
			for i,v in pairs(game:GetService("Players"):GetPlayers()) do
				if v.Name ~= game.Players.LocalPlayer.Name then
					local Distance = v:DistanceFromCharacter(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
					if Distance < MaxDistance then
						MaxDistance = Distance
						TargetPlayerAim = v.Name
					end
				end
			end
		end)
	end
end)
spawn(function()
	pcall(function()
		game:GetService("RunService").RenderStepped:connect(function()
			if AimSkillNearest and TargetPlayerAim ~= nil and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and game.Players.LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name]:FindFirstChild("MousePos") then
				local args = {
					[1] = game:GetService("Players"):FindFirstChild(TargetPlayerAim).Character.HumanoidRootPart.Position
				}
				game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
			end
		end)
	end)
end)

local Wld = Window:MakeTab({
	Name = "World Teleport",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Wld:AddSection({
	Name = "World Menu"
})

Wld:AddButton({
	Name = "Old World",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
  	end    
})

Wld:AddButton({
	Name = "Second World",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
  	end    
})

Wld:AddButton({
	Name = "Third World",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
  	end    
})

local SV = Window:MakeTab({
	Name = "Status Sever",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = SV:AddSection({
	Name = "FullMoon Check"
})

local FM = SV:AddLabel("Third World")

task.spawn(function()
    while task.wait() do
        pcall(function()
            if game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149431" then
                FM:Set("🌕: Full Moon 100%")
            elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149052" then
                FM:Set("🌖’ : Full Moon 75%")
            elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709143733" then
                FM:Set("🌗“ : Full Moon 50%")
            elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709150401" then
                FM:Set("🌘 : Full Moon 25%")
            elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149680" then
                FM:Set("🌘: Full Moon 15%")
            else
                FM:Set("Wait For Moon")
            end
        end)
    end
end)

local Section = SV:AddSection({
	Name = "Elite Check"
})

local Elite_Hunter_Status = SV:AddLabel("Elite")
    
    
        spawn(function()
            while wait() do
                pcall(function()
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
                        Elite_Hunter_Status:Set("Elite : ✅ Spawn")	
                    else
                        Elite_Hunter_Status:Set("Elite : ❌ not Spawn")	
                    end
                end)
            end
        end)

        local Section = SV:AddSection({
            Name = "Elite Hunter"
        })

        local EliteProgress = SV:AddLabel("")
    
        spawn(function()
            pcall(function()
                while wait() do
                    EliteProgress:Set("Elite Progress : "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress"))
                end
            end)
        end)
        

        SV:AddToggle({
            Name = "Auto Elite",
            Default = false,
            Callback = function(Value)
                _G.AutoElitehunter = Value
                StopTween(_G.AutoElitehunter)
            end    
        })
        spawn(function()
            while wait() do
                if _G.AutoElitehunter and World3 then
                    pcall(function()
                        local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                            repeat  wait()
                                Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5418.892578125, 313.74130249023, -2826.2260742188)
                            until not _G.AutoElitehunter or (Vector3.new(-5418.892578125, 313.74130249023, -2826.2260742188)-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3
                            if (Vector3.new(-5418.892578125, 313.74130249023, -2826.2260742188)-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                                wait(0.1)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                                wait(0.5)
                            end
                        elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                            if string.find(QuestTitle,"Diablo") or string.find(QuestTitle,"Deandre") or string.find(QuestTitle,"Urban") then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Diablo [Lv. 1750]" or v.Name == "Deandre [Lv. 1750]" or v.Name == "Urban [Lv. 1750]" then
                                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                repeat task.wait()
                                                    AutoHaki()
                                                    EquipWeapon(_G.SelectWeapon)
                                                    v.HumanoidRootPart.CanCollide = false
                                                    v.Humanoid.WalkSpeed = 0
                                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                                    game:GetService("VirtualUser"):CaptureController()
                                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                                    sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                                until _G.AutoElitehunter == false or v.Humanoid.Health <= 0 or not v.Parent
                                            end
                                        end
                                    end
                                else
                                    if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") then
                                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") then
                                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") then
                                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                    else
                                        if _G.AutoEliteHunterHop then
                                            Hop()
                                        else
                                            topos(CFrame.new(-5418.892578125, 313.74130249023, -2826.2260742188))
                                        end
                                    end
                                end                    
                            end
                        end
                    end)
                end
            end
        end)
    
        SV:AddToggle({
            Name = "Auto Elite[HOP]",
            Default = false,
            Callback = function(Value)
                _G.Hop = Value
            end    
        })

        local Section = SV:AddSection({
            Name = "Mirage Check"
        })

      if World3 then
        spawn(function()
            pcall(function()
                while wait() do
        if game.Workspace._WorldOrigin.Locations:FindFirstChild('Mirage Island') then
        Mirragecheck:Set('Mirrage: ✅')
        else
          Mirragecheck:Set('Mirrage: ❌ ' )end
                end
            end)
    end)
end

Mirragecheck = SV:AddLabel("")

local Section = SV:AddSection({
	Name = "Katakuri"
})

SV:AddLabel("Katakuri Menu")

local MobKilled = SV:AddLabel("Killed")

spawn(function()
    while wait() do
        pcall(function()
            if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
                MobKilled:Set("Defeat : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41))
            elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
                MobKilled:Set("Defeat : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,40))
            elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
                MobKilled:Set("Defeat : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,39))
            else
                MobKilled:Set("Boss Is Spawning")
            end
        end)
    end
end)

SV:AddToggle({
	Name = "Auto Katakuri",
	Default = false,
	Callback = function(Value)
		_G.AutoDoughtBoss = Value
        StopTween(_G.AutoDoughtBoss)
	end    
})

spawn(function()
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

local CakePos = CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375)
spawn(function()
    while wait() do
        if _G.AutoDoughtBoss then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Cake Prince [Lv. 2300] [Raid Boss]" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    topos(v.HumanoidRootPart.CFrame * CFrame.new(0,25,15))
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                    sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                until not _G.AutoDoughtBoss or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                    else
                        if KillMob == 0 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner",true)
                        end                    
                        if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 1 then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker [Lv. 2275]") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]" then
                                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            repeat task.wait()
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                v.Head.CanCollide = false 
                                                            MagnetDought = true
                                                PosMonDoughtOpenDoor = v.HumanoidRootPart.CFrame
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0,25,15))
                                                game:GetService("VirtualUser"):CaptureController()
                                                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                            until not _G.AutoDoughtBoss or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or KillMob == 0
                                        end
                                    end
                                end
                            else
                                topos(CFrame.new(-2091.911865234375, 70.00884246826172, -12142.8359375))
                                MagnetDought = false
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter [Lv. 2200]") then
                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter [Lv. 2200]").HumanoidRootPart.CFrame * CFrame.new(0,30,0)) 
                                else
                                    if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard [Lv. 2225]") then
                                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard [Lv. 2225]").HumanoidRootPart.CFrame * CFrame.new(0,30,0)) 
                                    else
                                        if game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff [Lv. 2250]") then
                                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff [Lv. 2250]").HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                        else
                                            if game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker [Lv. 2275]") then
                                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker [Lv. 2275]").HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                            end
                                        end
                                    end
                                end                       
                            end
                        else
                            if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                                topos(game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                            else
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)

SV:AddToggle({
	Name = "Auto Spawn Katakuri",
	Default = true,
	Callback = function(Value)
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner",Value)
	end    
})

SV:AddToggle({
	Name = "Auto Katakuri v2",
	Default = false,
	Callback = function(Value)
		_G.Autodoughking = Value
        StopTween(_G.Autodoughking)
	end    
})

SV:AddToggle({
	Name = "Auto Katakuri v2[HOP]",
	Default = false,
	Callback = function(Value)
		_G.AutodoughkingHop = Value
	end    
})

spawn(function()
    while wait() do
        if  _G.Autodoughking and World3 then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Dough King [Lv. 2300] [Raid Boss]" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                    sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                until not  _G.Autodoughking or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                topos(CFrame.new(-2662.818603515625, 1062.3480224609375, -11853.6953125))
                    if game:GetService("ReplicatedStorage"):FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") then
                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Dough King [Lv. 2300] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                    else
                        if  _G.AutodoughkingHop then
                            Hop()
                        end
                    end
                end
            end)
        end
    end
end)

local Section = SV:AddSection({
	Name = "Misc Sever"
})

        SV:AddTextbox({
            Name = "Job Id Placed",
            Default = "",
            TextDisappear = true,
            Callback = function(Value)
                _G.Job = Value 
            end	  
        })

        SV:AddButton({
            Name = "Join Id",
            Callback = function()
                game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId,_G.Job, game.Players.LocalPlayer)
              end    
        })

        SV:AddButton({
            Name = "Copy Job Id",
            Callback = function()
                setclipboard(tostring(game.JobId))
              end    
            })

        SV:AddButton({
            Name = "Hop Sever",
            Callback = function()
                Hop()
              end    
        })

        SV:AddButton({
            Name = "Rejoin Sever",
            Callback = function()
                game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
              end    
        })

        SV:AddButton({
            Name = "Hop Sever Low Players",
            Callback = function()
                getgenv().AutoTeleport = true
                getgenv().DontTeleportTheSameNumber = true 
                getgenv().CopytoClipboard = false
                if not game:IsLoaded() then
                    print("Game is loading waiting...")
                end
                local maxplayers = math.huge
                local serversmaxplayer;
                local goodserver;
                local gamelink = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100" 
                function serversearch()
                    for _, v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(gamelink)).data) do
                        if type(v) == "table" and v.playing ~= nil and maxplayers > v.playing then
                            serversmaxplayer = v.maxPlayers
                            maxplayers = v.playing
                            goodserver = v.id
                        end
                    end       
                end
                function getservers()
                    serversearch()
                    for i,v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(gamelink))) do
                        if i == "nextPageCursor" then
                            if gamelink:find("&cursor=") then
                                local a = gamelink:find("&cursor=")
                                local b = gamelink:sub(a)
                                gamelink = gamelink:gsub(b, "")
                            end
                            gamelink = gamelink .. "&cursor=" ..v
                            getservers()
                        end
                    end
                end 
                getservers()
                if AutoTeleport then
                    if DontTeleportTheSameNumber then 
                        if #game:GetService("Players"):GetPlayers() - 4  == maxplayers then
                            return warn("It has same number of players (except you)")
                        elseif goodserver == game.JobId then
                            return warn("Your current server is the most empty server atm") 
                        end
                    end
                    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, goodserver)
                end
              end    
        })


local D = Window:MakeTab({
	Name = "Devil Fruit",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

D:AddToggle({
	Name = "Auto Random Fruits",
	Default = false,
	Callback = function(Value)
		_G.Random_Auto = Value
	end    
})

spawn(function()
    pcall(function()
        while wait(.1) do
            if _G.Random_Auto then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
            end 
        end
    end)
end)

D:AddToggle({
	Name = "Auto Store Fruits",
	Default = false,
	Callback = function(Value)
		_G.AutoStoreFruit = Value
	end    
})
function DropFruit()
	pcall(function()
		game.Players.LocalPlayer.PlayerGui.Main.FruitInventory.Position = UDim2.new(10.100, 0, 0.100, 0) -- HideUi
		game.Players.LocalPlayer.PlayerGui.Main.FruitInventory.Visible = true -- เปิดไว้ถึงจะเช็คได้
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
	end)
end

spawn(function()
	while wait() do
		if _G.AutoStoreFruit then
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

D:AddToggle({
	Name = "Teleport To Fruit Spawn",
	Default = false,
	Callback = function(Value)
        _G.Tweenfruit = Value
        StopTween(_G.Tweenfruit)
	end    
})
spawn(function()
    while wait(.1) do
        if _G.Tweenfruit then
            for i,v in pairs(game.Workspace:GetChildren()) do
                if string.find(v.Name, "Fruit") then
                    topos(v.Handle.CFrame)
                end
            end
        end
end
end)

D:AddToggle({
	Name = "Auto Drop Fruit",
	Default = false,
	Callback = function(Value)
		_G.DropFruit = Value
	end    
})
spawn(function()
    while wait() do
        if _G.DropFruit then
            pcall(function()
                for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                    if string.find(v.Name, "Fruit") then
                        EquipWeapon(v.Name)
                        wait(.1)
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Dialogue.Visible == true then
                            game:GetService("Players").LocalPlayer.PlayerGui.Main.Dialogue.Visible = false
                        end
                        EquipWeapon(v.Name)
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectFruit).EatRemote:InvokeServer("Drop")
                    end
                end
            for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
                    if string.find(v.Name, "Fruit") then
                        EquipWeapon(v.Name)
                        wait(.1)
                        if game:GetService("Players").LocalPlayer.PlayerGui.Main.Dialogue.Visible == true then
                            game:GetService("Players").LocalPlayer.PlayerGui.Main.Dialogue.Visible = false
                        end
                        EquipWeapon(v.Name)
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectFruit).EatRemote:InvokeServer("Drop")
                    end
                end
            end)
        end
    end
end)

D:AddToggle({
	Name = "Bring All Fruit[75% Kick]",
	Default = false,
	Callback = function(Value)
		_G.BringFruitBF = Value
	end    
})
spawn(function()
    while wait() do
        if _G.BringFruitBF then
            pcall(function()
                for i,v in pairs(game.Workspace:GetChildren()) do
                    if v:IsA("Tool") then
                        v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    end
                end	
            end)
        end
    end
end)


local R = Window:MakeTab({
	Name = "Race v4",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})





R:AddToggle({
	Name = "Move Cam to Moon",
	Default = false,
	Callback = function(Value)
		_G.AutoDooHee = Value
	end    
})
spawn(function()
    while wait() do
		pcall(function()
			if _G.AutoDooHee then
			    wait(0.5)
				local moonDir = game.Lighting:GetMoonDirection()
                local lookAtPos = game.Workspace.CurrentCamera.CFrame.p + moonDir * 100
                game.Workspace.CurrentCamera.CFrame = CFrame.lookAt(game.Workspace.CurrentCamera.CFrame.p, lookAtPos)
			end
		end)
    end
end)

R:AddButton({
	Name = "Teleport to Gear",
	Callback = function()
        _G.TweenMGear = Value
        StopTween(_G.TweenMGear)	
  	end    
})
spawn(function()
    pcall(function()
        while wait() do
            if _G.TweenMGear then
				if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
					for i,v in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do 
						if v:IsA("MeshPart")then 
                            if v.Material ==  Enum.Material.Neon then  
                                topos(v.CFrame)
                            end
                        end
					end
				end
			end
        end
    end)
    end)

R:AddToggle({
	Name = "Auto Buy Gear",
	Default = false,
	Callback = function(Value)
        _G.Auto_Farm_Bone4 = Value
        StopTween(_G.Auto_Farm_Bone4)
	end    
})
spawn(function()
    pcall(function()
        while wait(0.1) do
            if _G.Auto_Farm_Bone4 then
    local args = {
    [1] = true
}

local args = {
    [1] = "UpgradeRace",
    [2] = "Buy"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
            end
end 
end)  
end)

R:AddToggle({
	Name = "Auto Train Race",
	Default = false,
	Callback = function(Value)
    _G.AutoRace = Value
    StardFarm = Value
    StopTween(_G.AutoRace)
	end    
})
spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoRace then
                if game.Players.LocalPlayer.Character.RaceTransformed.Value == true then
                    StardFarm = false
                    topos(CFrame.new(216.211181640625, 126.9352035522461, -12599.0732421875))
                end
            end
        end
    end)
end)
spawn(function()
    while wait() do 
        if StardFarm and World3 then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Cocoa Warrior [Lv. 2300]") or game:GetService("Workspace").Enemies:FindFirstChild("Chocolate Bar Battler [Lv. 2325]") or game:GetService("Workspace").Enemies:FindFirstChild("Sweet Thief [Lv. 2350]") or game:GetService("Workspace").Enemies:FindFirstChild("Candy Rebel [Lv. 2375]") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Cocoa Warrior [Lv. 2300]" or v.Name == "Chocolate Bar Battler [Lv. 2325]" or v.Name == "Sweet Thief [Lv. 2350]" or v.Name == "Candy Rebel [Lv. 2375]" then
                           if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                               repeat task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.Head.CanCollide = false 
                                    FarmMag = true
                                    PosGG = v.HumanoidRootPart.CFrame
                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                until not StardFarm or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                else
                    FarmMag = false
                    topos(CFrame.new(216.211181640625, 126.9352035522461, -12599.0732421875))
                    for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                        if v.Name == "Cocoa Warrior [Lv. 2300]" then
                            topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        elseif v.Name == "Chocolate Bar Battler [Lv. 2325]" then
                            topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        elseif v.Name == "Sweet Thief [Lv. 2350]" then
                            topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        elseif v.Name == "Candy Rebel [Lv. 2375]" then
                            topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        end
                    end
                end
            end)
        end
    end
end)
spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoRace then
                if game.Players.LocalPlayer.Character.RaceTransformed.Value == false then
                    StardFarm = true
                end
            end
        end
    end)
end)
spawn(function()
while wait() do
    pcall(function()
        if _G.AutoRace then
            game:GetService("VirtualInputManager"):SendKeyEvent(true,"Y",false,game)
            wait(0.1)
            game:GetService("VirtualInputManager"):SendKeyEvent(false,"Y",false,game)
        end
    end)
end
end)

R:AddToggle({
	Name = "Auto Turn On Race v4",
	Default = false,
	Callback = function(Value)
		_G.V4 = Value
    StopTween(_G.V4)
	end    
})
spawn(function()
    while wait() do
		pcall(function()
			if _G.V4 then
				game:GetService("VirtualInputManager"):SendKeyEvent(true,"Y",false,game)
				wait(0.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,"Y",false,game)
			end
		end)
    end
end)

R:AddButton({
	Name = "Teleport to Temple of Time",
	Callback = function()
        Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
  	end    
})

R:AddButton({
	Name = "Teleport to Lever Pull",
	Callback = function()
        Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
        Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
        wait(.1)
        topos(CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302734))
  	end    
})

R:AddToggle({
	Name = "Teleport to trials doors[Bật rồi tắt]",
	Default = false,
	Callback = function(Value)
		_G.TrialsDoors = Value
	end
})
 spawn(function()
            pcall(function()
                while wait() do
        if _G.TrialsDoors then
        if game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
            Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
            Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
            wait(.1)
            topos(CFrame.new(29020.66015625, 14889.4267578125, -379.2682800292969))
        elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
            Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
            Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
            wait(.1)
            topos(CFrame.new(28492.4140625, 14894.4267578125, -422.1100158691406))
        elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
            Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
            Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
            wait(.1)
            topos(CFrame.new(28224.056640625, 14889.4267578125, -210.5872039794922))
        elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then
            Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
            Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
            wait(.1)
            topos(CFrame.new(28967.408203125, 14918.0751953125, 234.31198120117188))
        elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then
        Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
        Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
        wait(.1)
        topos(CFrame.new(29237.294921875, 14889.4267578125, -206.94955444335938))
        elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then
            Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
            Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875)
            wait(.1)
            topos(CFrame.new(28672.720703125, 14889.1279296875, 454.5961608886719))
        end
    end
end
end)
end)

local Section = R:AddSection({
	Name = "Trials"
})

R:AddToggle({
	Name = "Auto Complete Trials",
	Default = false,
	Callback = function(Value)
		_G.AutoQuestRace = Value
        StopTween(_G.AutoQuestRace)
	end    
})
spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoQuestRace then
				if game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then
					for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
						if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
							pcall(function()
								repeat wait(.1)
									v.Humanoid.Health = 0
									v.HumanoidRootPart.CanCollide = false
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
								until not _G.AutoQuestRace or not v.Parent or v.Humanoid.Health <= 0
							end)
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then
					for i,v in pairs(game:GetService("Workspace").Map.SkyTrial.Model:GetDescendants()) do
						if v.Name ==  "snowisland_Cylinder.081" then
							topos(v.CFrame* CFrame.new(0,0,0))
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
					for i,v in pairs(game:GetService("Workspace").SeaBeasts.SeaBeast1:GetDescendants()) do
						if v.Name ==  "HumanoidRootPart" then
							topos(v.CFrame* Pos)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Melee" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Blox Fruit" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
					
							wait(0.5)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Sword" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(0.5)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Gun" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
					topos(CFrame.new(28654, 14898.7832, -30, 1, 0, 0, 0, 1, 0, 0, 0, 1))
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then
					for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
						if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
							pcall(function()
								repeat wait(.1)
									v.Humanoid.Health = 0
									v.HumanoidRootPart.CanCollide = false
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
								until not _G.AutoQuestRace or not v.Parent or v.Humanoid.Health <= 0
							end)
						end
					end
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
					for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
						if v.Name == "StartPoint" then
							topos(v.CFrame* CFrame.new(0,3,0))
					  	end
				   	end
				end
			end
        end
    end)
end)

R:AddToggle({
	Name = "Auto Kill Players When Complete Trial[BETA]",
	Default = false,
	Callback = function(Value)
		_G.AutoKillTrial = Value
        StopTween(_G.AutoKillTrial)
	end    
})

spawn(function()
	while wait() do
		if _G.AutoKillTrial then
			for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
			    if v.Name and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
			        if v.Humanoid.Health > 0 then
			            repeat wait()
                        AutoHaki()
			              EquipWeapon(_G.SelectWeapon)
			                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
			                	local args = {
				                	[1] = "Buso"
			                	}
			                	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			               	end
			                topos(v.HumanoidRootPart.CFrame * CFrame.new(0,0,5))
			                UseskillKill = true
			                v.HumanoidRootPart.CanCollide = false
			                v.HumanoidRootPart.Size = Vector3.new(0, 0, 5)
						    game:GetService("VirtualUser"):CaptureController()
				       	    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672), game.Workspace.CurrentCamera.CFrame)
			            until not _G.AutoKillTial or not v.Parent or v.Humanoid.Health <= 0 
			            UseskillKill = false
			        end
			    end
			end
		end
	end
    end)

    spawn(function()
    while wait() do
		pcall(function()
			if UseskillKill then
				game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
				wait(0.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                wait(0.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
				wait(0.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                wait(0.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
				wait(0.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                wait(0.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
				wait(0.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
			end
		end)
    end
    end)

    R:AddButton({
        Name = "Teleport to Clock",
        Callback = function()
            game:GetService("Workspace").Map["Temple of Time"].DoNotEnter:Remove()
            game:GetService("Workspace").Map["Temple of Time"].ClockRoomExit:Remove()
          end    
    })

local SH = Window:MakeTab({
	Name = "Shop",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = SH:AddSection({
	Name = "Melee"
})

SH:AddButton({
	Name = "Black Leg",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
  	end    
})

SH:AddButton({
	Name = "Electrol",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
  	end    
})

SH:AddButton({
	Name = "FishMan Karate",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
  	end    
})

SH:AddButton({
	Name = "Dragon Claw",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
  	end    
})

SH:AddButton({
	Name = "SuperHuman",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
  	end    
})


SH:AddButton({
	Name = "Death Step",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
  	end    
})

SH:AddButton({
	Name = "Electric Claw",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
  	end    
})

SH:AddButton({
	Name = "SharkMan Karate",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
  	end    
})

SH:AddButton({
	Name = "Dragon Talon",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
  	end    
})

SH:AddButton({
	Name = "Godhuman",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
  	end    
})

local Section = SH:AddSection({
	Name = "Other"
})

SH:AddButton({
	Name = "Cutlass Katana",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cutlass")
  	end    
})

SH:AddButton({
	Name = "Katana",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Katana")
  	end    
})

SH:AddButton({
	Name = "Iron Mace",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Iron Mace")
  	end    
})

SH:AddButton({
	Name = "Dual Katana",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Duel Katana")
  	end    
})

SH:AddButton({
	Name = "Triple Katana",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Triple Katana")
  	end    
})

SH:AddButton({
	Name = "Pipe",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Pipe")
  	end    
})

SH:AddButton({
	Name = "Dual-Headed Blade ",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Dual-Headed Blade")
  	end    
})

SH:AddButton({
	Name = "Bisento",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Bisento")
  	end    
})

SH:AddButton({
	Name = "Soul Cane",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Soul Cane")
  	end    
})

SH:AddButton({
	Name = "Pole v.2 [ 5,000 Fragments ]",
	Callback = function()
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("ThunderGodTalk")
  	end    
})

local Section = SH:AddSection({
	Name = "Gun"
})

SH:AddButton({
	Name = "Slingshot",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Slingshot")
  	end    
})

SH:AddButton({
	Name = "Musket",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Musket")
  	end    
})

SH:AddButton({
	Name = "Flintlock",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Flintlock")
  	end    
})

SH:AddButton({
	Name = "Refined Slingshot",
	Callback = function()
      	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Refined Flintlock")
  	end    
})

SH:AddButton({
	Name = "Refined Flintlock",
	Callback = function()
        local args = {
			[1] = "BuyItem",
			[2] = "Refined Flintlock"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
  	end    
})

SH:AddButton({
	Name = "Cannon",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cannon")
  	end    
})

SH:AddButton({
	Name = "Kabucha [ 1,500 Fragments]",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","2")
  	end    
})

SH:AddButton({
	Name = "Bizarre Rifle [ 250 Ectoplasm ]",
	Callback = function()
        local A_1 = "Ectoplasm"
        local A_2 = "Buy"
        local A_3 = 1
        local Event = game:GetService("ReplicatedStorage").Remotes["CommF_"]
        Event:InvokeServer(A_1, A_2, A_3) 
        local A_1 = "Ectoplasm"
        local A_2 = "Buy"
        local A_3 = 1
        local Event = game:GetService("ReplicatedStorage").Remotes["CommF_"]
        Event:InvokeServer(A_1, A_2, A_3)
  	end    
})

SH:AddButton({
	Name = "Refund Stats[2,500 fragment]",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
  	end    
})

SH:AddButton({
	Name = "Race Random[3,000 fragment]",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Reroll","2")
  	end    
})



local C = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = C:AddSection({
	Name = "Open Tab"
})

C:AddButton({
	Name = "Open Devil Fruit Shop",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
        game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true	
  	end    
})

C:AddButton({
	Name = "Open Inventory[Old]",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits")
        game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.Visible = true
  	end    
})

C:AddButton({
	Name = "Title Tab",
	Callback = function()
        local args = {
            [1] = "getTitles"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true
  	end    
})

C:AddButton({
	Name = "Color Haki",
	Callback = function()
        game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true
  	end    
})




C:AddToggle({
	Name = "Hunter Players",
	Default = false,
	Callback = function(Value)
		_G.AutoPlayerHunter = Value
        StopTween(_G.AutoPlayerHunter)
	end    
})
spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoPlayerHunter then
                if game.Players.LocalPlayer.Data.Level.Value >= 50 then
                    _G.AutoFarm = false
                    _G.Framfast = false
                    _G.AutoPlayerHunter = true
                    _G.AutoClick = true
                end
            end
        end
    end)
end)

spawn(function()
    while wait() do
        if _G.AutoRejoin then
                getgenv().Next = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
                    if child.Name == 'Players Died recently, ' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
                        _G.AutoPlayerHunter = false
                        wait(.1)
                        _G.AutoPlayerHunter = true
                    end
                 end)
            end
        end
    end)

spawn(function()
    game:GetService("RunService").Heartbeat:connect(function()
        pcall(function()
            if game.Players.LocalPlayer.Data.Level.Value >= 50 then
            if _G.AutoPlayerHunter then
                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
                    game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
                end
            end
            end
        end)
    end)
end)

   spawn(function()
    pcall(function()
        while wait(.1) do
            if game.Players.LocalPlayer.Data.Level.Value >= 50 then
            if _G.AutoPlayerHunter then
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
                end
            end
            end
        end
    end)
end)

spawn(function()
    while wait() do
        if game.Players.LocalPlayer.Data.Level.Value >= 50 then
        if _G.AutoPlayerHunter then
            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                wait(.5)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
            else
                for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,v.Name) then
                        repeat wait()
                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                local args = {
                                    [1] = "Buso"
                                }
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            end
                            EquipWeapon(_G.SelectWeapon)
                            Useskill = true
                            topos(v.HumanoidRootPart.CFrame * CFrame.new(0,0,3))								
                            game:GetService'VirtualUser':CaptureController()
                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                        until _G.AutoPlayerHunter == false or v.Humanoid.Health <= 0
                        Useskill = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    end
                end
            end
        end
        end
    end
end)

spawn(function()
    while wait() do
		pcall(function()
            if _G.AutoPlayerHunter then
            if game.Players.LocalPlayer.Data.Level.Value >= 50 then
            if Distance < 10 then
			if Useskill then
				game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
				wait(0.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                wait(0.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
				wait(0.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                wait(0.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
				wait(0.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                wait(0.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
				wait(0.1)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
			end
            end
            end
            end
		end)
        end
    end)

    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoPlayerHunter then
                    if v.Humanoid.Health <= 0 then
                        _G.AutoPlayerHunter = true
                        wait(.1)
                        _G.AutoPlayerHunter = false
                    end
                end
            end
        end)
    end)

    spawn(function()
		pcall(function()
			while wait() do
				if _G.AutoPlayerHunter then
					if game.Players.LocalPlayer.Data.Level.Value >= 60 then
						_G.AutoFarm = true
                        _G.Farmfast = false
						_G.AutoPlayerHunter = false
                        _G.AutoClick = false
					end
				end
			end
		end)
	end)


C:AddToggle({
	Name = "Auto Rejoin",
	Default = true,
	Callback = function(Value)
		_G.AutoRejoin = Value
	end    
})
spawn(function()
    while wait() do
        if _G.AutoRejoin then
                getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
                    if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
                        game:GetService("TeleportService"):Teleport(game.PlaceId)
                    end
                end)
            end
        end
    end)

    C:AddToggle({
        Name = "Walk On Water",
        Default = true,
        Callback = function(Value)
            _G.WalkWater = Value
        end    
    })
    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.WalkWater then
                    game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,112,1000)
                else
                    game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,80,1000)
                end
            end)
        end
    end)
	asdasdasd=true
	Utilities = {Priority=((game:HttpGet("https://raw.githubusercontent.com/Poopland/BloxFruit-Utility/main/Priority.lua")or game:HttpGet("https://raw.githubusercontent.com/Poopland/BloxFruit-Utility/main/Network.lua")))};
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
	Settings.NoStun=true
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
	tjw1 = true
	task.spawn(
		function()
			local a = game.Players.LocalPlayer
			local b = require(a.PlayerScripts.CombatFramework.Particle)
			local c = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
			if not shared.orl then
				shared.orl = c.wrapAttackAnimationAsync
			end
			if not shared.cpc then
				shared.cpc = b.play
			end
			if tjw1 then
				pcall(
					function()
						c.wrapAttackAnimationAsync = function(d, e, f, g, h)
							local i = c.getBladeHits(e, f, g)
							if i then
								b.play = function()
								end
								d:Play(0.01,0.01,0.01)
								h(i)
								b.play = shared.cpc
								wait(0.1)
								d:Stop()
							end
						end
					end
				)
			end
		end
	)
	

	local Client = game.Players.LocalPlayer
	local STOP = require(Client.PlayerScripts.CombatFramework.Particle)
	local STOPRL = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
	task.spawn(function()
		pcall(function()
			if not shared.orl then
				shared.orl = STOPRL.wrapAttackAnimationAsync
			end
				if not shared.cpc then
					shared.cpc = STOP.play 
				end
				spawn(function()
					require(game.ReplicatedStorage.Util.CameraShaker):Stop()
					game:GetService("RunService").Stepped:Connect(function()
						STOPRL.wrapAttackAnimationAsync = function(a,b,c,d,func)
							local Hits = STOPRL.getBladeHits(b,c,d)
							if Hits then
								if asdasdasd then
									STOP.play = function() end
									a:Play(21,29,30)
									func(Hits)
									STOP.play = shared.cpc
									a:Stop()
								else
									func(Hits)
									STOP.play = shared.cpc
									a:Stop()
								end
							end
						end
					end)
				end)
			end)
		end)
local Module = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
local CombatFramework = debug.getupvalues(Module)[2]
local CameraShakerR = require(game.ReplicatedStorage.Util.CameraShaker)
require(game.ReplicatedStorage.Util.CameraShaker):Stop()			
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
			if (not asdasdasd and not NeedAttacking) then
				PC.play = shared.cpc;
				return shared.orl(a, b, c, 65, func);
			end
			local Radius = (asdasdasd and FastRadius) or 65;
			if (canHits and (#canHits > 0)) then
				PC.play = function()
				end;
				a:Play(0.01,0,0.1);
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
					if (NeedAttacking or asdasdasd) then
						if (asdasdasd and (tick() > AttackCD) and not DisableFastAttack) then
							resetCD();
						end
						if (((tick() - lastFireValid) > 0.5) or not asdasdasd) then
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
						Playing:Play(0.01,0.0,0.1);
						RigEvent.FireServer(RigEvent, "hit", canHits, (AID3 and 3) or 2, "");
						delay(0, function()
							Playing:Stop();
						end);
					end
				end
			end
		end
	end);
