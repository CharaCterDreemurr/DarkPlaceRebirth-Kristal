local HorseRun, super = Class(Bullet)

function HorseRun:init(x, y, dir, speed)
    -- Last argument = sprite path
    super.init(self, x, y, "battle/bullets/horse/horserun")

    -- Move the bullet in dir radians (0 = right, pi = left, clockwise rotation)
    self.physics.direction = dir
    -- Speed the bullet moves (pixels per frame at 30FPS)
    self.physics.speed = speed
    self.siner = 1

    
end

function HorseRun:update()
    -- For more complicated bullet behaviours, code here gets called every update
    self.siner = self.siner + DT

self.soul = Utils.angle(self.x, self.y, Game.battle.soul.x, Game.battle.soul.y)
self.dir = MathUtils.approachAngle(self.physics.direction,self.soul, 0.35462)
self.physics.direction = self.dir
self.physics.speed = math.sin(self.siner*1.5)+5
    super.update(self)
end

return HorseRun