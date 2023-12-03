function onCreate()
	-- background shit
	Halloween = 1

	makeAnimatedLuaSprite('Spooky','stages/halloween_bg/halloween_bg', -200, -100)
	addAnimationByPrefix('Spooky','idle','halloweem bg0',24,true);
	addAnimationByPrefix('Spooky','thunder','halloweem bg lightning strike',24,false);
	objectPlayAnimation('Spooky','idle',true);
	setLuaSpriteScrollFactor('Spooky', 1.0, 1.0);
	scaleObject('Spooky', 1, 1);

	addLuaSprite('Spooky', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end