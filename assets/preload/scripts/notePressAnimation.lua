--[[
	CREDITS:
		- Kiitoliroo: made the code
		works with every character if they animation prefix has "sing" with LEFT/DOWN/UP/RIGHT (singLEFT, singDOWN,etc..)
		and are playable.
		now, this script for some reason doesn't work in the default game stage, i will probably fix latter!
--]]

local hitArrow = 1

function goodNoteHit()
	if goodNoteHit then
	hitArrow = getProperty('hitArrow')== 0
	end
	runTimer('Delay', 0.68, 1)
end
	

function onTimerCompleted(Delay)
	hitArrow = 1
end


function onUpdate()
	if hitArrow == 1 and keyJustPressed('left') then -- left arrow
		triggerEvent('Play Animation', 'singLEFT', 'bf', true)
		
	elseif hitArrow == 1 and keyJustPressed('down') then -- down arrow
		triggerEvent('Play Animation', 'singDOWN', 'bf', true)
		
	elseif hitArrow == 1 and keyJustPressed('up') then -- up arrow
		triggerEvent('Play Animation', 'singUP', 'bf', true)
		
	elseif hitArrow == 1 and keyJustPressed('right') then -- right arrow
		triggerEvent('Play Animation', 'singRIGHT','bf', true)
		
	elseif hitArrow == 1 and keyJustPressed('space') then -- HEY animation -- space
		triggerEvent('Play Animation', 'hey', 'bf', true)
	end
end
