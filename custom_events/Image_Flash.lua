function onEvent(name, value1, value2)
	if name == 'Image_Flash' then
        makeLuaSprite('PicFlash', value2, 0, 0)
        setScrollFactor('PicFlash', 0.0, 0.0);
	    scaleObject('PicFlash', 1, 1);
	    setProperty('PicFlash.alpha', 0.625);
        addLuaSprite('PicFlash', true)
        setObjectCamera('PicFlash', 'other');
        doTweenAlpha('fade_effect', 'PicFlash', 0.0, value1, 'backInOut');
    end
end
    --<Made by Conent!>--