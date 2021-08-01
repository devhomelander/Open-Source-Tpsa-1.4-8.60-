--[[
    =================
    By: Sr. Naja
    =================
]]
function Player:addPoke(param, ball)
local parame = param:split(",")
local playername = self:getName()
if(parame[1] == nil) then
self:sendTextMessage(MESSAGE_STATUS_SMALL, "E necessario um [Paramentro].")
self:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
return false
end
local poke = CONFIG_POKEMON[parame[1]]
if not poke then
self:sendTextMessage(MESSAGE_STATUS_SMALL, self:getName() .. " This pokemon doesn't exist.")
self:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
return false
else
local item = self:addItem(ball[math.random(1, #ball)], 1, true, 1, 3)
if not item then
self:sendTextMessage(MESSAGE_STATUS_SMALL, "Not found.")
self:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
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
onLookPokeball(self, item, aa, bb, level, nature, pokedate)
self:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
return true 
end
end