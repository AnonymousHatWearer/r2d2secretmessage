wait(2)

local players = game.Players:GetChildren()
local place = 1

-- Function to outline a player
function outlinePlayer()
    for i = 1, #players do
        local place2 = players[place].Name 
        local character = game.Workspace:FindFirstChild(place2)

        if character then
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            
            -- Check if the player is R6 or R15
            local parts
            if humanoid and humanoid.RigType == Enum.HumanoidRigType.R6 then
                -- R6 Parts
                parts = {"Torso", "Left Arm", "Right Arm", "Head", "Left Leg", "Right Leg"}
            elseif humanoid and humanoid.RigType == Enum.HumanoidRigType.R15 then
                -- R15 Parts
                parts = {"UpperTorso", "LowerTorso", "LeftUpperLeg", "RightUpperLeg", "LeftLowerLeg", "RightLowerLeg", "LeftUpperArm", "RightUpperArm", "LeftLowerArm", "RightLowerArm", "Head"}
            end

            -- Loop through the selected parts
            for _, partName in pairs(parts) do
                local part = character:FindFirstChild(partName)
                if part then
                    local selectionBox = Instance.new("SelectionBox")
                    selectionBox.Parent = part
                    selectionBox.Adornee = part
                    selectionBox.Color3 = Color3.fromRGB(144, 72, 144)
                end
            end

            place = place + 1
            wait(0.2)
        end
    end
end

outlinePlayer()
