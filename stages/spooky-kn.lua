function onCreate()
	-- background shit

	makeLuaSprite('halloweenSky', 'stages/bg', -247.5, -150);
	setScrollFactor('halloweenSky', 0.1, 0.1);
	scaleObject('halloweenSky', 1, 1);

	makeLuaSprite('eyes', 'stages/eyes', -200, -150);
	setScrollFactor('eyes', 0.1, 0.1);
	scaleObject('eyes', 1, 1);
	setProperty('eyes.alpha', 0.0);
	
	makeLuaSprite('halloweenMansion', 'stages/spookymansion', -200, -150);
	setScrollFactor('halloweenMansion', 0.3, 0.3);
	scaleObject('halloweenMansion', 1, 1);

	makeLuaSprite('halloweenMountains', 'stages/backhills', -200, -150);
	setScrollFactor('halloweenMountains', 0.3, 0.3);
	scaleObject('halloweenMountains', 1, 1);

	makeLuaSprite('halloweenBGhostTombs', 'stages/backtombs', -200, -150);
	setScrollFactor('halloweenBGhostTombs', 0.45, 0.45);
	scaleObject('halloweenBGhostTombs', 1, 1);

	makeLuaSprite('halloweenTrees', 'stages/trees', -200, -122);
	setScrollFactor('halloweenTrees', 0.35, 0.5);
	scaleObject('halloweenTrees', 1, 1);

	makeLuaSprite('halloweenGate', 'stages/gate', -150, -70);
	setScrollFactor('halloweenGate', 0.9, 0.9);
	scaleObject('halloweenGate', 1, 1);

	makeLuaSprite('halloweenFront', 'stages/frontstage', -100, -60);
	setScrollFactor('halloweenFront', 0.9, 0.9);
	scaleObject('halloweenFront', 1, 1);

	makeLuaSprite('halloweenFGTombs', 'stages/frontgraves', -200, -60);
	setScrollFactor('halloweenFGTombs', 0.9, 0.9);
	scaleObject('halloweenFGTombs', 1, 1);

	makeLuaSprite('overlay2', 'stages/stageoverlaytwo', -160, -160);
	setScrollFactor('overlay2', 0, 0);
	scaleObject('overlay2', 1.375, 1.375);
	setObjectCamera('overlay2', 'hud')

	makeLuaSprite('overlay', 'stages/stageoverlay', -160, -160);
	setScrollFactor('overlay', 0, 0);
	scaleObject('overlay', 1.375, 1.375);
	setObjectCamera('overlay', 'hud')

	makeAnimatedLuaSprite('Lantern','stages/lantern', 640, 720)
	addAnimationByPrefix('Lantern','stages/lantern','lantern instance1',24,true);
	objectPlayAnimation('Lantern','BG Fire',true);
	setLuaSpriteScrollFactor('Lantern', 1, 0.975);
	scaleObject('Lantern', 1, 1);

	makeLuaSprite('hope_glow', 'stages/cemetery_stonks/saving_effect', 0, 0);
	setScrollFactor('hope_glow', 1.0, 1.0);
	scaleObject('hope_glow', 1.0, 1.0);
	setObjectCamera('hope_glow', 'hud')
	setProperty('hope_glow.alpha', 0.0);

	makeLuaSprite('eyes_overlay', 'stages/cemetery_stonks/eyes_overlay', 0, 0);
	setScrollFactor('eyes_overlay', 1.0, 1.0);
	scaleObject('eyes_overlay', 1.0, 1.0);
	setObjectCamera('eyes_overlay', 'hud')
	setProperty('eyes_overlay.alpha', 0.0);

	makeAnimatedLuaSprite('Spooky_Stars','stages/cemetery_stonks/Stars_Align', 0, 0)
	addAnimationByPrefix('Spooky_Stars','Stars','Stars Aligning', 12,true);
	objectPlayAnimation('Spooky_Stars','Stars',true);
	setLuaSpriteScrollFactor('Spooky_Stars', 0.1, 0.1);
	scaleObject('Spooky_Stars', 1, 1);
	setProperty('Spooky_Stars.alpha', 0.0);

	addLuaSprite('halloweenSky', false);
	addLuaSprite('Spooky_Stars', false);
	addLuaSprite('eyes', false);
	addLuaSprite('halloweenMansion', false);
	addLuaSprite('halloweenMountains', false);
	addLuaSprite('halloweenBGhostTombs', false);
	addLuaSprite('halloweenTrees', false);
	addLuaSprite('halloweenGate', false);
	addLuaSprite('halloweenFront', false);
	addLuaSprite('halloweenFGTombs', false);
	addLuaSprite('Lantern', false);
	addLuaSprite('overlay', true);
	addLuaSprite('overlay2', true);
	addLuaSprite('hope_glow', true);
	setObjectOrder('hope_glow', getObjectOrder('iconP2') + 4)
	setObjectOrder('eyes_overlay', getObjectOrder('iconP2') + 4)

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end