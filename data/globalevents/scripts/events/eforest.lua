dofile('data/lib/events/eforest.lua')
function onTime()
if getGlobalStorageValue(configExf.stats) == -1 then
		doStartExf()
	end
end	

function doStartExf()

doCreateTeleport(1387, configExf.teleportPla, configExf.teleportPos)
setGlobalStorageValue(configExf.stats, 0)
Game.broadcastMessage("The Exchanted Forest event will open in " .. configExf.timetostart .. " seconds.")
addEvent(doInitExf, configExf.timetostart*1000)
end	

function doInitExf()

if getGlobalStorageValue(configExf.stats) == 0 then
	Game.broadcastMessage("The Exchanted Forest event is starting...")
	setGlobalStorageValue(configExf.stats, 1)
end

end

function doCloseExf()

setGlobalStorageValue(configExf.stats, -1)

local item = getTileItemById(configExf.teleportPos, 1387)
if(item.uid ~= 0) then
	doRemoveItem(item.uid)
end	

doRemovePlayersFromArea(configExf.topleftPos, configExf.botrightPos, configExf.templepos)
end