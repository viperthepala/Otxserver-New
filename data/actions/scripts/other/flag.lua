function onUse(cid, item)

if getGlobalStorageValue(configExf.stats) == 1 then
	doTeleportThing(cid, configExf.templepos)
	doCloseExf()
	doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Congratulations you are winner of Enchanted Florest Event, receive your recompense!!!")
	doBroadcastMessage(getPlayerName(cid) .. " You are winner of Enchanted Florest.")
	doPlayerAddItem(cid, configExf.prize)
else
	doPlayerSendCancel(cid, "Sorry, But this event is closed now!")
end

return true
end