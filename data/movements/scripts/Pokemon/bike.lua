function onDeEquip(player, item, slot, isCheck)

    local table = Table_config[item.itemid]
    if not table then
        return false
    end

    local player_outfit = player:getOutfit()

    if(player:getStorageValue(16545) >= 1)then
        player:setStorageValue(16545, 0)
        player:changeSpeed(table.speed)
        player_outfit.lookType = 2185
        player:setOutfit(player_outfit)
    end
end