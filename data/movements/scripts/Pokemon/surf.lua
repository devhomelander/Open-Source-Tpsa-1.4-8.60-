function onStepIn(creature, item, position, fromPosition)
--[[local player = Player(creature)
if not player then
    return false
end
if(#player:getSummons() <= 0)then
    print('a')
    return false
end
local slot = player:getSlotItem(CONST_SLOT_FEET)
if not slot then
    return false
end
local pokeball_name = slot:getAttribute(ITEM_ATTRIBUTE_POKEBALL)
local table_pokemon = CONFIG_POKEMON[pokeball_name].surf
if not table_pokemon then
    return print("c")
end
local pokemon = player:getSummons()[1]
if not pokemon then
    return false
end
local ball = Item(slot.uid)
pokemon:returnPokemon(player,ball)
return false]]
end