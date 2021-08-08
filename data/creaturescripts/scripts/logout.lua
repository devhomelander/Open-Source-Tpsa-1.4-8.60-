function onLogout(player)
if(#player:getSummons() >= 1)then
local pokemon = player:getSummons()[1]
if(not(pokemon))then
    return true
end
local item = player:getSlotItem(CONST_SLOT_FEET)
if(not(item))then 
    return true
end
return pokemon:returnPokemon(player, item) and true
end
local playerId = player:getId()
if nextUseStaminaTime[playerId] then
nextUseStaminaTime[playerId] = nil
end
return true
end
