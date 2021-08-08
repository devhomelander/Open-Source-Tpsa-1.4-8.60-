function Player:adjustMove(item)

    if(not(self))then
        return
    end

    local slot = self:getSlotItem(CONST_SLOT_FEET)

    if(not(slot))then
        return
    end

    local pokeball_name = slot:getAttribute(ITEM_ATTRIBUTE_POKEBALL)

    local table_move_teste = MOVE_CONFIG[pokeball_name]

    if(not(table_move_teste))then
        return
    end

    return slot:setAttribute(ITEM_ATTRIBUTE_POKECOMBATMOVE, table_move_teste.spellName)
end
