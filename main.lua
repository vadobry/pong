--[[
    Your love2d game start here
]]
-- push  - library for start game in virtual resolution- more retro game aesthetic
local push = require 'push'
WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 800

VIRTUAL_WIDTH = 432
VIRTUAL_HEIGHT = 243
local settings= {
    fullscreen = false,
    resizable = false,
    vsync = true
} 



function love.load()
    -- init something here ...
    --initialising game state 
    -- love.window.setMode(WINDOW_WIDTH,WINDOW_HEIGHT,{
    --     fullscreen = false,
    --     resizable = false,
    --     vsync = true
    -- })
    
    love.graphics.setDefaultFilter('nearest', 'nearest')

    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, settings)
  
end


 

-- function love.resize(w, h)
--     -- ...
-- end
function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    end

    love.keyboard.keysPressed[key] = true
end

-- function love.keyboard.wasPressed(key)
--     return love.keyboard.keysPressed[key]
-- end

function love.update(dt)
    -- change some values based on your actions

    love.keyboard.keysPressed = {}
end

function love.draw()
    -- draw your stuff here
    push:apply("start")
    love.graphics.printf('Hello Pong!',0,VIRTUAL_HEIGHT / 2 -6, VIRTUAL_WIDTH,'center')

    push:apply("end")
end

