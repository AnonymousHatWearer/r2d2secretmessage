local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local rootPart = character:FindFirstChild("HumanoidRootPart") 

-- Creating gui
local speedgui = Instance.new("ScreenGui")
local framegui = Instance.new("Frame")
local textboxgui = Instance.new("TextLabel")
local textbuttongui = Instance.new("TextButton")
local uicorner1 = Instance.new("UICorner")
local uicorner2 = Instance.new("UICorner")
--uicorner1.CornerRadius.Scale = UDim.new(0.1, 0)
--uicorner2.CornerRadius.Scale = UDim.new(0.1, 0)
uicorner1.Parent = textboxgui
uicorner2.Parent = textbuttongui

framegui.Parent = speedgui
textboxgui.Parent = framegui
textbuttongui.Parent = framegui
speedgui.Parent = player.PlayerGui

framegui.Position = UDim2.new(0, 0, 0, 0)
framegui.Size = UDim2.new(0.4,0,0.07,0)

textboxgui.Position = UDim2.new(0.036, 0 , 0, 0 )

textboxgui.Size = UDim2.new(0.4,0,1,0)

textbuttongui.Position = UDim2.new(0.584, 0, 0.2 ,0 )
textbuttongui.Size = UDim2.new(0.35,0,0.6,0)

textboxgui.TextScaled = true
textbuttongui.TextScaled = true

textboxgui.TextColor = BrickColor.new("Black")
textboxgui.Text = "N/A"
textbuttongui.Text = "Enter"


textbuttongui.MouseButton1Click:Connect(function()
	if rootPart then
		textboxgui.Text = tostring(rootPart.CFrame)
	end
end)
