local Warn = 0;
function onCreate()

function onEvent(name, value1, value2)
	if name == "Playsound" then
			playSound(value1, value2, false)
		end
	end
end