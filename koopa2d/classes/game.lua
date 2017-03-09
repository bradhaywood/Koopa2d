kp.Game = class:new()
kp.Game.title = "My Koopa2d Game"

function kp.Game:Initialize(title, o)
  if (title ~= nil and o ~= nil) then
    if (type(o) == "table") then
      local x = o["width"]
      local y = o["height"]
      self.title = title
      self.x = x
      self.y = y
      love.window.setMode(x, y)
      love.window.setTitle(title)
    end
  end
end

function kp.Game:Run()
  if (self["init"] ~= nil) then
    function love.load()
      self:init()
    end
  end
  
  function love.draw()
    if (self["update"] ~= nil) then self:update() end
  end
end

function kp.Game.print(str, x, y)
  love.graphics.print(str, x, y)
end