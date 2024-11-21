ESX = exports["es_extended"]:getSharedObject()

local PlayerBlips = {}

RegisterNetEvent('updateBlips')
AddEventHandler('updateBlips', function(players)
    -- Remove existing blips
    for _, blip in pairs(PlayerBlips) do
        RemoveBlip(blip)
    end
    PlayerBlips = {}

    -- Create blips for players
    for _, player in pairs(players) do
        if player.job and Config.BlipJobs[player.job.name] then
            local blip = AddBlipForCoord(player.coords.x, player.coords.y, player.coords.z)
            SetBlipSprite(blip, Config.BlipJobs[player.job.name].sprite)
            SetBlipDisplay(blip, 4)
            SetBlipScale(blip, Config.BlipJobs[player.job.name].scale)
            SetBlipColour(blip, Config.BlipJobs[player.job.name].color)
            BeginTextCommandSetBlipName('STRING')
            AddTextComponentString(player.name)
            EndTextCommandSetBlipName(blip)
            table.insert(PlayerBlips, blip)
        end
    end
end)
