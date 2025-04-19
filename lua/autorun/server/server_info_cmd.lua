if SERVER then
    hook.Add("PlayerSay", "ServerInfoCommand", function(ply, text)
        if string.lower(text) == "!serverinfo" then
            local playerCount = #player.GetAll()
            local uptime = math.floor(CurTime() / 60)
            ply:ChatPrint("Serveur actif depuis : " .. uptime .. " minutes.")
            ply:ChatPrint("Nombre de joueurs connectés : " .. playerCount)
            return ""
        end
    end)
end
