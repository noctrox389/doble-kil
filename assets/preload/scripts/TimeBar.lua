function onCreatePost()
  setProperty('timeTxt.x', 10000)
  setProperty('timeBar.x', 0)
  setProperty('timeBar.y', 7050)
end
function onCreate()
                   setScrollFactor("songLength", 0, 0)
                   setTextAlignment('songLength', 'center')
	makeLuaText('songLength', '00:00 - 00:00', 0, 545, 30)
	setObjectCamera('songLength', 'other')
	setTextFont('songLength', 'vcr.ttf')
	setTextSize('songLength', 24)
	addLuaText("songLength");

end

function onUpdatePost()
	local percent_p1 = (getProperty("healthBar.percent") / 100)
	local percent_p2 = 1 - percent_p1

	setProperty("healthbar_p1" .. ".scale.x", percent_p2 * 2)
	setProperty("healthbar_p2" .. ".scale.x", (percent_p1 * 2) + (percent_p1 < 1 and 0.01 or 0))

	if mouseClicked('left') and mouseOverLapsSprite('teehee', 'hud') then
		endSong()
	end
end

function onStepHit()
	setTextString('songLength', milliToHuman(math.floor(getPropertyFromClass('Conductor', 'songPosition') - noteOffset)).. ' - ' .. milliToHuman(math.floor(songLength)) .. '\n')
end

function posOverlaps(
    x1, y1, w1, h1, --r1,
    x2, y2, w2, h2 --r2
)
    return (
        x1 + w1 >= x2 and x1 < x2 + w2 and
        y1 + h1 >= y2 and y1 < y2 + h2
    )
end



function milliToHuman(milliseconds) -- https://forums.mudlet.org/viewtopic.php?t=3258
	local totalseconds = math.floor(milliseconds / 1000)
	local seconds = totalseconds % 60
	local minutes = math.floor(totalseconds / 60)
	minutes = minutes % 60
	return string.format("%02d:%02d", minutes, seconds)  
end

function round(x, n) --https://stackoverflow.com/questions/18313171/lua-rounding-numbers-and-then-truncate
	n = math.pow(10, n or 0)
	x = x * n
	if x >= 0 then x = math.floor(x + 0.5) else x = math.ceil(x - 0.5) end
	return x / n
end

