local QBCore = exports['qbr-core']:GetCoreObject()


QBCore.Commands.Add("tpway", "Go to way point.", {}, false, function(source)
    TriggerClientEvent('qbr-admin:tpway', source)
end, "admin")

QBCore.Commands.Add("cds", "Get your current coords.", {}, false, function(source)
    TriggerClientEvent('qbr-admin:cds', source)
end, "admin")