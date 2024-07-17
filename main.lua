-- function love.draw()
--     love.graphics.print("Hello World", 400, 300)
-- end

font = {
    ['Sm'] = love.graphics.newFont("assets/font/pokemon.ttf", 8),
    ['l'] = love.graphics.newFont("assets/font/pokemon.ttf", 8),
    ['Xl'] = love.graphics.newFont("assets/font/pokemon.ttf", 16),
    ['XXl'] = love.graphics.newFont("assets/font/pokemon.ttf", 32)
}

sound = {
    ['collision']=love.audio.newSource('assets/sound/collision.wav', 'stream'),
    ['laser']=love.audio.newSource('assets/sound/laser.wav', 'stream'),
}

require 'utils.utils'

-- require 'pong'
require 'flappy'
-- require 'rpg'



-- function love.gamepadpressed(joystick, button)
--     text = button
-- end

-- function love.gamepadaxis(joystick, axis, value)
--     text = axis
-- end