kp.Animation = class:new()

function kp.Animation:Initialize(animsheet, name, frametime, seq)
  self.animsheet = animsheet
  self.name = name
  self.frametime = frametime
  self.seq = seq
  self.quads = {}
  local iheight = animsheet.image:getHeight()
  local iwidth  = animsheet.image:getWidth()
  local spriteHeight = animsheet.height
  local spriteWidth  = animsheet.width
  local maxSpritesWide = math.floor(iwidth / spriteWidth)
  for _, s in pairs(seq) do
    if (s > maxSpritesWide) then
      local row = nil
      -- love.graphics.newQuad(s*spriteWidth, row*spriteHeight, ...)
    else
      table.insert(self.quads,
        love.graphics.newQuad(s*spriteWidth, 0, spriteWidth, spriteHeight, animsheet.image:getDimensions()))
    end
  end
  
  return self
end

function kp.Animation:draw(x, y)
  for _,v in pairs(self.quads) do
    love.graphics.draw(self.animsheet.image._love, v, x, y)
  end
end
