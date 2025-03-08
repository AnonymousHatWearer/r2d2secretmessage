local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Wait for the humanoid to be added to the character model
local humanoid = character:WaitForChild("Humanoid")

-- Function to make the player spin
local function spinCharacter()
    while true do
        -- Rotate the character continuously around the Y-axis (spinning)
        character:SetPrimaryPartCFrame(character.PrimaryPart.CFrame * CFrame.Angles(0, math.rad(5), 0))
        wait(0.1) -- Small wait to prevent freezing (adjust for faster/slower spinning)
    end
end

-- Start spinning the character
spinCharacter()
