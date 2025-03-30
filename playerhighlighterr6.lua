wait(2)
local players = game.Players:GetChildren()


local place = 1
local place2 = players[place].Name
print(players[1])

function outlineplayer()
	for i = 1, #players do
		local place2 = players[place].Name 
		local character = game.Workspace:FindFirstChild(place2) 

		if character then
			if character:FindFirstChild("LeftHand") then
				place = place + 1
				wait(0.2)
			else
				local parts = {"Torso", "Left Arm", "Right Arm", "Head", "Left Leg", "Right Leg"}

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
end

outlineplayer()
