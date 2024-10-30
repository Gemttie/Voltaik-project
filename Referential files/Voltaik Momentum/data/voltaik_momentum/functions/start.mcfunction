scoreboard objectives add RegenMovStamina dummy
scoreboard objectives add SlideTimer dummy
scoreboard objectives add Sliding dummy
scoreboard objectives add JumpTimer dummy
scoreboard objectives add Jump minecraft.custom:minecraft.jump
scoreboard objectives add hasJumped minecraft.custom:minecraft.jump
scoreboard objectives add isSneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add isRunning minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add LifeTimeMovingAux dummy
scoreboard objectives add MovStamina dummy

scoreboard players set @a RegenMovStamina 0
scoreboard players set @a SlideTimer 0
scoreboard players set @a Sliding 0
scoreboard players set @a JumpTimer 0
scoreboard players set @a LifeTimeMovingAux 0
scoreboard players set @a MovStamina 40

schedule function voltaik_momentum:voltaik_momentum 1t
