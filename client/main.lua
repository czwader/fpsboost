Citizen.CreateThreadNow(function()
    while true do
        Wait(0)
        for i = 0, 10 do
            local playerPed = GetPlayerPed(-1)
            local coords    = GetEntityCoords(playerPed)
            GetClosestObjectOfType(coords, 30.0, GetHashKey('prop_roadcone02a'), false, false, false)
            Citizen.CreateThread(function()
                while true do
                    Wait(0)
                    local playerPed = GetPlayerPed(-1)
                    local coords    = GetEntityCoords(playerPed)
                    GetDistanceBetweenCoords(coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, true)
                end
            end)
        end
    end
end)
