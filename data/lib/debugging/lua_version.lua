if type(jit) == 'table' then
	print(os.time() .. " " ..'>> Using ' .. jit.version)  --LuaJIT 2.0.2
else
	print(os.time() .. " " ..'>> Using ' .. _VERSION)
end
