function Item:movePokeball(player)
local slot_bag = player:getSlotItem(3)
if(not(slot_bag))then
    return
end
self:moveTo(slot_bag)
end

function Pokebar(player)
local pokeball_item = player:getSlotItem(8)
if(not(pokeball_item))then
    return
end
GoPokemon(player, pokeball_item)
end