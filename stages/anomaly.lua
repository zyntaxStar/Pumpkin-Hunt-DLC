
--How makeLuaSprite works:
--makeLuaSprite(<SPRITE VARIABLE>, <SPRITE IMAGE FILE NAME>, <X>, <Y>);
--"Sprite Variable" is how you refer to the sprite you just spawned in other methods like "setScrollFactor" and "scaleObject" for example

--so for example, i made the sprites "stagelight_left" and "stagelight_right", i can use "scaleObject('stagelight_left', 1.1, 1.1)"
--to adjust the scale of specifically the one stage light on left instead of both of them

function onCreate()
	-- background shit
	makeAnimatedLuaSprite('stageback','stages/continuum/stagebackRipple', -200, -100)
	addAnimationByPrefix('stageback','idle','stagebackRipple motion0',32,true);
	objectPlayAnimation('stageback','idle',true);
	setLuaSpriteScrollFactor('stageback', 1.0, 1.0);
	scaleObject('stageback', 2.5, 2.5);
	
	makeLuaSprite('stagefront', 'stages/continuum/stagefrontAlt', -650, 600);
	setScrollFactor('stagefront', 0.9, 0.9);
	scaleObject('stagefront', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then

		makeLuaSprite('stagecurtains', 'stages/continuum/stagecurtains2', -500, -300);
		setScrollFactor('stagecurtains', 1.3, 1.3);
		scaleObject('stagecurtains', 0.9, 0.9);
	end

	addLuaSprite('stageback', false);
	addLuaSprite('stagefront', false);
	addLuaSprite('stagecurtains', false);
end