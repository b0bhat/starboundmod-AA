function init()
  effect.addStatModifierGroup({
  {stat = "maxHealth", amount = config.getParameter("healthAmount", 0)},
  {stat = "maxHealth", baseMultiplier = config.getParameter("healthBaseMultiplier", 1.0)},
  {stat = "maxHealth", effectiveMultiplier = config.getParameter("healthEffectiveMultiplier", 1.0)},
  })
  script.setUpdateDelta(5)
  self.healingRate = 1.0 / config.getParameter("healTime", 60)
end

function update(dt)
  status.modifyResourcePercentage("health", self.healingRate * dt)
end

function uninit()

end
