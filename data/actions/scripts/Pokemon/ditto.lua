function onUse(player, item, fromPosition, target, toPosition, isHotkey)
if(#player:getSummons() < 1)then
    return print("a")
end
local pokemon = player:getSummons()[1]
if not (pokemon)then
    return print("b")
end
if(pokemon:getName() ~= "Ditto")then
    return print("c")
end
local tar = target:getOutfit()
if not(tar)then
    return false
end
local poke_pos = pokemon:getPosition()
local outfit_ditto = pokemon:getOutfit()
outfit_ditto.lookType = 179
pokemon:setOutfit(outfit_ditto)
poke_pos:sendMagicEffect(185)
addEvent(transformDitto,500,pokemon.uid,tar.lookType)
return true
end