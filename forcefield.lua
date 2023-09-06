pcall(function() 
        LPH_JIT_MAX(function()
                local old
                old = hookmetamethod(game, "__namecall", function(...)
                    if getnamecallmethod() == "Kick" then 
                        return wait(9e9) 
                    end
                    return old(...)
                end)
        end)

        local playerscripts = game:GetService'Players'.LocalPlayer.PlayerScripts
        
        if playerscripts:FindFirstChild"LocalScript" then
        local script1 = playerscripts.LocalScript
        local script1signal = script1.Changed
        for i, connection in next, getconnections(script1signal) do
            connection:Disable()
        end
        end

        if playerscripts:FindFirstChild"LocalScript2" then
        local script2 = playerscripts.LocalScript2
        local script2signal = script2.Changed
        for i, connection in next, getconnections(script2signal) do
            connection:Disable()
        end
        end
        
        if game.Players.LocalPlayer.PlayerScripts:FindFirstChild("LocalScript2") then
        game.Players.LocalPlayer.PlayerScripts:FindFirstChild("LocalScript2"):Destroy()
        end


        if game.Players.LocalPlayer.PlayerScripts:FindFirstChild("LocalScript") then
        game.Players.LocalPlayer.PlayerScripts:FindFirstChild("LocalScript"):Destroy()
        end
        pcall(function()
        loadstring(game:HttpGet("https://pastebin.com/raw/BMGbkQ71"))();
        end)
end)
