while true do
	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoid = character:WaitForChild("Humanoid")
	local colors = {
		"Bright red", 
		"Medium stone grey",
		"Light stone grey"
	}
	local randomIndex = math.random(1, #colors)
	game.Workspace[player.Name].Head.BrickColor = BrickColor.new(colors[randomIndex])
	local randomIndex = math.random(1, #colors)
	game.Workspace[player.Name]["Left Leg"].BrickColor = BrickColor.new(colors[randomIndex])
	local randomIndex = math.random(1, #colors)
	game.Workspace[player.Name]["Right Leg"].BrickColor = BrickColor.new(colors[randomIndex])
	local randomIndex = math.random(1, #colors)
	game.Workspace[player.Name]["Left Arm"].BrickColor = BrickColor.new(colors[randomIndex])
	local randomIndex = math.random(1, #colors)
	game.Workspace[player.Name]["Right Arm"].BrickColor = BrickColor.new(colors[randomIndex])
	local randomIndex = math.random(1, #colors)
	game.Workspace[player.Name].Torso.BrickColor = BrickColor.new(colors[randomIndex])

	wait(0.1)
end
