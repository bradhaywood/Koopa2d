require "koopa2d"

local MyGame = kp.Game("Ice Descenders", { width = 400, height = 800 })

function MyGame:init()
  Tiles = kp.AnimationSheet("images/tiles.png", { width = 72, height = 72})
  Tiles:addAnim('middle', 0.1, {1})
  Tiles:addAnim('right_slope', 0.1, {2})
end

function MyGame:update()
  Tiles:anim('middle'):draw(50, 50)
  Tiles:anim('right_slope'):draw(120, 50)
end


MyGame:Run()
