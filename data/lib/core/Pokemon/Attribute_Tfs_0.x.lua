KEYS = {
    ["none"] = {
        nameAttribute = ITEM_ATTRIBUTE_NONE,
    },
    ["actionid"] = {
        nameAttribute = ITEM_ATTRIBUTE_ACTIONID,
    },
    ["uniqueid"] = {
        nameAttribute = ITEM_ATTRIBUTE_UNIQUEID,
    },
    ["description"] = {
        nameAttribute = ITEM_ATTRIBUTE_DESCRIPTION,
    },
    ["text"] = {
        nameAttribute = ITEM_ATTRIBUTE_TEXT,
    },
    ["date"] = {
        nameAttribute = ITEM_ATTRIBUTE_DATE,
    },
    ["writer"] = {
        nameAttribute = ITEM_ATTRIBUTE_WRITER,
    },
    ["name"] = {
        nameAttribute = ITEM_ATTRIBUTE_NAME,
    },
    ["article"] = {
        nameAttribute = ITEM_ATTRIBUTE_ARTICLE,
    },
    ["pluralname"] = {
        nameAttribute = ITEM_ATTRIBUTE_PLURALNAME,
    },
    ["weight"] = {
        nameAttribute = ITEM_ATTRIBUTE_WEIGHT,
    },
    ["attack"] = {
        nameAttribute = ITEM_ATTRIBUTE_ATTACK,
    },
    ["defense"] = {
        nameAttribute = ITEM_ATTRIBUTE_DEFENSE,
    },
    ["extradefense"] = {
        nameAttribute = ITEM_ATTRIBUTE_EXTRADEFENSE,
    },
    ["armor"] = {
        nameAttribute = ITEM_ATTRIBUTE_ARMOR,
    },
    ["hitchance"] = {
        nameAttribute = ITEM_ATTRIBUTE_HITCHANCE,
    },
    ["shootrange"] = {
        nameAttribute = ITEM_ATTRIBUTE_SHOOTRANGE,
    },
    ["owner"] = {
        nameAttribute = ITEM_ATTRIBUTE_OWNER,
    },
    ["duration"] = {
        nameAttribute = ITEM_ATTRIBUTE_DURATION,
    },
    ["decaystate"] = {
        nameAttribute = ITEM_ATTRIBUTE_DECAYSTATE,
    },
    ["corpseowner"] = {
        nameAttribute = ITEM_ATTRIBUTE_CORPSEOWNER,
    },
    ["charges"] = {
        nameAttribute = ITEM_ATTRIBUTE_CHARGES,
    },
    ["fluidtype"] = {
        nameAttribute = ITEM_ATTRIBUTE_FLUIDTYPE,
    },
    ["doorid"] = {
        nameAttribute = ITEM_ATTRIBUTE_DOORID,
    },
    ["decayto"] = {
        nameAttribute = ITEM_ATTRIBUTE_DECAYTO,
    },
    ["pokeball"] = {
        nameAttribute = ITEM_ATTRIBUTE_POKEBALL,
    },
    ["pokegender"] = {
        nameAttribute = ITEM_ATTRIBUTE_GENDER,
    },
    ["pokeballtransform"] = {
        nameAttribute = ITEM_ATTRIBUTE_POKETRANSFORM,
    },
    ["pokelife"] = {
        nameAttribute = ITEM_ATTRIBUTE_POKELIFE,
    },
    ["pokenature"] = {
        nameAttribute = ITEM_ATTRIBUTE_POKENATURE,
    },
    ["pokelevel"] = {
        nameAttribute = ITEM_ATTRIBUTE_POKELEVEL,
    },
    ["pokemoves"] = {
        nameAttribute = ITEM_ATTRIBUTE_POKEMOVES,
    },
    ["custom"] = {
        nameAttribute = ITEM_ATTRIBUTE_CUSTOM,
    },
}

function getItemAttribute(item, key)

if(not(item))then

return print(">> - doItemSetAttribute() " .. " : " .. "Item does not exist")

end

local keyNames = KEYS[key]

if(not(keyNames))then

return print(">> - doItemSetAttribute() " .. " : " .. "That " .. key .. " does not exist")

end

local Key_Attribute = item:getAttribute(keyNames.nameAttribute)

return Key_Attribute

end

function doItemSetAttribute(item, key, value)

if(not(item))then

return print(">> - doItemSetAttribute() " .. " : " .. "Item does not exist")
        
end

local keyNames = KEYS[key]

if(not(keyNames))then

return print(">> - doItemSetAttribute() " .. " : " .. "That " .. key .. " does not exist")

end

if(value == nil)then
    return print("That : " ..  value .. " is equal to nil")
end

local Set_Key_Attribute = item:setAttribute(keyNames.nameAttribute, value)

return Set_Key_Attribute

end