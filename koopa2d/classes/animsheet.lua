kp.AnimationSheet = class:new()

kp.AnimationSheet.image = nil
kp.AnimationSheet.animations = {}

function kp.AnimationSheet:Initialize(sheet, o)
  assert(sheet, "Syntax: kp.AnimationSheet(filename, <options>)")
  
  if (o ~= nil and type(o) == "table") then
    -- TODO: need to do proper checking
    for k,v in pairs(o) do
      self[k] = v
    end
  else
    self.width = 16
    self.height = 16
  end
  
  self.image = kp.Image(sheet)
  return self
end

function kp.AnimationSheet:addAnim(name, frameTime, seq)
  assert(seq, "Syntax: kp.AnimationSheet:addAnim(name, frameTime, {sequence})")
  assert(type(seq) == "table", "Third argument of kp.AnimationSheet:addAnim expects a table")
  
  local animsheet = self
  local newinst = kp.Animation(animsheet, name, frameTime, seq)
  self.animations[name] = newinst
  return newinst
end

function kp.AnimationSheet:anim(name) return self.animations[name] or error("No such animation '" .. name .. "'") end
