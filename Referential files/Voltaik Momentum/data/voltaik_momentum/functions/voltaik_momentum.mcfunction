execute as @a run title @s actionbar ["",{"text":"Stamina: ","color":"yellow"},{"score":{"name":"@s","objective":"MovStamina"},"color":"yellow"}]
scoreboard players remove @a[scores={Jump=3..}] MovStamina 10
scoreboard players remove @a[scores={SlideTimer=1..}] MovStamina 2
execute as @a[scores={MovStamina=1..}] at @s if block ~ ~-1 ~ minecraft:barrier run scoreboard players remove @s MovStamina 1
scoreboard players set @a[scores={MovStamina=..-1}] MovStamina 0
scoreboard players set @a[scores={MovStamina=61..}] MovStamina 60 
scoreboard players add @a RegenMovStamina 1
scoreboard players add @a[scores={RegenMovStamina=20..}] MovStamina 5
scoreboard players set @a[scores={RegenMovStamina=20..}] RegenMovStamina 0
execute as @a[scores={Jump=2,JumpTimer=1..}] run effect give @s minecraft:jump_boost 1 2 true
execute as @a[scores={Jump=3,JumpTimer=1..}] at @s run playsound minecraft:block.slime_block.hit master @a ~ ~ ~
execute as @a[scores={Jump=3,JumpTimer=1..}] at @s run particle minecraft:block slime_block ~ ~ ~ 0.2 0.2 0.2 1 10
execute as @a[scores={Jump=0}] run effect clear @s minecraft:jump_boost
scoreboard players set @a[scores={MovStamina=..19}] Jump 0
scoreboard players set @a[scores={hasJumped=1..}] JumpTimer 25
scoreboard players set @a[scores={hasJumped=1..}] hasJumped 0
scoreboard players remove @a[scores={JumpTimer=1..}] JumpTimer 1
scoreboard players set @a[scores={Jump=3..}] Jump 0
scoreboard players set @a[scores={JumpTimer=0}] Jump 0
execute as @a at @s if block ~ ~-1 ~ minecraft:barrier run scoreboard players set @s Jump 0

execute as @a[scores={MovStamina=20..}] at @s unless blocks ~-.7 ~ ~-.7 ~.7 ~ ~.7 ~ ~ ~ masked run setblock ~ ~-1 ~ minecraft:barrier keep
execute as @a[scores={MovStamina=20..}] at @s unless blocks ~-.7 ~ ~-.7 ~.7 ~ ~.7 ~ ~ ~ masked run summon minecraft:armor_stand ~ ~-1 ~ {Small:1b,NoGravity:1b,Tags:["wallrun"],Invisible:1b}
scoreboard players add @e[type=minecraft:armor_stand,tag=wallrun] LifeTimeMovingAux 1
kill @e[type=minecraft:armor_stand,tag=wallrun,scores={LifeTimeMovingAux=5..}]
execute at @e[type=minecraft:armor_stand,scores={LifeTimeMovingAux=4..},tag=wallrun] run fill ~ ~ ~ ~ ~ ~ air replace minecraft:barrier

execute as @a[scores={isRunning=1..,isSneak=1..,MovStamina=20..}] run scoreboard players set @s Sliding 1
execute as @a[scores={Sliding=1..}] at @s run setblock ~ ~1 ~ barrier keep
execute as @a[scores={Sliding=1..}] at @s run summon minecraft:armor_stand ~ ~1 ~ {Small:1b,NoGravity:1b,Tags:["slide"],Invisible:1b}
scoreboard players add @e[type=minecraft:armor_stand,tag=slide] LifeTimeMovingAux 1
kill @e[type=minecraft:armor_stand,tag=slide,scores={LifeTimeMovingAux=10..}]
execute at @e[type=minecraft:armor_stand,scores={LifeTimeMovingAux=9..},tag=slide] run fill ~ ~ ~ ~ ~ ~ air replace minecraft:barrier
scoreboard players add @a[scores={Sliding=1..}] SlideTimer 1
scoreboard players set @a[scores={SlideTimer=20..}] Sliding 0
scoreboard players set @a[scores={SlideTimer=20..}] SlideTimer 0
scoreboard players set @a[scores={isRunning=1..}] isRunning 0
scoreboard players set @a[scores={isSneak=1..}] isSneak 0
effect give @a[scores={Sliding=1..}] minecraft:speed 1 15 true
effect clear @a[scores={Sliding=0}] minecraft:speed

schedule function voltaik_momentum:voltaik_momentum 1t

