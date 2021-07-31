function onSay(player, words, param)
    if(#player:getSummons() >= 1)then
        return false
    end

 local slot = player:getSlotItem(CONST_SLOT_FEET)
    if(not(slot))then
        return true
    end

    local addon = slot:getAttribute(ITEM_ATTRIBUTE_POKEADDON)

    if(addon)then
        local addon = Return_addon_table[addon]
         if(not(addon))then
            return true
        end
        player:addItem(addon.retu, 1)
        local pokeball = slot:getAttribute(ITEM_ATTRIBUTE_POKEBALL)
        local pklevel = slot:getAttribute(ITEM_ATTRIBUTE_POKELEVEL)
        local pkgender = slot:getAttribute(ITEM_ATTRIBUTE_GENDER)
        local pknature = slot:getAttribute(ITEM_ATTRIBUTE_POKENATURE)
        local pkdate = slot:getAttribute(ITEM_ATTRIBUTE_POKEDATE)
        onLookPokeball(player, slot, pokeball, pkgender, pklevel, pknature, pkdate)
      return slot:removeAttribute(ITEM_ATTRIBUTE_POKEADDON) and false
    else
        return true
    end

end