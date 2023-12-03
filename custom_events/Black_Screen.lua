function onEvent(name, value1, value2)
	if name == 'Black_Screen' then
        makeLuaSprite('BlackScrn', 'Black_Screen', 0, 0)
        setScrollFactor('BlackScrn', 0.0, 0.0);
	    scaleObject('BlackScrn', 5, 5);
        addLuaSprite('BlackScrn', true)
        setObjectCamera('BlackScrn', 'other');
        doTweenAlpha('fade_effect', 'BlackScrn', 0, value1, 'linear');
    end
end
    --<Made by Conent!>--