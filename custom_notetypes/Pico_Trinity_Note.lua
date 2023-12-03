function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Pico_Trinity_Note' then --Check if the note on the chart is a Bullet Note
                   setPropertyFromGroup('unspawnNotes', i, 'texture', 'BULLETS_assets'); --Change texture

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has penalties
			end
		end
	end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Pico_Trinity_Note' then
		setProperty('bf.specialAnim', true);
		characterPlayAnim('bf', 'shooting', false);
		cameraShake('camGame', 0.01, 0.2)
		playSound('picoNote', 1, false)
		setProperty('health', getProperty('health')+0.8);
		runTimer('shoot', 0.025, 3);
                characterPlayAnim('bf', 'shooting', true);
				setProperty('bf.specialAnim', true);
    end
end

function noteMiss(id, direction, noteType, isSustainNote)
	if noteType == 'Pico_Trinity_Note' then
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'shoot' then
		characterPlayAnim('bf', 'shooting', true);
		setProperty('bf.specialAnim', true);
	end
end