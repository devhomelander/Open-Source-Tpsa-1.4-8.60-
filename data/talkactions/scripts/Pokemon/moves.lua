function onSay(player, words, param)
if(#player:getSummons() == 0)then
    return true
end
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
        if(words == "move1")then
            return
        elseif(words == "move2")then
            return
        elseif(words == "move3")then
            return
        elseif(words == "move4")then
            return
        elseif(words == "move5")then
            return
        elseif(words == "move6")then
            return
        elseif(words == "move7")then
            return
        elseif(words == "move8")then
            return
        elseif(words == "move9")then
            return
        elseif(words == "move10")then
            return
        else
            return true
        end

    end
    
end