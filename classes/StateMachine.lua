StateMachine = Class{}

function StateMachine:init(states)
	self.empty = {
		render = function() end,
		update = function() end,
		enter = function() end,
		exit = function() end
	}
	self.states = states or {} -- [name] -> [function that returns states]
	self.current = self.empty
	self.currentStateName = nil
end

function StateMachine:change(stateName, enterParams)
	assert(self.states[stateName]) -- state must exist!
	self.current:exit()
	self.current = self.states[stateName]()
	self.current:enter(enterParams)
	self.currentStateName = stateName
end

function StateMachine:update(dt)
	self.current:update(dt)

	debug:update()

    love.keyboard.keysPressed = {}
end

function StateMachine:render()
	self.current:render()
    
    debug:render()
end

function StateMachine:getCurrentState()
	return self.currentStateName
end