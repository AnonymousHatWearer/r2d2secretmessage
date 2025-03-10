local player = game.Players.LocalPlayer
local character = player.Character or player:CharacterAdded():Wait()
local humanoid = character:WaitForChild("Humanoid")

while true do
  wait(0.1)
  humanoid.Health = 100
