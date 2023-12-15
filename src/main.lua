--! file: main.lua

function love.load()
    Object = require "classic"
    -- Load Sprites
    lightGrass = love.graphics.newImage("/sprites/Environment/Grass1.png")
    darkGrass = love.graphics.newImage("/sprites/Environment/Grass2.png")
    dirt = love.graphics.newImage("/sprites/Environment/Dirt.png")
    -- Get width and height
    lightGrassWidth = lightGrass:getWidth()
    lightGrassHeight = lightGrass:getHeight()
    darkGrassWidth = darkGrass:getWidth()
    darkGrassHeight = darkGrass:getHeight()
    dirtWidth = dirt:getWidth()
    dirtHeight = dirt:getHeight()
    -- Build tiles
    tilemap = {
        {0, 0, 0, 0, 1, 1, 1, 1, 1, 1},
        {3, 3, 3, 0, 0, 0, 0, 0, 0, 0},
        {0, 0, 3, 0, 0, 0, 0, 3, 3, 3},
        {1, 0, 3, 3, 3, 3, 3, 3, 0, 0},
        {1, 0, 0, 0, 0, 0, 0, 0, 0, 1}
    }
end

function love.update(dt)
end

function love.draw()
    for i,row in ipairs(tilemap) do
        for j,tile in ipairs(row) do
            if tile == 0 then
                love.graphics.draw(lightGrass, j * lightGrassWidth, i * lightGrassHeight)
            elseif tile == 1 then
                love.graphics.draw(darkGrass, j * darkGrassWidth, i * darkGrassHeight)
            elseif tile == 3 then
                love.graphics.draw(dirt, j * dirtWidth, i * dirtHeight)
            end
        end
    end
end