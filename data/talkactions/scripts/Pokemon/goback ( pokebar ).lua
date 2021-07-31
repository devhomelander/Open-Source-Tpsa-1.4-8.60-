function onSay(player, words, param)
local item = player:getSlotItem(8)
if not item then 
return player:sendTextMessage(MESSAGE_STATUS_SMALL,"" .. player:getName() .. " Place the pokeball in the slot feet.") and true 
end
local pos = player:getPosition()
return GoPokemon(player, item, pos) and false
end