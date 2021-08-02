function Player:monsterInfo(pokemon)
--[[local slot = self:getSlotItem(CONST_SLOT_FEET)
if not slot then return false end
local pokeball_name = slot:getAttribute(ITEM_ATTRIBUTE_POKEBALL)
local name_table = CONFIG_POKEMON[pokeball_name]
if not pokeball_name then return false end
local pokeball_gender = slot:getAttribute(ITEM_ATTRIBUTE_GENDER)
local gender_table = GENDER_CONFIG[pokeball_gender]
if not gender_table then return false end
local pokeball_level = slot:getAttribute(ITEM_ATTRIBUTE_POKELEVEL)
local pokeball_nature = slot:getAttribute(ITEM_ATTRIBUTE_POKENATURE)
local nature_table = NATURE_CONFIG[pokeball_nature]
if not nature_table then return false end]]
end