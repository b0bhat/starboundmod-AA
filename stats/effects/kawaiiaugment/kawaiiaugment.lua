function init()
  script.setUpdateDelta(5)
  animator.setParticleEmitterOffsetRegion("sparkles", mcontroller.boundBox())
  animator.setParticleEmitterActive("sparkles", config.getParameter("particles", true))
  effect.setParentDirectives("fade=FFFFCC;0.03?border=2;FFFFCC20;00000000")

end

function update(dt)
  animator.setFlipped(mcontroller.facingDirection() == -1)
end

function uninit()

end
