Bird = Class{}


function Bird:init(x, y, keyUp) --y is gap height location
    self.x = x
    self.y = y
    self.width = img_bird:getWidth()
    self.height = img_bird:getHeight()
    self.keyUp = keyUp
end

function Bird:update(dt)
    self.y = self.y + gravity * dt
end

function Bird:jump()
    self.y = self.y - gravity
end

function Bird:collides(pipe)
    birdTop = self.y
    birdBottom = self.y + self.height
    birdLeft = self.x
    birdRight = birdLeft + self.width

    gapTop = pipe.y - pipe.gapHeight
    gapBottom = pipe.y 
    
    pipeLeft = pipe.x
    pipeRight = pipe.x + pipe.width



    if birdRight >= pipeLeft and birdLeft <= pipeRight then
        if birdBottom > gapBottom then
            return true
        elseif gapTop > birdTop then
            return true
        end
    end

    return false
end


function Bird:render()
    love.graphics.draw(img_bird, self.x, self.y)
end
