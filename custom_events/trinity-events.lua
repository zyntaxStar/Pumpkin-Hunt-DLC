function onCreate()
    setPropert('Mogus', 0)
end

function onEvent(name, value1, value2)
	if name == 'trinity-events' then
		if value1 == 'stage' then
			if value2 == '2' then
				setProperty('Hall_Floor.alpha', 1.0);
				setProperty('Hall_Wall.alpha', 1.0);
				setProperty('Sky.alpha', 0.0);
				setProperty('Background.alpha', 0.0);
				setProperty('Floor.alpha', 0.0);
				setProperty('Lantern.alpha', 0.0);
			end
		end
		if value1 == 'stage' then
			if value2 == '1' then
				setProperty('Hall_Floor.alpha', 0.0);
				setProperty('Hall_Wall.alpha', 0.0);
				setProperty('Sky.alpha', 1.0);
				setProperty('Background.alpha', 1.0);
				setProperty('Floor.alpha', 1.0);
				setProperty('Lantern.alpha', 1.0);
			end
		end
		if value1 == 'transition' then
			if value2 == '1' then
				doTweenX('transition_start', 'Trinity_Transition', 0, 0.5, 'quadIn')
				doTweenAlpha('transition_in', 'Trinity_Transition', 1, 0.625, 'linear')
			end
			if value2 == '2' then
				doTweenX('transition_start', 'Trinity_Transition', -1300, 0.25, 'quadOut')
				doTweenAlpha('transition_in', 'Trinity_Transition', 0, 0.375, 'linear')
			end
		end
		if value1 == 'white_scrn' then
			if value2 == '1' then
				doTweenAlpha('white_on', 'Trinity_White_Scrn', 1, 1, 'linear')
			end
			if value2 == '0' then
				doTweenAlpha('twhite_off', 'Trinity_White_Scrn', 0, 0.25, 'linear')
			end
		end
	end
end