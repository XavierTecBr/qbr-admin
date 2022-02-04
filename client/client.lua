
RegisterNetEvent('qbr-admin:tpway')
AddEventHandler('qbr-admin:tpway', function(source)
    
    if not IsWaypointActive() then
        return
    end

    local x,y,z = table.unpack(GetWaypointCoords())
    local player = PlayerPedId()

    Citizen.CreateThread(function()

		Wait(0)
        SetCinematicModeActive(true)
		DoScreenFadeOut(500)
		Wait(1000)
		
        SetEntityCoordsNoOffset(player, x, y, z, 0, 0, 1)

		Wait(7000)
		DoScreenFadeIn(500)		
		SetCinematicModeActive(false)

	end)
end)

RegisterNetEvent('qbr-admin:cds')
AddEventHandler('qbr-admin:cds', function(source)
    local player = PlayerPedId()
    local coords = GetEntityCoords(player, false)
    local heading = GetEntityHeading(player)    
    AddTextEntry("FMMC_KEY_TIP12", "Coords + Heading")
    DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP12", "", vector4(coords.x, coords.y, coords.z, heading), "", "", "", 150)
end)