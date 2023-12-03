function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Kin Note' then --Check if the note on the chart is a Bullet Note
                   setPropertyFromGroup('unspawnNotes', i, 'texture', 'BULLETS_assets'); --Change texture

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has penalties
			end
		end
	end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Kin Note' then
		characterPlayAnim('dad', 'Attack', true);
		setProperty('dad.specialAnim', true);
	    characterPlayAnim('bf', 'dodge');
		cameraShake('camGame', 0.01, 0.2);
		playSound('its_kinnin_Time', 1, false)
    end
end

function noteMiss(id, direction, noteType, isSustainNote)
	if noteType == 'Kin Note' then
		setProperty('health', getProperty('health')-0.375);
		runTimer('bleed', 0.2, 20);
                characterPlayAnim('dad', 'Attack', true);
				playSound('its_kinnin_Time', 1, false)
		setProperty('dad.specialAnim', true);
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	-- A loop from a timer you called has been completed, value "tag" is it's tag
	-- loops = how many loops it will have done when it ends completely
	-- loopsLeft = how many are remaining
	if loopsLeft >= 1 then
		setProperty('health', getProperty('health')-0.001);
	end
end

	--Conent's note : I ONLY EDITED THE PICO NOTE, CREDIT GOES TO THE ORIGINAL CODER!!