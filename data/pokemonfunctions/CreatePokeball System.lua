--[[
    =================
    By: Sr. Naja
    =================
]]
function addPoke(player, param, ball)
local parame = param:split(",")
local playername = player:getName()
if(parame[1] == nil) then
player:sendTextMessage(MESSAGE_STATUS_SMALL, "E necessario um [Paramentro].")
player:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
return false
end
local poke = CONFIG_POKEMON[parame[1]]
if not poke then
player:sendTextMessage(MESSAGE_STATUS_SMALL, player:getName() .. " This pokemon doesn't exist.")
player:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
return false
else
local item = player:addItem(ball[math.random(1, #ball)], 1, true, 1, 3)
if not item then
player:sendTextMessage(MESSAGE_STATUS_SMALL, "Not found.")
player:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
return false
end
item:setAttribute(ITEM_ATTRIBUTE_POKEBALL, parame[1])
local aa = item:getAttribute(ITEM_ATTRIBUTE_POKEBALL)
item:setAttribute(ITEM_ATTRIBUTE_POKELIFE, poke.life)
item:setAttribute(ITEM_ATTRIBUTE_POKETRANSFORM, item:getId())
item:setAttribute(ITEM_ATTRIBUTE_GENDER, gendeRandom[math.random(#gendeRandom)])
local bb = item:getAttribute(ITEM_ATTRIBUTE_GENDER)
item:setAttribute(ITEM_ATTRIBUTE_POKENATURE, natureRandom[math.random(#natureRandom)])
local nature = item:getAttribute(ITEM_ATTRIBUTE_POKENATURE)
item:setAttribute(ITEM_ATTRIBUTE_POKELEVEL, poke.pokelevel)
local level = item:getAttribute(ITEM_ATTRIBUTE_POKELEVEL)
item:setAttribute(ITEM_ATTRIBUTE_POKEDATE, os.date("%d/%m/%Y"))
local pokedate  = item:getAttribute(ITEM_ATTRIBUTE_POKEDATE)
local ballName = item:getName()
onLookPokeball(player, item, aa, bb, level, nature, pokedate)
player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
return true 
end
end