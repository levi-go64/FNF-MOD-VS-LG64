-- script 100% by n_bonnie2!!!!
-- USE WITH CREDIT!!!!
attackmeter = 0

function goodNoteHit(id, direction, noteType, isSustainNote)
    if isSustainNote == false then
        attackmeter = attackmeter + 3
    end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
    health = getProperty('health')
    if isSustainNote == false then -- HP DRAIN so it can be useful!
        if health > 0.01 then
        setProperty('health', health - 0.02)
        end
    end
end

function noteMiss(id, direction, noteType, isSustainNote)
    if isSustainNote == false then
        attackmeter = attackmeter - 1.5
    end
end

function onUpdatePost(elapsed)
    if inGameOver == false then
        health = getProperty('health')
        removeLuaText('meter', false)
            if attackmeter == 100 or attackmeter > 100 then
            makeLuaText('meter', '!!!Press [SPACE] to ATTACK!!!', 1300, 0, 580)
            else
            makeLuaText('meter', '[Special]:'..attackmeter.."%", 1300, 0, 580)
            end
        end
        setTextSize('meter', 20)
        setTextAlignment('meter', 'center')
        addLuaText('meter')
            if keyJustPressed('space') then
               if attackmeter == 100 then
               attackmeter = 0
               setProperty('health', health + 0.5)
               characterPlayAnim('bf', 'attack', true)
            end
        end
            if attackmeter > 100 then
            attackmeter = 100
            else
            if attackmeter < 0 then
            attackmeter = 0
        end
    end
end

function onSongStart()
    makeLuaText('d', 'Press [SPACE] To Attack, When the [SPECIAL] Meter is Full', 1280, 0, 500)
    setTextSize('d', 25)
    setTextAlignment('d', 'center')
    addLuaText('d')
    runTimer('deeznutsbegone', 4)
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'deeznutsbegone' then
    removeLuaText('d', false)
    end
end
     