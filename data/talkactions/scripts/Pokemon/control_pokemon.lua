function onSay(player, words, param)
if(#player:getSummons() <= 0)then
return false
end
local pokemon = player:getSummons()[1]
if(words == "c1")then
pokemon:setDirection(0)
local say_text = pokemon:getName() .. ", vire para o " .. "Norte"
player:say(say_text, TALKTYPE_MONSTER_SAY)
elseif(words == "c2")then
pokemon:setDirection(1)
local say_text = pokemon:getName() .. ", vire para o " .. "Leste"
player:say(say_text, TALKTYPE_MONSTER_SAY)
elseif(words == "c3")then
pokemon:setDirection(2)
local say_text = pokemon:getName() .. ", vire para o " .. "Sul"
player:say(say_text, TALKTYPE_MONSTER_SAY)
elseif(words == "c4")then
pokemon:setDirection(3)
local say_text = pokemon:getName() .. ", vire para o " .. "Oeste"
player:say(say_text, TALKTYPE_MONSTER_SAY)
else
    return false
end

end