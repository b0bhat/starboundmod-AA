function init()
  effect.addStatModifierGroup({{stat = "electricResistance", amount = 0.50} })
  effect.addStatModifierGroup({{stat = "poisonResistance", amount = 0.50} })
  effect.addStatModifierGroup({{stat = "fireResistance", amount = 0.50} })
  effect.addStatModifierGroup({{stat = "iceResistance", amount = 0.50} })

  script.setUpdateDelta(0)
end

function update(dt)

end

function uninit()

end
