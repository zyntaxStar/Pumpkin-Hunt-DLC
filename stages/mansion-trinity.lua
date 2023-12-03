function onCreate()
	-- Entrance

	makeLuaSprite('Sky', 'stages/mansion/entrance/Sky', -560, -320);
	setScrollFactor('Sky', 0.1, 0.1);
	scaleObject('Sky', 1, 1);

	makeLuaSprite('Background', 'stages/mansion/entrance/Background', -800, -160);
	setScrollFactor('Background', 0.8, 0.8);
	scaleObject('Background', 1, 1);

	makeLuaSprite('Floor', 'stages/mansion/entrance/Floor', -320, 640);
	setScrollFactor('Floor', 1.0, 1.0);
	scaleObject('Floor', 1, 1);

	makeAnimatedLuaSprite('Cultist1','stages/mansion/entrance/Evil_Cultist', 1280, 140)
	addAnimationByPrefix('Cultist1','idle','Cultist Idle',24,true);
	objectPlayAnimation('Cultist1','idle',true);
	setLuaSpriteScrollFactor('Cultist1', 1, 1);
	scaleObject('Cultist1', 1, 1);
	setProperty('Cultist1.alpha', 0.0);

	-- Hallway

	makeLuaSprite('Hall_Wall', 'stages/mansion/hallway/Wall', -200, 0);
	setScrollFactor('Hall_Wall', 0.8, 1.0);
	scaleObject('Hall_Wall', 1, 1);
	setProperty('Hall_Wall.alpha', 0.0);

	makeLuaSprite('Hall_Floor', 'stages/mansion/hallway/Floor', -680, 680);
	setScrollFactor('Hall_Floor', 1.0, 1.0);
	scaleObject('Hall_Floor', 1, 1);
	setProperty('Hall_Floor.alpha', 0.0);

	-- Global

	if not lowQuality then

		makeAnimatedLuaSprite('LanternA','stages/lantern', 1600, 800)
		addAnimationByPrefix('LanternA','stages/lantern','lantern instance1',24,true);
		objectPlayAnimation('LanternA','BG Fire',true);
		setLuaSpriteScrollFactor('LanternA', 1, 0.975);
		scaleObject('LanternA', 1, 1);

		makeLuaSprite('LanternB','stages/lantern_broken', 1600, 800)
		setLuaSpriteScrollFactor('LanternB', 1, 0.975);
		scaleObject('LanternB', 1, 1);
		setProperty('LanternB.alpha', 0.0);

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

		makeLuaSprite('Trinity_Transition', 'stages/mansion/hallway/blackscreen', -1300, 0);
		setScrollFactor('Trinity_Transition', 0.0, 0.0);
		scaleObject('Trinity_Transition', 1, 1);
		setProperty('Trinity_Transition.alpha', 0.0);
		setObjectCamera('Trinity_Transition','hud')

		makeLuaSprite('Trinity_White_Scrn', 'stages/mansion/hallway/whitescreen', 0, 0);
		setScrollFactor('Trinity_White_Scrn', 0.0, 0.0);
		scaleObject('Trinity_White_Scrn', 1, 1);
		setProperty('Trinity_White_Scrn.alpha', 0.0);
		setObjectCamera('Trinity_White_Scrn','hud')

	end

	addLuaSprite('Sky', false);
	addLuaSprite('Background', false);
	addLuaSprite('Floor', false);
	addLuaSprite('LanternA', false);
	addLuaSprite('LanternB', false);
	addLuaSprite('Cultist1', false);
	addLuaSprite('Darkness1', true);
	addLuaSprite('DarknessG', true);
	addLuaSprite('ColdEffect', true);
	addLuaSprite('WarmEffect', true);

	addLuaSprite('Hall_Wall', false);
	addLuaSprite('Hall_Floor', false);

	addLuaSprite('Trinity_White_Scrn', true);
	addLuaSprite('Trinity_Transition', true);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end