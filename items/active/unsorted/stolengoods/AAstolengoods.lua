function init()
  activeItem.setHoldingItem(false)
  treasureLevel = world.threatLevel()
end

function activate()
  if player then
    local level = treasureLevel
    local pool = config.getParameter("treasure.pool")
    local seed = config.getParameter("treasure.seed")
    local treasure1 = root.createTreasure(pool, level, seed)
    local treasure2 = root.createTreasure(pool, level, seed)
    local treasure3 = root.createTreasure(pool, level, seed)
    item.consume(1)
    for _,item in pairs(treasure1) do
      player.giveItem(item)
    end
    for _,item in pairs(treasure2) do
      player.giveItem(item)
    end
    for _,item in pairs(treasure3) do
      player.giveItem(item)
    end
  end
end
