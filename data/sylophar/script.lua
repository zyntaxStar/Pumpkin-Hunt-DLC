local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('KN_S');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'void-dead'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameover_kin'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'continue_Kin'); --put in mods/music/
end

function onStepHit()
    if curStep == 768 then
			doTweenAlpha('DarknessBye', 'Darkness1', 0.0, 0.25, 'sineInOut');
			doTweenAlpha('ColdnessBye', 'ColdEffect', 0.0, 0.5, 'sineInOut');
    end
    if curStep == 784 then
			doTweenAlpha('WarmnessHello', 'WarmEffect', 0.125, 0.5, 'sineInOut');
    end
end