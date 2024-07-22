-- function love.draw()
--     love.graphics.print("Hello World", 400, 300)
-- end
require 'dependencies.template'

size = { "sm", "l", "xl", "xxl"}
font = {
    [size[1]] = love.graphics.newFont("assets/font/pokemon.ttf", 8),
    [size[2]] = love.graphics.newFont("assets/font/pokemon.ttf", 8),
    [size[3]] = love.graphics.newFont("assets/font/pokemon.ttf", 16),
    [size[4]] = love.graphics.newFont("assets/font/pokemon.ttf", 32)
}

img_main = {
    ['background'] = love.graphics.newImage('assets/images/background.png'),
    ['hearts'] = love.graphics.newImage('assets/images/hearts.png'),
}

sound = {
    ['collision']=love.audio.newSource('assets/sound/collision.wav', 'stream'),
    ['laser']=love.audio.newSource('assets/sound/laser.wav', 'stream'),
    ['background']=love.audio.newSource('assets/sound/backgroound.mp3', 'stream'),
}


positions = {
    ["up_right"] = 0,
    ["down_right"] = 1,
    ["right_left"] = 2,
    ["left_right"] = 3,
    ["up_left"] = 4,
    ["down_left"] = 5,
    ["right_right"] = 6,
    ["left_left"] = 7,
    ["up"] = 8,
    ["down"] = 9,
    ["right"] = 10,
    ["left"] = 11,
}

debug = DebugScreen()

-- sound.background:setLooping(true)
-- sound.background:play()
-- sound.background:setVolume(0.2)

-- 00
-- require 'pong'
-- 01
-- require 'flappy'
-- 02
-- require 'breakout'
-- 03
-- require 'match'
-- 04
-- require 'mario'
-- 05
-- require 'zelda'
-- 06
-- require 'angry'
-- 07
-- require 'pokemon'
-- 08
-- require 'unity'
-- 09
-- require 'dreadhall'
-- 10
-- require 'portal'
-- 11
-- require 'valve'

-- require 'rpg'
-- require 'template'
require 'utils.sprite_tester'

function love.resize(w, h)
    push:resize(w, h)
end
