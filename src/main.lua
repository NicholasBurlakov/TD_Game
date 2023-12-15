--! file: main.lua
local screenWidth, screenHeight = love.graphics.getWidth(), love.graphics.getHeight()
local baseTileSize = 64  -- Original tile size
local tilemap  -- Define tilemap before using it

function love.load()
    Object = require "classic"
    -- Load Sprites
    lightGrass = love.graphics.newImage("/sprites/Environment/Grass1.png")
    darkGrass = love.graphics.newImage("/sprites/Environment/Grass2.png")
    dirt = love.graphics.newImage("/sprites/Environment/Dirt.png")

    -- Build tiles
    tilemap = {
        {0, 0, 0, 0, 1, 1, 1, 1},
        {3, 3, 3, 0, 1, 1, 1, 1},
        {0, 0, 3, 0, 0, 0, 0, 1},
        {1, 0, 3, 3, 3, 3, 0, 1},
        {1, 0, 0, 0, 0, 3, 0, 0},
        {1, 1, 1, 1, 0, 3, 3, 3},
        {1, 1, 1, 1, 0, 0, 0, 0},
        {1, 1, 1, 1, 1, 1, 1, 1}
    }

    -- Calculate tileSize based on screen width
    tileSize = math.floor(screenWidth / (#tilemap[1]))  -- Adjust as needed
end

function love.update(dt)
end

function love.draw()
    -- Adjust the tile positions based on the screen size and draw the scaled tiles
    for i, row in ipairs(tilemap) do
        for j, tile in ipairs(row) do
            local x = (j - 1) * tileSize
            local y = (i - 1) * tileSize
            local scale = tileSize / baseTileSize * 4  -- Adjust the scaling factor as needed

            if tile == 0 then
                love.graphics.draw(lightGrass, x, y, 0, scale, scale)
            elseif tile == 1 then
                love.graphics.draw(darkGrass, x, y, 0, scale, scale)
            elseif tile == 3 then
                love.graphics.draw(dirt, x, y, 0, scale, scale)
            end
        end
    end
end
