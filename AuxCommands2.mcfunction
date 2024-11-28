
#FINALLY DOOR CODE DONE
#-----------
# WORLD1 1
#-----------
#SETUP CODE FOR WORLD1
#-----------
/scoreboard objectives add World1AuxToggle dummy

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World1AuxToggle 1

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World1ProximityDoorStatus 0
/scoreboard objectives add  dummy

/summon armor_stand -17.50 70.00 10.00 {Tags:["World1ProximitytriggerDummy","WorldGeneralProximityTriggerDummy"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"World 1 Proximity Trigger"}',CustomNameVisible:0b}

/summon armor_stand -17.30 73.75 10.00 {Tags:["World1DoorInfoDummy1","World1DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Mundo 1","color":"#ffffff"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -17.30 73.20 10.00 {Tags:["World1DoorInfoDummy2","World1DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"JUNGLA ETÉREA","color":"#7bbe3c"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -17.30 72.75 10.00 {Tags:["World1DoorInfoDummy3","World1DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Dificultad: 1✯","color":"#ffffff","italic":true}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -17.30 71.60 10.00 {Tags:["World1DoorInfoDummy4","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Mín. Req. para desbloqueo: 0✯","color":"#ffffff"}',CustomNameVisible:1b,Rotation:[0f,0f]}


#-----------

#--
#CodeBlock 1
#--
/execute as @e[tag=World1ProximitytriggerDummy] at @s if entity @p[distance=..8] run execute as @e[tag=LobbyHappiestDummy2] if score @s WorldDoorTextTimer >= @s AuxNumber30 run scoreboard players set @s WorldDoorTextTimer 0

/execute as @e[tag=World1ProximitytriggerDummy] at @s if entity @p[distance=..8] unless entity @e[tag=World1DoorInfoDummy5, distance=..3] run execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected < @s AuxNumber0 run setblock 7 -52 18 minecraft:redstone_block

/setblock 7 -52 18 air

/execute as @e[tag=World1ProximitytriggerDummy] at @s if entity @p[distance=..8] unless entity @e[tag=World1DoorInfoDummy8, distance=..3] run execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected >= @s AuxNumber0 run setblock 7 -60 18 minecraft:redstone_block

/setblock 7 -60 18 air

/execute as @e[tag=World1ProximitytriggerDummy] at @s if entity @p[distance=..8] run execute as @e[tag=LobbyHappiestDummy2] if score @s World1ProximityDoorStatus matches 0 run scoreboard players add @s WorldDoorTextTimer 1

/execute as @e[tag= LobbyHappiestDummy2] if score @s World1ProximityDoorStatus matches 0 if score @s WorldDoorTextTimer < @s AuxNumber15 run execute as @e[tag=World1DoorInfoGroup2] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag= LobbyHappiestDummy2] if score @s World1ProximityDoorStatus matches 0 if score @s WorldDoorTextTimer > @s AuxNumber15 run execute as @e[tag=World1DoorInfoGroup2] run data merge entity @s {CustomNameVisible:1b}

/execute as @e[tag= LobbyHappiestDummy2] if score @s World1ProximityDoorStatus matches 0 if score @s WorldDoorTextTimer = @s AuxNumber15 run execute at @e[tag=World1ProximitytriggerDummy] if entity @e[tag=World1DoorInfoDummy5, distance=..3] run playsound alexsmobs:enderiophage_squish master @a[distance=..5] ~ ~ ~ 0.8 1

/execute as @e[tag= LobbyHappiestDummy2] if score @s World1ProximityDoorStatus matches 0 if score @s WorldDoorTextTimer = @s AuxNumber15 run execute at @e[tag=World1ProximitytriggerDummy] if entity @e[tag=World1DoorInfoDummy8, distance=..3] run playsound spartanweaponry:throwing_weapon_loyalty_return master @a[distance=..5] ~ ~ ~ 0.8 2

/execute as @e[tag=LobbyHappiestDummy2] if score @s World1ProximityDoorStatus matches 1 run execute as @e[tag=World1DoorInfoGroup2] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World1ProximityDoorStatus matches 1 run execute as @e[tag=World1DoorInfoDummy4] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=World1ProximitytriggerDummy] at @s if entity @p[distance=..8] run execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected >= @s AuxNumber0 if score @s World1ProximityDoorStatus matches 0 if score @s WorldDoorTextTimer matches 15 run setblock 8 -60 18 minecraft:redstone_block

/execute as @e[tag=LobbyHappiestDummy2] if score @s World1ProximityDoorStatus matches 1 run setblock 8 -60 18 air

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 320 run execute at @e[tag=World1ProximitytriggerDummy] run playsound scalinghealth:heart_crystal_use master @a[distance=..8] ~ ~ ~ 1 0.5

/fill -17 70 8 -17 74 11 air replace minecraft:light_gray_stained_glass

/particle alexsmobs:worm_portal -16.50 72.00 10.00 0 0 0 0.5 15

#--
#CodeBlock 2
#--
/kill @e[tag=World1DoorInfoGroup2]

/summon armor_stand -17.30 71.10 10.00 {Tags:["World1DoorInfoDummy6","World1DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Requisitos cumplidos!","color":"#6ee524"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -17.30 70.75 10.00 {Tags:["World1DoorInfoDummy7","World1DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Haz click en la opción para","color":"#6ee524"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -17.30 70.50 10.00 {Tags:["World1DoorInfoDummy8","World1DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"abrir esta puerta...","color":"#6ee524"}',CustomNameVisible:1b,Rotation:[0f,0f]}

#--
#CodeBlock 2.5
#--
/kill @e[tag=World1DoorInfoGroup2]

/summon armor_stand -17.30 71.10 10.00 {Tags:["World1DoorInfoDummy5","World1DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Recursos insuficientes...","color":"#cf3b3b"}',CustomNameVisible:1b,Rotation:[0f,0f]}

#--
#CodeBlock 2.5.5
#--
/tellraw @p {"text":"[DESBLOQUEAR MUNDO 1]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World1ProximityDoorStatus 1"}}

#--
#CodeBlock 3
#--
/execute as @e[tag=WorldGeneralProximityTriggerDummy] at @s if entity @p[distance=8..] run execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s WorldDoorTextTimer 0

/execute as @e[tag=WorldGeneralProximityTriggerDummy] at @s if entity @p[distance=14..] run execute as @e[tag=World1DoorInfoGroup1] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=WorldGeneralProximityTriggerDummy] at @s if entity @p[distance=14..] run execute as @e[tag=World1DoorInfoDummy4] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=WorldGeneralProximityTriggerDummy] at @s if entity @p[distance=..14] run execute as @e[tag=World1DoorInfoGroup1] run data merge entity @s {CustomNameVisible:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World1ProximityDoorStatus matches 0 run execute as @e[tag=WorldGeneralProximityTriggerDummy] at @s if entity @p[distance=..14] run execute as @e[tag=World1DoorInfoDummy4] run data merge entity @s {CustomNameVisible:1b}

#--
#CodeBlock 4
#--
/execute as @e[tag=LobbyHappiestDummy2] if score @s World1ProximityDoorStatus matches 0 run scoreboard players add @s World1AuxToggle 1

/execute as @e[tag=LobbyHappiestDummy2] if score @s World1ProximityDoorStatus matches 0 if score @s World1AuxToggle >= @s AuxNumber90 run scoreboard players set @s World1AuxToggle 1

/execute as @e[tag=LobbyHappiestDummy2] if score @s World1AuxToggle >= @s AuxNumber1 if score @s World1ProximityDoorStatus matches 1 run setblock -6 -60 22 minecraft:redstone_block

/execute as @e[tag=LobbyHappiestDummy2] if score @s World1AuxToggle >= @s AuxNumber1 if score @s World1ProximityDoorStatus matches 1 run setblock -6 -60 22 minecraft:air

/execute as @e[tag=LobbyHappiestDummy2] if score @s World1AuxToggle >= @s AuxNumber1 if score @s World1ProximityDoorStatus matches 1 run data merge block -8 -60 22 {auto:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World1AuxToggle >= @s AuxNumber1 if score @s World1ProximityDoorStatus matches 1 run data merge block -6 -60 20 {auto:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World1AuxToggle >= @s AuxNumber1 if score @s World1ProximityDoorStatus matches 1 run scoreboard players set @s World1AuxToggle 0

/execute as @e[tag=WorldGeneralProximityTriggerDummy] at @s if entity @p[distance=8..] run setblock 8 -60 18 minecraft:air

#--
#CodeBlock 5
#--
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount > @s AuxNumber0 if score @s PlatformActivationCount < @s AuxNumber150 run execute as @e[tag=World1LightStartingDummy1] at @s run tp @s ~0.25 ~ ~

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount > @s AuxNumber0 if score @s PlatformActivationCount < @s AuxNumber150 run execute as @e[tag=World1LightStartingDummy2] at @s run tp @s ~0.25 ~ ~

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run kill @e[tag=World1LightStartingDummy1]

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run kill @e[tag=World1LightStartingDummy2]

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber0 run setblock -6 -60 22 minecraft:redstone_block

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber0 run setblock -6 -60 22 minecraft:air

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber50 run setblock -6 -60 22 minecraft:redstone_block

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber50 run setblock -6 -60 22 minecraft:air

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 140 run setblock -4 -60 22 minecraft:redstone_block

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 140 run setblock -4 -60 22 minecraft:air

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run execute at @e[tag=World1ProximitytriggerDummy] run playsound minecraft:block.end_portal.spawn master @a[distance=..8] ~ ~ ~ 0.3 0.1

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 145 run data merge block -8 -60 18 {auto:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 350 run data merge block -6 -60 20 {auto:0b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 350 run data merge block -8 -60 22 {auto:0b}

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s PlatformActivationCount 0

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players remove @s PlatformActivationCount 1

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run execute at @e[tag=World1ProximitytriggerDummy] run setblock -8 -60 -3 minecraft:redstone_block

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run execute at @e[tag=World1ProximitytriggerDummy] run setblock -8 -60 -3 minecraft:air

#--
#CodeBlock 6
#--
/summon armor_stand -15.50 67.75 8.05 {Tags:["World1LightStartingDummy2"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}

/summon armor_stand -15.50 67.75 11.06 {Tags:["World1LightStartingDummy1"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}

/execute at @e[tag=World1ProximitytriggerDummy] run playsound alexsmobs:void_portal_open master @a[distance=..8] ~ ~ ~ 0.23 2

#--
#CodeBlock 7
#--
/summon armor_stand -18 69 10  {Tags:["WorldModulePassingBridgeGenerator1"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,NoGravity:1b,Rotation:[90f,0f]}

#--
#CodeBlock 8
#--
/fill 28 73 -3 -4 67 22 dustrial_decor:cyan_neon_light replace minecraft:cyan_wool

/fill 28 73 -3 -4 67 22 dustrial_decor:green_neon_light replace minecraft:green_wool

#--
#CodeBlock 8.5
#--
/fill 28 73 -3 -4 67 22 minecraft:cyan_wool replace dustrial_decor:cyan_neon_light

/fill 28 73 -3 -4 67 22 minecraft:green_wool replace dustrial_decor:green_neon_light

#--
#CodeBlock 9
#--
/execute as @e[tag=LobbyHappiestDummy2] run data merge block -8 -60 22 {auto:0b}

/execute as @e[tag=LobbyHappiestDummy2] run data merge block -6 -60 20 {auto:0b}

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s PlatformActivationCount 0

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World1ProximityDoorStatus 0

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World1AuxToggle 1

/fill -17 69 10 -1 69 9 air

/setblock -7 -60 -3 minecraft:redstone_block

/setblock -7 -60 -3 minecraft:air

/clone 9 -59 17 9 -55 20 -17 70 8