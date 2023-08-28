local Character = game.Players.LocalPlayer.Character
	local Humanoid = Character:WaitForChild("Humanoid")
	local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")

local Falling = false

local function OnHumanoidFreeFalling(Active)
	print("Event Fired")
	Falling = Active
	while wait() do
        if Falling then
		print("Active")
		if HumanoidRootPart.Position.Y <= -50 then
			print("Teleporting")
			HumanoidRootPart.Anchored = true
			wait(1)
			local Success, Error = pcall(function()
				for i,v in pairs(Character:GetDescendants()) do
					if v:IsA("BasePart") then
						v.Velocity = Vector3.new(0,0,0)
					end
				end
				Character:SetPrimaryPartCFrame(CFrame.new(0,150,0))
			end)
			if Success then
				HumanoidRootPart.Anchored = false
			else
				warn(Error)
			end
		end
		--wait(0.1)
        end
	end
end

Humanoid.FreeFalling:Connect(OnHumanoidFreeFalling)
