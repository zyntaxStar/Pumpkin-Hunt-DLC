function onCreatePost()
	removeLuaSprite('Lantern', true)
end

function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'evil-spooky'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'its_kinnin_time'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameover_kin'); --put in mods/music/
end

function onStepHit()
	if curStep == 1600 then
		removeLuaSprite('overlay2', true)
		removeLuaSprite('overlay', true)
	end
end