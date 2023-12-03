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

	makeLuaSprite('overlay_h', 'stages/cemetery_stonks/hallucination_effect', -80, -80);
	setScrollFactor('overlay_h', 0, 0);
	scaleObject('overlay_h', 1.125, 1.125);
	setObjectCamera('overlay_h', 'hud')
	setProperty('overlay_h.alpha', 0.0);

	makeAnimatedLuaSprite('Lantern','stages/lantern', 640, 720)
	addAnimationByPrefix('Lantern','stages/lantern','lantern instance1',24,true);
	objectPlayAnimation('Lantern','BG Fire',true);
	setLuaSpriteScrollFactor('Lantern', 1, 0.975);
	scaleObject('Lantern', 1, 1);

	makeAnimatedLuaSprite('halloweenGhosts','stages/cemetery_stonks/GHOSTbacktombs', -200, -150)
	addAnimationByPrefix('halloweenGhosts','deadIdle','ghost idle d3',24,false);
	objectPlayAnimation('halloweenGhosts','deadIdle',false);
	setLuaSpriteScrollFactor('halloweenGhosts', 0.45, 0.45);
	scaleObject('halloweenGhosts', 1.0, 1.0);
	setProperty('halloweenGhosts.alpha', 0.0);

	makeLuaSprite('danger_filter', 'stages/cemetery_stonks/danger_effect', 0, 0);
	setScrollFactor('danger_filter', 1, 1);
	scaleObject('danger_filter', 1.0, 1.0);
	setObjectCamera('danger_filter','hud')
	setProperty('danger_filter.alpha', 0.0);

	addLuaSprite('halloweenSky', false);
	addLuaSprite('halloweenMansion', false);
	addLuaSprite('halloweenMountains', false);
	addLuaSprite('halloweenBGhostTombs', false);
	addLuaSprite('halloweenGhosts', false);
	addLuaSprite('halloweenTrees', false);
	addLuaSprite('halloweenGate', false);
	addLuaSprite('halloweenFront', false);
	addLuaSprite('halloweenFGTombs', false);
	addLuaSprite('Lantern', false);
	addLuaSprite('overlay', true);
	addLuaSprite('overlay2', true);
	addLuaSprite('overlay_h', true);
	addLuaSprite('danger_filter', true);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end