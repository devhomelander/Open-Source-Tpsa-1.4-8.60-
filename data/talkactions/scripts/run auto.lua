local speed_storage = 5237688 -- private varible
local speed = 100 -- private varible

local function run(value)
    local player = Creature(value)
    if(not(player))then
        return
    end
    if(player:getStorageValue(speed_storage) >= 1)then
        player:setStorageValue(speed_storage, 0)
        player:changeSpeed(-speed)
        run(player)
        return
    end
    player:say("correr ", TALKTYPE_MONSTER_SAY)
    player:changeSpeed(speed)
    player:setStorageValue(speed_storage, 1)
    addEvent(run, 1500, player.uid)
end

function onSay(player, words, param)
    run(player.uid)
end