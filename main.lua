--[[
    Your love2d game start here
]]
WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

--love.graphics.setDefaultFilter('nearest', 'nearest')

function love.load()
    -- init something here ...
    --initialising game state 
    love.window.setMode(WINDOW_WIDTH,WINDOW_HEIGHT,{
        fullscreen = false,
        resizable = false,
        vsync = true
    })
end

-- function love.resize(w, h)
--     -- ...
-- end

-- function love.keypressed(key)
--     if key == 'escape' then
--         love.event.quit()
--     end

--     love.keyboard.keysPressed[key] = true
-- end

-- function love.keyboard.wasPressed(key)
--     return love.keyboard.keysPressed[key]
-- end

function love.update(dt)
    -- change some values based on your actions

    love.keyboard.keysPressed = {}
end

function love.draw()
    -- draw your stuff here
    love.graphics.printf('Hello Pong!', 0, WINDOW_HEIGHT/2-6,WINDOW_WIDTH,'center')
end

