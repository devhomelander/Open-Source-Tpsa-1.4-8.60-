local config = {
POKEMON = "Bulbasaur", -- o pokemon q o player vai ganhar
MONEY = 2152, -- hds 
POKEBALL = 2012, -- a pokebola q o player vai ganhar
BALL = {2051}, -- pokebola q vai vim com o pokemon
STORAGE = 35862, -- não mexa
}
function onUse(player, item, fromPosition, target, toPosition, isHotkey)
if(player:getStorageValue(config.STORAGE) >= 1)then
return player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, player:getName() .. " You already got this Pokemon!") and false
else
player:setStorageValue(config.STORAGE, 1)
player:addItem(config.POKEBALL, 150)
player:addItem(config.MONEY, 12)
addPoke(player, config.POKEMON, config.BALL) -- função na lib!
return player:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, player:getName() .. " Thank you for joining our alpha!") and true
end	
end