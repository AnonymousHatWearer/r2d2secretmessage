local player = game.Players.LocalPlayer
local character = player.Character or player:CharacterAdded():Wait()
local humanoid = character:WaitForChild("Humanoid")

if humanoid then
    -- Keep setting health to a high value every 0.1 seconds
    while true do
        humanoid.Health = 100
        task.wait(0.1)
    end
end

