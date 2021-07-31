function onLogin(player)
local sloot = player:getSlotItem(CONST_SLOT_LEGS)
if not sloot then 
return player:addItem(12660, 1)
end
return true
end