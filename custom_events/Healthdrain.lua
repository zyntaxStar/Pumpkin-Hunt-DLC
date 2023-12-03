function onCreate()
    setPropert('Mogus', 0)
end

function onEvent(name, value1, value2)
	if name == 'Healthdrain' then
		Mogus = tonumber(value1);
        Poison = tonumber(value2);

		end
end

function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > Mogus and getProperty('health') > 0.15 then
        setProperty('health', health- Mogus);
    end
    if getProperty('health') < Mogus and getProperty('health') > 0.15 then
        setProperty('health', 0.15);
    end
end

function onStepHit()
    if curStep % 0.5 == 0 then
        health = getProperty('health')
            setProperty('health', health- Poison);
    end
end
    --<Made by Conent!>--