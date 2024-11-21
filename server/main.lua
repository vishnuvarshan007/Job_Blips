ESX = exports["es_extended"]:getSharedObject()

local function GetPlayersData()
    local players = {}

    for _, playerId in ipairs(GetPlayers()) do
        local xPlayer = ESX.GetPlayerFromId(playerId)
        if xPlayer then
            local job = xPlayer.getJob()
            local coords = GetEntityCoords(GetPlayerPed(playerId))
            table.insert(players, {
                id = playerId,
                name = GetPlayerName(playerId),
                job = job,
                coords = coords
            })
        end
    end

    return players
end

-- Update blips every 10 seconds
Citizen.CreateThread(function()
    while true do
        local playersData = GetPlayersData()
        TriggerClientEvent('updateBlips', -1, playersData)
        Citizen.Wait(1000) -- Update interval
    end
end)
