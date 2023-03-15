function onCreatePost()

makeLuaSprite('black', 'black', 0, 0)
makeLuaSprite('gray', 'gray', 0, 0)
makeLuaSprite('green', 'green', 7, 5)
makeLuaSprite('total', 'total', 1050, 38)

addLuaSprite('black', true)
addLuaSprite('gray', true)
addLuaSprite('green', true)
addLuaSprite('total', true)

setObjectCamera('black', 'other')
setObjectCamera('gray', 'other')
setObjectCamera('green', 'other')
setObjectCamera('total', 'other')

scaleObject('black', 2, .055)
scaleObject('gray', 1.965, .025)
scaleObject('green', 1.965, .025)

end

function onUpdate()
scaleObject('green', 1.965 * getProperty("songPercent"), .025)
end

