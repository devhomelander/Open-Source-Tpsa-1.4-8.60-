function onSay(player, words, param)
if not player:getGroup():getAccess() then
return true
end
player:addPoke(param, BALLS)
return false
end