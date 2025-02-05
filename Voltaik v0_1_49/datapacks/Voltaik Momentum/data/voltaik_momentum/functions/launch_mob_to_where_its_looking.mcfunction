execute store result score @s x_pos1 run data get entity @s Pos[0] 1000
execute store result score @s y_pos1 run data get entity @s Pos[1] 1000
execute store result score @s z_pos1 run data get entity @s Pos[2] 1000

summon minecraft:armor_stand ^ ^ ^1 {ShowArms:1b,Invisible:1b,Marker:1b,Tags:["EntityLaunch"]}

execute store result score @s x_pos2 run data get entity @e[tag=EntityLaunch,limit=1] Pos[0] 1000
execute store result score @s y_pos2 run data get entity @e[tag=EntityLaunch,limit=1] Pos[1] 1000
execute store result score @s z_pos2 run data get entity @e[tag=EntityLaunch,limit=1] Pos[2] 1000

kill @e[tag=EntityLaunch]

scoreboard players operation @s x_pos2 -= @s x_pos1
scoreboard players operation @s y_pos2 -= @s y_pos1
scoreboard players operation @s z_pos2 -= @s z_pos1

scoreboard players set @s y_pos2 700

execute store result entity @s Motion[0] double 0.001 run scoreboard players get @s x_pos2
execute store result entity @s Motion[1] double 0.001 run scoreboard players get @s y_pos2
execute store result entity @s Motion[2] double 0.001 run scoreboard players get @s z_pos2