local info_opcode = {
    opcode = 110
} 

function onExtendedOpcode(player, opcode, buffer)
if opcode == info_opcode.opcode then
local teste = CreatureEvent("Pokeinfo")
teste:onExtendedOpcode(player, info_opcode.opcode, player:getName())
print("m")
else 
return false 
end
end
