-- 

function onThink(interval, lastExecution)
	local messages = {
		"[COMANDOS] !buyhouse - !serverinfo - !online - !uptime.",
		"[BUGS] use o comando !report Ex.: !report SQM BUGADO !\nA cada Report válido de BUG's você recebe um bonus!"
	}

    Game.broadcastMessage(messages[math.random(#messages)], MESSAGE_EVENT_ADVANCE) 
    return true
end

