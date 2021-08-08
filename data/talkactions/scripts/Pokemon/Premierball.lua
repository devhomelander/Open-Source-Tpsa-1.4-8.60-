local table_ballPremier = {
    ["Charmander"] = {
        outfitAurea = 1,
    }
}

function onSay(player, words, param)
local slot = player:getSlotItem(CONST_SLOT_FEET)
if(not(slot))then
    return
end
local ballAttribute_premier = slot:getAttribute(ITEM_ATTRIBUTE_POKEBALLPREMIER)
if(ballAttribute_premier)then
local pokemon = player:getSummons()[1]
if(not(pokemon))then
    return
end
local pokeball_name = slot:getAttribute(ITEM_ATTRIBUTE_POKEBALL)
local table_outfit = table_ballPremier[pokeball_name]
if(not(table_outfit))then 
    return
end
pokemon:transformOutfit(table_outfit.outfit)
end
end