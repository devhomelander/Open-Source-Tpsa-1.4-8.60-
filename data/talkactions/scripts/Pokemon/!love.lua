local function emotion(value)
    local pokemon = Creature(value)
    if(not(pokemon))then
        return
    end

    local pokemon_pos = pokemon:getPosition()
    if(not(pokemon_pos))then
        return
    end

    pokemon_pos:sendMagicEffect(188)
    pokemon:changeSpeed(300)
end

function onSay(player, words, param)
if(#player:getSummons() <= 0)then 
    return
end

local player_pos = player:getPosition()
if(not(player_pos))then
    return
end

local pokemon = player:getSummons()[1]
if(not(pokemon))then
    return
end
player_pos:sendMagicEffect(188)
addEvent(emotion, 3500, pokemon.uid)
end