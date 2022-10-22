accel_x = 0
bf_flip = 1
notehit = 0
bfscale = 1
-- Settings:
collisionleft = -200
collisionright = 1200
pos_x = 800

-- gets the BF scale so its also compatable with pixel bf (it broke may times)
function onStartCountdown()
	getProperty('boyfriend.scale')
	defaultscale = 'boyfriend.scale'
end

function onUpdate()
	if keyPressed("left") and pos_x > -200 and notehit == 0 then
		accel_x = accel_x*0.75 - 1*0.25
	    bf_flip = 1
	else
	if keyPressed("right") and pos_x < 1200 and notehit == 0 then
		accel_x = accel_x*0.75 + 1*0.25
		bf_flip = -1
	else
		accel_x = (accel_x)*0.8
		bf_flip = 1
	end
end
	pos_x = pos_x + accel_x*6
	setProperty('boyfriend.x', pos_x)
	scaleObject('boyfriend', (defaultscale)*bf_flip, defaultscale)
end

-- anti-move when a note is hit
function goodNoteHit()
	bfflip = 1
	notehit = 1
	runTimer(hit, 0.1, 100)
end

function onTimerCompleted(hit)
	notehit = 0
end
