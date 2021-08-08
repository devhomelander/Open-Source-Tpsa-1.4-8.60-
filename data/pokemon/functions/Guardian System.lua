--[[
==============================
By : Sr. Naja
==============================
--]]
function goGuardian(player, item, fromPosition, toPosition)
slot = player:getSlotItem(CONST_SLOT_RIGHT)
local lenda = CONFIG_LENDAS[item.itemid]
--[[if not lenda then
return player:sendTextMessage(MESSAGE_STATUS_SMALL, "" .. player:getName() .. " Sorry, ask adm to set up the guardian string!" .." ")
elseif(player:getStorageValue(28723) == 1)then 
return player:sendTextMessage(MESSAGE_STATUS_SMALL, "Have you ever used this guardian")
else]]
local postion = player:getPosition()
local monster = Game.createMonster(lenda[1], postion)
if not monster then 
return player:sendTextMessage(MESSAGE_STATUS_SMALL,"" ..player:getName() .." Sorry you can't summon, contact a member of staff!.")
end
local message = {"" .. player:getName() .. " Go Guardian : " .. lenda[1] .. ""}
player:sendTextMessage(MESSAGE_INFO_DESCR, "Have you ever used this guardian")
player:setStorageValue(28723, 1)
player:say(message[1], TALKTYPE_MONSTER_SAY)
item:setAttribute(ITEM_ATTRIBUTE_GENDER, 3)
local genderguardian = item:getAttribute(ITEM_ATTRIBUTE_GENDER)
local genders = GENDER_CONFIG[genderguardian]
item:setAttribute(ITEM_ATTRIBUTE_DESCRIPTION,"[Name] : " .. lenda.name .. 
"\n" .. "[Owner] : " .. player:getName() .. 
"\n" .. "[Gender] : " .. genders.genderName .. 
"\n" .. "[Last use] :" .. os.date() .. "")
monster:setName("(Guardian) " .. lenda.name  .. "")
monster:setMaster(player)
monster:setMaxHealth(70000000)
monster:getPosition():sendMagicEffect(6)
monster:changeSpeed(600000)
monster:gender(genderguardian, player)
speed = monster:getSpeed()
healt = monster:getHealth()
monster:say("GUARDIAN!" .. monster:getName() .. "", TALKTYPE_MONSTER_SAY)
player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE,"You used the Guardian ( " .. monster:getName() .. " ).")
player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE,"Your Guardian is alive: " .. healt .. " / " .. monster:getMaxHealth() .. " wait for his life to fully load.")
player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE,"Guardian Speed " .. speed .. ".")
player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE,"Guardian owner " .. player:getName() .. ".")
player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE,"Guardian gender " .. genders.genderName .. ".")
player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE,"Last time the Guardian was used [" .. os.date() .. "].")
return true
end