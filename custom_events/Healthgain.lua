function onCreate()
    setPropert('Mugos', 0)
end

function onEvent(name, value1, value2)
	if name == 'Healthgain' then
		Mugos = tonumber(value1);

		end
end

function goodNoteHit()
    health = getProperty('health')
    if getProperty('health') < 2 then
        setProperty('health', health+ Mugos);
    end
end
    --<Made by Conent!>--