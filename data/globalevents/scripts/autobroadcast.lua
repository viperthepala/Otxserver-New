-- 

function onThink(interval, lastExecution)
	local messages = {
	"[TEAMSPEAK3]: Servidor de teamSpeak 3 com 1000 slots disponiveis, liberado para criar salas particulares e com senha. IP: Localhost.",
	"[REGRAS]: Não viole nossas regras. http://localhost/index.php?subtopic=tibiarules",
	"[SISTEMA]: O global save do servidor ocorre todos os dias às 06:00hrs.",
	"[COMANDOS]: !buyhouse - !serverinfo - !online - !uptime.",
	"[BUGS]: use o comando !report Ex.: !report SQM BUGADO !\nA cada Report válido de BUG's você recebe um bonus!"
	}

    Game.broadcastMessage(messages[math.random(#messages)], MESSAGE_EVENT_ADVANCE) 
    return true
end

