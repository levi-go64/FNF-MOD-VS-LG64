function onCreatePost()
	-- da best of da best - InvertZ
	setPropertyFromClass('openfl.Lib','application.window.fullscreen', true)
	
	makeLuaSprite('sky', 'background/sky', -400, -100)
	scaleObject('sky', 2, 2)
	setScrollFactor('sky', 0.3, 0.3)
	addLuaSprite('sky', false)
	
	makeLuaSprite('clout', 'background/clouds', -400, -150)
	scaleObject('clout', 1.5, 1.5)
	setScrollFactor('clout', 0.5, 0.5)
	-- addLuaSprite('clout', false)
	
	makeLuaSprite('thefuck?', 'background/city', -400, -150)
	scaleObject('thefuck?', 1.5, 1.5)
	setScrollFactor('thefuck?', 0.65, 0.65)
	
	makeLuaSprite('mrsea', 'background/sea', -500, 600)
	scaleObject('mrsea', 1.95, 1.95)
	setScrollFactor('mrsea', 0.45, 0.45)
	addLuaSprite('mrsea', false)
	
	addLuaSprite('thefuck?', false)
	
	makeLuaSprite('yesthefloor', 'background/floor', -500, 650)
	scaleObject('yesthefloor', 1.25, 1.25)
	setScrollFactor('yesthefloor', 1, 1)
	addLuaSprite('yesthefloor', false)
	
	makeLuaSprite('tricky', 'background/signpost', -400, 100)
	scaleObject('tricky', 1, 1)
	setScrollFactor('tricky', 1, 1)
	addLuaSprite('tricky', false)
	
	makeLuaSprite('abigfuckinglight', 'background/lamp', -400, -150)
	scaleObject('abigfuckinglight', 1, 1)
	setProperty('abigfuckinglight.alpha', 0.45)
	setScrollFactor('abigfuckinglight', 1.25, 1.25)
	addLuaSprite('abigfuckinglight', true)
	
	addLuaSprite('clout', false)
end

function onUpdate()
	local what = ''
	if mustHitSection then
		what = getProperty('boyfriend.animation.curAnim.name')
	else
		what = getProperty('dad.animation.curAnim.name')
	end
	
	if what == 'idle' then
		setProperty('defaultCamZoom', 0.9)
	end
	
	if what == 'singLEFT' then
		setProperty('defaultCamZoom', 0.95)
	end
	
	if what == 'singRIGHT' then
		setProperty('defaultCamZoom', 0.85)
	end
	
	if what == 'singUP' then
		setProperty('defaultCamZoom', 0.8)
	end
	
	if what == 'singDOWN' then
		setProperty('defaultCamZoom', 0.925)
	end
end