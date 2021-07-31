function onUse(player, item, fromPosition, target, toPosition, isHotkey)
local pos_player = player:getPosition()
item:remove(1)
local new_item = player:addItem(ADDONS_RANDOM_EASY[math.random(#ADDONS_RANDOM_EASY)])
pos_player:sendMagicEffect(19)
player:sendTextMessage(MESSAGE_STATUS_SMALL,player:getName() .. " congratulations you took " .. new_item:getName() .. ".")
return true
end