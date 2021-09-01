function init()
  --Power
  self.powerModifier = config.getParameter("powerModifier", 0)
  effect.addStatModifierGroup({{stat = "powerMultiplier", effectiveMultiplier = self.powerModifier}})
  script.setUpdateDelta(5)
  self.healingRate = 1.0 / config.getParameter("healTime", 60)
end

function update(dt)
  animator.setFlipped(mcontroller.facingDirection() == -1)
  status.modifyResourcePercentage("health", self.healingRate * dt)
end

function uninit()

end
