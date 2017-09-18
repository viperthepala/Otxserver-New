local Days = {
		["Monday"] = { 
		Position = {x = 31254, y = 32604, z = 9} --Minos
	},
		["Tuesday"] = {
		Position = {x = 33459, y = 31715, z = 9} --Catacombs
	},
		["Wednesday"] = {
		Position = {x = 31061, y = 32605, z = 9} --Golem
	},
		["Thursday"] = {
		Position = {x = 33459, y = 31715, z = 9} --Catacombs
	},
		["Friday"] = {
		Position = {x = 33459, y = 31715, z = 9} --Catacombs
	},
		["Saturday"] = {
		Position = {x = 31254, y = 32604, z = 9} --Minos
	},
		["Sunday"] = {
		Position = {x = 33459, y = 31715, z = 9} --Catacombs
	},
}

	function onStepIn(cid, item, position, lastPosition, fromPosition, toPosition, actor)
			local Teleport = Days[os.date("%A")]
			if Teleport then
			player:say('Slrrp!', TALKTYPE_MONSTER_SAY)
			doTeleportThing(cid, Teleport.Position, true)
			doSendMagicEffect(Teleport.Position, CONST_ME_TELEPORT)
		end
	return true
end