--[[
    =================
    By: Sr. Naja
    =================
]]
local addon_type = {
    [2497] = {
        pokemon_use = "Charmander",
        type = 1
    },
}

Return_addon_table = {
    [1] = {retu = 2497},
}
function AddonSystem(player, item, target, toPosition)
local types = addon_type[item.itemid]
if not types then 
    return print('0')
end
if(#player:getSummons() >= 1)then
    return print("a")
end
local slot = player:getSlotItem(CONST_SLOT_FEET)
if not slot then
    return print("b")
end
if(target ~= slot)then
    return print("c")
end
local pokeball = target:getAttribute(ITEM_ATTRIBUTE_POKEBALL)
if(pokeball ~= types.pokemon_use)then
    return print('d')
end
local poke_Addon = slot:getAttribute(ITEM_ATTRIBUTE_POKEADDON)
if(poke_Addon == types.type)then
    return player:sendTextMessage(MESSAGE_STATUS_SMALL, "This ".. pokeball  .." one already has this addon on it")
end
local pklevel = slot:getAttribute(ITEM_ATTRIBUTE_POKELEVEL)
local pkgender = slot:getAttribute(ITEM_ATTRIBUTE_GENDER)
local genders = GENDER_CONFIG[pkgender]
if not genders then return false end
local pknature = slot:getAttribute(ITEM_ATTRIBUTE_POKENATURE)
local natures = NATURE_CONFIG[pknature]
if not natures then return false end
local pkdate = slot:getAttribute(ITEM_ATTRIBUTE_POKEDATE)
local name_item = item:getName()
slot:setAttribute(ITEM_ATTRIBUTE_DESCRIPTION, "level : " .. pklevel .. "."..
"\n" .. "Gender : " .. genders.genderName .. "."..
"\n" .. "Nature : " .. natures.natureName .. "." ..
"\n" .. "Owner : " .. player:getName() .. "."..
"\n" .. "Addon : " .. name_item .. "."..
"\n" .. "Captured in : " .. pkdate ..". ")
item:remove(1)
slot:setAttribute(ITEM_ATTRIBUTE_POKEADDON, types.type)
return true
end

function Monster:addonTransformOutfit(attributeValor, pokeball)
    local tabela_addon = ADDON_CONFIG[attributeValor]
    if not tabela_addon then
        return
    end
    if(tabela_addon.pokemon ~= pokeball)then
        return
    end
    local monsterOutfit = self:getOutfit()
    monsterOutfit.lookType = tabela_addon.addon1
    self:setOutfit(monsterOutfit)
end