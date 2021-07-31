function onUse(player, item, fromPosition, target, toPosition, isHotkey)
if(target[item.itemid] ~= target[BALLS])then
return print(target:getName())
end
return true
end