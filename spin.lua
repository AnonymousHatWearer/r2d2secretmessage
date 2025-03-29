local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local e = 0
local f = 1000
local function spinCharacter()
    while true do
        character:SetPrimaryPartCFrame(character.PrimaryPart.CFrame * CFrame.Angles(0, math.rad(f), 0))
        f = f + 1000
        wait(0.02)
    end
end
repeat
    spinCharacter()
    e = e + 1
    wait(0.4)
until e == 9
