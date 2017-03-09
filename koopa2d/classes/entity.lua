kp.Entity = class:new()

function kp.Entity:Initialize(o)
  if (o ~= nil and type(o) == "table") then
    for k,v in pairs(o) do
      self[k] = v
    end
  end
end