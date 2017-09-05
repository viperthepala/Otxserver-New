function onStepIn(cid, item, position, lastPosition, fromPosition, toPosition)

if isPlayer(cid) then
	if getGlobalStorageValue(configExf.stats) == 1 then
		doTeleportThing(cid, configExf.randpos[math.random(1, #configExf.randpos)])
		doSendMagicEffect(getPlayerPosition(cid), 29)
	else
		doTeleportThing(cid, configExf.teleportPla)
	end
end

return true
end