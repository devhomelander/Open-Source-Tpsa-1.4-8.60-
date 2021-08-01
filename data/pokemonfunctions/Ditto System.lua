function transformDitto(pokemon,tar)
local creature = Creature(pokemon)
local outfit_ditto = creature:getOutfit()
outfit_ditto.lookType = tar
creature:setOutfit(outfit_ditto)
end