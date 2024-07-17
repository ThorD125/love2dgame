Scoreboard = Class{}



function Scoreboard:init(amountOfPeople, x, y, width)
    self.amountOfPeople = amountOfPeople
    self.scores = {}
    self.x = x
    self.y = y
    self.width = width or 100

    self:reset()
end

function Scoreboard:render(dt)
    love.graphics.setFont(font.XXl)
    love.graphics.setColor(255, 255, 255, 255)

    for i, score in ipairs(self.scores) do
        love.graphics.print(tostring(score), self.x + (i-1)*self.width, self.y )
    end
end

function Scoreboard:addCount(player)
    self.scores[player] = self.scores[player] + 1
end

function Scoreboard:reset()
    for i = 1, self.amountOfPeople do
        self.scores[i] = 0
    end
end

function Scoreboard:getScore(player)
    return self.scores[player]
end

function Scoreboard:checkWinner()
    for i, score in ipairs(self.scores) do
        if score == X_TO_WIN then
            return i
        end
    end
    return false
end
