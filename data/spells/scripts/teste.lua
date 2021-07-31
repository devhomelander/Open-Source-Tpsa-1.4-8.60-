local combat = Combat()

combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ICEAREA)
combat:setArea(createCombatArea(AREA_WAVE4))

function onCastSpell(creature, variant)
local pokemon = creature:getSummons()[1]
local aa = creature:getTarget()
if not aa then
creature:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, "Sorry " .. creature:getName() ..  " ,can't speel")
return false 
end
local bb = aa:getClosestFreePosition(creature:getPosition(), true)
local message = {"teste","delicia"}
local color = {1,2,3,4,5,6,7,8,10}
creature:teleportTo(bb)
Game.sendAnimatedText(message[math.random(#message)], bb, color[math.random(#color)])
pokemon:execute(creature, variant)
return false
end