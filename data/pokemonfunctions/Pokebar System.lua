function Item:movePokeball(player)
local slot_bag = player:getSlotItem(3)
if(not(slot_bag))then
    return
end
self:moveTo(slot_bag)
end

function Item:returnPokemonBar(player)
local pokemon = player:getSummons()[1]
if(not(pokemon))then
    return
end
    return pokemon:returnPokemon(player, self) and self:movePokeball(player)
end

function Player:moveItemSlot(slot)
local slot_bag = self:getSlotItem(slot)
if(not(slot_bag))then
    return
end
local ball = Item(slot_bag.uid)
if(not(ball))then
    return
end

end

function Pokebar(player)
local pokeball_item = player:getSlotItem(8)
if(not(pokeball_item))then
    return player:moveItemSlot(8)
end
if(#player:getSummons() >= 1)then
    return pokeball_item:returnPokemonBar(player)
end
local teste = player:getItemCount(pokeball_item)
print(teste)
GoPokemon(player, pokeball_item)
end