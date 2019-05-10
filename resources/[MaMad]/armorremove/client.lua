


 -- Config LSSD --
 


RegisterCommand("rm", function(args, string)
    local ped = GetPlayerPed(PlayerId())
    msg("Shoma jelighe khod ra daravardid.")
    SetPedComponentVariation(GetPlayerPed(-1), 9, 14, 0, 0)
end, false)

function msg(text)
    TriggerEvent("chatMessage", "System", {255, 4, 1}, text)
end