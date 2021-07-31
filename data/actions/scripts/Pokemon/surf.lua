function onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if(#player:getSummons() == 0)then
       return print('a')
    end
player:move(target:getTile())
end