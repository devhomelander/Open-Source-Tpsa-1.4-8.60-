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
    if(words == "move1")then
            local pokemove1 = slot:getAttribute(ITEM_ATTRIBUTE_POKEMOVE1)
            return
        elseif(words == "move2")then
            local pokemove1 = slot:getAttribute(ITEM_ATTRIBUTE_POKEMOVE2)
            return
        elseif(words == "move3")then
            local pokemove1 = slot:getAttribute(ITEM_ATTRIBUTE_POKEMOVE3)
            return
        elseif(words == "move4")then
            local pokemove1 = slot:getAttribute(ITEM_ATTRIBUTE_POKEMOVE4)
            return
        elseif(words == "move5")then
            local pokemove1 = slot:getAttribute(ITEM_ATTRIBUTE_POKEMOVE5)
            return
        elseif(words == "move6")then
            local pokemove1 = slot:getAttribute(ITEM_ATTRIBUTE_POKEMOVE6)
            return
        elseif(words == "move7")then
            local pokemove1 = slot:getAttribute(ITEM_ATTRIBUTE_POKEMOVE7)
            return
        elseif(words == "move8")then
            local pokemove1 = slot:getAttribute(ITEM_ATTRIBUTE_POKEMOVE8)
            return
        elseif(words == "move9")then
            local pokemove1 = slot:getAttribute(ITEM_ATTRIBUTE_POKEMOVE9)
            return
        elseif(words == "move10")then
            local pokemove1 = slot:getAttribute(ITEM_ATTRIBUTE_POKEMOVE10)
            return
        else
            return true
        end
end
