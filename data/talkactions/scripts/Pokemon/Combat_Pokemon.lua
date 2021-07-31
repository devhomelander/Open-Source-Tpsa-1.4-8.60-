function onSay(player, words, param)
local pokemon = player:getSummons()[1]
if not pokemon then return true end
pokemon:setCombatEffect(24)
end