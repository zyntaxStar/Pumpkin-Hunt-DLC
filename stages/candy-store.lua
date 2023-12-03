function onCreate()
	-- background shit

	makeLuaSprite('Candyish_Sky', 'stages/candy_store/Candy_Sky', -1280, -640);
	setScrollFactor('Candyish_Sky', 0.1, 0.1);
	scaleObject('Candyish_Sky', 1, 1);

	makeLuaSprite('Candyish_Hills', 'stages/candy_store/Candy_Hills', -1280, -320);
	setScrollFactor('Candyish_Hills', 0.375, 0.375);
	scaleObject('Candyish_Hills', 1, 1);

	makeLuaSprite('Candyish_Store_Back', 'stages/candy_store/Candy_Back', -1280, -480);
	setScrollFactor('Candyish_Store_Back', 0.9, 0.925);
	scaleObject('Candyish_Store_Back', 1.5, 1);

	makeLuaSprite('Candyish_Store', 'stages/candy_store/Candy_Store', -640, -560);
	setScrollFactor('Candyish_Store', 0.95, 0.95);
	scaleObject('Candyish_Store', 1, 1);

	makeLuaSprite('Candyish_Street', 'stages/candy_store/Candy_Floor', -1280, 840);
	setScrollFactor('Candyish_Street', 1.0, 1.0);
	scaleObject('Candyish_Street', 1, 1);

	makeLuaSprite('Candyish_Junk', 'stages/candy_store/Candy_Junk', -480, 800);
	setScrollFactor('Candyish_Junk', 1.0, 1.0);
	scaleObject('Candyish_Junk', 1, 1);

	makeLuaSprite('overlay2', 'stages/stageoverlaytwo', -160, -160);
	setScrollFactor('overlay2', 0, 0);
	scaleObject('overlay2', 1.375, 1.375);
	setObjectCamera('overlay2', 'hud');

	makeLuaSprite('overlay', 'stages/stageoverlay', -160, -160);
	setScrollFactor('overlay', 0, 0);
	scaleObject('overlay', 1.375, 1.375);
	setObjectCamera('overlay', 'hud');

	makeAnimatedLuaSprite('Lantern','stages/lantern', 1600, 800)
	addAnimationByPrefix('Lantern','stages/lantern','lantern instance1',24,true);
	objectPlayAnimation('Lantern','BG Fire',true);
	setLuaSpriteScrollFactor('Lantern', 1, 0.975);
	scaleObject('Lantern', 1, 1);

	makeAnimatedLuaSprite('Jack','stages/candy_store/Evil_Jack', -320, 600)
	addAnimationByPrefix('Jack','idle','Evil Jack Idle',24,true);
	objectPlayAnimation('Jack','idle',true);
	setLuaSpriteScrollFactor('Jack', 1.25, 1.25);
	scaleObject('Jack', 1.25, 1.25);
	setProperty('Jack.alpha', 1.0);

	addLuaSprite('Candyish_Sky', false);
	addLuaSprite('Candyish_Hills', false);
	addLuaSprite('Candyish_Store_Back', false);
	addLuaSprite('Candyish_Store', false);
	addLuaSprite('Candyish_Street', false);
	addLuaSprite('Candyish_Junk', false);
	addLuaSprite('Lantern', false);
	addLuaSprite('Jack', true);
	addLuaSprite('overlay', true);
	addLuaSprite('overlay2', true);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end