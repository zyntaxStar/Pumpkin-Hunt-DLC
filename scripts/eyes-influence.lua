--Original Script made by _Boxed wit the help from Shokora! Big thanks to them!
function onCreate()
	makeLuaSprite('The_Eyes_Influence', 'icons/the_eyes', getProperty('iconP2.x'), getProperty('iconP2.y'))
	setObjectCamera('The_Eyes_Influence', 'hud')
	addLuaSprite('The_Eyes_Influence', true)
	setObjectOrder('The_Eyes_Influence', getObjectOrder('iconP2') + 1)
	setProperty('The_Eyes_Influence.flipX', false)
	setProperty('The_Eyes_Influence.visible', true)
	setProperty('The_Eyes_Influence.alpha', 0.0);
end

function onUpdate(elapsed)
	setProperty('The_Eyes_Influence.x', getProperty('iconP2.x') - 64)
	setProperty('The_Eyes_Influence.angle', getProperty('iconP2.angle'))
	setProperty('The_Eyes_Influence.y', getProperty('iconP2.y') - 32)
	setProperty('The_Eyes_Influence.scale.x', getProperty('iconP2.scale.x'))
	setProperty('The_Eyes_Influence.scale.y', getProperty('iconP2.scale.y'))
		--end --uncomment if using WHITELIST or BLACKLIST
end