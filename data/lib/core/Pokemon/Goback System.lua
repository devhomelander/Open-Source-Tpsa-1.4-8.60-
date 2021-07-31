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

local ball = pokeoff[item.itemid]

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

local poke = Game.createMonster(pokeball, pos, true, true)

if not poke then
    
return player:sendTextMessage(MESSAGE_STATUS_SMALL, player:getName() .." Sorry you can't summon a " .. pokeball .. ", contact a member of staff!.") and true

end

return poke

end

player:addSummon(Pokemon)

--Pokemon:levelSystem(player, level)

local pokegender = item:getAttribute(ITEM_ATTRIBUTE_GENDER)

Pokemon:gender(pokegender, player)

local pokenature = item:getAttribute(ITEM_ATTRIBUTE_POKENATURE)

Pokemon:natureSystem(player, pokenature)

local pklife = item:getAttribute(ITEM_ATTRIBUTE_POKELIFE)

Pokemon:setHealth(pklife)

local addon = item:getAttribute(ITEM_ATTRIBUTE_POKEADDON)

Pokemon:addonTransformOutfit(addon, pokeball)

--Monster:levelSystem(player, level)

adjustMove(player)

player:monsterInfo(Pokemon)

local message = {"Duel time, " .. pokeball .. "",

"Go, ".. pokeball .. "",

"Do your work, ".. pokeball .. "",

"Get ready, ".. pokeball .. "",

"Your time has come, ".. pokeball .. ""}

player:say(message[math.random(1 ,#message)], TALKTYPE_MONSTER_SAY)

local trans = item:getAttribute(ITEM_ATTRIBUTE_POKETRANSFORM)

local transforsms = transform[trans]

local pk = Pokemon:getPosition()

if (transforsms) then

player:getPosition():sendDistanceEffect(pk, transforsms[2])

Pokemon:getPosition():sendMagicEffect(transforsms[1])

item:transform(transformballs.transform)

return true

else

local balls = pokeballs[item.itemid]

if not balls then

return false

end

player:getPosition():sendDistanceEffect(pk, balls[3])

Pokemon:getPosition():sendMagicEffect(balls[2])

item:transform(balls[1], 1)

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

local pokelife = Pokemon:getHealth()

item:setAttribute(ITEM_ATTRIBUTE_POKELIFE, pokelife)

local transss = item:getAttribute(ITEM_ATTRIBUTE_POKETRANSFORM)

local transformsss = transform[transss]

local pk = player:getPosition()

if (transformsss) then

item:transform(transss)

self:getPosition():sendDistanceEffect(pk, transformsss[2])

self:getPosition():sendMagicEffect(transformsss[1])

self:remove()

return true

else

local itemballs = pokeballs[item.itemid]

if not (itemballs) then

return false

end

item:transform(itemballs[1])

self:getPosition():sendDistanceEffect(pk, itemballs[3])

self:getPosition():sendMagicEffect(itemballs[2])

self:remove()

return true

end

return true

end