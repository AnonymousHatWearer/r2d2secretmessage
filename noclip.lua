local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

while true do
    for _, part in pairs(character:GetDescendants()) do
    task.wait(0.2)
    if part:IsA("BasePart") then
        part.CanCollide = false 
    end
end
