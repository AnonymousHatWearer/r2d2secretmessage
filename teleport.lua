local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local humanoidrootpart = character:WaitForChild("HumanoidRootPart")

local tumbleweed = CFrame.new(-435.692017, 12.3778114, -190.45224, 0.0485994071, 9.53432817e-08, -0.998818338, 4.42332961e-08, 1, 9.76083285e-08, 0.998818338, -4.89247327e-08, 0.0485994071)
local grayridge = CFrame.new(1551.41418, 118.212372, 1487.4519, 0.457876444, 6.34493276e-08, 0.889015853, 1.16109105e-08, 1, -7.73503572e-08, -0.889015853, 4.57391884e-08, 0.457876444)
local cassidy = CFrame.new(-1279.81885, 160.349991, -610.316223, 0.950398445, -5.3598832e-08, -0.311035007, 2.00773886e-08, 1, -1.10975648e-07, 0.311035007, 9.92263125e-08, 0.950398445)
local stone = CFrame.new(954.713379, 21.8772602, 72.3222885, 0.843671322, -0.000451587228, 0.53685987, 0.000341320323, 0.999999881, 0.000004781599, -0.53685993, -7.38943054e-05, 0.843671381)
local arthur = ""
local redrocks = ""

-- buttons
local twBtn = Instance.new("TextButton")
local grBtn = Instance.new("TextButton")
local csBtn = Instance.new("TextButton")
local stBtn = Instance.new("TextButton")
local atBtn = Instance.new("TextButton")
local rrBtn = Instance.new("TextButton")

twBtn.Text = "Tumbleweed"
grBtn.Text = "Grayridge"
csBtn.Text = "Cassidy"
stBtn.Text = "Stone"
atBtn.Text = "Arthur"
rrBtn.Text = "Red Rocks"

local directory = player.PlayerGui
local screengui = Instance.new("ScreenGui")
screengui.Parent = player.PlayerGui
screengui.Name = "ScreenGui"
local tpframe = Instance.new("Frame")
tpframe.Parent = screengui
twBtn.Parent = tpframe
grBtn.Parent = tpframe
csBtn.Parent = tpframe
stBtn.Parent = tpframe
atBtn.Parent = tpframe
rrBtn.Parent = tpframe

tpframe.Position = UDim2.new(0.25, 0, -0.08 ,0 )
tpframe.Size = UDim2.new(0.5,0,0.1,0)
tpframe.BackgroundColor = BrickColor.new("Black")
tpframe.Transparency = 0.2


twBtn.Position = UDim2.new(0, 0,0 ,0 )
twBtn.Size = UDim2.new(0.16,0,1,0)
twBtn.BackgroundColor = BrickColor.new("Black")
twBtn.BackgroundTransparency = 1
twBtn.TextScaled = true
twBtn.TextColor = BrickColor.new("White")

grBtn.Position = UDim2.new(0.165, 0,0 ,0 )
grBtn.Size = UDim2.new(0.16,0,1,0)
grBtn.BackgroundColor = BrickColor.new("Black")
grBtn.BackgroundTransparency = 1
grBtn.TextScaled = true
grBtn.TextColor = BrickColor.new("White")

csBtn.Position = UDim2.new(0.33, 0,0 ,0 )
csBtn.Size = UDim2.new(0.16,0,1,0)
csBtn.BackgroundColor = BrickColor.new("Black")
csBtn.BackgroundTransparency = 1
csBtn.TextScaled = true
csBtn.TextColor = BrickColor.new("White")

stBtn.Position = UDim2.new(0.50, 0,0 ,0 )
stBtn.Size = UDim2.new(0.16,0,1,0)
stBtn.BackgroundColor = BrickColor.new("Black")
stBtn.BackgroundTransparency = 1
stBtn.TextScaled = true
stBtn.TextColor = BrickColor.new("White")

atBtn.Position = UDim2.new(0.68, 0,0 ,0 )
atBtn.Size = UDim2.new(0.16,0,1,0)
atBtn.BackgroundColor = BrickColor.new("Black")
atBtn.BackgroundTransparency = 1
atBtn.TextScaled = true
atBtn.TextColor = BrickColor.new("White")

rrBtn.Position = UDim2.new(0.84, 0,0 ,0 )
rrBtn.Size = UDim2.new(0.16,0,1,0)
rrBtn.BackgroundColor = BrickColor.new("Black")
rrBtn.BackgroundTransparency = 1
rrBtn.TextScaled = true
rrBtn.TextColor = BrickColor.new("White")
-- Event Listeners

twBtn.MouseButton1Click:Connect(function()
	local count = 0.01
	local dividedCFrame = humanoidrootpart.CFrame:Lerp(tumbleweed, count) 

	
	while count < 0.6 do
		humanoidrootpart.CFrame = dividedCFrame
		dividedCFrame = humanoidrootpart.CFrame:Lerp(tumbleweed, count)
		count = count + 0.01
		print(count)
		wait(0.01)
	end
end)

grBtn.MouseButton1Click:Connect(function()
	local count = 0.01
	local dividedCFrame = humanoidrootpart.CFrame:Lerp(grayridge, count) 
	while count < 0.6 do
		humanoidrootpart.CFrame = dividedCFrame
		dividedCFrame = humanoidrootpart.CFrame:Lerp(grayridge, count)
		count = count + 0.01
		print(count)
		wait(0.01)
	end
end)

csBtn.MouseButton1Click:Connect(function()
	local count = 0.01
	local dividedCFrame = humanoidrootpart.CFrame:Lerp(cassidy, count) 
	while count < 0.6 do
		humanoidrootpart.CFrame = dividedCFrame
		dividedCFrame = humanoidrootpart.CFrame:Lerp(cassidy, count)
		count = count + 0.01
		print(count)
		wait(0.01)
	end
end)

stBtn.MouseButton1Click:Connect(function()
	local count = 0.01
	local dividedCFrame = humanoidrootpart.CFrame:Lerp(stone, count) 
	while count < 0.6 do
		humanoidrootpart.CFrame = dividedCFrame
		dividedCFrame = humanoidrootpart.CFrame:Lerp(stone, count)
		count = count + 0.01
		print(count)
		wait(0.01)
	end
end)

atBtn.MouseButton1Click:Connect(function()
	humanoidrootpart.CFrame = arthur
end)

rrBtn.MouseButton1Click:Connect(function()
	humanoidrootpart.CFrame = redrocks
end)

