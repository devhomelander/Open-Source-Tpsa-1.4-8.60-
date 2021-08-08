function onLogin(player)
    local slot = player:getSlotItem(CONST_SLOT_FEET)

    if(slot)then
        local pokeball_no_move = slot:getAttribute(ITEM_ATTRIBUTE_POKEBALLMOVE)
        if(pokeball_no_move)then
            return slot:removeAttribute(ITEM_ATTRIBUTE_POKEBALLMOVE) and true
        end
        return true
    else
      return true
    end
    return true
end

function onKill()
    
end