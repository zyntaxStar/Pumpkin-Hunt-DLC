function onEvent(name, value1, value2)
	if name == 'eyes_influence' then
		if value1 == 'on' then
			doTweenAlpha('EFI_alpha_tweenON', 'The_Eyes_Influence', 0.125, 0.5, 'sineInOut');
		end
		if value1 == 'off' then
			doTweenAlpha('EFI_alpha_tweenOFF', 'The_Eyes_Influence', 0.0, 0.5, 'sineInOut');
		end
    end
end