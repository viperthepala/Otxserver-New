local portals = {
	[13400] = {position = Position(33636, 31891, 6), message = 'Slrrp!'}, --entrance
	[13401] = {position = Position(33490, 31988, 7), message = 'Slrrp!'}, --exit
}

function onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end

	local portal = portals[item.uid]
	if portal then
		player:teleportTo(portal.position)
		item:getPosition():sendMagicEffect(CONST_ME_GREEN_RINGS)
		player:say(portal.message, TALKTYPE_MONSTER_SAY)
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	end
	return true
end
