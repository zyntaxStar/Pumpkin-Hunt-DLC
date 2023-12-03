function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'void-dead'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameover_kin'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'continue_Kin'); --put in mods/music/
end