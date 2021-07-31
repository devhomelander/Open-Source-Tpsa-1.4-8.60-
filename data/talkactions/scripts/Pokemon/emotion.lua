function onSay(player, words, param)
if (#player:getSummons() <= 0) then
player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Please remove your Pokémon from the pokeball")
player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
return false
else
if words == "!love"then
local item = player:getSlotItem(8)
if not item then
player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE,"" .. player:getName() .. " Place the pokeball in the slot feet.")
return false
end
local pokeball = item:getAttribute(ITEM_ATTRIBUTE_POKEBALL)
local monster = Creature(pokeball)
if(player:getSummons()[1] ~= monster)then 
player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE,"" .. player:getName() .. " You can't use live right now!")
return false
end
if not monster then
return false 
end
player:getPosition():sendMagicEffect(188)
monster:changeSpeed(500)
player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE,"" .. monster:getName() .. " Is happy and loving")
local pospoke = monster:getPosition()
pospoke:sendMagicEffect(188)
local position = player:getPosition()
local message = {"teste","delicia"}
local color = {1,2,3,4,5,6,7,8,10}
Game.sendAnimatedText(message[math.random(#message)], position and pospoke, color[math.random(#color)])
return false 
elseif words == "!fome"then
player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE,"Em breve!!")
player:getPosition():sendMagicEffect(190)
return false 
elseif words == "!:)"then
player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE,"Em breve!!")
player:getPosition():sendMagicEffect(179)
return false 
elseif words == "!!"then
player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE,"Em breve!!")
player:getPosition():sendMagicEffect(193)
return false 
elseif words == "!..."then
player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE,"Em breve!!")
player:getPosition():sendMagicEffect(182)
return false 
elseif  words == "!go"then
player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE,"Em breve!!")
player:getPosition():sendMagicEffect(189)
return false 
elseif words == "!pikachu"then
player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE,"Em breve!!")
player:getPosition():sendMagicEffect(178)
return false 
elseif words == "!:D"then
player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE,"Em breve!!")
player:getPosition():sendMagicEffect(195)
return false 
elseif words == "!?"then
player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE,"Em breve!!")
player:getPosition():sendMagicEffect(186)
return false 
elseif words == "!lol"then
player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE,"Em breve!!")
player:getPosition():sendMagicEffect(191)
return false 
elseif words == "!:l"then
player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE,"Em breve!!")
player:getPosition():sendMagicEffect(184)
return false 
elseif words == "!pb"then
player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE,"Em breve!!")
player:getPosition():sendMagicEffect(185)
return false 
elseif words == "!:("then
player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE,"Em breve!!")
player:getPosition():sendMagicEffect()
return false 
end
return false
end 
end