local function remove(creature)
    local crea = Creature(creature)
    if(not(crea))then
        return
    end
    return crea:remove()
end

function onSay(player, words, param)
player:save()
player:sendTextMessage(MESSAGE_INFO_DESCR, player:getName() .. " You will be disconnected in 5 seconds")
addEvent(remove, 5000, player.uid)
return false
end 