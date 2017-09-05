configExf = {
     Area_Arena = {{x = 32589, y = 31662, z = 7}, {x = 32631, y = 31693, z = 7}},
	 arena = {x = 32622, y = 31698, z = 7},
     teleportPos = {32461, 32471, 6},
	 teleportPla = {32622, 31698, 7},
	 stats = 201201180701,
	 timetostart = 120,
	 prize = 6571,
	 templepos = {32461, 32471, 6},
 randpos = {{x=32625,y=31692,z=7},{x=32621,y=31692,z=7},{x=32617,y=31692,z=7},{x=32619,y=31687,z=7},{x=32624,y=31681,z=7},{x=32630,y=31668,z=7},{x=32627,y=31668,z=7},{x=32617,y=31672,z=7},{x=32613,y=31677,z=7},{x=32608,y=31665,z=7},{x=32610,y=31688,z=7},{x=32598,y=31684,z=7},{x=32596,y=31684,z=7},{x=32597,y=31668,z=7}}
}
local TELEPORT_POSITION = Position(32461, 32471, 6)
local TELEPORT_ACTIONID = 19027
local TELEPORT_ITEMID = 1387


function doStartExf()
	Game.broadcastMessage("Teleport for Enchanted Forest Event was created in Event Room.", MESSAGE_STATUS_WARNING)
	local tp = Game.createItem(TELEPORT_ITEMID, 1, TELEPORT_POSITION)
	if not tp then
		error("Nao foi possivel criar o teleport na posicao especificada.")
	end
	tp:setActionId(TELEPORT_ACTIONID)
	setGlobalStorageValue(configExf.stats, 0)
    Game.broadcastMessage("The Exchanted Forest event will start in " .. configExf.timetostart .. " seconds.", MESSAGE_STATUS_WARNING)
    addEvent(doInitExf, configExf.timetostart*1000)
	end
	
function doInitExf()

if getGlobalStorageValue(configExf.stats) == 0 then
	Game.broadcastMessage("The Exchanted Forest event is starting...", MESSAGE_STATUS_WARNING)
	setGlobalStorageValue(configExf.stats, 1)
end

end

function doCloseExf()

setGlobalStorageValue(configExf.stats, -1)
	local tp = Game.removeItem(TELEPORT_ITEMID, 1, TELEPORT_POSITION)
	if not tp then
		error("Nao foi possivel remover o teleport na posicao especificada.")
	end

doCleanExfRoom()
end

function doCleanExfRoom()

	local pos = player:getPosition()

	if pos.z == configExf.Area_Arena[1].z then
		if pos.x >= configExf.Area_Arena[1].x and pos.y >= configExf.Area_Arena[1].y then
			if pos.x <= configExf.Area_Arena[2].x and pos.y <= configExf.Area_Arena[2].y then
			Player(players):teleportTo(Player(players):getTown():getTemplePosition())
				return true
			end
		end
	end
	return false
end