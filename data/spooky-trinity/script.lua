local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('KN_ST');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onCreate()
	doTweenAlpha('EFI_alpha_tweenON', 'The_Eyes_Influence', 0.125, 0.5, 'sineInOut');
	setPropertyFromClass('GameOverSubstate', 'characterName', 'void-dead'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameover_kin'); --put in mods/music/
end

function onStepHit()
	if curStep == 2512 then
		doTweenAlpha('DarknessBye', 'Darkness1', 0.0, 0.25, 'sineInOut');
	end
    if curStep == 3327 then
		setProperty('Cultist1.alpha', 1.0);
		doTweenAlpha('DarknessHi', 'Darkness1', 1.0, 0.25, 'sineInOut');
    end
    if curStep == 5696 then
		setProperty('Cultist1.alpha', 0.0);
		setProperty('LanternA.alpha', 0.0);
		setProperty('LanternB.alpha', 1.0);
    end
end