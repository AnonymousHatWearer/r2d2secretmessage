local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")
local humanoid = character:WaitForChild("Humanoid")
local userInput = game:GetService("UserInputService")
local runService = game:GetService("RunService")
local defgrav = game.Workspace.Gravity
local flying = false
local speed = 75
local flightDirection = Vector3.new(0, 0, 0)

-- Handle movement keys
local function updateMovement()
	local moveVector = Vector3.new(0, 0, 0)
	if userInput:IsKeyDown(Enum.KeyCode.W) then moveVector = moveVector + Vector3.new(0, 0, 1) end
	if userInput:IsKeyDown(Enum.KeyCode.S) then moveVector = moveVector + Vector3.new(0, 0, -1) end
	if userInput:IsKeyDown(Enum.KeyCode.A) then moveVector = moveVector + Vector3.new(-1, 0, 0) end
	if userInput:IsKeyDown(Enum.KeyCode.D) then moveVector = moveVector + Vector3.new(1, 0, 0) end
	if userInput:IsKeyDown(Enum.KeyCode.Space) then moveVector = moveVector + Vector3.new(0, 1, 0) end
	if userInput:IsKeyDown(Enum.KeyCode.LeftShift) then moveVector = moveVector + Vector3.new(0, -1, 0) end

	return moveVector.Unit * speed
end

-- Flight loop
local function flightStep()
	if not flying then return end
	local camLook = workspace.CurrentCamera.CFrame.LookVector
	local moveVector = updateMovement()

	-- Adjust movement based on camera direction
	local flightVelocity = (camLook * moveVector.Z) + (workspace.CurrentCamera.CFrame.RightVector * moveVector.X) + Vector3.new(0, moveVector.Y, 0)
	rootPart.AssemblyLinearVelocity = flightVelocity
end

-- Toggle flight
local function toggleFlight()
	if flying then
		game.Workspace.Gravity = defgrav
		flying = false
		humanoid.PlatformStand = false
		rootPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
	else
		game.Workspace.Gravity = 0
		flying = true
		humanoid.PlatformStand = true
		runService.RenderStepped:Connect(flightStep) -- Updates flight every frame
	end
end

-- Detect key press
userInput.InputBegan:Connect(function(input, gameProcessed)
	if gameProcessed then return end
	if input.KeyCode == Enum.KeyCode.F then
		toggleFlight()
	end
end)
