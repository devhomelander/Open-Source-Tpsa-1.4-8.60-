local OPCODE_LANGUAGE = 110

function onExtendedOpcode(player, opcode, buffer)
	if opcode == OPCODE_LANGUAGE then
		print(test and Teste)
	else
		print("b")
	end
end
