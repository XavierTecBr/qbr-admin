
RegisterNetEvent('qbr-admin:tpway')
AddEventHandler('qbr-admin:tpway', function(source)
    
    if not IsWaypointActive() then
        return
    end

    local x,y,z = table.unpack(GetWaypointCoords())
    local player = PlayerPedId()
   
    SetEntityCoordsNoOffset(player, x, y, z, 0, 0, 1)

end)

RegisterNetEvent('qbr-admin:cds')
AddEventHandler('qbr-admin:cds', function(source)
    local player = PlayerPedId()
    local coords = GetEntityCoords(player, false)
    local heading = GetEntityHeading(player)
    print(vector4(coords.x, coords.y, coords.z, heading))
end)