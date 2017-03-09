kp.Image = class:new()

kp.Image.filename = nil
kp.Image._love = nil -- the love object
kp.Image.height = 0
kp.Image.width = 0

function kp.Image:Initialize(filename)
  self.filename = filename
  self._love = love.graphics.newImage(filename)
  self.height = self._love:getHeight()
  self.width = self._love:getWidth()
  return self
end

function kp.Image:draw(x, y)
  love.graphics.draw(self._love, x, y)
end

function kp.Image:getWidth() return self.width end
function kp.Image:getHeight() return self.height end
function kp.Image:getDimensions() return self._love:getDimensions() end