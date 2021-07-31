function onEquip(player, item, slot, isCheck)
    local pokeball = slot:getAttribute(ITEM_ATTRIBUTE_POKEBALL)
    local pokeball_look = slot:getAttribute(ITEM_ATTRIBUTE_DESCRIPTION)
    local pokeball_transform = slot:getAttribute(ITEM_ATTRIBUTE_POKETRANSFORM)
    local poke_slot_tranform = POKE_HOUSE[pokeball_transform]
    local pos_item = item:getPosition()

    local Poke = Game.createMonster(pokeball, pos_item, true, false)
    if not Poke then
        return
    end

    item:setAttribute(ITEM_ATTRIBUTE_DESCRIPTION, pokeball_look)

    if not poke_slot_tranform then

        return false

    end

    item:transform(poke_slot_tranform.transform)

    Poke:setMaster(item)

end