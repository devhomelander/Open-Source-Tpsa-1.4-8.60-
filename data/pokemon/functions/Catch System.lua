function receiveCapturedPokemon(players, pokeball, pokemons)
local player = Creature(players)
if not(player)then
return
end
local poke = CONFIG_POKEMON[pokemons]
if not poke then
player:sendTextMessage(MESSAGE_STATUS_SMALL, player:getName() .. " This pokemon doesn't exist.")
player:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
end
local item = player:addItem(pokeball, 1,true, 1, 3)
item:setAttribute(ITEM_ATTRIBUTE_POKEBALL, pokemons)
local aa = item:getAttribute(ITEM_ATTRIBUTE_POKEBALL)
item:setAttribute(ITEM_ATTRIBUTE_POKELIFE, poke.life)
item:setAttribute(ITEM_ATTRIBUTE_POKETRANSFORM, item:getId())
item:setAttribute(ITEM_ATTRIBUTE_GENDER, gendeRandom[math.random(#gendeRandom)])
local bb = item:getAttribute(ITEM_ATTRIBUTE_GENDER)
item:setAttribute(ITEM_ATTRIBUTE_POKENATURE, natureRandom[math.random(#natureRandom)])
local nature = item:getAttribute(ITEM_ATTRIBUTE_POKENATURE)
item:setAttribute(ITEM_ATTRIBUTE_POKELEVEL, poke.pokelevel)
local level = item:getAttribute(ITEM_ATTRIBUTE_POKELEVEL)
local date = os.date("%d/%m/%Y")
item:setAttribute(ITEM_ATTRIBUTE_POKEDATE, date)
local pokedate  = item:getAttribute(ITEM_ATTRIBUTE_POKEDATE)
item:onLookPokeball(player, aa, bb, level, nature, pokedate)
player:sendTextMessage(MESSAGE_STATUS_SMALL, player:getName() .. " Congratulations you managed to capture " .. aa )
item:moveDepot()
end

function Item:moveDepot()
end

function catchPokemon(player, item, fromPosition, target, toPosition)
local random = math.random(1, 2)
local pokemon = corpse[target.itemid]
if not pokemon then
return true
end
local pokeball = pokeballscatch[item.itemid]
if not pokeball then
return true
end
if(random == 1)then
toPosition:sendMagicEffect(pokeball.efect)
player:getPosition():sendDistanceEffect(toPosition, pokeball.efect2)
target:remove()
item:remove(1)
addEvent(receiveCapturedPokemon, 3000,player.uid, pokeball.addpokeball, pokemon[1])
return true
end
if(random == 2)then
toPosition:sendMagicEffect(pokeball.efect3false)
player:getPosition():sendDistanceEffect(toPosition, pokeball.efect2)
target:remove()
item:remove(1)
return true
end
end