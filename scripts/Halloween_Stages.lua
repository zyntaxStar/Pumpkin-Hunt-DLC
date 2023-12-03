function onCreate()
	next_thunder = (curStep + (math.random (32, 128)));
end

function onStepHit()
	if curStep > next_thunder then
		if getPropertyFromClass('PlayState', 'curStage') == 'spooky-killer-og' then
			objectPlayAnimation('Spooky','thunder',true);
			playSound('thunder_' ..math.random(1,2), 0.75, false)
			next_thunder = (curStep + (math.random (32, 128)));
		end
	end
end