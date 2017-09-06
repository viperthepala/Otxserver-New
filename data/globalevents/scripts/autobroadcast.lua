-- 

function onThink(interval, lastExecution)
    local MESSAGE = {
        "[COMMANDS] !buyhouse - !sellhouse - !serverinfo - !online - !uptime - !outfit .",
        "[BUGS?] REPORTEM EM: http://www.github.com/malucooo/otxserver-new/.",
		"[CONTATO] FACEBOOK:https://www.facebook.com/erick.nunes.75/ SKYPE: e_nunes@live.com WHATSAPP: +5493412802546.",
    }
    Game.broadcastMessage(MESSAGE[math.random(1, #MESSAGE)], MESSAGE_EVENT_ADVANCE) 
    return true
end
