
function onSay(player, words, param)
if words == "toma no cu" then
player:sendTextMessage(MESSAGE_INFO_DESCR,"Seu char" .. " (" .. player:getName()..") " .."foi salvado!")
return false
end 
end