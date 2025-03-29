local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

while true do
    for _, part in pairs(character:GetDescendants()) do
        if part:IsA("BasePart") then
            part.CanCollide = false
        end
    end
    task.wait(0.2) -- Wait outside the loop to avoid unnecessary delays per iteration
end
