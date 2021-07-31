function onLogin(player)
if(player:setSex(PLAYERSEX_MALE))then
player:changeSpeed(300)
player:setSkull(1)
return true
elseif(player:setSex(PLAYERSEX_FEMALE))then
player:setSkull(2)
return true
end
return true
end