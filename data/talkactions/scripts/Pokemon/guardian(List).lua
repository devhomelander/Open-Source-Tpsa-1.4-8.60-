function onSay(player, words, param)
local keys = player:getSlotItem(CONST_SLOT_RIGHT)
if not keys then
player:sendTextMessage(MESSAGE_STATUS_SMALL, "You're putting the ball in the wrong place " .. player:getName() .. ".")
return false 
end
local pos = player:getPosition()
goGuardian(player, keys, pos)
return false
end