function onEquip(player, item, slot, isCheck)
local ball = item:getAttribute(ITEM_ATTRIBUTE_POKEBALL)
local pokemon = CONFIG_POKEMON[ball]
if not pokemon then
return true
end
local sloot = player:getSlotItem(CONST_SLOT_LEGS)
if not sloot then 
player:addItem(pokemon.photo, 1)
return true
end
--sloot:setAttribute(ITEM_ATTRIBUTE_POKEBALLMOVE, 1)
sloot:transform(pokemon.photo)
return true
end
function onDeEquip(player, item, slot, isCheck)
local potrait = player:getSlotItem(CONST_SLOT_LEGS)
if not potrait then
player:addItem(12660, 1)
return false
end
--potrait:setAttribute(ITEM_ATTRIBUTE_POKEBALLMOVE, 1)
potrait:transform(12660)
return false
end