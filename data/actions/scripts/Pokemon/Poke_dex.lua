function onUse(player, item, fromPosition, target, toPosition, isHotkey)
local pokemon_selvagem = target:getName()
if(pokemon_selvagem)then
local pokemon_table = TABLE_POKEDEX[pokemon_selvagem]
if not pokemon_table then return true end
local pokemons = CONFIG_POKEMON[pokemon_selvagem]
local pos_player = player:getPosition()
if(player:getStorageValue(pokemon_table.storage_pokemon) <= 0) then
player:setStorageValue(pokemon_table.storage_pokemon, 1)
pos_player:sendMagicEffect(179)
return true
end
if not pokemons then return true end
local pokemons_evolution = EVOLUTION_POKEMON[pokemon_selvagem]
if not pokemons_evolution then return true end
local pos_target = target:getPosition()
local info_table = "Name : " .. pokemon_selvagem .. " \n" .. "\n" .. "Level to be used : " .. pokemons.level .. " \n" .. "\n" ..
"Evolution : " .. pokemons_evolution.evolution .. "\n" .. "\n" .. "Position : " .."Y: " .. pos_target.y .. "," .. "X: " .. pos_target.x .. "," .. "Z: " .. pos_target.z .. "."
player:showTextDialog(pokemon_table.photo, info_table)
player:setName("sla")
return true
end
end