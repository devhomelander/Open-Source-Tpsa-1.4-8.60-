function onSay(player, words, param)
    if(not(player:getGroup():getAccess()))then
        return true
    end

    local parame = param:split(",")

    if(parame[1] == nil)then
        return
    end

 if(words == "/rn" .. " " .. parame[1] .. "," .. parame[2])then
    local npc = Npc(parame[1])
    if(not(npc))then
        return
    end
    return npc:setNick(parame[2], player)
 elseif(words == "/rp" .. " " .. parame[1] .. "," .. parame[2])then
   local play = Player(parame[1])
   if(not(play))then
       return
   end
   play:save()
   return play:setNick(parame[2])
 elseif(words == "/rm" .. " " .. parame[1] .. "," .. parame[2])then
    local monster = Monster(parame[1])
    if(not(monster))then
        return
    end
    return monster:setNick(parame[1])
 end
end