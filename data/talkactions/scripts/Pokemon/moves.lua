function onSay(player, words, param)
    local slot = player:getSlotItem(CONST_SLOT_FEET)
    if(not(slot))then
        return
    end

    local pokeball = slot:getAttribute(ITEM_ATTRIBUTE_POKEBALL)

    

    local pokemon = player:getSummons()[1]
    if(not(pokemon))then
        return
    end
    
end