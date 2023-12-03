local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('KN_D1');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'evil-spooky'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'its_kinnin_time'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameover_kin'); --put in mods/music/
end