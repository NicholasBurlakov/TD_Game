--! file: main.lua

function love.load()
    Object = require "classic"
    lightGrass = love.graphics.newImage("/sprites/Environment/Grass1.png")
    darkGrass = love.graphics.newImage("/sprites/Environment/Grass2.png")
    dirt = love.graphics.newImage("/sprites/Environment/Dirt.png")
end

function love.update(dt)
end

function love.draw()
    love.graphics.draw(lightGrass, 100, 100)
    love.graphics.draw(darkGrass, 150, 100)
    love.graphics.draw(dirt, 200, 100)

end