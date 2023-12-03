function onCreate()
	-- background shit

	makeLuaSprite('Sky', 'stages/mansion/entrance/Sky', -560, -320);
	setScrollFactor('Sky', 0.1, 0.1);
	scaleObject('Sky', 1, 1);

	makeLuaSprite('Background', 'stages/mansion/entrance/Background', -800, -160);
	setScrollFactor('Background', 0.8, 0.8);
	scaleObject('Background', 1, 1);

	makeLuaSprite('Floor', 'stages/mansion/entrance/Floor', -320, 640);
	setScrollFactor('Floor', 1.0, 1.0);
	scaleObject('Floor', 1, 1);

	makeAnimatedLuaSprite('Lantern','stages/lantern', 1600, 800)
	addAnimationByPrefix('Lantern','stages/lantern','lantern instance1',24,true);
	objectPlayAnimation('Lantern','BG Fire',true);
	setLuaSpriteScrollFactor('Lantern', 1, 0.975);
	scaleObject('Lantern', 1, 1);

	makeLuaSprite('Darkness1', 'stages/mansion/entrance/Darkness', 0, 0);
	setScrollFactor('Darkness1', 0.0, 0.0);
	scaleObject('Darkness1', 1, 1);
	setObjectCamera('Darkness1','hud')

	makeLuaSprite('DarknessG', 'stages/mansion/entrance/Ambiental_Darkness', 0, 0);
	setScrollFactor('DarknessG', 0.0, 0.0);
	scaleObject('DarknessG', 1, 1);
	setObjectCamera('DarknessG','hud')

	makeLuaSprite('ColdEffect', 'stages/mansion/entrance/Cold', 0, 0);
	setScrollFactor('ColdEffect', 0.0, 0.0);
	scaleObject('ColdEffect', 1, 1);
	setObjectCamera('ColdEffect','hud')
	setProperty('ColdEffect.alpha', 0.125);

	makeLuaSprite('WarmEffect', 'stages/mansion/entrance/Warm', 0, 0);
	setScrollFactor('WarmEffect', 0.0, 0.0);
	scaleObject('WarmEffect', 1, 1);
	setObjectCamera('WarmEffect','hud')
	setProperty('WarmEffect.alpha', 0);

	addLuaSprite('Sky', false);
	addLuaSprite('Background', false);
	addLuaSprite('Floor', false);
	addLuaSprite('Lantern', false);
	addLuaSprite('Darkness1', true);
	addLuaSprite('DarknessG', true);
	addLuaSprite('ColdEffect', true);
	addLuaSprite('WarmEffect', true);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end