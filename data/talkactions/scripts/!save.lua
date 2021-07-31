
function onSay(player, words, param)
if (#player:getSummons() >= 1) then
player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Coloque o pokemon dentro da ball!.")
player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
return false
else
player:sendTextMessage(MESSAGE_INFO_DESCR,"Your char " .. " ( " .. player:getName().." ) " .." was saved! " .. os.date() .. "")
player:getPosition():sendMagicEffect(14)
player:save()
return false
end 
end