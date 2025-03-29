local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local e = 0

local function spinCharacter()
    while true do
        character:SetPrimaryPartCFrame(character.PrimaryPart.CFrame * CFrame.Angles(0, math.rad(100000), 0))
        wait(0.02)
    end
end
repeat
    spinCharacter()
    e = e + 1
    wait(0.4)
until e == 9
