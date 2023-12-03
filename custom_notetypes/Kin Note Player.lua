function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Kin Note Player' then --Check if the note on the chart is a Bullet Note
                   setPropertyFromGroup('unspawnNotes', i, 'texture', 'BULLETS_assets'); --Change texture

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has penalties
			end
		end
	end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Kin Note Player' then
		characterPlayAnim('bf', 'Attack', true);
		setProperty('bf.specialAnim', true);
		cameraShake('camGame', 0.01, 0.2);
		playSound('its_kinnin_Time', 1, false)
		setProperty('health', getProperty('health')+0.1);
		runTimer('ClawAtk', 0.025, 2);
                characterPlayAnim('bf', 'Attack', true);
				setProperty('bf.specialAnim', true);
    end
end

function noteMiss(id, direction, noteType, isSustainNote)
	if noteType == 'Kin Note' then
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'ClawAtk' then
		characterPlayAnim('bf', 'Attack', true);
		setProperty('bf.specialAnim', true);
	end
end

	--Conent's note : I ONLY EDITED THE PICO NOTE, CREDIT GOES TO THE ORIGINAL CODER!!