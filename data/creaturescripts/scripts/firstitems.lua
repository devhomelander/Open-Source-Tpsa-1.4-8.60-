local firstItems = {2012}

function onLogin(player)
	if player:getLastLoginSaved() == 0 then
		for i = 1, #firstItems do
			player:addItem(ITEM_BAG, 1):addItem(firstItems[i], 150)
			player:addItem(2580, 1)
			player:addItem(1988, 1)
			player:addItem(2550, 1)
			player:addItem(2382, 1)
			player:addItem(2120, 1)
		end
	end
	return true
end