function onUse(player, item, fromPosition, target, toPosition, isHotkey)
if(#player:getSummons() < 1)then
return player:sendTextMessage(MESSAGE_STATUS_SMALL,player:getName() .. " Save your pokemon to evolve!") and true
end
local slot = player:getSlotItem(CONST_SLOT_FEET)
if not slot then
return player:sendTextMessage(MESSAGE_STATUS_SMALL,player:getName() .. " this is not a pokeball!") and true
end
local pokemon = player:getSummons()[1]
if(target ~= pokemon)then
return player:sendTextMessage(MESSAGE_STATUS_SMALL,player:getName() .. " This is not a pokeball or it is not in the right place") and true
end
local pokeball = slot:getAttribute(ITEM_ATTRIBUTE_POKEBALL)
local pokemons_evolution = EVOLUTION_POKEMON[pokeball]
if not pokemons_evolution then
return player:sendTextMessage(MESSAGE_STATUS_SMALL,player:getName() .. " This pokemon does not exist in the table") and true
end
if(item.itemid ~= pokemons_evolution.stone1)then
return player:sendTextMessage(MESSAGE_STATUS_SMALL,player:getName() .. " That " .. item:getName() .. " it's not from that " .. pokeball .. ".") and true
end
if (player:getLevel() <= pokemons_evolution.level) then
return player:sendTextMessage(MESSAGE_STATUS_SMALL,player:getName() .. " Your level (" .. player:getLevel() .. ") needs to be higher to evolve pokemon! " .. pokemons_evolution.level) and true
end
local pklevel = slot:getAttribute(ITEM_ATTRIBUTE_POKELEVEL)
if(player:getLevel() < pklevel)then
return player:sendTextMessage(MESSAGE_STATUS_SMALL, player:getName() .. "This " .. pokeball .. " (Lvl: " .. pklevel .. " ) " .. "is too strong for " .. player:getName() .. ".") and true
end
local pkaddon = slot:getAttribute(ITEM_ATTRIBUTE_POKEADDON)
if(pkaddon >= 1)then
    return player:sendTextMessage(MESSAGE_STATUS_SMALL, player:getName() .." Please remove addon before evolution, Command ; !remove Addon") and true
end
item:remove(1)
local pk_pos = pokemon:getPosition()
pk_pos:sendMagicEffect(19)
pk_pos:sendMagicEffect(29)
addEvent(doTransformPokemon, 500, player.uid)
return true
end