Table_config = {
    [3000] = {
        outfit = 2097,
        speed = 500,
    }
}
function onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local slot = player:getSlotItem(CONST_SLOT_RING)
    if not slot then return false end
    if(slot ~= item)then return false end
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
    return true
end

    player_outfit.lookType = table.outfit

    player:changeSpeed(table.speed)
    player:setStorageValue(16545, 1)
    player:setOutfit(player_outfit)
return true
end