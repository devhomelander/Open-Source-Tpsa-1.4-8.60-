function onLogout(player)
if(#player:getSummons() >= 1)then
player:sendTextMessage(MESSAGE_STATUS_SMALL,"" .. player:getName() .. " place the inside pokeball!")
return false
end
local playerId = player:getId()
if nextUseStaminaTime[playerId] then
nextUseStaminaTime[playerId] = nil
end
return true
end
