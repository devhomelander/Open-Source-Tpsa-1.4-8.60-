function onSay(player, words, param)
    local slot = player:getSlotItem(CONST_SLOT_FEET)
    if(not(slot))then
        return
    end

    local pokeball = slot:getAttribute(ITEM_ATTRIBUTE_POKEBALL)
    local table_move = MOVE_CONFIG[pokeball]
    if(not(table_move))then
        return
    end

    local pokemon = player:getSummons()[1]
    if(not(pokemon))then
        return
    end

    local poke_moves = slot:getAttribute(ITEM_ATTRIBUTE_POKEMOVES)
    if(poke_moves)then
        
    end
    
end