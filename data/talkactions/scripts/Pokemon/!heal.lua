local pokeoff = {
    [2050] = {2051},
    [2057] = {2054},
    [2055] = {2052},
}
function onSay(player, words, param)
if (#player:getSummons() >= 1) then
player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "" .. player:getName() .. " Your pokemon is alive")
return false
end
local item = player:getSlotItem(8)
if not item then
return true
end
local pokeball = item:getAttribute(ITEM_ATTRIBUTE_POKEBALL)
local poke = CONFIG_POKEMON[pokeball]
if not poke then
return true
end
local transss = item:getAttribute(ITEM_ATTRIBUTE_POKETRANSFORM)
if not transss then
return true
end
local verific = item:hasAttribute(transss)
if not verific then 
item:transform(2051)
item:setAttribute(ITEM_ATTRIBUTE_POKELIFE, poke.life)
player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
return true
end
local ball = pokeoff[item.itemid]
if(ball)then
item:transform(ball[1])
item:setAttribute(ITEM_ATTRIBUTE_POKELIFE, poke.life)
player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
return true
else
item:transform(transss)
item:setAttribute(ITEM_ATTRIBUTE_POKELIFE, poke.life)
player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
return true
end
end