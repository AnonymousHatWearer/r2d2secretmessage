local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

for _, part in pairs(character:GetDescendants()) do
    if part:IsA("BasePart") then
        part.CanCollide = false 
    end
end
