local table =
{	
	[2] = {type = "item", id = 9931, msg = "You have received one Regeneration Shoes for advancing to level 2."},
	[7] = {type = "bank", id = 10000, msg = "You have received 10000 gold in your bank for advancing to Level 7."},
	[8] = {type = "mount", id = 13, msg = "You have received a Donkey Mount for advancing to Level 8."},
	[9] = {type = "keg", id = 28577, msg = "You have received a health potion keg for advancing to Level 9."},
	[10] = {type = "keg", id = 28582, msg = "You have received a mana potion keg for advancing to Level 10."},
	[20] = {type = "bank", id = 20000, msg = "You have received 20000 gold in your bank for advancing to Level 20."},
	[40] = {type = "bank", id = 10000, msg = "You have received 10000 gold in your bank for advancing to Level 40."},
	[50] = {type = "coins", id = 24774, msg = "You have received 100 world coins for advancing to Level 50."},
	[70] = {type = "bank", id = 10000, msg = "You have received 10000 gold in your bank for advancing to Level 70."},
	[80] = {type = "mount", id = 35, msg = "You have received a Water Buffalo Mount for advancing to Level 80."},
	[100] = {type = "bank", id = 40000, msg = "You have received 40000 gold in your bank for advancing to Level 100."},	
	[150] = {type = "item", id = 5942, msg = "You have received one blessed wooden stake because you reached level 150."},
	[200] = {type = "item", id = 2195, msg = "You have been awarded with 1 boots of haste for reaching level 200."},
}

local storage = 99963

function onAdvance(player, skill, oldLevel, newLevel)

	if skill ~= SKILL_LEVEL or newLevel <= oldLevel then
		return true
	end

	for level, _ in pairs(table) do
		if newLevel >= level and player:getStorageValue(storage) < level then
			if table[level].type == "item" then
				player:addItem(table[level].id, 1)
			elseif table[level].type == "coins" then
				player:addItem(table[level].id, 100)
			elseif table[level].type == "keg" then
				player:addItem(table[level].id, 500)
			elseif table[level].type == "mount" then
				player:addMount(table[level].id)
			elseif table[level].type == "bank" then
				player:setBankBalance(player:getBankBalance() + table[level].id)
			else
				return false
			end

			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, table[level].msg)
			player:setStorageValue(storage, level)
		end
	end

	player:save()

	return true
end
