function onSay(player, words, param)
if not player:getGroup():getAccess() then
return true
end
addPoke(player, param, BALLS)
return false
end