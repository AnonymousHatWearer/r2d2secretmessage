while true do
	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoid = character:WaitForChild("Humanoid")
	local colors = {
		"Bright red", 
		"Medium stone grey",
		"Light stone grey"
	}
	local faces = {
		"http://www.roblox.com/asset/?id=7075492",
		"http://www.roblox.com/asset/?id=66329844",
		"http://www.roblox.com/asset/?id=12777582",
		"http://www.roblox.com/asset/?id=10747392",
		"http://www.roblox.com/asset/?id=83017053"
		
	}
	
	local randomIndex = math.random(1, #colors)
	game.Workspace[player.Name].Head.BrickColor = BrickColor.new(colors[randomIndex])
	randomIndex = math.random(1, #colors)
	game.Workspace[player.Name]["Left Leg"].BrickColor = BrickColor.new(colors[randomIndex])
	randomIndex = math.random(1, #colors)
	game.Workspace[player.Name]["Right Leg"].BrickColor = BrickColor.new(colors[randomIndex])
	randomIndex = math.random(1, #colors)
	game.Workspace[player.Name]["Left Arm"].BrickColor = BrickColor.new(colors[randomIndex])
	randomIndex = math.random(1, #colors)
	game.Workspace[player.Name]["Right Arm"].BrickColor = BrickColor.new(colors[randomIndex])
	randomIndex = math.random(1, #colors)
	game.Workspace[player.Name].Torso.BrickColor = BrickColor.new(colors[randomIndex])
	
	local randomFaceIndex = math.random(1, #faces)
	local head = character.Head
	local face = head:FindFirstChild("face")

	if face then
		face.Texture = faces[randomFaceIndex]
	end
	wait(0.1)
end
