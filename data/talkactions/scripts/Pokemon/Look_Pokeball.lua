function onSay(player, words, param)
local item = player:getSlotItem(8)
if not item then  return player:sendTextMessage(MESSAGE_STATUS_SMALL, "Place the pokeball in the slot feet.") and false end
if(#player:getSummons() == 0)then return player:sendTextMessage(MESSAGE_STATUS_SMALL, "You need to be with the pokemon out of the ball!") and false end
local aa = item:getAttribute(ITEM_ATTRIBUTE_DESCRIPTION)
if not aa then return false end
local pokeball = item:getAttribute(ITEM_ATTRIBUTE_POKEBALL)
if not pokeball then return false end
local monster = MonsterType(pokeball)
local pokemon = player:getSummons()[1]
local poke = CONFIG_POKEMON[pokeball]
if not poke then return false end
return player:sendTextMessage(MESSAGE_INFO_DESCR, "\n".. "======Info Pokeball======"..
"\n" .. aa ..
"\n" .."Health : ".. monster:getMaxHealth() ..
"\n".. "Defense: " .. monster:getDefense() ..
"\n".. "Speed: " .. pokemon:getSpeed() ..
"\n" .."Exp : " .. monster:experience() .. " - Em Breve!" ..
"\n" .."level to use : " .. poke.level ..
"\n" .."Item name : " .. item:getName() ..
"\n".."======================") and
player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "\n".. "======Info Pokeball======"..
"\n" .. aa .. 
"\n" .."Health : ".. monster:getHealth() ..
"\n".. "Defense : " .. monster:getDefense() ..
"\n".. "Speed : " .. pokemon:getSpeed() ..
"\n" .."Exp : " .. monster:experience() .. " - Em Breve!" ..
"\n" .."level to use : " .. poke.level ..
"\n" .."Item name : " .. item:getName() ..
"\n".."======================") and false
end