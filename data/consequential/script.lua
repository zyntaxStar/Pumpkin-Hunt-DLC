local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('KN_CQ');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onCreatePost()
	removeLuaSprite('Lantern', true)
end

function onStepHit()
	if curStep == 640 then
		doTweenAlpha('getfake', 'overlay_h', 0.8, 6, 'sineInOut');
	end
	if curStep == 768 then
		doTweenAlpha('getreal', 'overlay_h', 0.0, 0.5, 'sineInOut');
	end
end