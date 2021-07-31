function onLogin(player)
    local slot = player:getSlotItem(CONST_SLOT_FEET)

    if(not(slot))then
        return true
    end
    
   local poke_life = slot:getAttribute(ITEM_ATTRIBUTE_POKELIFE)

   if(poke_life >= 1)then
       local transformsss = slot:getAttribute(ITEM_ATTRIBUTE_POKETRANSFORM)
       slot:transform(transformsss)
       return true
   end
   return true
end