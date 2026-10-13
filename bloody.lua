local success, func = pcall(function()
    return loadstring(game:HttpGet("https://raw.githubusercontent.com/celestialteam/youhateme/refs/heads/main/Mirror/BloodyPremium.lua"))
end)

if not success or type(func) ~= "function" then
    error("script not found")
end

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local env = getfenv(0) 

local proxy = setmetatable({}, {
    __index = function(self, key)
        if key == "allowedUsers" then
            return {
                [LocalPlayer.Name] = true
            }
        end
        
        return env[key]
    end,
    
    __newindex = function(self, key, value)
        if key == "allowedUsers" then 
            return 
        end
        
        env[key] = value
    end
})

setfenv(func, proxy)

task.spawn(func)
