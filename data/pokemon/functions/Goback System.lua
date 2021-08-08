--[[
    =================
    By: Sr. Naja
    =================
]]

function GoPokemon(player, item, fromPosition, toPosition)

local slot = player:getSlotItem(CONST_SLOT_FEET)

if not (slot) then

return player:sendTextMessage(MESSAGE_STATUS_SMALL, player:getName() .. " Place the pokeball in the slot feet.") and true

end

if(item ~= slot)then

return player:sendTextMessage(MESSAGE_STATUS_SMALL, player:getName() .. " Place the pokeball in the slot feet.") and true

end

local pokeball = item:getAttribute(ITEM_ATTRIBUTE_POKEBALL)

local transformballs = CONFIG_POKEMON[pokeball]

if not (transformballs) then

return player:sendTextMessage(MESSAGE_STATUS_SMALL, player:getName() .. " Did you find a bug please let the staff know") and true

end

if (#player:getSummons() >= 1) or (player:getSummons() == 1)then

if not Pokemon then

return player:sendTextMessage(MESSAGE_STATUS_SMALL, player:getName() .. " Did you find a bug please let the staff know") and true

end

local poke = player:getSummons()[1]

return poke:returnPokemon(player, item) and true

end

if (player:getLevel() <= transformballs.level) then

return player:sendTextMessage(MESSAGE_STATUS_SMALL, player:getName() .. " You need level ".. transformballs.level .. " to use this " .. pokeball .. ".") and true

end

local level = item:getAttribute(ITEM_ATTRIBUTE_POKELEVEL)

if(player:getLevel() <= level)then

return player:sendTextMessage(MESSAGE_STATUS_SMALL, player:getName() .. "This " .. pokeball .. "(Lvl: " .. level .. " )" .. "is too strong for " .. player:getName() .. ".") and true

end

local pklife = item:getAttribute(ITEM_ATTRIBUTE_POKELIFE)

if (pklife <= 0 )then

return player:sendTextMessage(MESSAGE_STATUS_SMALL, player:getName() .. " Your " .. pokeball .. " died!" ) and true

end

local pos = player:getPosition()

Pokemon = Game.createMonster(pokeball, pos, true, false)

if not Pokemon then

return player:sendTextMessage(MESSAGE_STATUS_SMALL, player:getName() .." Sorry you can't summon a " .. pokeball .. ", contact a member of staff!.") and true

end

player:addSummon(Pokemon)

player:levelSystem()

local pokegender = item:getAttribute(ITEM_ATTRIBUTE_GENDER)

Pokemon:gender(pokegender, player)

local pokenature = item:getAttribute(ITEM_ATTRIBUTE_POKENATURE)

Pokemon:natureSystem(player, pokenature)

local pklife = item:getAttribute(ITEM_ATTRIBUTE_POKELIFE)

Pokemon:setHealth(pklife)

local addon = item:getAttribute(ITEM_ATTRIBUTE_POKEADDON)

Pokemon:addonTransformOutfit(addon, pokeball)

--[[player:adjustMove() -- Pokemon spell adjuster

local teste_move = item:getAttribute(ITEM_ATTRIBUTE_POKECOMBATMOVE)

print(teste_move)]]

player:monsterInfo()

local message = {"Duel time, " .. pokeball .. "",

"Go, ".. pokeball .. "",

"Do your work, ".. pokeball .. "",

"Get ready, ".. pokeball .. "",

"Your time has come, ".. pokeball .. ""}

player:say(message[math.random(1 ,#message)], TALKTYPE_MONSTER_SAY)

local trans = item:getAttribute(ITEM_ATTRIBUTE_POKETRANSFORM)

local pk = Pokemon:getPosition()

if (trans) then

player:getPosition():sendDistanceEffect(pk)

Pokemon:getPosition():sendMagicEffect(item[key"effectgo"])

item:transform(transformballs.transform)

item:setAttribute(ITEM_ATTRIBUTE_POKEBALLMOVE, 1) -- This attribute is configured in c++, to not let the pokeball move when a pokemon is out

return true

else

player:getPosition():sendDistanceEffect(pk, item.itemmisilego)

Pokemon:getPosition():sendMagicEffect(item.effectgo)

item:transform(item.transformgo)

item:setAttribute(ITEM_ATTRIBUTE_POKEBALLMOVE, 1) -- This attribute is configured in c++, to not let the pokeball move when a pokemon is out

return true

end

end

function Monster:returnPokemon(player, item)

if not self then

return false

end

local slot = player:getSlotItem(8)

if(item ~= slot)then

return player:sendTextMessage(MESSAGE_STATUS_SMALL, player:getName() .. " Place the pokeball in the slot feet.") and true

end

if(player:getSummons()[1] ~= self)then

return player:sendTextMessage(MESSAGE_STATUS_SMALL, player:getName() .. " Did you find a bug please let the staff know") and true

end

local aa = item:getAttribute(ITEM_ATTRIBUTE_POKEBALL)

local b = {"Very good, ".. aa .. "",

"It was flawless, ".. aa .. "",

"Come back, ".. aa .. "",

"He arrives, ".. aa .. "",

"Great, ".. aa .. ""}

player:say(b[math.random(1, #b)], TALKTYPE_MONSTER_SAY)

local pokelife = self:getHealth()

item:setAttribute(ITEM_ATTRIBUTE_POKELIFE, pokelife)

local transss = item:getAttribute(ITEM_ATTRIBUTE_POKETRANSFORM)

local pk = player:getPosition()

if (transss) then

item:transform(transss)

self:getPosition():sendDistanceEffect(pk, transformsss[2])

self:getPosition():sendMagicEffect(transformsss[1])

self:remove()

item:removeAttribute(ITEM_ATTRIBUTE_POKEBALLMOVE)

return true

else

item:transform(item.transformreturn)

self:getPosition():sendDistanceEffect(pk, item.misilego)

self:getPosition():sendMagicEffect(item.effectgo)

self:remove()

item:removeAttribute(ITEM_ATTRIBUTE_POKEBALLMOVE)

return true

end

return true

end