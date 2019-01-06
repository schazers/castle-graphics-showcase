-- Castle Examples of Love2d's graphical primitives.
-- htts://playcastle.io
-- Castle uses Love2D 11.1 for rendering and input.
-- See here for some useful Love2D documentation:
-- https://love2d-community.github.io/love-api/

local x = 0
local x2 = 0
local x3 = 0
local total_time_elapsed = 0

function love.draw()

  -- Circles
  love.graphics.print('Circles!', 20, 20)

  love.graphics.setColor(1.0, 0.4, 0.4, 1.0)
  love.graphics.circle("fill", 50, 70, 20, 32)

  love.graphics.setColor(1.0, 0.4, 0.4, 1.0)
  love.graphics.circle("fill", 120, 70, 20, 8)

  love.graphics.setColor(1.0, 0.4, 0.4, 1.0)
  love.graphics.circle("fill", 190, 70, 20, 4)


  -- Rectangles
  love.graphics.setColor(1.0, 1.0, 1.0, 1.0)
  love.graphics.print('Rectangles!', 20, 120)

  love.graphics.setColor(1.0, 0.4, 0.4, 1.0)
  love.graphics.rectangle("fill", 30, 150, 50, 20)

  love.graphics.setColor(1.0, 0.4, 0.4, 1.0)
  love.graphics.rectangle("line", 100, 150, 50, 20)

  love.graphics.setColor(1.0, 0.4, 0.4, 1.0)
  love.graphics.rectangle("fill", 170, 150, 50, 20, 8, 8, 10)


  -- Animations
  love.graphics.setColor(1.0, 1.0, 1.0, 1.0)
  love.graphics.print('Animations!', 20, 200)
  love.graphics.setColor(1.0, 0.4, 0.4, 1.0)
  love.graphics.circle("fill", 20 + x, 240, 20, 32)
end

function love.update(dt)
  x = 70 * math.sin(total_time_elapsed)
  x2 = 70 * math.sin(total_time_elapsed + 50)
  x3 = 70 * math.sin(total_time_elapsed + 100)
  total_time_elapsed = total_time_elapsed + dt
end
