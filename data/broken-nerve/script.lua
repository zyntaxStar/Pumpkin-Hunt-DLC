local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('KN_D2');
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

	-- Saving Effect Bump

function onStepHit()
    if curStep == 1536 then
		saving = true
    end
    if curStep == 1800 then
		saving = false
    end
end

function onBeatHit()
	if saving == true then
		setProperty('hope_glow.alpha', 0.25);
		doTweenAlpha('saving_fade', 'hope_glow', 0.0, 0.2, 'linear');
	end
end	


	--[[Death shit

local onDeathText = 0 
local textNumber = 0
function onGameOver()
	if isStoryMode and onDeathText <= 0 then
		setProperty('inCutscene', true);
		startDialogue('dialogue_death', 'gameover_k_dialogue');
		allowEndShit = false;
		return Function_Stop;
	end
end

function onNextDialogue(line)
	if textNumber <= 4 then
		playSound('DemonLaught', 1.0, false);
		textNumber = getProperty(textNumber)+ 1;
	end
	if textNumber >= 2 then
		onDeathText = 2;
		allowEndShit = true;
	end
end

--function onPause()
--	if onDeathText == 1 then
--	-- Called when you press Pause while not on a cutscene/etc
--	-- return Function_Stop if you want to stop the player from pausing the game
--		return Function_Stop;
--	end
end]]--