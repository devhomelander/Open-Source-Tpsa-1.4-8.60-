function Item:ajustStatusMove()

    local pokeball_name = self:getAttribute(ITEM_ATTRIBUTE_POKEBALL)

    local table_move_teste = MOVE_CONFIG[pokeball_name]

    if(not(table_move_teste))then
        return
    end

    return self:setAttribute(ITEM_ATTRIBUTE_POKEMOVECOMBAT, table_move_teste.spellName)
end