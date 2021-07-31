local function removePokemon(cid)
    local pokemon = Creature(cid)
    if(not(pokemon))then
        return
    end
    pokemon:remove()
end

function onSay(player, words, param)
if(#player:getSummons() == 0 )then
    return true
end

    if(words == "!fly")then

        local slot = player:getSlotItem(CONST_SLOT_FEET)

        if(not(slot))then
            return true
        end

        local pokeball_name = slot:getAttribute(ITEM_ATTRIBUTE_POKEBALL)
        local table_config = CONFIG_POKEMON[pokeball_name]

        if(not(table_config))then
            return true
        end

        if(player:getStorageValue(276327) == 1)then
            player:setStorageValue(276327, 0)
            print("a")
            doSummonMonster(player, pokeball_name)
        end

        local pokemon_use = player:getSummons()[1]

        if(not(pokemon_use))then
            return true
        end

        pokemon_use:move(player:getPosition())


        addEvent(removePokemon, 300, pokemon_use.uid)

        local transform_outfit = player:getOutfit()
        transform_outfit.lookType = table_config.habilidade
        player:setOutfit(transform_outfit)

        player:setStorageValue(276327, 1)

    end
end