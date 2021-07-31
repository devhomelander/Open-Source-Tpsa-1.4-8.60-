function onSay(player, words, param)
if(#player:getSummons() == 0)then 
player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "You need to be with the pokemon out of the ball!")
return false 
end
local pokemon = player:getSummons()[1]
local newPosition = pokemon:getClosestFreePosition(player:getPosition(), false)
pokemon:teleportTo(newPosition)
newPosition:sendMagicEffect(CONST_ME_TELEPORT)
end
   