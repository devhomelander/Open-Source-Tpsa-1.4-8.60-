local run = {"correndo", "run"}
function onSay(player, words, param)
if player:getStorageValue(1724548) >= 1 then
player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "seu speed estas muito alto")
player:changeSpeed(-500)
return false
end
player:setStorageValue(1724548, 0)
player:say(run[math.random(#run)], TALKTYPE_MONSTER_SAY)
player:getPosition():sendMagicEffect(13)
player:changeSpeed(500)
player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Seu Speed esta: " .. player:getSpeed() .. ".")
return false
end