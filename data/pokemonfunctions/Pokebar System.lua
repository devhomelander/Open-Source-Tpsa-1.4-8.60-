function returnPokemonBar(player, pokeball_item)
local pokemon = player:getSummons()[1]
if(not(pokemon))then
    return
end
    return pokemon:returnPokemon(player, pokeball_item) and pokeball_item:movePokeball(player)
end
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
if(#player:getSummons() >= 1)then
    return returnPokemonBar(player, pokeball_item)
end
GoPokemon(player, pokeball_item)
end