local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

-- Creating gui
local speedgui = Instance.new("ScreenGui")
local framegui = Instance.new("Frame")
local textboxgui = Instance.new("TextBox")
local textbuttongui = Instance.new("TextButton")
local uicorner1 = Instance.new("UICorner")
local uicorner2 = Instance.new("UICorner")

uicorner1.Parent = textboxgui
uicorner2.Parent = textbuttongui

framegui.Parent = speedgui
textboxgui.Parent = framegui
textbuttongui.Parent = framegui
speedgui.Parent = player.PlayerGui

framegui.Position = UDim2.new(0.888, 0, 0, 0)
framegui.Size = UDim2.new(0.1,0,0.07,0)

textboxgui.Position = UDim2.new(0.036, 0 , 0, 0 )

textboxgui.Size = UDim2.new(0.4,0,1,0)

textbuttongui.Position = UDim2.new(0.584, 0, 0.2 ,0 )
textbuttongui.Size = UDim2.new(0.35,0,0.6,0)

textboxgui.TextScaled = true
textbuttongui.TextScaled = true
textboxgui.PlaceholderText = "Enter amount"
textboxgui.PlaceholderColor3 = Color3.new(0,0,0)
textboxgui.TextColor = BrickColor.new("Black")
textboxgui.Text = "Enter amount"
textbuttongui.Text = "Enter"


textbuttongui.MouseButton1Click:Connect(function()
	local speed = tonumber(textboxgui.Text)
	humanoid.WalkSpeed = speed
end)
