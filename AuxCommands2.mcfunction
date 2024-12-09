#------------------
#DIFFICULTY COLORS
#------------------
#1 star: #ffffff
#2 stars: #f2eea5
#3 stars: #f2a25c
#4 stars: #f27349
#5 stars: #b33d30

#7 stars: #570000
#8 stars: #4d1b54
#------------------


#FINALLY DOOR CODE DONE

#-----------
# WORLD 1
#-----------
#SETUP CODE FOR WORLD1
#-----------
/scoreboard objectives add World1AuxToggle dummy

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World1AuxToggle 1

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World1ProximityDoorStatus 0

-17.50 70.00 10.00
-17.30 73.75 10.00
-17.30 73.20 10.00
-17.30 72.75 10.00
-17.30 71.60 10.00

/summon armor_stand -17.50 70.00 10.00 {Tags:["World1ProximitytriggerDummy","WorldProximityGeneralTriggerDummy"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"World 1 Proximity Trigger"}',CustomNameVisible:0b}

/summon armor_stand -17.30 73.75 10.00 {Tags:["World1DoorInfoDummy1","World1DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Mundo 1","color":"#ffffff"}',CustomNameVisible:1b,Rotation:[0f,0f]}

# /summon armor_stand -17.30 73.20 10.00 {Tags:["World1DoorInfoDummy2","World1DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"౨ৎ JUNGLA ETÉREA ৎ౨","color":"#7bbe3c","bold":true}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -17.30 73.20 10.00 {Tags:["World1DoorInfoDummy2","World1DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"౨ৎ","color":"#7bbe3c","bold":true,"extra":[{"text":" ","color":"#75b23b"},{"text":"J","color":"#6fa93a"},{"text":"U","color":"#69a039"},{"text":"N","color":"#649737"},{"text":"G","color":"#5e8e36"},{"text":"L","color":"#588535"},{"text":"A","color":"#527c34"},{"text":" ","color":"#4c7333"},{"text":"E","color":"#466a32"},{"text":"T","color":"#407131"},{"text":"É","color":"#3b682f"},{"text":"R","color":"#355f2e"},{"text":"E","color":"#2f562d"},{"text":"A","color":"#294d2c"},{"text":" ","color":"#23542b"},{"text":"ৎ","color":"#207d29"}]}',CustomNameVisible:1b,Rotation:[0f,0f]}

#tittle decos
# /summon armor_stand -17.30 73.45 10.00 {Tags:["World1DoorInfoDummy2DECO1","World1DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"◇─◇──◇─────◇──◇─◇","color":"#7bbe3c"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -17.30 73.45 10.00 {Tags:["World1DoorInfoDummy2DECO1","World1DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"◇","color":"#7bbe3c","extra":[{"text":"─","color":"#75b23b"},{"text":"◇","color":"#6fa93a"},{"text":"──","color":"#69a039"},{"text":"◇","color":"#649737"},{"text":"─────","color":"#5e8e36"},{"text":"◇","color":"#588535"},{"text":"──","color":"#527c34"},{"text":"◇","color":"#4c7333"},{"text":"─","color":"#466a32"},{"text":"◇","color":"#207d29"}]}',CustomNameVisible:1b,Rotation:[0f,0f]}


# /summon armor_stand -17.30 72.95 10.00 {Tags:["World1DoorInfoDummy2DECO2","World1DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"◇─◇──◇─────◇──◇─◇","color":"#7bbe3c"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -17.30 72.95 10.00 {Tags:["World1DoorInfoDummy2DECO2","World1DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"◇","color":"#7bbe3c","extra":[{"text":"─","color":"#75b23b"},{"text":"◇","color":"#6fa93a"},{"text":"──","color":"#69a039"},{"text":"◇","color":"#649737"},{"text":"─────","color":"#5e8e36"},{"text":"◇","color":"#588535"},{"text":"──","color":"#527c34"},{"text":"◇","color":"#4c7333"},{"text":"─","color":"#466a32"},{"text":"◇","color":"#207d29"}]}',CustomNameVisible:1b,Rotation:[0f,0f]}


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
/execute as @e[tag=World1ProximitytriggerDummy] at @s if entity @p[distance=8..] run execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s WorldDoorTextTimer 0

/execute as @e[tag=World1ProximitytriggerDummy] at @s if entity @p[distance=14..] run execute as @e[tag=World1DoorInfoGroup1] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=World1ProximitytriggerDummy] at @s if entity @p[distance=14..] run execute as @e[tag=World1DoorInfoDummy4] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=World1ProximitytriggerDummy] at @s if entity @p[distance=..14] run execute as @e[tag=World1DoorInfoGroup1] run data merge entity @s {CustomNameVisible:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World1ProximityDoorStatus matches 0 run execute as @e[tag=World1ProximitytriggerDummy] at @s if entity @p[distance=..14] run execute as @e[tag=World1DoorInfoDummy4] run data merge entity @s {CustomNameVisible:1b}

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

/execute as @e[tag=World1ProximitytriggerDummy] at @s if entity @p[distance=8..] run setblock 8 -60 18 minecraft:air

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
#(The reset codeBlock)
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
#--


#-----------
# WORLD 2
#-----------
#SETUP CODE FOR WORLD2
#-----------
/scoreboard objectives add World2AuxToggle dummy

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World2AuxToggle 1

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World2ProximityDoorStatus 0

-25.00 70.00 17.50 #trigger base reference
-25.00 73.75 17.80
-25.00 73.20 17.80
-25.00 72.75 17.80
-25.00 71.60 17.80

/summon armor_stand -25.00 70.00 17.50 {Tags:["World2ProximitytriggerDummy","WorldProximityGeneralTriggerDummy"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"World 2 Proximity Trigger"}',CustomNameVisible:0b}

/summon armor_stand -25.00 73.75 17.80 {Tags:["World2DoorInfoDummy1","World2DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Mundo 2","color":"#ffffff"}',CustomNameVisible:1b,Rotation:[0f,0f]}

# /summon armor_stand -25.00 73.20 17.80 {Tags:["World2DoorInfoDummy2","World2DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"⟡ PANTÁNOS CRISTALINOS ⟡","color":"#eb79ff","bold":true}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -25.00 73.20 17.80 {Tags:["World2DoorInfoDummy2","World2DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"⟡","color":"#eb79ff","extra":[{"text":"P","color":"#ffffff"},{"text":"A","color":"#f1b3d9"},{"text":"N","color":"#f19fd4"},{"text":"T","color":"#f08bd0"},{"text":"Á","color":"#ef88cc"},{"text":"N","color":"#ee75c8"},{"text":"O","color":"#ed62c3"},{"text":"S","color":"#ffffff"},{"text":" ","color":"#eb79ff"},{"text":"C","color":"#ed62c3"},{"text":"R","color":"#ee75c8"},{"text":"I","color":"#ef88cc"},{"text":"S","color":"#ffffff"},{"text":"T","color":"#f08bd0"},{"text":"A","color":"#f19fd4"},{"text":"L","color":"#f1b3d9"},{"text":"I","color":"#f08bd0"},{"text":"N","color":"#ef88cc"},{"text":"O","color":"#ed62c3"},{"text":"S","color":"#ffffff"}]}',CustomNameVisible:1b,Rotation:[0f,0f]}


#tittle decos
# /summon armor_stand -25.00 73.45 17.80 {Tags:["World2DoorInfoDummy2DECO1","World2DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"◇─◇──◇─────◇──◇─◇","color":"#eb79ff"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -25.00 73.45 17.80 {Tags:["World2DoorInfoDummy2DECO1","World2DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"◇","color":"#f1b3d9","extra":[{"text":"─","color":"#eb79ff"},{"text":"◇","color":"##f1b3d9"},{"text":"──","color":"#eb79ff"},{"text":"◇","color":"#f1b3d9"},{"text":"─────","color":"#eb79ff"},{"text":"◇","color":"#f1b3d9"},{"text":"──","color":"#eb79ff"},{"text":"◇","color":"#f1b3d9"},{"text":"─","color":"#eb79ff"},{"text":"◇","color":"#f1b3d9"}]}',CustomNameVisible:1b,Rotation:[0f,0f]}


# /summon armor_stand -25.00 72.95 17.80 {Tags:["World2DoorInfoDummy2DECO2","World2DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"◇─◇──◇─────◇──◇─◇","color":"#eb79ff"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -25.00 72.95 17.80 {Tags:["World2DoorInfoDummy2DECO2","World2DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"◇","color":"#f1b3d9","extra":[{"text":"─","color":"#eb79ff"},{"text":"◇","color":"#f1b3d9"},{"text":"──","color":"#eb79ff"},{"text":"◇","color":"#f1b3d9"},{"text":"─────","color":"#eb79ff"},{"text":"◇","color":"#f1b3d9"},{"text":"──","color":"#eb79ff"},{"text":"◇","color":"#f1b3d9"},{"text":"─","color":"#eb79ff"},{"text":"◇","color":"#f1b3d9"}]}',CustomNameVisible:1b,Rotation:[0f,0f]}


/summon armor_stand -25.00 72.75 17.80 {Tags:["World2DoorInfoDummy3","World2DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Dificultad: 1✯","color":"#ffffff","italic":true}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -25.00 71.60 17.80 {Tags:["World2DoorInfoDummy4","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Mín. Req. para desbloqueo: 1✯","color":"#ffffff"}',CustomNameVisible:1b,Rotation:[0f,0f]}

#--
#CodeBlock 1
#--
/execute as @e[tag=World2ProximitytriggerDummy] at @s if entity @p[distance=..8] run execute as @e[tag=LobbyHappiestDummy2] if score @s World2DoorTextTimer >= @s AuxNumber30 run scoreboard players set @s World2DoorTextTimer 0

/execute as @e[tag=World2ProximitytriggerDummy] at @s if entity @p[distance=..8] unless entity @e[tag=World2DoorInfoDummy5, distance=..3] run execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected < @s AuxNumber1 run setblock 7 -52 19 minecraft:redstone_block

/setblock 7 -52 19 air

/execute as @e[tag=World2ProximitytriggerDummy] at @s if entity @p[distance=..8] unless entity @e[tag=World2DoorInfoDummy8, distance=..3] run execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected >= @s AuxNumber1 run setblock 7 -60 19 minecraft:redstone_block

/setblock 7 -60 19 air

/execute as @e[tag=World2ProximitytriggerDummy] at @s if entity @p[distance=..8] run execute as @e[tag=LobbyHappiestDummy2] if score @s World2ProximityDoorStatus matches 0 run scoreboard players add @s World2DoorTextTimer 1

/execute as @e[tag= LobbyHappiestDummy2] if score @s World2ProximityDoorStatus matches 0 if score @s World2DoorTextTimer < @s AuxNumber15 run execute as @e[tag=World2DoorInfoGroup2] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag= LobbyHappiestDummy2] if score @s World2ProximityDoorStatus matches 0 if score @s World2DoorTextTimer > @s AuxNumber15 run execute as @e[tag=World2DoorInfoGroup2] run data merge entity @s {CustomNameVisible:1b}

/execute as @e[tag= LobbyHappiestDummy2] if score @s World2ProximityDoorStatus matches 0 if score @s World2DoorTextTimer = @s AuxNumber15 run execute at @e[tag=World2ProximitytriggerDummy] if entity @e[tag=World2DoorInfoDummy5, distance=..3] run playsound alexsmobs:enderiophage_squish master @a[distance=..5] ~ ~ ~ 0.8 1

/execute as @e[tag= LobbyHappiestDummy2] if score @s World2ProximityDoorStatus matches 0 if score @s World2DoorTextTimer = @s AuxNumber15 run execute at @e[tag=World2ProximitytriggerDummy] if entity @e[tag=World2DoorInfoDummy8, distance=..3] run playsound spartanweaponry:throwing_weapon_loyalty_return master @a[distance=..5] ~ ~ ~ 0.8 2

/execute as @e[tag=LobbyHappiestDummy2] if score @s World2ProximityDoorStatus matches 1 run execute as @e[tag=World2DoorInfoGroup2] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World2ProximityDoorStatus matches 1 run execute as @e[tag=World2DoorInfoDummy4] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=World2ProximitytriggerDummy] at @s if entity @p[distance=..8] run execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected >= @s AuxNumber1 if score @s World2ProximityDoorStatus matches 0 if score @s World2DoorTextTimer matches 15 run setblock 8 -60 19 minecraft:redstone_block

/execute as @e[tag=LobbyHappiestDummy2] if score @s World2ProximityDoorStatus matches 1 run setblock 8 -60 19 air

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 320 run execute at @e[tag=World2ProximitytriggerDummy] run playsound scalinghealth:heart_crystal_use master @a[distance=..8] ~ ~ ~ 1 0.5

/fill -24 70 18 -27 74 18 air replace minecraft:light_gray_stained_glass

/particle alexsmobs:worm_portal -25.00 70.00 18.50 0 0 0 0.5 15

#--
#CodeBlock 2
#--
/kill @e[tag=World2DoorInfoGroup2]

/summon armor_stand -25.00 71.10 17.80 {Tags:["World2DoorInfoDummy6","World2DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Requisitos cumplidos!","color":"#6ee524"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -25.00 70.75 17.80 {Tags:["World2DoorInfoDummy7","World2DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Haz click en la opción para","color":"#6ee524"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -25.00 70.50 17.80 {Tags:["World2DoorInfoDummy8","World2DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"abrir esta puerta...","color":"#6ee524"}',CustomNameVisible:1b,Rotation:[0f,0f]}

#--
#CodeBlock 2.5
#--
/kill @e[tag=World2DoorInfoGroup2]

/summon armor_stand -25.00 71.10 17.80 {Tags:["World2DoorInfoDummy5","World2DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Recursos insuficientes...","color":"#cf3b3b"}',CustomNameVisible:1b,Rotation:[0f,0f]}

#--
#CodeBlock 2.5.5
#--
/tellraw @p {"text":"[DESBLOQUEAR MUNDO 2]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World2ProximityDoorStatus 1"}}

#--
#CodeBlock 3
#--
/execute as @e[tag=World2ProximitytriggerDummy] at @s if entity @p[distance=8..] run execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World2DoorTextTimer 0

/execute as @e[tag=World2ProximitytriggerDummy] at @s if entity @p[distance=14..] run execute as @e[tag=World2DoorInfoGroup1] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=World2ProximitytriggerDummy] at @s if entity @p[distance=14..] run execute as @e[tag=World2DoorInfoDummy4] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=World2ProximitytriggerDummy] at @s if entity @p[distance=..14] run execute as @e[tag=World2DoorInfoGroup1] run data merge entity @s {CustomNameVisible:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World2ProximityDoorStatus matches 0 run execute as @e[tag=World2ProximitytriggerDummy] at @s if entity @p[distance=..14] run execute as @e[tag=World2DoorInfoDummy4] run data merge entity @s {CustomNameVisible:1b}

#--
#CodeBlock 4
#--
/execute as @e[tag=LobbyHappiestDummy2] if score @s World2ProximityDoorStatus matches 0 run scoreboard players add @s World2AuxToggle 1

/execute as @e[tag=LobbyHappiestDummy2] if score @s World2ProximityDoorStatus matches 0 if score @s World2AuxToggle >= @s AuxNumber90 run scoreboard players set @s World2AuxToggle 1
#solo en la linea siguiente, en las coordenadas usa las mismas pero solo reduce en 1 la z, osea ~ ~ ~-1
/execute as @e[tag=LobbyHappiestDummy2] if score @s World2AuxToggle >= @s AuxNumber1 if score @s World2ProximityDoorStatus matches 1 run setblock 3 -63 17 minecraft:redstone_block
#solo en la linea siguiente, en las coordenadas usa las mismas pero solo reduce en 1 la z, osea ~ ~ ~-1
/execute as @e[tag=LobbyHappiestDummy2] if score @s World2AuxToggle >= @s AuxNumber1 if score @s World2ProximityDoorStatus matches 1 run setblock 3 -63 17 minecraft:air

#Onlt the one following line doesnt change it's coordinates:
/execute as @e[tag=LobbyHappiestDummy2] if score @s World2AuxToggle >= @s AuxNumber1 if score @s World2ProximityDoorStatus matches 1 run data merge block -8 -60 22 {auto:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World2AuxToggle >= @s AuxNumber1 if score @s World2ProximityDoorStatus matches 1 run data merge block -4 -60 20 {auto:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World2AuxToggle >= @s AuxNumber1 if score @s World2ProximityDoorStatus matches 1 run scoreboard players set @s World2AuxToggle 0

/execute as @e[tag=World2ProximitytriggerDummy] at @s if entity @p[distance=8..] run setblock 8 -60 19 minecraft:air

#--
#CodeBlock 5
#--
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount > @s AuxNumber0 if score @s PlatformActivationCount < @s AuxNumber150 run execute as @e[tag=World2LightStartingDummy1] at @s run tp @s ~ ~ ~0.25

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount > @s AuxNumber0 if score @s PlatformActivationCount < @s AuxNumber150 run execute as @e[tag=World2LightStartingDummy2] at @s run tp @s ~ ~ ~0.25

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run kill @e[tag=World2LightStartingDummy1]

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run kill @e[tag=World2LightStartingDummy2]
#In the following one line just change the coordinates a bit. Subtract 1 from the z coord:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber0 run setblock 3 -63 17 minecraft:redstone_block
#In the following one line just change the coordinates a bit. Subtract 1 from the z coord:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber0 run setblock 3 -63 17 minecraft:air
#In the following one line just change the coordinates a bit. Subtract 1 from the z coord:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber50 run setblock 3 -63 17 minecraft:redstone_block
#In the following one line just change the coordinates a bit. Subtract 1 from the z coord:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber50 run setblock 3 -63 17 minecraft:air

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 140 run setblock 1 -63 17 minecraft:redstone_block

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 140 run setblock 1 -63 17 minecraft:air

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run execute at @e[tag=World2ProximitytriggerDummy] run playsound minecraft:block.end_portal.spawn master @a[distance=..8] ~ ~ ~ 0.3 0.1
#this one next line doesnt change:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 145 run data merge block -8 -60 18 {auto:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 350 run data merge block -4 -60 20 {auto:0b}
#this one next line doesnt change:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 350 run data merge block -8 -60 22 {auto:0b}

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s PlatformActivationCount 0

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players remove @s PlatformActivationCount 1
#lights
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run execute at @e[tag=World2ProximitytriggerDummy] run setblock -6 -60 -3 minecraft:redstone_block

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run execute at @e[tag=World2ProximitytriggerDummy] run setblock -6 -60 -3 minecraft:air

#--
#CodeBlock 6 #THIS ONE CODE BLOCK SECTION IS FINISHED
#--
/summon armor_stand -15.50 67.75 8.05 {Tags:["World2LightStartingDummy2"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}

/summon armor_stand -15.50 67.75 11.06 {Tags:["World2LightStartingDummy1"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}

/execute at @e[tag=World2ProximitytriggerDummy] run playsound alexsmobs:void_portal_open master @a[distance=..8] ~ ~ ~ 0.23 2

#--
#CodeBlock 7 #THIS ONE CODE BLOCK SECTION IS FINISHED
#--
/summon armor_stand -18 69 10 {Tags:["WorldModulePassingBridgeGenerator1"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,NoGravity:1b,Rotation:[90f,0f]}

#--
#CodeBlock 8
#--
#the color of the cyan neon light doesnt change, it's for the bridge, just that one line. the fill coordinates do change
/fill -37 67 35 -14 78 64 dustrial_decor:cyan_neon_light replace minecraft:cyan_wool

/fill -37 67 35 -14 78 64 dustrial_decor:pink_neon_light replace minecraft:pink_wool

#--
#CodeBlock 8.5
#--
/fill -37 67 35 -14 78 64 minecraft:cyan_wool replace dustrial_decor:cyan_neon_light

/fill -37 67 35 -14 78 64 minecraft:pink_wool replace dustrial_decor:pink_neon_light

#--
#CodeBlock 9
#(The reset codeBlock)
#--
#no need to modifify the next one line:
/execute as @e[tag=LobbyHappiestDummy2] run data merge block -8 -60 22 {auto:0b}

/execute as @e[tag=LobbyHappiestDummy2] run data merge block -4 -60 20 {auto:0b}

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s PlatformActivationCount 0

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World2ProximityDoorStatus 0

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World2AuxToggle 1
#remove the bridge
/fill --26 69 18 -25 69 34 air
#turn off lights
/setblock -5 -60 -3 minecraft:redstone_block

/setblock -5 -60 -3 minecraft:air

/clone 7 -59 21 4 -55 21 -27 70 18
#--------




#-----------
# WORLD 3
#-----------
#SETUP CODE FOR WORLD3
#-----------
/scoreboard objectives add World3AuxToggle dummy

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World3AuxToggle 1

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World3ProximityDoorStatus 0

-25.00 70.00 17.50 #trigger base reference
-25.00 73.75 17.80
-25.00 73.20 17.80
-25.00 72.75 17.80
-25.00 71.60 17.80

-32.50 70.00 10.00 #trigger base reference
-32.80 73.75 10.00
-32.80 73.20 10.00
-32.80 72.75 10.00
-32.80 71.60 10.00

/summon armor_stand -32.50 70.00 10.00 {Tags:["World3ProximitytriggerDummy","WorldProximityGeneralTriggerDummy"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"World 3 Proximity Trigger"}',CustomNameVisible:0b}

/summon armor_stand -32.80 73.75 10.00 {Tags:["World3DoorInfoDummy1","World3DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Mundo 3","color":"#ffffff"}',CustomNameVisible:1b,Rotation:[0f,0f]}

# /summon armor_stand -32.80 73.20 10.00 {Tags:["World3DoorInfoDummy2","World3DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"‧⋆✩ YERMO NÉBULA ✩⋆‧","color":"#7570ff","bold":true}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -32.80 73.20 10.00 {Tags:["World3DoorInfoDummy2","World3DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"‧","color":"#753dff","bold":true,"extra":[{"text":"⋆","color":"#794aff"},{"text":"✩","color":"#7b56ff"},{"text":" ","color":"#7e63ff"},{"text":"Y","color":"#806fff"},{"text":"E","color":"#837cff"},{"text":"R","color":"#8578ff"},{"text":"M","color":"#8774ff"},{"text":"O","color":"#8a70ff"},{"text":" ","color":"#8c6dff"},{"text":"N","color":"#8e69ff"},{"text":"É","color":"#9165ff"},{"text":"B","color":"#9361ff"},{"text":"U","color":"#955dff"},{"text":"L","color":"#9859ff"},{"text":"A","color":"#9a55ff"},{"text":" ","color":"#9d52ff"},{"text":"✩","color":"#9f4eff"},{"text":"⋆","color":"#a14aff"},{"text":"‧","color":"#a346ff"}]}',CustomNameVisible:1b,Rotation:[0f,0f]}


#tittle decos
# /summon armor_stand -32.80 73.45 10.00 {Tags:["World3DoorInfoDummy2DECO1","World3DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"◇─◇──◇─────◇──◇─◇","color":"#7570ff"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -32.80 73.45 10.00 {Tags:["World3DoorInfoDummy2DECO1","World3DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"◇","color":"#753dff","extra":[{"text":"─","color":"#774aff"},{"text":"◇","color":"#7a56ff"},{"text":"──","color":"#7c63ff"},{"text":"◇","color":"#7f70ff"},{"text":"─────","color":"#817cff"},{"text":"◇","color":"#8378ff"},{"text":"──","color":"#8674ff"},{"text":"◇","color":"#8870ff"},{"text":"─","color":"#8b6dff"},{"text":"◇","color":"#8d69ff"}]}',CustomNameVisible:1b,Rotation:[0f,0f]}


# /summon armor_stand -32.80 72.95 10.00 {Tags:["World3DoorInfoDummy2DECO2","World3DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"◇─◇──◇─────◇──◇─◇","color":"#7570ff"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -32.80 72.95 10.00 {Tags:["World3DoorInfoDummy2DECO2","World3DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"◇","color":"#753dff","extra":[{"text":"─","color":"#774aff"},{"text":"◇","color":"#7a56ff"},{"text":"──","color":"#7c63ff"},{"text":"◇","color":"#7f70ff"},{"text":"─────","color":"#817cff"},{"text":"◇","color":"#8378ff"},{"text":"──","color":"#8674ff"},{"text":"◇","color":"#8870ff"},{"text":"─","color":"#8b6dff"},{"text":"◇","color":"#8d69ff"}]}',CustomNameVisible:1b,Rotation:[0f,0f]}


/summon armor_stand -32.80 72.75 10.00 {Tags:["World3DoorInfoDummy3","World3DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Dificultad: 2✯","color":"#f2eea5","italic":true}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -32.80 71.60 10.00 {Tags:["World3DoorInfoDummy4","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Mín. Req. para desbloqueo: 2✯","color":"#ffffff"}',CustomNameVisible:1b,Rotation:[0f,0f]}

#--
#CodeBlock 1
#--
/execute as @e[tag=World3ProximitytriggerDummy] at @s if entity @p[distance=..8] run execute as @e[tag=LobbyHappiestDummy2] if score @s World3DoorTextTimer >= @s AuxNumber30 run scoreboard players set @s World3DoorTextTimer 0

/execute as @e[tag=World3ProximitytriggerDummy] at @s if entity @p[distance=..8] unless entity @e[tag=World3DoorInfoDummy5, distance=..3] run execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected < @s AuxNumber2 run setblock 7 -52 20 minecraft:redstone_block

/setblock 7 -52 20 air

/execute as @e[tag=World3ProximitytriggerDummy] at @s if entity @p[distance=..8] unless entity @e[tag=World3DoorInfoDummy8, distance=..3] run execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected >= @s AuxNumber2 run setblock 7 -60 20 minecraft:redstone_block

/setblock 7 -60 20 air

/execute as @e[tag=World3ProximitytriggerDummy] at @s if entity @p[distance=..8] run execute as @e[tag=LobbyHappiestDummy2] if score @s World3ProximityDoorStatus matches 0 run scoreboard players add @s World3DoorTextTimer 1

/execute as @e[tag=LobbyHappiestDummy2] if score @s World3ProximityDoorStatus matches 0 if score @s World3DoorTextTimer < @s AuxNumber15 run execute as @e[tag=World3DoorInfoGroup2] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World3ProximityDoorStatus matches 0 if score @s World3DoorTextTimer > @s AuxNumber15 run execute as @e[tag=World3DoorInfoGroup2] run data merge entity @s {CustomNameVisible:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World3ProximityDoorStatus matches 0 if score @s World3DoorTextTimer = @s AuxNumber15 run execute at @e[tag=World3ProximitytriggerDummy] if entity @e[tag=World3DoorInfoDummy5, distance=..3] run playsound alexsmobs:enderiophage_squish master @a[distance=..5] ~ ~ ~ 0.8 1

/execute as @e[tag=LobbyHappiestDummy2] if score @s World3ProximityDoorStatus matches 0 if score @s World3DoorTextTimer = @s AuxNumber15 run execute at @e[tag=World3ProximitytriggerDummy] if entity @e[tag=World3DoorInfoDummy8, distance=..3] run playsound spartanweaponry:throwing_weapon_loyalty_return master @a[distance=..5] ~ ~ ~ 0.8 2

/execute as @e[tag=LobbyHappiestDummy2] if score @s World3ProximityDoorStatus matches 1 run execute as @e[tag=World3DoorInfoGroup2] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World3ProximityDoorStatus matches 1 run execute as @e[tag=World3DoorInfoDummy4] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=World3ProximitytriggerDummy] at @s if entity @p[distance=..8] run execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected >= @s AuxNumber2 if score @s World3ProximityDoorStatus matches 0 if score @s World3DoorTextTimer matches 15 run setblock 8 -60 20 minecraft:redstone_block

/execute as @e[tag=LobbyHappiestDummy2] if score @s World3ProximityDoorStatus matches 1 run setblock 8 -60 20 air

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 320 run execute at @e[tag=World3ProximitytriggerDummy] run playsound scalinghealth:heart_crystal_use master @a[distance=..8] ~ ~ ~ 1 0.5

#remove glass door
/fill -34 74 8 -34 70 11 air replace minecraft:light_gray_stained_glass

/particle alexsmobs:worm_portal -33.50 70.00 10.00 0 0 0 0.5 15

#--
#CodeBlock 2
#--
/kill @e[tag=World3DoorInfoGroup2]

/summon armor_stand -32.80 71.10 10.00 {Tags:["World3DoorInfoDummy6","World3DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Requisitos cumplidos!","color":"#6ee524"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -32.80 70.75 10.00 {Tags:["World3DoorInfoDummy7","World3DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Haz click en la opción para","color":"#6ee524"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -32.80 70.50 10.00 {Tags:["World3DoorInfoDummy8","World3DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"abrir esta puerta...","color":"#6ee524"}',CustomNameVisible:1b,Rotation:[0f,0f]}

#--
#CodeBlock 2.5
#--
/kill @e[tag=World3DoorInfoGroup2]

/summon armor_stand -32.80 71.10 10.00 {Tags:["World3DoorInfoDummy5","World3DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Recursos insuficientes...","color":"#cf3b3b"}',CustomNameVisible:1b,Rotation:[0f,0f]}

#--
#CodeBlock 2.5.5
#--
/tellraw @p {"text":"[DESBLOQUEAR MUNDO 3]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World3ProximityDoorStatus 1"}}

#--
#CodeBlock 3
#--
/execute as @e[tag=World3ProximitytriggerDummy] at @s if entity @p[distance=8..] run execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World3DoorTextTimer 0

/execute as @e[tag=World3ProximitytriggerDummy] at @s if entity @p[distance=14..] run execute as @e[tag=World3DoorInfoGroup1] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=World3ProximitytriggerDummy] at @s if entity @p[distance=14..] run execute as @e[tag=World3DoorInfoDummy4] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=World3ProximitytriggerDummy] at @s if entity @p[distance=..14] run execute as @e[tag=World3DoorInfoGroup1] run data merge entity @s {CustomNameVisible:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World3ProximityDoorStatus matches 0 run execute as @e[tag=World3ProximitytriggerDummy] at @s if entity @p[distance=..14] run execute as @e[tag=World3DoorInfoDummy4] run data merge entity @s {CustomNameVisible:1b}

#--
#CodeBlock 4
#--
/execute as @e[tag=LobbyHappiestDummy2] if score @s World3ProximityDoorStatus matches 0 run scoreboard players add @s World3AuxToggle 1

/execute as @e[tag=LobbyHappiestDummy2] if score @s World3ProximityDoorStatus matches 0 if score @s World3AuxToggle >= @s AuxNumber90 run scoreboard players set @s World3AuxToggle 1
#solo en la linea siguiente, en las coordenadas usa las mismas pero solo reduce en 1 la z, osea ~ ~ ~-1
/execute as @e[tag=LobbyHappiestDummy2] if score @s World3AuxToggle >= @s AuxNumber1 if score @s World3ProximityDoorStatus matches 1 run setblock 3 -63 16 minecraft:redstone_block
#solo en la linea siguiente, en las coordenadas usa las mismas pero solo reduce en 1 la z, osea ~ ~ ~-1
/execute as @e[tag=LobbyHappiestDummy2] if score @s World3AuxToggle >= @s AuxNumber1 if score @s World3ProximityDoorStatus matches 1 run setblock 3 -63 16 minecraft:air
#Only the one following line doesn't change coordinates
/execute as @e[tag=LobbyHappiestDummy2] if score @s World3AuxToggle >= @s AuxNumber1 if score @s World3ProximityDoorStatus matches 1 run data merge block -8 -60 22 {auto:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World3AuxToggle >= @s AuxNumber1 if score @s World3ProximityDoorStatus matches 1 run data merge block -6 -60 16 {auto:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World3AuxToggle >= @s AuxNumber1 if score @s World3ProximityDoorStatus matches 1 run scoreboard players set @s World3AuxToggle 0
#lil single block that asks for click
/execute as @e[tag=World3ProximitytriggerDummy] at @s if entity @p[distance=8..] run setblock 8 -60 20 minecraft:air

#--
#CodeBlock 5
#--
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount > @s AuxNumber0 if score @s PlatformActivationCount < @s AuxNumber150 run execute as @e[tag=World3LightStartingDummy1] at @s run tp @s ~-0.25 ~ ~

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount > @s AuxNumber0 if score @s PlatformActivationCount < @s AuxNumber150 run execute as @e[tag=World3LightStartingDummy2] at @s run tp @s ~-0.25 ~ ~

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run kill @e[tag=World3LightStartingDummy1]

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run kill @e[tag=World3LightStartingDummy2]
#In the following one line just change the coordinates a bit. Subtract 1 from the z coord:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber0 run setblock 3 -63 16 minecraft:redstone_block
#In the following one line just change the coordinates a bit. Subtract 1 from the z coord:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber0 run setblock 3 -63 16 minecraft:air
#In the following one line just change the coordinates a bit. Subtract 1 from the z coord:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber50 run setblock 3 -63 16 minecraft:redstone_block
#In the following one line just change the coordinates a bit. Subtract 1 from the z coord:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber50 run setblock 3 -63 16 minecraft:air

#generative bridge dummy creation
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 140 run setblock 1 -63 16 minecraft:redstone_block

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 140 run setblock 1 -63 16 minecraft:air

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run execute at @e[tag=World3ProximitytriggerDummy] run playsound minecraft:block.end_portal.spawn master @a[distance=..8] ~ ~ ~ 0.3 0.1
#this one next line doesnt change:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 145 run data merge block -8 -60 18 {auto:1b}
#self deactivate repetitive poweric code block
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 350 run data merge block -6 -60 16 {auto:0b}
#this one next line doesnt change:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 350 run data merge block -8 -60 22 {auto:0b}

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s PlatformActivationCount 0

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players remove @s PlatformActivationCount 1
#lights
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run execute at @e[tag=World3ProximitytriggerDummy] run setblock -4 -60 -3 minecraft:redstone_block

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run execute at @e[tag=World3ProximitytriggerDummy] run setblock -4 -60 -3 minecraft:air

#--
#CodeBlock 6 #THIS ONE CODE BLOCK SECTION IS FINISHED
#--
/summon armor_stand -15.50 67.75 8.05 {Tags:["World3LightStartingDummy2"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}

/summon armor_stand -15.50 67.75 11.06 {Tags:["World3LightStartingDummy1"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}

/execute at @e[tag=World3ProximitytriggerDummy] run playsound alexsmobs:void_portal_open master @a[distance=..8] ~ ~ ~ 0.23 2

#--
#CodeBlock 7 #THIS ONE CODE BLOCK SECTION IS FINISHED
#--
/summon armor_stand -18 69 10 {Tags:["WorldModulePassingBridgeGenerator1"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,NoGravity:1b,Rotation:[90f,0f]}

#--
#CodeBlock 8
#--
#the color of the cyan neon light doesnt change, it's for the bridge, just that one line. the fill coordinates do change
/fill -80 79 21 -50 67 -3 dustrial_decor:cyan_neon_light replace minecraft:cyan_wool

/fill -80 79 21 -50 67 -3 dustrial_decor:purple_neon_light replace minecraft:purple_wool

#--
#CodeBlock 8.5
#--
/fill -80 79 21 -50 67 -3 minecraft:cyan_wool replace dustrial_decor:cyan_neon_light

/fill -80 79 21 -50 67 -3 minecraft:purple_wool replace dustrial_decor:purple_neon_light

#--
#CodeBlock 9
#(The reset codeBlock)
#--
#no need to modifify the next one line:
/execute as @e[tag=LobbyHappiestDummy2] run data merge block -8 -60 22 {auto:0b}

/execute as @e[tag=LobbyHappiestDummy2] run data merge block -6 -60 16 {auto:0b}

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s PlatformActivationCount 0

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World3ProximityDoorStatus 0

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World3AuxToggle 1
#remove the bridge
/fill -34 69 9 -50 69 10 air
#turn off lights
/setblock -3 -60 -3 minecraft:redstone_block

/setblock -3 -60 -3 minecraft:air
#put the glass door back
/clone 9 -59 20 9 -55 17 -34 70 8
#--------



#-----------
# WORLD 4
#-----------
#SETUP CODE FOR WORLD4
#-----------
/scoreboard objectives add World4AuxToggle dummy

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World4AuxToggle 1

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World4ProximityDoorStatus 0

-25.00 70.00 17.50 #trigger base reference
-25.00 73.75 17.80
-25.00 73.20 17.80
-25.00 72.75 17.80
-25.00 71.60 17.80

-25.00 70.00 2.50 #trigger base reference
-25.00 73.75 2.20
-25.00 73.20 2.20
-25.00 72.75 2.20
-25.00 71.60 2.20


/summon armor_stand -25.00 70.00 2.50 {Tags:["World4ProximitytriggerDummy","WorldProximityGeneralTriggerDummy"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"World 4 Proximity Trigger"}',CustomNameVisible:0b}

/summon armor_stand -25.00 73.75 2.20 {Tags:["World4DoorInfoDummy1","World4DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Mundo 4","color":"#ffffff"}',CustomNameVisible:1b,Rotation:[0f,0f]}

# /summon armor_stand -25.00 73.20 2.20 {Tags:["World4DoorInfoDummy2","World4DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"⊹ Fortaleza T.E.C.H. ⊹","color":"#70ebff","bold":true}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -25.00 73.20 2.20 {Tags:["World4DoorInfoDummy2","World4DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"⊹","color":"#70ebff","extra":[{"text":"F","color":"#70ebff"},{"text":"o","color":"#6fd8ff"},{"text":"r","color":"#6bd1ff"},{"text":"t","color":"#69caff"},{"text":"a","color":"#66c3ff"},{"text":"l","color":"#64bcff"},{"text":"e","color":"#62b5ff"},{"text":"z","color":"#60aeff"},{"text":"a","color":"#5ea7ff"},{"text":" ","color":"#5c9fff"},{"text":"T","color":"#5a98ff"},{"text":"E","color":"#5891ff"},{"text":"C","color":"#568aff"},{"text":"H","color":"#5473ff"}]}',CustomNameVisible:1b,Rotation:[0f,0f]}


#tittle decos
# /summon armor_stand -25.00 73.45 2.20 {Tags:["World4DoorInfoDummy2DECO1","World4DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"◇─◇──◇─────◇──◇─◇","color":"#70ebff"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -25.00 73.45 2.20 {Tags:["World4DoorInfoDummy2DECO1","World4DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"◇","color":"#70ebff","extra":[{"text":"─","color":"#6fd8ff"},{"text":"◇","color":"#6bd1ff"},{"text":"──","color":"#69caff"},{"text":"◇","color":"#66c3ff"},{"text":"─────","color":"#64bcff"},{"text":"◇","color":"#62b5ff"},{"text":"──","color":"#60aeff"},{"text":"◇","color":"#5ea7ff"},{"text":"─","color":"#5c9fff"},{"text":"◇","color":"#5a98ff"}]}',CustomNameVisible:1b,Rotation:[0f,0f]}


# /summon armor_stand -25.00 72.95 2.20 {Tags:["World4DoorInfoDummy2DECO2","World4DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"◇─◇──◇─────◇──◇─◇","color":"#70ebff"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -25.00 72.95 2.20 {Tags:["World4DoorInfoDummy2DECO2","World4DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"◇","color":"#70ebff","extra":[{"text":"─","color":"#6fd8ff"},{"text":"◇","color":"#6bd1ff"},{"text":"──","color":"#69caff"},{"text":"◇","color":"#66c3ff"},{"text":"─────","color":"#64bcff"},{"text":"◇","color":"#62b5ff"},{"text":"──","color":"#60aeff"},{"text":"◇","color":"#5ea7ff"},{"text":"─","color":"#5c9fff"},{"text":"◇","color":"#5a98ff"}]}',CustomNameVisible:1b,Rotation:[0f,0f]}


/summon armor_stand -25.00 72.75 2.20 {Tags:["World4DoorInfoDummy3","World4DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Dificultad: 2✯","color":"#f2eea5","italic":true}',CustomNameVisible:1b,Rotation:[0f,0f]}
#death+
/summon armor_stand -25.00 72.50 2.20 {Tags:["World4DoorInfoDummy3DP","World4DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"· • —– ༻ Muerte+ ༺ —– • ·","color":"#e64051","italic":true,"bold":true}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -25.00 71.60 2.20 {Tags:["World4DoorInfoDummy4","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Mín. Req. para desbloqueo: 4✯","color":"#ffffff"}',CustomNameVisible:1b,Rotation:[0f,0f]}

#--
#CodeBlock 1
#--
/execute as @e[tag=World4ProximitytriggerDummy] at @s if entity @p[distance=..8] run execute as @e[tag=LobbyHappiestDummy2] if score @s World4DoorTextTimer >= @s AuxNumber30 run scoreboard players set @s World4DoorTextTimer 0

/execute as @e[tag=World4ProximitytriggerDummy] at @s if entity @p[distance=..8] unless entity @e[tag=World4DoorInfoDummy5, distance=..3] run execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected < @s AuxNumber4 run setblock 4 -52 20 minecraft:redstone_block

/setblock 4 -52 20 air

/execute as @e[tag=World4ProximitytriggerDummy] at @s if entity @p[distance=..8] unless entity @e[tag=World4DoorInfoDummy8, distance=..3] run execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected >= @s AuxNumber4 run setblock 4 -60 20 minecraft:redstone_block

/setblock 4 -60 20 air

/execute as @e[tag=World4ProximitytriggerDummy] at @s if entity @p[distance=..8] run execute as @e[tag=LobbyHappiestDummy2] if score @s World4ProximityDoorStatus matches 0 run scoreboard players add @s World4DoorTextTimer 1

/execute as @e[tag=LobbyHappiestDummy2] if score @s World4ProximityDoorStatus matches 0 if score @s World4DoorTextTimer < @s AuxNumber15 run execute as @e[tag=World4DoorInfoGroup2] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World4ProximityDoorStatus matches 0 if score @s World4DoorTextTimer > @s AuxNumber15 run execute as @e[tag=World4DoorInfoGroup2] run data merge entity @s {CustomNameVisible:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World4ProximityDoorStatus matches 0 if score @s World4DoorTextTimer = @s AuxNumber15 run execute at @e[tag=World4ProximitytriggerDummy] if entity @e[tag=World4DoorInfoDummy5, distance=..3] run playsound alexsmobs:enderiophage_squish master @a[distance=..5] ~ ~ ~ 0.8 1

/execute as @e[tag=LobbyHappiestDummy2] if score @s World4ProximityDoorStatus matches 0 if score @s World4DoorTextTimer = @s AuxNumber15 run execute at @e[tag=World4ProximitytriggerDummy] if entity @e[tag=World4DoorInfoDummy8, distance=..3] run playsound spartanweaponry:throwing_weapon_loyalty_return master @a[distance=..5] ~ ~ ~ 0.8 2

/execute as @e[tag=LobbyHappiestDummy2] if score @s World4ProximityDoorStatus matches 1 run execute as @e[tag=World4DoorInfoGroup2] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World4ProximityDoorStatus matches 1 run execute as @e[tag=World4DoorInfoDummy4] run data merge entity @s {CustomNameVisible:0b}
#coordinates here are form the lil block text check:
/execute as @e[tag=World4ProximitytriggerDummy] at @s if entity @p[distance=..8] run execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected >= @s AuxNumber4 if score @s World4ProximityDoorStatus matches 0 if score @s World4DoorTextTimer matches 15 run setblock 5 -60 20 minecraft:redstone_block

/execute as @e[tag=LobbyHappiestDummy2] if score @s World4ProximityDoorStatus matches 1 run setblock 5 -60 20 air

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 320 run execute at @e[tag=World4ProximitytriggerDummy] run playsound scalinghealth:heart_crystal_use master @a[distance=..8] ~ ~ ~ 1 0.5

#remove glass door
/fill -27 70 1 -24 74 1 air replace minecraft:light_gray_stained_glass
#coordinates are on the very middle of the glass door
/particle alexsmobs:worm_portal -25.00 70.00 1.50 0 0 0 0.5 15

#--
#CodeBlock 2
#--
/kill @e[tag=World4DoorInfoGroup2]

/summon armor_stand -25.00 71.10 2.20 {Tags:["World4DoorInfoDummy6","World4DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Requisitos cumplidos!","color":"#6ee524"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -25.00 70.75 2.20 {Tags:["World4DoorInfoDummy7","World4DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Haz click en la opción para","color":"#6ee524"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -25.00 70.50 2.20 {Tags:["World4DoorInfoDummy8","World4DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"abrir esta puerta...","color":"#6ee524"}',CustomNameVisible:1b,Rotation:[0f,0f]}

#--
#CodeBlock 2.5
#--
/kill @e[tag=World4DoorInfoGroup2]

/summon armor_stand -25.00 71.10 2.20 {Tags:["World4DoorInfoDummy5","World4DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Recursos insuficientes...","color":"#cf3b3b"}',CustomNameVisible:1b,Rotation:[0f,0f]}

#--
#CodeBlock 2.5.5 #THIS ONE CODE BLOCK SECTION IS FINISHED
#--
/tellraw @p {"text":"[DESBLOQUEAR MUNDO 4]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World4ProximityDoorStatus 1"}}

#--
#CodeBlock 3
#--
/execute as @e[tag=World4ProximitytriggerDummy] at @s if entity @p[distance=8..] run execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World4DoorTextTimer 0

/execute as @e[tag=World4ProximitytriggerDummy] at @s if entity @p[distance=14..] run execute as @e[tag=World4DoorInfoGroup1] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=World4ProximitytriggerDummy] at @s if entity @p[distance=14..] run execute as @e[tag=World4DoorInfoDummy4] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=World4ProximitytriggerDummy] at @s if entity @p[distance=..14] run execute as @e[tag=World4DoorInfoGroup1] run data merge entity @s {CustomNameVisible:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World4ProximityDoorStatus matches 0 run execute as @e[tag=World4ProximitytriggerDummy] at @s if entity @p[distance=..14] run execute as @e[tag=World4DoorInfoDummy4] run data merge entity @s {CustomNameVisible:1b}

#--
#CodeBlock 4
#--
/execute as @e[tag=LobbyHappiestDummy2] if score @s World4ProximityDoorStatus matches 0 run scoreboard players add @s World4AuxToggle 1

/execute as @e[tag=LobbyHappiestDummy2] if score @s World4ProximityDoorStatus matches 0 if score @s World4AuxToggle >= @s AuxNumber90 run scoreboard players set @s World4AuxToggle 1
#solo en la linea siguiente, en las coordenadas usa las mismas pero solo reduce en 1 la z, osea ~ ~ ~-1
/execute as @e[tag=LobbyHappiestDummy2] if score @s World4AuxToggle >= @s AuxNumber1 if score @s World4ProximityDoorStatus matches 1 run setblock 3 -63 15 minecraft:redstone_block
#solo en la linea siguiente, en las coordenadas usa las mismas pero solo reduce en 1 la z, osea ~ ~ ~-1
/execute as @e[tag=LobbyHappiestDummy2] if score @s World4AuxToggle >= @s AuxNumber1 if score @s World4ProximityDoorStatus matches 1 run setblock 3 -63 15 minecraft:air
#Only the one following line doesn't change coordinates
/execute as @e[tag=LobbyHappiestDummy2] if score @s World4AuxToggle >= @s AuxNumber1 if score @s World4ProximityDoorStatus matches 1 run data merge block -8 -60 22 {auto:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World4AuxToggle >= @s AuxNumber1 if score @s World4ProximityDoorStatus matches 1 run data merge block -4 -60 16 {auto:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World4AuxToggle >= @s AuxNumber1 if score @s World4ProximityDoorStatus matches 1 run scoreboard players set @s World4AuxToggle 0
#put coordinates of lil single block that asks for click
/execute as @e[tag=World4ProximitytriggerDummy] at @s if entity @p[distance=8..] run setblock 5 -60 20 minecraft:air

#--
#CodeBlock 5
#--
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount > @s AuxNumber0 if score @s PlatformActivationCount < @s AuxNumber150 run execute as @e[tag=World4LightStartingDummy1] at @s run tp @s ~ ~ ~-0.25

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount > @s AuxNumber0 if score @s PlatformActivationCount < @s AuxNumber150 run execute as @e[tag=World4LightStartingDummy2] at @s run tp @s ~ ~ ~-0.25

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run kill @e[tag=World4LightStartingDummy1]

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run kill @e[tag=World4LightStartingDummy2]
#In the following one line just change the coordinates a bit. Subtract 1 from the z coord:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber0 run setblock 3 -63 15 minecraft:redstone_block
#In the following one line just change the coordinates a bit. Subtract 1 from the z coord:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber0 run setblock 3 -63 15 minecraft:air
#In the following one line just change the coordinates a bit. Subtract 1 from the z coord:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber50 run setblock 3 -63 15 minecraft:redstone_block
#In the following one line just change the coordinates a bit. Subtract 1 from the z coord:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber50 run setblock 3 -63 15 minecraft:air

#generative bridge dummy creation
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 140 run setblock 0 -63 16 minecraft:redstone_block

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 140 run setblock 0 -63 16 minecraft:air

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run execute at @e[tag=World4ProximitytriggerDummy] run playsound minecraft:block.end_portal.spawn master @a[distance=..8] ~ ~ ~ 0.3 0.1
#this one next line doesnt change:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 145 run data merge block -8 -60 18 {auto:1b}
#self deactivate repetitive poweric code block
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 350 run data merge block -4 -60 16 {auto:0b}
#this one next line doesnt change:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 350 run data merge block -8 -60 22 {auto:0b}

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s PlatformActivationCount 0

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players remove @s PlatformActivationCount 1
#lights
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run execute at @e[tag=World4ProximitytriggerDummy] run setblock -2 -60 -3 minecraft:redstone_block

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run execute at @e[tag=World4ProximitytriggerDummy] run setblock -2 -60 -3 minecraft:air

#--
#CodeBlock 6 #THIS ONE CODE BLOCK SECTION IS FINISHED
#--
/summon armor_stand -15.50 67.75 8.05 {Tags:["World3LightStartingDummy2"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}

/summon armor_stand -15.50 67.75 11.06 {Tags:["World3LightStartingDummy1"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}

/execute at @e[tag=World3ProximitytriggerDummy] run playsound alexsmobs:void_portal_open master @a[distance=..8] ~ ~ ~ 0.23 2

#--
#CodeBlock 7 #THIS ONE CODE BLOCK SECTION IS FINISHED
#--
/summon armor_stand -18 69 10 {Tags:["WorldModulePassingBridgeGenerator1"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,NoGravity:1b,Rotation:[90f,0f]}

#--
#CodeBlock 8
#(the lights CodeBlock)
#--
#the color of the cyan neon light doesnt change, it's for the bridge, just that one line. the fill coordinates do change
/fill -12 67 -14 -37 78 -46 dustrial_decor:cyan_neon_light replace minecraft:cyan_wool
#change for the colored lights
/fill -12 67 -14 -37 78 -46 dustrial_decor:cyan_neon_light replace minecraft:cyan_wool

#--
#CodeBlock 8.5
#--
/fill -12 67 -14 -37 78 -46 minecraft:cyan_wool replace dustrial_decor:cyan_neon_light
#change for the colored lights
/fill -12 67 -14 -37 78 -46 minecraft:cyan_wool replace dustrial_decor:cyan_neon_light

#--
#CodeBlock 9
#(The reset codeBlock)
#--
#no need to modifify the next one line:
/execute as @e[tag=LobbyHappiestDummy2] run data merge block -8 -60 22 {auto:0b}

/execute as @e[tag=LobbyHappiestDummy2] run data merge block -4 -60 16 {auto:0b}

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s PlatformActivationCount 0

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World4ProximityDoorStatus 0

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World4AuxToggle 1
#remove the bridge
/fill -26 69 1 -25 69 -15 air
#turn off lights
/setblock -1 -60 -3 minecraft:redstone_block

/setblock -1 -60 -3 minecraft:air
#put the glass door back
/clone 7 -59 21 4 -55 21 -27 70 1
#--------



#-----------
# WORLD 5
#-----------
#SETUP CODE FOR WORLD5
#-----------
/scoreboard objectives add World5AuxToggle dummy

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World5AuxToggle 1

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World5ProximityDoorStatus 0

-17.30 70.00 10.00 #trigger base reference
-17.30 73.75 10.00
-17.30 73.20 10.00
-17.30 72.75 10.00
-17.30 71.60 10.00

-17.30 85.00 10.00 #trigger base reference
-17.30 88.75 10.00
-17.30 88.20 10.00
-17.30 87.75 10.00
-17.30 86.60 10.00

#take the middle of the danger blocks as coords
/summon armor_stand -17.50 85.00 10.00 {Tags:["World5ProximitytriggerDummy","WorldProximityGeneralTriggerDummy"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"World 5 Proximity Trigger"}',CustomNameVisible:0b}

/summon armor_stand -17.30 88.75 10.00 {Tags:["World5DoorInfoDummy1","World5DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Mundo 5","color":"#ffffff"}',CustomNameVisible:1b,Rotation:[0f,0f]}

# /summon armor_stand -17.30 88.20 10.00 {Tags:["World5DoorInfoDummy2","World5DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"༻ HIPER-DESIERTOS ༺","color":"#ffef92","bold":true}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -17.30 88.20 10.00 {Tags:["World5DoorInfoDummy2","World5DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"༻ ","color":"#ffef92","bold":true,"extra":[{"text":"H","color":"#ffef92"},{"text":"I","color":"#ffe89d"},{"text":"P","color":"#ffe4a7"},{"text":"E","color":"#ffdfa0"},{"text":"R","color":"#ffda9a"},{"text":"-","color":"#ffd693"},{"text":"D","color":"#ffd18d"},{"text":"E","color":"#ffcd88"},{"text":"S","color":"#ffc982"},{"text":"I","color":"#ffc47d"},{"text":"E","color":"#ffbf77"},{"text":"R","color":"#ffba72"},{"text":"T","color":"#ffb56d"},{"text":"O","color":"#ffb169"},{"text":"S","color":"#ffac64"},{"text":" ","color":"#ffef92"}]}',CustomNameVisible:1b,Rotation:[0f,0f]}




#tittle decos
# /summon armor_stand -17.30 88.45 10.00 {Tags:["World5DoorInfoDummy2DECO1","World5DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"◇─◇──◇─────◇──◇─◇","color":"#ffef92"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -17.30 88.45 10.00 {Tags:["World5DoorInfoDummy2DECO1","World5DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"◇","color":"#ffef92","extra":[{"text":"─","color":"#ffeaa0"},{"text":"◇","color":"#ffe5ad"},{"text":"─","color":"#ffe1b9"},{"text":"◇","color":"#ffddb9"},{"text":"─────","color":"#ffdfbd"},{"text":"◇","color":"#ffe1b9"},{"text":"──","color":"#ffe5ad"},{"text":"◇","color":"#ffeaa0"},{"text":"─","color":"#ffef92"},{"text":"◇","color":"#ffef92"}]}',CustomNameVisible:1b,Rotation:[0f,0f]}


# /summon armor_stand -17.30 87.95 10.00 {Tags:["World5DoorInfoDummy2DECO2","World5DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"◇─◇──◇─────◇──◇─◇","color":"#ffef92"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -17.30 87.95 10.00 {Tags:["World5DoorInfoDummy2DECO2","World5DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"◇","color":"#ffef92","extra":[{"text":"─","color":"#ffeaa0"},{"text":"◇","color":"#ffe5ad"},{"text":"─","color":"#ffe1b9"},{"text":"◇","color":"#ffddb9"},{"text":"─────","color":"#ffdfbd"},{"text":"◇","color":"#ffe1b9"},{"text":"──","color":"#ffe5ad"},{"text":"◇","color":"#ffeaa0"},{"text":"─","color":"#ffef92"},{"text":"◇","color":"#ffef92"}]}',CustomNameVisible:1b,Rotation:[0f,0f]}


/summon armor_stand -17.30 87.75 10.00 {Tags:["World5DoorInfoDummy3","World5DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Dificultad: 2✯","color":"#f2eea5","italic":true}',CustomNameVisible:1b,Rotation:[0f,0f]}
# #death+
# /summon armor_stand -25.00 72.50 2.20 {Tags:["World4DoorInfoDummy3DP","World4DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"{Muerte+}","color":"#b1253f","italic":true,"bold":true}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -17.30 86.60 10.00 {Tags:["World5DoorInfoDummy4","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Mín. Req. para desbloqueo: 6✯","color":"#ffffff"}',CustomNameVisible:1b,Rotation:[0f,0f]}

#--
#CodeBlock 1
#--
/execute as @e[tag=World5ProximitytriggerDummy] at @s if entity @p[distance=..8] run execute as @e[tag=LobbyHappiestDummy2] if score @s World5DoorTextTimer >= @s AuxNumber30 run scoreboard players set @s World5DoorTextTimer 0
#in this one next code line, from world 4 to 10 just change the coordinates by removing 1 from z axis
/execute as @e[tag=World5ProximitytriggerDummy] at @s if entity @p[distance=..8] unless entity @e[tag=World5DoorInfoDummy5, distance=..3] run execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected < @s AuxNumber6 run setblock 4 -52 19 minecraft:redstone_block

/setblock 4 -52 19 air

/execute as @e[tag=World5ProximitytriggerDummy] at @s if entity @p[distance=..8] unless entity @e[tag=World5DoorInfoDummy8, distance=..3] run execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected >= @s AuxNumber6 run setblock 4 -60 19 minecraft:redstone_block

/setblock 4 -60 19 air

/execute as @e[tag=World5ProximitytriggerDummy] at @s if entity @p[distance=..8] run execute as @e[tag=LobbyHappiestDummy2] if score @s World5ProximityDoorStatus matches 0 run scoreboard players add @s World5DoorTextTimer 1

/execute as @e[tag=LobbyHappiestDummy2] if score @s World5ProximityDoorStatus matches 0 if score @s World5DoorTextTimer < @s AuxNumber15 run execute as @e[tag=World5DoorInfoGroup2] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World5ProximityDoorStatus matches 0 if score @s World5DoorTextTimer > @s AuxNumber15 run execute as @e[tag=World5DoorInfoGroup2] run data merge entity @s {CustomNameVisible:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World5ProximityDoorStatus matches 0 if score @s World5DoorTextTimer = @s AuxNumber15 run execute at @e[tag=World5ProximitytriggerDummy] if entity @e[tag=World5DoorInfoDummy5, distance=..3] run playsound alexsmobs:enderiophage_squish master @a[distance=..5] ~ ~ ~ 0.8 1

/execute as @e[tag=LobbyHappiestDummy2] if score @s World5ProximityDoorStatus matches 0 if score @s World5DoorTextTimer = @s AuxNumber15 run execute at @e[tag=World5ProximitytriggerDummy] if entity @e[tag=World5DoorInfoDummy8, distance=..3] run playsound spartanweaponry:throwing_weapon_loyalty_return master @a[distance=..5] ~ ~ ~ 0.8 2

/execute as @e[tag=LobbyHappiestDummy2] if score @s World5ProximityDoorStatus matches 1 run execute as @e[tag=World5DoorInfoGroup2] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World5ProximityDoorStatus matches 1 run execute as @e[tag=World5DoorInfoDummy4] run data merge entity @s {CustomNameVisible:0b}
#coordinates here are form the lil block text check, or if youre on world4 to world 12 just ~ ~ ~-1 those coords:
/execute as @e[tag=World5ProximitytriggerDummy] at @s if entity @p[distance=..8] run execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected >= @s AuxNumber6 if score @s World5ProximityDoorStatus matches 0 if score @s World5DoorTextTimer matches 15 run setblock 5 -60 19 minecraft:redstone_block

/execute as @e[tag=LobbyHappiestDummy2] if score @s World5ProximityDoorStatus matches 1 run setblock 5 -60 19 air

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 320 run execute at @e[tag=World5ProximitytriggerDummy] run playsound scalinghealth:heart_crystal_use master @a[distance=..8] ~ ~ ~ 1 0.5

#remove glass door
/fill -17 85 8 -17 89 11 air replace minecraft:light_gray_stained_glass
#coordinates are on the very middle of the glass door
/particle alexsmobs:worm_portal -16.50 85.00 10.00 0 0 0 0.5 15

#--
#CodeBlock 2
#--
/kill @e[tag=World5DoorInfoGroup2]
-17.30 70.00 10.00 #trigger base reference
-17.30 73.75 10.00
-17.30 73.20 10.00
-17.30 72.75 10.00
-17.30 71.60 10.00

-17.30 85.00 10.00 #trigger base reference
-17.30 88.75 10.00
-17.30 88.20 10.00
-17.30 87.75 10.00
-17.30 86.60 10.00

-17.30 86.10 10.00
-17.30 85.75 10.00
-17.30 85.50 10.00

/summon armor_stand -17.30 86.10 10.00 {Tags:["World5DoorInfoDummy6","World5DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Requisitos cumplidos!","color":"#6ee524"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -17.30 85.75 10.00 {Tags:["World5DoorInfoDummy7","World5DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Haz click en la opción para","color":"#6ee524"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -17.30 85.50 10.00 {Tags:["World5DoorInfoDummy8","World5DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"abrir esta puerta...","color":"#6ee524"}',CustomNameVisible:1b,Rotation:[0f,0f]}

#--
#CodeBlock 2.5
#--
/kill @e[tag=World5DoorInfoGroup2]

/summon armor_stand -17.30 86.10 10.00 {Tags:["World5DoorInfoDummy5","World5DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Recursos insuficientes...","color":"#cf3b3b"}',CustomNameVisible:1b,Rotation:[0f,0f]}

#--
#CodeBlock 2.5.5 #THIS ONE CODE BLOCK SECTION IS FINISHED
#--
/tellraw @p {"text":"[DESBLOQUEAR MUNDO 4]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World4ProximityDoorStatus 1"}}

#--
#CodeBlock 3
#--
/execute as @e[tag=World5ProximitytriggerDummy] at @s if entity @p[distance=8..] run execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World5DoorTextTimer 0

/execute as @e[tag=World5ProximitytriggerDummy] at @s if entity @p[distance=14..] run execute as @e[tag=World5DoorInfoGroup1] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=World5ProximitytriggerDummy] at @s if entity @p[distance=14..] run execute as @e[tag=World5DoorInfoDummy4] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=World5ProximitytriggerDummy] at @s if entity @p[distance=..14] run execute as @e[tag=World5DoorInfoGroup1] run data merge entity @s {CustomNameVisible:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World5ProximityDoorStatus matches 0 run execute as @e[tag=World5ProximitytriggerDummy] at @s if entity @p[distance=..14] run execute as @e[tag=World5DoorInfoDummy4] run data merge entity @s {CustomNameVisible:1b}

#--
#CodeBlock 4
#--
/execute as @e[tag=LobbyHappiestDummy2] if score @s World5ProximityDoorStatus matches 0 run scoreboard players add @s World5AuxToggle 1

/execute as @e[tag=LobbyHappiestDummy2] if score @s World5ProximityDoorStatus matches 0 if score @s World5AuxToggle >= @s AuxNumber90 run scoreboard players set @s World5AuxToggle 1
#solo en la linea siguiente, en las coordenadas usa las mismas pero solo reduce en 1 la z, osea ~ ~ ~-1
/execute as @e[tag=LobbyHappiestDummy2] if score @s World5AuxToggle >= @s AuxNumber1 if score @s World5ProximityDoorStatus matches 1 run setblock 3 -63 14 minecraft:redstone_block
#solo en la linea siguiente, en las coordenadas usa las mismas pero solo reduce en 1 la z, osea ~ ~ ~-1
/execute as @e[tag=LobbyHappiestDummy2] if score @s World5AuxToggle >= @s AuxNumber1 if score @s World5ProximityDoorStatus matches 1 run setblock 3 -63 14 minecraft:air
#Only the one following line doesn't change coordinates
/execute as @e[tag=LobbyHappiestDummy2] if score @s World5AuxToggle >= @s AuxNumber1 if score @s World5ProximityDoorStatus matches 1 run data merge block -8 -60 22 {auto:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World5AuxToggle >= @s AuxNumber1 if score @s World5ProximityDoorStatus matches 1 run data merge block -6 -60 12 {auto:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World5AuxToggle >= @s AuxNumber1 if score @s World5ProximityDoorStatus matches 1 run scoreboard players set @s World5AuxToggle 0
#put coordinates of lil single block that asks for click or just ~ ~ ~-1 if youre from world4 to world10
/execute as @e[tag=World5ProximitytriggerDummy] at @s if entity @p[distance=8..] run setblock 5 -60 19 minecraft:air

#--
#CodeBlock 5
#--
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount > @s AuxNumber0 if score @s PlatformActivationCount < @s AuxNumber150 run execute as @e[tag=World5LightStartingDummy1] at @s run tp @s ~0.25 ~ ~

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount > @s AuxNumber0 if score @s PlatformActivationCount < @s AuxNumber150 run execute as @e[tag=World5LightStartingDummy2] at @s run tp @s ~0.25 ~ ~

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run kill @e[tag=World5LightStartingDummy1]

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run kill @e[tag=World5LightStartingDummy2]
#In the following one line just change the coordinates a bit. Subtract 1 from the z coord:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber0 run setblock 3 -63 14 minecraft:redstone_block
#In the following one line just change the coordinates a bit. Subtract 1 from the z coord:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber0 run setblock 3 -63 14 minecraft:air
#In the following one line just change the coordinates a bit. Subtract 1 from the z coord:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber50 run setblock 3 -63 14 minecraft:redstone_block
#In the following one line just change the coordinates a bit. Subtract 1 from the z coord:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber50 run setblock 3 -63 14 minecraft:air

#generative bridge dummy creation
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 140 run setblock 0 -63 17 minecraft:redstone_block

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 140 run setblock 0 -63 17 minecraft:air

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run execute at @e[tag=World5ProximitytriggerDummy] run playsound minecraft:block.end_portal.spawn master @a[distance=..8] ~ ~ ~ 0.3 0.1
#this one next line doesnt change:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 145 run data merge block -8 -60 18 {auto:1b}
#self deactivate repetitive poweric code block
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 350 run data merge block -6 -60 12 {auto:0b}
#this one next line doesnt change:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 350 run data merge block -8 -60 22 {auto:0b}

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s PlatformActivationCount 0

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players remove @s PlatformActivationCount 1
#lights
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run execute at @e[tag=World5ProximitytriggerDummy] run setblock -8 -60 -1 minecraft:redstone_block

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run execute at @e[tag=World5ProximitytriggerDummy] run setblock -8 -60 -1 minecraft:air

#--
#CodeBlock 6 #THIS ONE CODE BLOCK SECTION IS FINISHED
#--
/summon armor_stand -15.50 67.75 8.05 {Tags:["World3LightStartingDummy2"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}

/summon armor_stand -15.50 67.75 11.06 {Tags:["World3LightStartingDummy1"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}

/execute at @e[tag=World3ProximitytriggerDummy] run playsound alexsmobs:void_portal_open master @a[distance=..8] ~ ~ ~ 0.23 2

#--
#CodeBlock 7 #THIS ONE CODE BLOCK SECTION IS FINISHED
#--
/summon armor_stand -18 69 10 {Tags:["WorldModulePassingBridgeGenerator1"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,NoGravity:1b,Rotation:[90f,0f]}

#--
#CodeBlock 8
#(the lights CodeBlock)
#--
#the color of the cyan neon light doesnt change, it's for the bridge, just that one line. the fill coordinates do change
/fill 0 81 23 31 92 -2 dustrial_decor:cyan_neon_light replace minecraft:cyan_wool
#change for the colored lights
/fill 0 81 23 31 92 -2 dustrial_decor:yellow_neon_light replace minecraft:yellow_wool

#--
#CodeBlock 8.5
#--
/fill 0 81 23 31 92 -2 minecraft:cyan_wool replace dustrial_decor:cyan_neon_light
#change for the colored lights
/fill 0 81 23 31 92 -2 minecraft:yellow_wool replace dustrial_decor:yellow_neon_light

#--
#CodeBlock 9
#(The reset codeBlock)
#--
#no need to modifify the next one line:
/execute as @e[tag=LobbyHappiestDummy2] run data merge block -8 -60 22 {auto:0b}
#auto deactivation CodeBLock5 repetitive coords, you know
/execute as @e[tag=LobbyHappiestDummy2] run data merge block -6 -60 12 {auto:0b}

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s PlatformActivationCount 0

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World5ProximityDoorStatus 0

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World5AuxToggle 1
#remove the bridge
/fill -17 84 10 -1 84 9 air
#turn off lights
/setblock -7 -60 -1 minecraft:redstone_block

/setblock -7 -60 -1 minecraft:air
#put the glass door back
/clone 9 -59 17 9 -55 20 -17 85 8
#--------




#-----------
# WORLD 6
#-----------
#SETUP CODE FOR WORLD6
#-----------
/scoreboard objectives add World6AuxToggle dummy

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World6AuxToggle 1

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World6ProximityDoorStatus 0

-17.30 85.00 10.00 #trigger base reference
-17.30 88.75 10.00
-17.30 88.20 10.00
-17.30 87.75 10.00
-17.30 86.60 10.00

-25.00 85.00 17.50 #trigger base reference
-25.00 88.75 17.80
-25.00 88.20 17.80
-25.00 87.75 17.80
-25.00 86.60 17.80

#take the middle of the danger blocks as coords
/summon armor_stand -25.00 85.00 17.50 {Tags:["World6ProximitytriggerDummy","WorldProximityGeneralTriggerDummy"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"World 6 Proximity Trigger"}',CustomNameVisible:0b}

/summon armor_stand -25.00 88.75 17.80 {Tags:["World6DoorInfoDummy1","World6DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Mundo 6","color":"#ffffff"}',CustomNameVisible:1b,Rotation:[0f,0f]}

# /summon armor_stand -25.00 88.20 17.80 {Tags:["World6DoorInfoDummy2","World6DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"⚝ SANTUARIO DERRETIDO ⚝","color":"#b5271d","bold":true}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -25.00 88.20 17.80 {Tags:["World6DoorInfoDummy2","World6DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"⚝ ","color":"#4d140d","bold":true,"extra":[{"text":"S","color":"#751d11"},{"text":"A","color":"#992711"},{"text":"N","color":"#b72c14"},{"text":"T","color":"#cc371a"},{"text":"U","color":"#d84422"},{"text":"A","color":"#e4522b"},{"text":"R","color":"#eb6236"},{"text":"I","color":"#e85c31"},{"text":"O","color":"#de4d25"},{"text":" ","color":"#b72c14"},{"text":"D","color":"#de4d25"},{"text":"E","color":"#e85c31"},{"text":"R","color":"#eb6236"},{"text":"R","color":"#e4522b"},{"text":"E","color":"#d84422"},{"text":"T","color":"#cc371a"},{"text":"I","color":"#b72c14"},{"text":"D","color":"#992711"},{"text":"O","color":"#751d11"},{"text":" ","color":"#4d140d"},{"text":"⚝","color":"#4d140d"}]}',CustomNameVisible:1b,Rotation:[0f,0f]}


#tittle decos
# /summon armor_stand -25.00 88.45 17.80 {Tags:["World6DoorInfoDummy2DECO1","World6DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"◇─◇──◇─────◇──◇─◇","color":"#b5271d"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -25.00 88.45 17.80 {Tags:["World6DoorInfoDummy2DECO1","World6DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"◇","color":"#4d140d","extra":[{"text":"─","color":"#751d11"},{"text":"◇","color":"#992711"},{"text":"──","color":"#b72c14"},{"text":"◇","color":"#cc371a"},{"text":"─────","color":"#d84422"},{"text":"◇","color":"#cc371a"},{"text":"──","color":"#b72c14"},{"text":"◇","color":"#992711"},{"text":"─","color":"#751d11"},{"text":"◇","color":"#4d140d"}]}',CustomNameVisible:1b,Rotation:[0f,0f]}


# /summon armor_stand -25.00 87.95 17.80 {Tags:["World6DoorInfoDummy2DECO2","World6DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"◇─◇──◇─────◇──◇─◇","color":"#b5271d"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -25.00 87.95 17.80 {Tags:["World6DoorInfoDummy2DECO2","World6DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"◇","color":"#4d140d","extra":[{"text":"─","color":"#751d11"},{"text":"◇","color":"#992711"},{"text":"──","color":"#b72c14"},{"text":"◇","color":"#cc371a"},{"text":"─────","color":"#d84422"},{"text":"◇","color":"#cc371a"},{"text":"──","color":"#b72c14"},{"text":"◇","color":"#992711"},{"text":"─","color":"#751d11"},{"text":"◇","color":"#4d140d"}]}',CustomNameVisible:1b,Rotation:[0f,0f]}


/summon armor_stand -25.00 87.75 17.80 {Tags:["World6DoorInfoDummy3","World6DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Dificultad: 3✯","color":"#f2a25c","italic":true}',CustomNameVisible:1b,Rotation:[0f,0f]}
# #death+
# /summon armor_stand -25.00 72.50 2.20 {Tags:["World4DoorInfoDummy3DP","World4DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"{Muerte+}","color":"#b1253f","italic":true,"bold":true}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -25.00 86.60 17.80 {Tags:["World6DoorInfoDummy4","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Mín. Req. para desbloqueo: 8✯","color":"#ffffff"}',CustomNameVisible:1b,Rotation:[0f,0f]}

#--
#CodeBlock 1
#--
/execute as @e[tag=World6ProximitytriggerDummy] at @s if entity @p[distance=..8] run execute as @e[tag=LobbyHappiestDummy2] if score @s World6DoorTextTimer >= @s AuxNumber30 run scoreboard players set @s World6DoorTextTimer 0
#in this one next code line, from world 4 to 10 just change the coordinates by removing 1 from z axis
/execute as @e[tag=World6ProximitytriggerDummy] at @s if entity @p[distance=..8] unless entity @e[tag=World6DoorInfoDummy5, distance=..3] run execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected < @s AuxNumber8 run setblock 4 -52 18 minecraft:redstone_block
#in this one next code line, from world 4 to 10 just change the coordinates by removing 1 from z axis
/setblock 4 -52 18 air
#in this one next code line, from world 4 to 10 just change the coordinates by removing 1 from z axis
/execute as @e[tag=World6ProximitytriggerDummy] at @s if entity @p[distance=..8] unless entity @e[tag=World6DoorInfoDummy8, distance=..3] run execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected >= @s AuxNumber8 run setblock 4 -60 18 minecraft:redstone_block
#in this one next code line, from world 4 to 10 just change the coordinates by removing 1 from z axis
/setblock 4 -60 18 air

/execute as @e[tag=World6ProximitytriggerDummy] at @s if entity @p[distance=..8] run execute as @e[tag=LobbyHappiestDummy2] if score @s World6ProximityDoorStatus matches 0 run scoreboard players add @s World6DoorTextTimer 1

/execute as @e[tag=LobbyHappiestDummy2] if score @s World6ProximityDoorStatus matches 0 if score @s World6DoorTextTimer < @s AuxNumber15 run execute as @e[tag=World6DoorInfoGroup2] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World6ProximityDoorStatus matches 0 if score @s World6DoorTextTimer > @s AuxNumber15 run execute as @e[tag=World6DoorInfoGroup2] run data merge entity @s {CustomNameVisible:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World6ProximityDoorStatus matches 0 if score @s World6DoorTextTimer = @s AuxNumber15 run execute at @e[tag=World6ProximitytriggerDummy] if entity @e[tag=World6DoorInfoDummy5, distance=..3] run playsound alexsmobs:enderiophage_squish master @a[distance=..5] ~ ~ ~ 0.8 1

/execute as @e[tag=LobbyHappiestDummy2] if score @s World6ProximityDoorStatus matches 0 if score @s World6DoorTextTimer = @s AuxNumber15 run execute at @e[tag=World6ProximitytriggerDummy] if entity @e[tag=World6DoorInfoDummy8, distance=..3] run playsound spartanweaponry:throwing_weapon_loyalty_return master @a[distance=..5] ~ ~ ~ 0.8 2

/execute as @e[tag=LobbyHappiestDummy2] if score @s World6ProximityDoorStatus matches 1 run execute as @e[tag=World6DoorInfoGroup2] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World6ProximityDoorStatus matches 1 run execute as @e[tag=World6DoorInfoDummy4] run data merge entity @s {CustomNameVisible:0b}
#coordinates here are form the lil block text check, or if youre on world4 to world 12 just ~ ~ ~-1 those coords:
/execute as @e[tag=World6ProximitytriggerDummy] at @s if entity @p[distance=..8] run execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected >= @s AuxNumber8 if score @s World6ProximityDoorStatus matches 0 if score @s World6DoorTextTimer matches 15 run setblock 5 -60 18 minecraft:redstone_block

/execute as @e[tag=LobbyHappiestDummy2] if score @s World6ProximityDoorStatus matches 1 run setblock 5 -60 18 air

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 320 run execute at @e[tag=World6ProximitytriggerDummy] run playsound scalinghealth:heart_crystal_use master @a[distance=..8] ~ ~ ~ 1 0.5

#remove glass door
/fill -24 85 18 -27 89 18 air replace minecraft:light_gray_stained_glass
#coordinates are on the very middle of the glass door and 2 blocks above it
/particle alexsmobs:worm_portal -25.00 87.00 18.50 0 0 0 0.5 15

#--
#CodeBlock 2
#--
/kill @e[tag=World6DoorInfoGroup2]


-25.00 86.10 17.80
-25.00 85.75 17.80
-25.00 85.50 17.80


-17.30 86.10 10.00
-17.30 85.75 10.00
-17.30 85.50 10.00

/summon armor_stand -25.00 86.10 17.80 {Tags:["World6DoorInfoDummy6","World6DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Requisitos cumplidos!","color":"#6ee524"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -25.00 85.75 17.80 {Tags:["World6DoorInfoDummy7","World6DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Haz click en la opción para","color":"#6ee524"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -25.00 85.50 17.80 {Tags:["World6DoorInfoDummy8","World6DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"abrir esta puerta...","color":"#6ee524"}',CustomNameVisible:1b,Rotation:[0f,0f]}

#--
#CodeBlock 2.5
#--
/kill @e[tag=World6DoorInfoGroup2]

/summon armor_stand -25.00 86.10 17.80 {Tags:["World6DoorInfoDummy5","World6DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Recursos insuficientes...","color":"#cf3b3b"}',CustomNameVisible:1b,Rotation:[0f,0f]}

#--
#CodeBlock 2.5.5 #THIS ONE CODE BLOCK SECTION IS FINISHED
#--
/tellraw @p {"text":"[DESBLOQUEAR MUNDO 4]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World4ProximityDoorStatus 1"}}

#--
#CodeBlock 3
#--
/execute as @e[tag=World6ProximitytriggerDummy] at @s if entity @p[distance=8..] run execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World6DoorTextTimer 0

/execute as @e[tag=World6ProximitytriggerDummy] at @s if entity @p[distance=14..] run execute as @e[tag=World6DoorInfoGroup1] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=World6ProximitytriggerDummy] at @s if entity @p[distance=14..] run execute as @e[tag=World6DoorInfoDummy4] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=World6ProximitytriggerDummy] at @s if entity @p[distance=..14] run execute as @e[tag=World6DoorInfoGroup1] run data merge entity @s {CustomNameVisible:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World6ProximityDoorStatus matches 0 run execute as @e[tag=World6ProximitytriggerDummy] at @s if entity @p[distance=..14] run execute as @e[tag=World6DoorInfoDummy4] run data merge entity @s {CustomNameVisible:1b}

#--
#CodeBlock 4
#--
/execute as @e[tag=LobbyHappiestDummy2] if score @s World6ProximityDoorStatus matches 0 run scoreboard players add @s World6AuxToggle 1

/execute as @e[tag=LobbyHappiestDummy2] if score @s World6ProximityDoorStatus matches 0 if score @s World6AuxToggle >= @s AuxNumber90 run scoreboard players set @s World6AuxToggle 1
#solo en la linea siguiente, en las coordenadas usa las mismas pero solo reduce en 1 la z, osea ~ ~ ~-1
/execute as @e[tag=LobbyHappiestDummy2] if score @s World6AuxToggle >= @s AuxNumber1 if score @s World6ProximityDoorStatus matches 1 run setblock 3 -63 13 minecraft:redstone_block
#solo en la linea siguiente, en las coordenadas usa las mismas pero solo reduce en 1 la z, osea ~ ~ ~-1
/execute as @e[tag=LobbyHappiestDummy2] if score @s World6AuxToggle >= @s AuxNumber1 if score @s World6ProximityDoorStatus matches 1 run setblock 3 -63 13 minecraft:air
#Only the one following line doesn't change coordinates
/execute as @e[tag=LobbyHappiestDummy2] if score @s World6AuxToggle >= @s AuxNumber1 if score @s World6ProximityDoorStatus matches 1 run data merge block -8 -60 22 {auto:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World6AuxToggle >= @s AuxNumber1 if score @s World6ProximityDoorStatus matches 1 run data merge block -4 -60 12 {auto:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World6AuxToggle >= @s AuxNumber1 if score @s World6ProximityDoorStatus matches 1 run scoreboard players set @s World6AuxToggle 0
#put coordinates of lil single block that asks for click or just ~ ~ ~-1 if youre from world4 to world10
/execute as @e[tag=World6ProximitytriggerDummy] at @s if entity @p[distance=8..] run setblock 5 -60 18 minecraft:air

#--
#CodeBlock 5
#--
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount > @s AuxNumber0 if score @s PlatformActivationCount < @s AuxNumber150 run execute as @e[tag=World6LightStartingDummy1] at @s run tp @s ~ ~ ~0.25

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount > @s AuxNumber0 if score @s PlatformActivationCount < @s AuxNumber150 run execute as @e[tag=World6LightStartingDummy2] at @s run tp @s ~ ~ ~0.25

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run kill @e[tag=World6LightStartingDummy1]

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run kill @e[tag=World6LightStartingDummy2]
#In the following one line just change the coordinates a bit. Subtract 1 from the z coord:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber0 run setblock 3 -63 13 minecraft:redstone_block
#In the following one line just change the coordinates a bit. Subtract 1 from the z coord:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber0 run setblock 3 -63 13 minecraft:air
#In the following one line just change the coordinates a bit. Subtract 1 from the z coord:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber50 run setblock 3 -63 13 minecraft:redstone_block
#In the following one line just change the coordinates a bit. Subtract 1 from the z coord:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber50 run setblock 3 -63 13 minecraft:air

#generative bridge dummy creation
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 140 run setblock 1 -63 14 minecraft:redstone_block

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 140 run setblock 1 -63 14 minecraft:air

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run execute at @e[tag=World6ProximitytriggerDummy] run playsound minecraft:block.end_portal.spawn master @a[distance=..8] ~ ~ ~ 0.3 0.1
#this one next line doesnt change:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 145 run data merge block -8 -60 18 {auto:1b}
#self deactivate repetitive poweric code block
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 350 run data merge block -4 -60 12 {auto:0b}
#this one next line doesnt change:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 350 run data merge block -8 -60 22 {auto:0b}

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s PlatformActivationCount 0

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players remove @s PlatformActivationCount 1
#lights
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run execute at @e[tag=World6ProximitytriggerDummy] run setblock -6 -60 -1 minecraft:redstone_block

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run execute at @e[tag=World6ProximitytriggerDummy] run setblock -6 -60 -1 minecraft:air

#--
#CodeBlock 6 #THIS ONE CODE BLOCK SECTION IS FINISHED
#--
/summon armor_stand -15.50 67.75 8.05 {Tags:["World3LightStartingDummy2"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}

/summon armor_stand -15.50 67.75 11.06 {Tags:["World3LightStartingDummy1"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}

/execute at @e[tag=World3ProximitytriggerDummy] run playsound alexsmobs:void_portal_open master @a[distance=..8] ~ ~ ~ 0.23 2

#--
#CodeBlock 7 #THIS ONE CODE BLOCK SECTION IS FINISHED
#--
/summon armor_stand -18 69 10 {Tags:["WorldModulePassingBridgeGenerator1"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,NoGravity:1b,Rotation:[90f,0f]}

#--
#CodeBlock 8
#(the lights CodeBlock)
#--
#the color of the cyan neon light doesnt change, it's for the bridge, just that one line. the fill coordinates do change
/fill -37 81 34 -13 93 69 dustrial_decor:cyan_neon_light replace minecraft:cyan_wool
#change for the colored lights
/fill -37 81 34 -13 93 69 dustrial_decor:red_neon_light replace minecraft:red_wool

#--
#CodeBlock 8.5
#--
/fill -37 81 34 -13 93 69 minecraft:cyan_wool replace dustrial_decor:cyan_neon_light
#change for the colored lights
/fill -37 81 34 -13 93 69 minecraft:red_wool replace dustrial_decor:red_neon_light

#--
#CodeBlock 9
#(The reset codeBlock)
#--
#no need to modifify the next one line:
/execute as @e[tag=LobbyHappiestDummy2] run data merge block -8 -60 22 {auto:0b}
#auto deactivation CodeBLock5 repetitive coords, you know
/execute as @e[tag=LobbyHappiestDummy2] run data merge block -4 -60 12 {auto:0b}

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s PlatformActivationCount 0

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World6ProximityDoorStatus 0

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World6AuxToggle 1
#remove the bridge
/fill -26 84 18 -25 84 34 air
#turn off lights
/setblock -5 -60 -1 minecraft:redstone_block

/setblock -5 -60 -1 minecraft:air
#put the glass door back
/clone 7 -59 21 4 -55 21 -27 85 18
#--------



#-----------
# WORLD 7
#-----------
#SETUP CODE FOR WORLD7
#-----------
/scoreboard objectives add World7AuxToggle dummy

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World7AuxToggle 1

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World7ProximityDoorStatus 0

-17.30 85.00 10.00 #trigger base reference
-17.30 88.75 10.00
-17.30 88.20 10.00
-17.30 87.75 10.00
-17.30 86.60 10.00

-32.50 85.00 10.00
-32.80 88.75 10.00
-32.80 88.20 10.00
-32.80 87.75 10.00
-32.80 86.60 10.00

#take the middle of the danger blocks as coords
/summon armor_stand -32.50 85.00 10.00 {Tags:["World7ProximitytriggerDummy","WorldProximityGeneralTriggerDummy"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"World 7 Proximity Trigger"}',CustomNameVisible:0b}

/summon armor_stand -32.80 88.75 10.00 {Tags:["World7DoorInfoDummy1","World7DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Mundo 7","color":"#ffffff"}',CustomNameVisible:1b,Rotation:[0f,0f]}

# /summon armor_stand -32.80 88.20 10.00 {Tags:["World7DoorInfoDummy2","World7DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"ꊞꊞ PASILLOS DE LA ꊞꊞ","color":"#94b098","bold":true}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -32.80 88.20 10.00 {Tags:["World7DoorInfoDummy2","World7DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"ꊞ","color":"#94b098","bold":true,"extra":[{"text":"ꊞ","color":"#a6b9a5"},{"text":" ","color":"#b7c3b3"},{"text":"P","color":"#c8cdc1"},{"text":"A","color":"#d9d7cf"},{"text":"S","color":"#e5eae3"},{"text":"I","color":"#eef1ec"},{"text":"L","color":"#f3f5f1"},{"text":"L","color":"#f7f8f6"},{"text":"O","color":"#fafafa"},{"text":"S","color":"#ffffff"},{"text":" ","color":"#fafafa"},{"text":"D","color":"#f7f8f6"},{"text":"E","color":"#f3f5f1"},{"text":" ","color":"#eef1ec"},{"text":"L","color":"#e5eae3"},{"text":"A","color":"#d9d7cf"},{"text":" ","color":"#c8cdc1"},{"text":"ꊞ","color":"#b7c3b3"},{"text":"ꊞ","color":"#a6b9a5"}]}',CustomNameVisible:1b,Rotation:[0f,0f]}


# /summon armor_stand -32.80 87.90 10.00 {Tags:["World7DoorInfoDummy2LINE2","World7DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"ꊞꊞ NULA REFLEXIÓN ꊞꊞ","color":"#94b098","bold":true}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -32.80 87.90 10.00 {Tags:["World7DoorInfoDummy2LINE2","World7DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"ꊞ","color":"#94b098","bold":true,"extra":[{"text":"ꊞ","color":"#a6b9a5"},{"text":" ","color":"#b7c3b3"},{"text":"N","color":"#c8cdc1"},{"text":"U","color":"#d9d7cf"},{"text":"L","color":"#e5eae3"},{"text":"A","color":"#eef1ec"},{"text":" ","color":"#f3f5f1"},{"text":"R","color":"#f7f8f6"},{"text":"E","color":"#fafafa"},{"text":"F","color":"#ffffff"},{"text":"L","color":"#fafafa"},{"text":"E","color":"#f7f8f6"},{"text":"X","color":"#f3f5f1"},{"text":"I","color":"#eef1ec"},{"text":"Ó","color":"#e5eae3"},{"text":"N","color":"#d9d7cf"},{"text":" ","color":"#c8cdc1"},{"text":"ꊞ","color":"#b7c3b3"},{"text":"ꊞ","color":"#a6b9a5"}]}',CustomNameVisible:1b,Rotation:[0f,0f]}


#tittle decos 
# /summon armor_stand -32.80 88.45 10.00 {Tags:["World7DoorInfoDummy2DECO1","World7DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"◇─◇──◇─────◇──◇─◇","color":"#94b098"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -32.80 88.45 10.00 {Tags:["World7DoorInfoDummy2DECO1","World7DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"◇","color":"#94b098","extra":[{"text":"─","color":"#a6b9a5"},{"text":"◇","color":"#b7c3b3"},{"text":"──","color":"#c8cdc1"},{"text":"◇","color":"#d9d7cf"},{"text":"─────","color":"#e5eae3"},{"text":"◇","color":"#d9d7cf"},{"text":"──","color":"#c8cdc1"},{"text":"◇","color":"#b7c3b3"},{"text":"─","color":"#a6b9a5"},{"text":"◇","color":"#94b098"}]}',CustomNameVisible:1b,Rotation:[0f,0f]}


# /summon armor_stand -32.80 87.65 10.00 {Tags:["World7DoorInfoDummy2DECO2","World7DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"◇─◇──◇─────◇──◇─◇","color":"#94b098"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -32.80 87.65 10.00 {Tags:["World7DoorInfoDummy2DECO2","World7DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"◇","color":"#94b098","extra":[{"text":"─","color":"#a6b9a5"},{"text":"◇","color":"#b7c3b3"},{"text":"──","color":"#c8cdc1"},{"text":"◇","color":"#d9d7cf"},{"text":"─────","color":"#e5eae3"},{"text":"◇","color":"#d9d7cf"},{"text":"──","color":"#c8cdc1"},{"text":"◇","color":"#b7c3b3"},{"text":"─","color":"#a6b9a5"},{"text":"◇","color":"#94b098"}]}',CustomNameVisible:1b,Rotation:[0f,0f]}


/summon armor_stand -32.80 87.40 10.00 {Tags:["World7DoorInfoDummy3","World7DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Dificultad: 3✯","color":"#f2a25c","italic":true}',CustomNameVisible:1b,Rotation:[0f,0f]}
# #death+
# /summon armor_stand -25.00 72.50 2.20 {Tags:["World4DoorInfoDummy3DP","World4DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"{Muerte+}","color":"#b1253f","italic":true,"bold":true}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -32.80 86.60 10.00 {Tags:["World7DoorInfoDummy4","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Mín. Req. para desbloqueo: 11✯","color":"#ffffff"}',CustomNameVisible:1b,Rotation:[0f,0f]}

#--
#CodeBlock 1
#--
/execute as @e[tag=World7ProximitytriggerDummy] at @s if entity @p[distance=..8] run execute as @e[tag=LobbyHappiestDummy2] if score @s World7DoorTextTimer >= @s AuxNumber30 run scoreboard players set @s World7DoorTextTimer 0
#in this one next code line, from world 4 to 10 just change the coordinates by removing 1 from z axis
/execute as @e[tag=World7ProximitytriggerDummy] at @s if entity @p[distance=..8] unless entity @e[tag=World7DoorInfoDummy5, distance=..3] run execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected < @s AuxNumber11 run setblock 4 -52 17 minecraft:redstone_block
#in this one next code line, from world 4 to 10 just change the coordinates by removing 1 from z axis
/setblock 4 -52 17 air
#in this one next code line, from world 4 to 10 just change the coordinates by removing 1 from z axis
/execute as @e[tag=World7ProximitytriggerDummy] at @s if entity @p[distance=..8] unless entity @e[tag=World7DoorInfoDummy8, distance=..3] run execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected >= @s AuxNumber11 run setblock 4 -60 17 minecraft:redstone_block
#in this one next code line, from world 4 to 10 just change the coordinates by removing 1 from z axis
/setblock 4 -60 17 air

/execute as @e[tag=World7ProximitytriggerDummy] at @s if entity @p[distance=..8] run execute as @e[tag=LobbyHappiestDummy2] if score @s World7ProximityDoorStatus matches 0 run scoreboard players add @s World7DoorTextTimer 1

/execute as @e[tag=LobbyHappiestDummy2] if score @s World7ProximityDoorStatus matches 0 if score @s World7DoorTextTimer < @s AuxNumber15 run execute as @e[tag=World7DoorInfoGroup2] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World7ProximityDoorStatus matches 0 if score @s World7DoorTextTimer > @s AuxNumber15 run execute as @e[tag=World7DoorInfoGroup2] run data merge entity @s {CustomNameVisible:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World7ProximityDoorStatus matches 0 if score @s World7DoorTextTimer = @s AuxNumber15 run execute at @e[tag=World7ProximitytriggerDummy] if entity @e[tag=World7DoorInfoDummy5, distance=..3] run playsound alexsmobs:enderiophage_squish master @a[distance=..5] ~ ~ ~ 0.8 1

/execute as @e[tag=LobbyHappiestDummy2] if score @s World7ProximityDoorStatus matches 0 if score @s World7DoorTextTimer = @s AuxNumber15 run execute at @e[tag=World7ProximitytriggerDummy] if entity @e[tag=World7DoorInfoDummy8, distance=..3] run playsound spartanweaponry:throwing_weapon_loyalty_return master @a[distance=..5] ~ ~ ~ 0.8 2

/execute as @e[tag=LobbyHappiestDummy2] if score @s World7ProximityDoorStatus matches 1 run execute as @e[tag=World7DoorInfoGroup2] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World7ProximityDoorStatus matches 1 run execute as @e[tag=World7DoorInfoDummy4] run data merge entity @s {CustomNameVisible:0b}
#coordinates here are form the lil block text check, or if youre on world4 to world 12 just ~ ~ ~-1 those coords:
/execute as @e[tag=World7ProximitytriggerDummy] at @s if entity @p[distance=..8] run execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected >= @s AuxNumber11 if score @s World7ProximityDoorStatus matches 0 if score @s World7DoorTextTimer matches 15 run setblock 5 -60 17 minecraft:redstone_block

/execute as @e[tag=LobbyHappiestDummy2] if score @s World7ProximityDoorStatus matches 1 run setblock 5 -60 17 air

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 320 run execute at @e[tag=World7ProximitytriggerDummy] run playsound scalinghealth:heart_crystal_use master @a[distance=..8] ~ ~ ~ 1 0.5

#remove glass door
/fill -34 85 11 -34 89 8 air replace minecraft:light_gray_stained_glass
#coordinates are on the very middle of the glass door and 2 blocks above it
/particle alexsmobs:worm_portal -33.50 87.00 10.00 0 0 0 0.5 15

#--
#CodeBlock 2
#--
/kill @e[tag=World7DoorInfoGroup2]


-32.50 86.10 10.00
-32.50 85.75 10.00
-32.50 85.50 10.00

-17.30 86.10 10.00
-17.30 85.75 10.00
-17.30 85.50 10.00

/summon armor_stand -32.50 86.10 10.00 {Tags:["World7DoorInfoDummy6","World7DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Requisitos cumplidos!","color":"#6ee524"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -32.50 85.75 10.00 {Tags:["World7DoorInfoDummy7","World7DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Haz click en la opción para","color":"#6ee524"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -32.50 85.50 10.00 {Tags:["World7DoorInfoDummy8","World7DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"abrir esta puerta...","color":"#6ee524"}',CustomNameVisible:1b,Rotation:[0f,0f]}

#--
#CodeBlock 2.5
#--
/kill @e[tag=World7DoorInfoGroup2]

/summon armor_stand -32.50 86.10 10.00 {Tags:["World7DoorInfoDummy5","World7DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Recursos insuficientes...","color":"#cf3b3b"}',CustomNameVisible:1b,Rotation:[0f,0f]}

#--
#CodeBlock 2.5.5 #THIS ONE CODE BLOCK SECTION IS FINISHED
#--
/tellraw @p {"text":"[DESBLOQUEAR MUNDO 4]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World4ProximityDoorStatus 1"}}

#--
#CodeBlock 3
#--
/execute as @e[tag=World7ProximitytriggerDummy] at @s if entity @p[distance=8..] run execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World7DoorTextTimer 0

/execute as @e[tag=World7ProximitytriggerDummy] at @s if entity @p[distance=14..] run execute as @e[tag=World7DoorInfoGroup1] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=World7ProximitytriggerDummy] at @s if entity @p[distance=14..] run execute as @e[tag=World7DoorInfoDummy4] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=World7ProximitytriggerDummy] at @s if entity @p[distance=..14] run execute as @e[tag=World7DoorInfoGroup1] run data merge entity @s {CustomNameVisible:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World7ProximityDoorStatus matches 0 run execute as @e[tag=World7ProximitytriggerDummy] at @s if entity @p[distance=..14] run execute as @e[tag=World7DoorInfoDummy4] run data merge entity @s {CustomNameVisible:1b}

#--
#CodeBlock 4
#--
/execute as @e[tag=LobbyHappiestDummy2] if score @s World7ProximityDoorStatus matches 0 run scoreboard players add @s World7AuxToggle 1

/execute as @e[tag=LobbyHappiestDummy2] if score @s World7ProximityDoorStatus matches 0 if score @s World7AuxToggle >= @s AuxNumber90 run scoreboard players set @s World7AuxToggle 1
#solo en la linea siguiente, en las coordenadas usa las mismas pero solo reduce en 1 la z, osea ~ ~ ~-1
/execute as @e[tag=LobbyHappiestDummy2] if score @s World7AuxToggle >= @s AuxNumber1 if score @s World7ProximityDoorStatus matches 1 run setblock 3 -63 12 minecraft:redstone_block
#solo en la linea siguiente, en las coordenadas usa las mismas pero solo reduce en 1 la z, osea ~ ~ ~-1
/execute as @e[tag=LobbyHappiestDummy2] if score @s World7AuxToggle >= @s AuxNumber1 if score @s World7ProximityDoorStatus matches 1 run setblock 3 -63 12 minecraft:air
#Only the one following line doesn't change coordinates
/execute as @e[tag=LobbyHappiestDummy2] if score @s World7AuxToggle >= @s AuxNumber1 if score @s World7ProximityDoorStatus matches 1 run data merge block -8 -60 22 {auto:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World7AuxToggle >= @s AuxNumber1 if score @s World7ProximityDoorStatus matches 1 run data merge block -6 -60 8 {auto:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World7AuxToggle >= @s AuxNumber1 if score @s World7ProximityDoorStatus matches 1 run scoreboard players set @s World7AuxToggle 0
#put coordinates of lil single block that asks for click or just ~ ~ ~-1 if youre from world4 to world10
/execute as @e[tag=World7ProximitytriggerDummy] at @s if entity @p[distance=8..] run setblock 5 -60 17 minecraft:air

#--
#CodeBlock 5
#--
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount > @s AuxNumber0 if score @s PlatformActivationCount < @s AuxNumber150 run execute as @e[tag=World7LightStartingDummy1] at @s run tp @s ~-0.25 ~ ~

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount > @s AuxNumber0 if score @s PlatformActivationCount < @s AuxNumber150 run execute as @e[tag=World7LightStartingDummy2] at @s run tp @s ~-0.25 ~ ~

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run kill @e[tag=World7LightStartingDummy1]

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run kill @e[tag=World7LightStartingDummy2]
#In the following one line just change the coordinates a bit. Subtract 1 from the z coord:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber0 run setblock 3 -63 12 minecraft:redstone_block
#In the following one line just change the coordinates a bit. Subtract 1 from the z coord:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber0 run setblock 3 -63 12 minecraft:air
#In the following one line just change the coordinates a bit. Subtract 1 from the z coord:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber50 run setblock 3 -63 12 minecraft:redstone_block
#In the following one line just change the coordinates a bit. Subtract 1 from the z coord:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber50 run setblock 3 -63 12 minecraft:air

#generative bridge dummy creation
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 140 run setblock 1 -63 13 minecraft:redstone_block

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 140 run setblock 1 -63 13 minecraft:air

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run execute at @e[tag=World7ProximitytriggerDummy] run playsound minecraft:block.end_portal.spawn master @a[distance=..8] ~ ~ ~ 0.3 0.1
#this one next line doesnt change:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 145 run data merge block -8 -60 18 {auto:1b}
#self deactivate repetitive poweric code block
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 350 run data merge block -6 -60 8 {auto:0b}
#this one next line doesnt change:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 350 run data merge block -8 -60 22 {auto:0b}

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s PlatformActivationCount 0

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players remove @s PlatformActivationCount 1
#lights
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run execute at @e[tag=World7ProximitytriggerDummy] run setblock -4 -60 -1 minecraft:redstone_block

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run execute at @e[tag=World7ProximitytriggerDummy] run setblock -4 -60 -1 minecraft:air

#--
#CodeBlock 6 #THIS ONE CODE BLOCK SECTION IS FINISHED
#--
/summon armor_stand -15.50 67.75 8.05 {Tags:["World3LightStartingDummy2"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}

/summon armor_stand -15.50 67.75 11.06 {Tags:["World3LightStartingDummy1"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}

/execute at @e[tag=World3ProximitytriggerDummy] run playsound alexsmobs:void_portal_open master @a[distance=..8] ~ ~ ~ 0.23 2

#--
#CodeBlock 7 #THIS ONE CODE BLOCK SECTION IS FINISHED
#--
/summon armor_stand -18 69 10 {Tags:["WorldModulePassingBridgeGenerator1"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,NoGravity:1b,Rotation:[90f,0f]}

#--
#CodeBlock 8
#(the lights CodeBlock)
#--
#the color of the cyan neon light doesnt change, it's for the bridge, just that one line. the fill coordinates do change
/fill -49 81 -2 -84 93 22 dustrial_decor:cyan_neon_light replace minecraft:cyan_wool
#change for the colored lights
/fill -49 81 -2 -84 93 22 dustrial_decor:rainbow_neon_light replace minecraft:white_wool

#--
#CodeBlock 8.5
#--
/fill -49 81 -2 -84 93 22 minecraft:cyan_wool replace dustrial_decor:cyan_neon_light
#change for the colored lights
/fill -49 81 -2 -84 93 22 minecraft:white_wool replace dustrial_decor:rainbow_neon_light

#--
#CodeBlock 9
#(The reset codeBlock)
#--
#no need to modifify the next one line:
/execute as @e[tag=LobbyHappiestDummy2] run data merge block -8 -60 22 {auto:0b}
#auto deactivation CodeBLock5 repetitive coords, you know
/execute as @e[tag=LobbyHappiestDummy2] run data merge block -6 -60 8 {auto:0b}

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s PlatformActivationCount 0

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World7ProximityDoorStatus 0

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World7AuxToggle 1
#remove the bridge
/fill -34 84 9 -50 84 10 air
#turn off lights
/setblock -3 -60 -1 minecraft:redstone_block

/setblock -3 -60 -1 minecraft:air
#put the glass door back
/clone 9 -59 17 9 -55 20 -34 85 8
#--------



#-----------
# WORLD 8
#-----------
#SETUP CODE FOR WORLD8
#-----------
/scoreboard objectives add World8AuxToggle dummy

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World8AuxToggle 1

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World8ProximityDoorStatus 0

-17.30 85.00 10.00 #trigger base reference
-17.30 88.75 10.00
-17.30 88.20 10.00
-17.30 87.75 10.00
-17.30 86.60 10.00

-25.00 85.00 2.50
-25.00 88.75 2.20
-25.00 88.20 2.20
-25.00 87.75 2.20
-25.00 86.60 2.20

#take the middle of the danger blocks as coords
/summon armor_stand -25.00 85.00 2.50 {Tags:["World8ProximitytriggerDummy","WorldProximityGeneralTriggerDummy"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"World 8 Proximity Trigger"}',CustomNameVisible:0b}

/summon armor_stand -25.00 88.75 2.20 {Tags:["World8DoorInfoDummy1","World8DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Mundo 8","color":"#ffffff"}',CustomNameVisible:1b,Rotation:[0f,0f]}

# /summon armor_stand -25.00 88.20 2.20 {Tags:["World8DoorInfoDummy2","World8DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"🗡 CIUDADELA ASEDIADA 🗡","color":"#a45e00","bold":true}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -25.00 88.20 2.20 {Tags:["World8DoorInfoDummy2","World8DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"🗡","color":"#6b3d00","bold":true,"extra":[{"text":" ","color":"#6f4000"},{"text":"C","color":"#734400"},{"text":"I","color":"#774700"},{"text":"U","color":"#7b4b00"},{"text":"D","color":"#7f4f00"},{"text":"A","color":"#835300"},{"text":"D","color":"#875700"},{"text":"E","color":"#8b5a00"},{"text":"L","color":"#8f5e00"},{"text":"A","color":"#936200"},{"text":" ","color":"#976600"},{"text":"A","color":"#9b6a00"},{"text":"S","color":"#9f6e00"},{"text":"E","color":"#a37200"},{"text":"D","color":"#a77600"},{"text":"I","color":"#ab7a00"},{"text":"A","color":"#af7e00"},{"text":"D","color":"#b38200"},{"text":"A","color":"#b78500"},{"text":" ","color":"#bb8900"},{"text":"🗡","color":"#a45e00"}]}',CustomNameVisible:1b,Rotation:[0f,0f]}

#tittle decos
# /summon armor_stand -25.00 88.45 2.20 {Tags:["World8DoorInfoDummy2DECO1","World8DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"◇─◇──⚜─────⚜──◇─◇","color":"#a45e00"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -25.00 88.45 2.20 {Tags:["World8DoorInfoDummy2DECO1","World8DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"◇","color":"#6b3d00","extra":[{"text":"─","color":"#6f4000"},{"text":"◇","color":"#734400"},{"text":"──","color":"#774700"},{"text":"⚜","color":"#7b4b00"},{"text":"─────","color":"#7f4f00"},{"text":"⚜","color":"#835300"},{"text":"──","color":"#875700"},{"text":"◇","color":"#8b5a00"},{"text":"─","color":"#8f5e00"},{"text":"◇","color":"#a45e00"}]}',CustomNameVisible:1b,Rotation:[0f,0f]}


# /summon armor_stand -25.00 87.95 2.20 {Tags:["World8DoorInfoDummy2DECO2","World8DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"◇─◇──⚜─────⚜──◇─◇","color":"#a45e00"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -25.00 87.95 2.20 {Tags:["World8DoorInfoDummy2DECO2","World8DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"◇","color":"#6b3d00","extra":[{"text":"─","color":"#6f4000"},{"text":"◇","color":"#734400"},{"text":"──","color":"#774700"},{"text":"⚜","color":"#7b4b00"},{"text":"─────","color":"#7f4f00"},{"text":"⚜","color":"#835300"},{"text":"──","color":"#875700"},{"text":"◇","color":"#8b5a00"},{"text":"─","color":"#8f5e00"},{"text":"◇","color":"#a45e00"}]}',CustomNameVisible:1b,Rotation:[0f,0f]}


/summon armor_stand -25.00 87.75 2.20 {Tags:["World8DoorInfoDummy3","World8DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Dificultad: 3✯","color":"#ffffff","italic":true}',CustomNameVisible:1b,Rotation:[0f,0f]}
#death+
# /summon armor_stand -25.00 87.50 2.20 {Tags:["World8DoorInfoDummy3DP","World8DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"· • —– ༻ Muerte+ ༺ —– • ·","color":"#e64051","italic":true,"bold":true}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -25.00 87.50 2.20 {Tags:["World8DoorInfoDummy3DP","World8DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'[{"text":"·","color":"#d22a3b","bold":true},{"text":" • ","color":"#e64051","bold":true},{"text":"—–","color":"#9d233a","bold":true},{"text":" ༻ ","color":"#e64051","bold":true,"italic":true},{"text":"M","color":"#f0606c","bold":true,"italic":true},{"text":"u","color":"#f37d7f","bold":true,"italic":true},{"text":"e","color":"#e64051","bold":true,"italic":true},{"text":"r","color":"#9d233a","bold":true,"italic":true},{"text":"t","color":"#f0606c","bold":true,"italic":true},{"text":"e","color":"#f37d7f","bold":true,"italic":true},{"text":"+","color":"#e64051","bold":true,"italic":true},{"text":" ","color":"#9d233a","bold":true},{"text":"༺","color":"#e64051","bold":true,"italic":true},{"text":" —– ","color":"#9d233a","bold":true},{"text":" • ·","color":"#d22a3b","bold":true}]',CustomNameVisible:1b,Rotation:[0f,0f]}


/summon armor_stand -25.00 86.60 2.20 {Tags:["World8DoorInfoDummy4","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Mín. Req. para desbloqueo: 14✯","color":"#ffffff"}',CustomNameVisible:1b,Rotation:[0f,0f]}

#--
#CodeBlock 1
#--
/execute as @e[tag=World8ProximitytriggerDummy] at @s if entity @p[distance=..8] run execute as @e[tag=LobbyHappiestDummy2] if score @s World8DoorTextTimer >= @s AuxNumber30 run scoreboard players set @s World8DoorTextTimer 0
#in this one next code line, from world 4 to 10 just change the coordinates by removing 1 from z axis
/execute as @e[tag=World8ProximitytriggerDummy] at @s if entity @p[distance=..8] unless entity @e[tag=World8DoorInfoDummy5, distance=..3] run execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected < @s AuxNumber14 run setblock 4 -52 16 minecraft:redstone_block
#in this one next code line, from world 4 to 10 just change the coordinates by removing 1 from z axis
/setblock 4 -52 16 air
#in this one next code line, from world 4 to 10 just change the coordinates by removing 1 from z axis
/execute as @e[tag=World8ProximitytriggerDummy] at @s if entity @p[distance=..8] unless entity @e[tag=World8DoorInfoDummy8, distance=..3] run execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected >= @s AuxNumber14 run setblock 4 -60 16 minecraft:redstone_block
#in this one next code line, from world 4 to 10 just change the coordinates by removing 1 from z axis
/setblock 4 -60 16 air

/execute as @e[tag=World8ProximitytriggerDummy] at @s if entity @p[distance=..8] run execute as @e[tag=LobbyHappiestDummy2] if score @s World8ProximityDoorStatus matches 0 run scoreboard players add @s World8DoorTextTimer 1

/execute as @e[tag=LobbyHappiestDummy2] if score @s World8ProximityDoorStatus matches 0 if score @s World8DoorTextTimer < @s AuxNumber15 run execute as @e[tag=World8DoorInfoGroup2] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World8ProximityDoorStatus matches 0 if score @s World8DoorTextTimer > @s AuxNumber15 run execute as @e[tag=World8DoorInfoGroup2] run data merge entity @s {CustomNameVisible:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World8ProximityDoorStatus matches 0 if score @s World8DoorTextTimer = @s AuxNumber15 run execute at @e[tag=World8ProximitytriggerDummy] if entity @e[tag=World8DoorInfoDummy5, distance=..3] run playsound alexsmobs:enderiophage_squish master @a[distance=..5] ~ ~ ~ 0.8 1

/execute as @e[tag=LobbyHappiestDummy2] if score @s World8ProximityDoorStatus matches 0 if score @s World8DoorTextTimer = @s AuxNumber15 run execute at @e[tag=World8ProximitytriggerDummy] if entity @e[tag=World8DoorInfoDummy8, distance=..3] run playsound spartanweaponry:throwing_weapon_loyalty_return master @a[distance=..5] ~ ~ ~ 0.8 2

/execute as @e[tag=LobbyHappiestDummy2] if score @s World8ProximityDoorStatus matches 1 run execute as @e[tag=World8DoorInfoGroup2] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World8ProximityDoorStatus matches 1 run execute as @e[tag=World8DoorInfoDummy4] run data merge entity @s {CustomNameVisible:0b}
#coordinates here are form the lil block text check, or if youre on world4 to world 12 just ~ ~ ~-1 those coords:
/execute as @e[tag=World8ProximitytriggerDummy] at @s if entity @p[distance=..8] run execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected >= @s AuxNumber14 if score @s World8ProximityDoorStatus matches 0 if score @s World8DoorTextTimer matches 15 run setblock 5 -60 16 minecraft:redstone_block

/execute as @e[tag=LobbyHappiestDummy2] if score @s World8ProximityDoorStatus matches 1 run setblock 5 -60 16 air

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 320 run execute at @e[tag=World8ProximitytriggerDummy] run playsound scalinghealth:heart_crystal_use master @a[distance=..8] ~ ~ ~ 1 0.5

#remove glass door
/fill -27 85 1 -24 89 1 air replace minecraft:light_gray_stained_glass
#coordinates are on the very middle of the glass door and 2 blocks above it
/particle alexsmobs:worm_portal -25.00 87.00 1.50 0 0 0 0.5 15

#--
#CodeBlock 2
#--
/kill @e[tag=World8DoorInfoGroup2]


-25.00 86.10 2.50
-25.00 85.75 2.50
-25.00 85.50 2.50

-17.30 86.10 10.00
-17.30 85.75 10.00
-17.30 85.50 10.00

/summon armor_stand -25.00 86.10 2.50 {Tags:["World8DoorInfoDummy6","World8DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Requisitos cumplidos!","color":"#6ee524"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -25.00 85.75 2.50 {Tags:["World8DoorInfoDummy7","World8DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Haz click en la opción para","color":"#6ee524"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -25.00 85.50 2.50 {Tags:["World8DoorInfoDummy8","World8DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"abrir esta puerta...","color":"#6ee524"}',CustomNameVisible:1b,Rotation:[0f,0f]}

#--
#CodeBlock 2.5
#--
/kill @e[tag=World8DoorInfoGroup2]

/summon armor_stand -25.00 86.10 2.50 {Tags:["World8DoorInfoDummy5","World8DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Recursos insuficientes...","color":"#cf3b3b"}',CustomNameVisible:1b,Rotation:[0f,0f]}

#--
#CodeBlock 2.5.5 #THIS ONE CODE BLOCK SECTION IS FINISHED
#--
/tellraw @p {"text":"[DESBLOQUEAR MUNDO 4]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World4ProximityDoorStatus 1"}}

#--
#CodeBlock 3
#--
/execute as @e[tag=World8ProximitytriggerDummy] at @s if entity @p[distance=8..] run execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World8DoorTextTimer 0

/execute as @e[tag=World8ProximitytriggerDummy] at @s if entity @p[distance=14..] run execute as @e[tag=World8DoorInfoGroup1] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=World8ProximitytriggerDummy] at @s if entity @p[distance=14..] run execute as @e[tag=World8DoorInfoDummy4] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=World8ProximitytriggerDummy] at @s if entity @p[distance=..14] run execute as @e[tag=World8DoorInfoGroup1] run data merge entity @s {CustomNameVisible:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World8ProximityDoorStatus matches 0 run execute as @e[tag=World8ProximitytriggerDummy] at @s if entity @p[distance=..14] run execute as @e[tag=World8DoorInfoDummy4] run data merge entity @s {CustomNameVisible:1b}

#--
#CodeBlock 4
#--
/execute as @e[tag=LobbyHappiestDummy2] if score @s World8ProximityDoorStatus matches 0 run scoreboard players add @s World8AuxToggle 1

/execute as @e[tag=LobbyHappiestDummy2] if score @s World8ProximityDoorStatus matches 0 if score @s World8AuxToggle >= @s AuxNumber90 run scoreboard players set @s World8AuxToggle 1
#solo en la linea siguiente, en las coordenadas usa las mismas pero solo reduce en 1 la z, osea ~ ~ ~-1
/execute as @e[tag=LobbyHappiestDummy2] if score @s World8AuxToggle >= @s AuxNumber1 if score @s World8ProximityDoorStatus matches 1 run setblock 3 -63 11 minecraft:redstone_block
#solo en la linea siguiente, en las coordenadas usa las mismas pero solo reduce en 1 la z, osea ~ ~ ~-1
/execute as @e[tag=LobbyHappiestDummy2] if score @s World8AuxToggle >= @s AuxNumber1 if score @s World8ProximityDoorStatus matches 1 run setblock 3 -63 11 minecraft:air
#Only the one following line doesn't change coordinates
/execute as @e[tag=LobbyHappiestDummy2] if score @s World8AuxToggle >= @s AuxNumber1 if score @s World8ProximityDoorStatus matches 1 run data merge block -8 -60 22 {auto:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World8AuxToggle >= @s AuxNumber1 if score @s World8ProximityDoorStatus matches 1 run data merge block -4 -60 8 {auto:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World8AuxToggle >= @s AuxNumber1 if score @s World8ProximityDoorStatus matches 1 run scoreboard players set @s World8AuxToggle 0
#put coordinates of lil single block that asks for click or just ~ ~ ~-1 if youre from world4 to world10
/execute as @e[tag=World8ProximitytriggerDummy] at @s if entity @p[distance=8..] run setblock 5 -60 16 minecraft:air

#--
#CodeBlock 5
#--
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount > @s AuxNumber0 if score @s PlatformActivationCount < @s AuxNumber150 run execute as @e[tag=World8LightStartingDummy1] at @s run tp @s ~ ~ ~-0.25

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount > @s AuxNumber0 if score @s PlatformActivationCount < @s AuxNumber150 run execute as @e[tag=World8LightStartingDummy2] at @s run tp @s ~ ~ ~-0.25

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run kill @e[tag=World8LightStartingDummy1]

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run kill @e[tag=World8LightStartingDummy2]
#In the following one line just change the coordinates a bit. Subtract 1 from the z coord:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber0 run setblock 3 -63 11 minecraft:redstone_block
#In the following one line just change the coordinates a bit. Subtract 1 from the z coord:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber0 run setblock 3 -63 11 minecraft:air
#In the following one line just change the coordinates a bit. Subtract 1 from the z coord:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber50 run setblock 3 -63 11 minecraft:redstone_block
#In the following one line just change the coordinates a bit. Subtract 1 from the z coord:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber50 run setblock 3 -63 11 minecraft:air

#generative bridge dummy creation
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 140 run setblock 0 -63 13 minecraft:redstone_block

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 140 run setblock 0 -63 13 minecraft:air

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run execute at @e[tag=World8ProximitytriggerDummy] run playsound minecraft:block.end_portal.spawn master @a[distance=..8] ~ ~ ~ 0.3 0.1
#this one next line doesnt change:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 145 run data merge block -8 -60 18 {auto:1b}
#self deactivate repetitive poweric code block
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 350 run data merge block -4 -60 8 {auto:0b}
#this one next line doesnt change:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 350 run data merge block -8 -60 22 {auto:0b}

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s PlatformActivationCount 0

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players remove @s PlatformActivationCount 1
#lights
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run execute at @e[tag=World8ProximitytriggerDummy] run setblock -2 -60 -1 minecraft:redstone_block

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run execute at @e[tag=World8ProximitytriggerDummy] run setblock -2 -60 -1 minecraft:air

#--
#CodeBlock 6 #THIS ONE CODE BLOCK SECTION IS FINISHED
#--
/summon armor_stand -15.50 67.75 8.05 {Tags:["World3LightStartingDummy2"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}

/summon armor_stand -15.50 67.75 11.06 {Tags:["World3LightStartingDummy1"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}

/execute at @e[tag=World3ProximitytriggerDummy] run playsound alexsmobs:void_portal_open master @a[distance=..8] ~ ~ ~ 0.23 2

#--
#CodeBlock 7 #THIS ONE CODE BLOCK SECTION IS FINISHED
#--
/summon armor_stand -18 69 10 {Tags:["WorldModulePassingBridgeGenerator1"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,NoGravity:1b,Rotation:[90f,0f]}

#--
#CodeBlock 8
#(the lights CodeBlock)
#--
#the color of the cyan neon light doesnt change, it's for the bridge, just that one line. the fill coordinates do change
/fill -37 93 -43 -15 81 -16 dustrial_decor:cyan_neon_light replace minecraft:cyan_wool
#change for the colored lights
/fill -37 93 -43 -15 81 -16 dustrial_decor:orange_neon_light replace minecraft:orange_wool

#--
#CodeBlock 8.5
#--
/fill -37 93 -43 -15 81 -16 minecraft:cyan_wool replace dustrial_decor:cyan_neon_light
#change for the colored lights
/fill -37 93 -43 -15 81 -16 minecraft:orange_wool replace dustrial_decor:orange_neon_light

#--
#CodeBlock 9
#(The reset codeBlock)
#--
#no need to modifify the next one line:
/execute as @e[tag=LobbyHappiestDummy2] run data merge block -8 -60 22 {auto:0b}
#auto deactivation CodeBLock5 repetitive coords, you know
/execute as @e[tag=LobbyHappiestDummy2] run data merge block -4 -60 8 {auto:0b}

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s PlatformActivationCount 0

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World8ProximityDoorStatus 0

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World8AuxToggle 1
#remove the bridge
/fill -25 84 1 -26 84 -15 air
#turn off lights
/setblock -1 -60 -1 minecraft:redstone_block

/setblock -1 -60 -1 minecraft:air
#put the glass door back
/clone 7 -59 21 4 -55 21 -27 85 1
#--------




#-----------
# WORLD 9
#-----------
#SETUP CODE FOR WORLD9
#-----------
/scoreboard objectives add World9AuxToggle dummy

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World9AuxToggle 1

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World9ProximityDoorStatus 0

-17.30 100.00 10.00 #trigger base reference
-17.30 103.75 10.00
-17.30 103.20 10.00
-17.30 102.75 10.00
-17.30 101.60 10.00

-17.30 100.00 10.00 #trigger base reference
-17.30 103.75 10.00
-17.30 103.20 10.00
-17.30 102.75 10.00
-17.30 101.60 10.00

#take the middle of the danger blocks as coords
/summon armor_stand -17.50 100.00 10.00 {Tags:["World9ProximitytriggerDummy","WorldProximityGeneralTriggerDummy"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"World 9 Proximity Trigger"}',CustomNameVisible:0b}

/summon armor_stand -17.30 103.75 10.00 {Tags:["World9DoorInfoDummy1","World9DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Mundo 9","color":"#ffffff"}',CustomNameVisible:1b,Rotation:[0f,0f]}

# /summon armor_stand -17.30 103.20 10.00 {Tags:["World9DoorInfoDummy2","World9DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"꘎❅ ABISMO CONGELADO ❅꘎","color":"#82d7d8"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -17.30 103.20 10.00 {Tags:["World9DoorInfoDummy2","World9DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'[{"text":"꘎","color":"#82d7d8","bold":true},{"text":"❅","color":"#82d7d8"},{"text":" ","color":"#98d7d7"},{"text":"A","color":"#a8d7d7","bold":true},{"text":"B","color":"#b8d7d7","bold":true},{"text":"I","color":"#c8d7d7","bold":true},{"text":"S","color":"#d8d7d7","bold":true},{"text":"M","color":"#ffffff","bold":true},{"text":"O","color":"#ffffff","bold":true},{"text":" ","color":"#ffffff"},{"text":"C","color":"#ffffff","bold":true},{"text":"O","color":"#ffffff","bold":true},{"text":"N","color":"#ffffff","bold":true},{"text":"G","color":"#c8d7d7","bold":true},{"text":"E","color":"#b8d7d7","bold":true},{"text":"L","color":"#a8d7d7","bold":true},{"text":"A","color":"#98d7d7","bold":true},{"text":"D","color":"#82d7d8","bold":true},{"text":"O","color":"#82d7d8","bold":true},{"text":" ❅","color":"#82d7d8"}]',CustomNameVisible:1b,Rotation:[0f,0f]}


#tittle decos
# /summon armor_stand -17.30 103.45 10.00 {Tags:["World9DoorInfoDummy2DECO1","World9DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"꘎─◇──❅⁺₊..₊⁺❅──◇─꘎","color":"#82d7d8"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -17.30 103.45 10.00 {Tags:["World9DoorInfoDummy2DECO1","World9DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'[{"text":"꘎","color":"#82d7d8","bold":true},{"text":"─","color":"#98d7d7"},{"text":"◇","color":"#a8d7d7","bold":true},{"text":"─","color":"#b8d7d7"},{"text":"─","color":"#c8d7d7"},{"text":"❅","color":"#d8d7d7","bold":true},{"text":"⁺","color":"#e8d7d7"},{"text":"₊","color":"#f8d7d7"},{"text":"..","color":"#ffffff"},{"text":"₊","color":"#f8d7d7"},{"text":"⁺","color":"#e8d7d7"},{"text":"❅","color":"#d8d7d7"},{"text":"─","color":"#c8d7d7"},{"text":"◇","color":"#b8d7d7","bold":true},{"text":"─","color":"#a8d7d7"},{"text":"꘎","color":"#82d7d8","bold":true}]',CustomNameVisible:1b,Rotation:[0f,0f]}


# /summon armor_stand -17.30 102.95 10.00 {Tags:["World9DoorInfoDummy2DECO2","World9DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"꘎─◇──❅₊⁺˚˚⁺₊❅──◇─꘎","color":"#82d7d8"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -17.30 102.95 10.00 {Tags:["World9DoorInfoDummy2DECO2","World9DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'[{"text":"꘎","color":"#82d7d8","bold":true},{"text":"─","color":"#98d7d7"},{"text":"◇","color":"#a8d7d7","bold":true},{"text":"─","color":"#b8d7d7"},{"text":"─","color":"#c8d7d7"},{"text":"❅","color":"#d8d7d7","bold":true},{"text":"₊","color":"#e8d7d7"},{"text":"⁺","color":"#f8d7d7"},{"text":"˚","color":"#ffffff"},{"text":"˚","color":"#f8d7d7"},{"text":"⁺","color":"#e8d7d7"},{"text":"₊","color":"#d8d7d7"},{"text":"❅","color":"#c8d7d7"},{"text":"─","color":"#b8d7d7"},{"text":"◇","color":"#a8d7d7","bold":true},{"text":"─","color":"#98d7d7"},{"text":"꘎","color":"#82d7d8","bold":true}]',CustomNameVisible:1b,Rotation:[0f,0f]}


/summon armor_stand -17.30 102.75 10.00 {Tags:["World9DoorInfoDummy3","World9DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Dificultad: 4✯","color":"#f27349","italic":true}',CustomNameVisible:1b,Rotation:[0f,0f]}
#death+
# /summon armor_stand -17.30 102.50 10.00 {Tags:["World9DoorInfoDummy3DP","World9DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"· • —– ༻ Muerte+ ༺ —– • ·","color":"#e64051","italic":true,"bold":true}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -17.30 102.50 10.00 {Tags:["World9DoorInfoDummy3DP","World9DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'[{"text":"·","color":"#d22a3b","bold":true},{"text":" • ","color":"#e64051","bold":true},{"text":"—–","color":"#9d233a","bold":true},{"text":" ༻ ","color":"#e64051","bold":true,"italic":true},{"text":"M","color":"#f0606c","bold":true,"italic":true},{"text":"u","color":"#f37d7f","bold":true,"italic":true},{"text":"e","color":"#e64051","bold":true,"italic":true},{"text":"r","color":"#9d233a","bold":true,"italic":true},{"text":"t","color":"#f0606c","bold":true,"italic":true},{"text":"e","color":"#f37d7f","bold":true,"italic":true},{"text":"+","color":"#e64051","bold":true,"italic":true},{"text":" ","color":"#9d233a","bold":true},{"text":"༺","color":"#e64051","bold":true,"italic":true},{"text":" —– ","color":"#9d233a","bold":true},{"text":" • ·","color":"#d22a3b","bold":true}]',CustomNameVisible:1b,Rotation:[0f,0f]}


/summon armor_stand -17.30 101.60 10.00 {Tags:["World9DoorInfoDummy4","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Mín. Req. para desbloqueo: 17✯","color":"#ffffff"}',CustomNameVisible:1b,Rotation:[0f,0f]}

#--
#CodeBlock 1
#--
/execute as @e[tag=World9ProximitytriggerDummy] at @s if entity @p[distance=..8] run execute as @e[tag=LobbyHappiestDummy2] if score @s World9DoorTextTimer >= @s AuxNumber30 run scoreboard players set @s World9DoorTextTimer 0
#in this one next code line, from world 4 to 10 just change the coordinates by removing 1 from z axis
/execute as @e[tag=World9ProximitytriggerDummy] at @s if entity @p[distance=..8] unless entity @e[tag=World9DoorInfoDummy5, distance=..3] run execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected < @s AuxNumber17 run setblock 4 -52 15 minecraft:redstone_block
#in this one next code line, from world 4 to 10 just change the coordinates by removing 1 from z axis
/setblock 4 -52 15 air
#in this one next code line, from world 4 to 10 just change the coordinates by removing 1 from z axis
/execute as @e[tag=World9ProximitytriggerDummy] at @s if entity @p[distance=..8] unless entity @e[tag=World9DoorInfoDummy8, distance=..3] run execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected >= @s AuxNumber17 run setblock 4 -60 15 minecraft:redstone_block
#in this one next code line, from world 4 to 10 just change the coordinates by removing 1 from z axis
/setblock 4 -60 15 air

/execute as @e[tag=World9ProximitytriggerDummy] at @s if entity @p[distance=..8] run execute as @e[tag=LobbyHappiestDummy2] if score @s World9ProximityDoorStatus matches 0 run scoreboard players add @s World9DoorTextTimer 1

/execute as @e[tag=LobbyHappiestDummy2] if score @s World9ProximityDoorStatus matches 0 if score @s World9DoorTextTimer < @s AuxNumber15 run execute as @e[tag=World9DoorInfoGroup2] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World9ProximityDoorStatus matches 0 if score @s World9DoorTextTimer > @s AuxNumber15 run execute as @e[tag=World9DoorInfoGroup2] run data merge entity @s {CustomNameVisible:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World9ProximityDoorStatus matches 0 if score @s World9DoorTextTimer = @s AuxNumber15 run execute at @e[tag=World9ProximitytriggerDummy] if entity @e[tag=World9DoorInfoDummy5, distance=..3] run playsound alexsmobs:enderiophage_squish master @a[distance=..5] ~ ~ ~ 0.8 1

/execute as @e[tag=LobbyHappiestDummy2] if score @s World9ProximityDoorStatus matches 0 if score @s World9DoorTextTimer = @s AuxNumber15 run execute at @e[tag=World9ProximitytriggerDummy] if entity @e[tag=World9DoorInfoDummy8, distance=..3] run playsound spartanweaponry:throwing_weapon_loyalty_return master @a[distance=..5] ~ ~ ~ 0.8 2

/execute as @e[tag=LobbyHappiestDummy2] if score @s World9ProximityDoorStatus matches 1 run execute as @e[tag=World9DoorInfoGroup2] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World9ProximityDoorStatus matches 1 run execute as @e[tag=World9DoorInfoDummy4] run data merge entity @s {CustomNameVisible:0b}
#coordinates here are form the lil block text check, or if youre on world4 to world 12 just ~ ~ ~-1 those coords:
/execute as @e[tag=World9ProximitytriggerDummy] at @s if entity @p[distance=..8] run execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected >= @s AuxNumber17 if score @s World9ProximityDoorStatus matches 0 if score @s World9DoorTextTimer matches 15 run setblock 5 -60 15 minecraft:redstone_block

/execute as @e[tag=LobbyHappiestDummy2] if score @s World9ProximityDoorStatus matches 1 run setblock 5 -60 15 air

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 320 run execute at @e[tag=World9ProximitytriggerDummy] run playsound scalinghealth:heart_crystal_use master @a[distance=..8] ~ ~ ~ 1 0.5

#remove glass door
/fill -17 100 8 -17 104 11 air replace minecraft:light_gray_stained_glass
#coordinates are on the very middle of the glass door and 2 blocks above it
/particle alexsmobs:worm_portal -16.50 102.00 10.00 0 0 0 0.5 15

#--
#CodeBlock 2
#--
/kill @e[tag=World9DoorInfoGroup2]


-25.00 86.10 2.50
-25.00 85.75 2.50
-25.00 85.50 2.50

-17.50 101.10 10.00
-17.50 100.75 10.00
-17.50 100.50 10.00

/summon armor_stand -17.50 101.10 10.00 {Tags:["World9DoorInfoDummy6","World9DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Requisitos cumplidos!","color":"#6ee524"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -17.50 100.75 10.00 {Tags:["World9DoorInfoDummy7","World9DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Haz click en la opción para","color":"#6ee524"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -17.50 100.50 10.00 {Tags:["World9DoorInfoDummy8","World9DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"abrir esta puerta...","color":"#6ee524"}',CustomNameVisible:1b,Rotation:[0f,0f]}

#--
#CodeBlock 2.5
#--
/kill @e[tag=World9DoorInfoGroup2]

/summon armor_stand -17.50 101.10 10.00 {Tags:["World9DoorInfoDummy5","World9DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Recursos insuficientes...","color":"#cf3b3b"}',CustomNameVisible:1b,Rotation:[0f,0f]}

#--
#CodeBlock 2.5.5 #THIS ONE CODE BLOCK SECTION IS FINISHED
#--
/tellraw @p {"text":"[DESBLOQUEAR MUNDO 4]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World4ProximityDoorStatus 1"}}

#--
#CodeBlock 3
#--
/execute as @e[tag=World9ProximitytriggerDummy] at @s if entity @p[distance=8..] run execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World9DoorTextTimer 0

/execute as @e[tag=World9ProximitytriggerDummy] at @s if entity @p[distance=14..] run execute as @e[tag=World9DoorInfoGroup1] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=World9ProximitytriggerDummy] at @s if entity @p[distance=14..] run execute as @e[tag=World9DoorInfoDummy4] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=World9ProximitytriggerDummy] at @s if entity @p[distance=..14] run execute as @e[tag=World9DoorInfoGroup1] run data merge entity @s {CustomNameVisible:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World9ProximityDoorStatus matches 0 run execute as @e[tag=World9ProximitytriggerDummy] at @s if entity @p[distance=..14] run execute as @e[tag=World9DoorInfoDummy4] run data merge entity @s {CustomNameVisible:1b}

#--
#CodeBlock 4
#--
/execute as @e[tag=LobbyHappiestDummy2] if score @s World9ProximityDoorStatus matches 0 run scoreboard players add @s World9AuxToggle 1

/execute as @e[tag=LobbyHappiestDummy2] if score @s World9ProximityDoorStatus matches 0 if score @s World9AuxToggle >= @s AuxNumber90 run scoreboard players set @s World9AuxToggle 1
#solo en la linea siguiente, en las coordenadas usa las mismas pero solo reduce en 1 la z, osea ~ ~ ~-1
/execute as @e[tag=LobbyHappiestDummy2] if score @s World9AuxToggle >= @s AuxNumber1 if score @s World9ProximityDoorStatus matches 1 run setblock 3 -63 10 minecraft:redstone_block
#solo en la linea siguiente, en las coordenadas usa las mismas pero solo reduce en 1 la z, osea ~ ~ ~-1
/execute as @e[tag=LobbyHappiestDummy2] if score @s World9AuxToggle >= @s AuxNumber1 if score @s World9ProximityDoorStatus matches 1 run setblock 3 -63 10 minecraft:air
#Only the one following line doesn't change coordinates
/execute as @e[tag=LobbyHappiestDummy2] if score @s World9AuxToggle >= @s AuxNumber1 if score @s World9ProximityDoorStatus matches 1 run data merge block -8 -60 22 {auto:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World9AuxToggle >= @s AuxNumber1 if score @s World9ProximityDoorStatus matches 1 run data merge block -7 -60 4 {auto:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World9AuxToggle >= @s AuxNumber1 if score @s World9ProximityDoorStatus matches 1 run scoreboard players set @s World9AuxToggle 0
#put coordinates of lil single block that asks for click or just ~ ~ ~-1 if youre from world4 to world10
/execute as @e[tag=World9ProximitytriggerDummy] at @s if entity @p[distance=8..] run setblock 5 -60 15 minecraft:air

#--
#CodeBlock 5
#--
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount > @s AuxNumber0 if score @s PlatformActivationCount < @s AuxNumber150 run execute as @e[tag=World9LightStartingDummy1] at @s run tp @s ~0.25 ~ ~

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount > @s AuxNumber0 if score @s PlatformActivationCount < @s AuxNumber150 run execute as @e[tag=World9LightStartingDummy2] at @s run tp @s ~0.25 ~ ~

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run kill @e[tag=World9LightStartingDummy1]

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run kill @e[tag=World9LightStartingDummy2]
#In the following one line just change the coordinates a bit. Subtract 1 from the z coord:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber0 run setblock 3 -63 10 minecraft:redstone_block
#In the following one line just change the coordinates a bit. Subtract 1 from the z coord:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber0 run setblock 3 -63 10 minecraft:air
#In the following one line just change the coordinates a bit. Subtract 1 from the z coord:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber50 run setblock 3 -63 10 minecraft:redstone_block
#In the following one line just change the coordinates a bit. Subtract 1 from the z coord:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber50 run setblock 3 -63 10 minecraft:air

#generative bridge dummy creation
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 140 run setblock 0 -63 14 minecraft:redstone_block

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 140 run setblock 0 -63 14 minecraft:air

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run execute at @e[tag=World9ProximitytriggerDummy] run playsound minecraft:block.end_portal.spawn master @a[distance=..8] ~ ~ ~ 0.3 0.1
#this one next line doesnt change:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 145 run data merge block -8 -60 18 {auto:1b}
#self deactivate repetitive poweric code block
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 350 run data merge block -7 -60 4 {auto:0b}
#this one next line doesnt change:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 350 run data merge block -8 -60 22 {auto:0b}

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s PlatformActivationCount 0

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players remove @s PlatformActivationCount 1
#lights
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run execute at @e[tag=World9ProximitytriggerDummy] run setblock -2 -60 0 minecraft:redstone_block

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run execute at @e[tag=World9ProximitytriggerDummy] run setblock -2 -60 0 minecraft:air

#--
#CodeBlock 6 #THIS ONE CODE BLOCK SECTION IS FINISHED
#--
/summon armor_stand -15.50 67.75 8.05 {Tags:["World3LightStartingDummy2"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}

/summon armor_stand -15.50 67.75 11.06 {Tags:["World3LightStartingDummy1"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}

/execute at @e[tag=World3ProximitytriggerDummy] run playsound alexsmobs:void_portal_open master @a[distance=..8] ~ ~ ~ 0.23 2

#--
#CodeBlock 7 #THIS ONE CODE BLOCK SECTION IS FINISHED
#--
/summon armor_stand -18 69 10 {Tags:["WorldModulePassingBridgeGenerator1"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,NoGravity:1b,Rotation:[90f,0f]}

#--
#CodeBlock 8
#(the lights CodeBlock)
#--
#the color of the cyan neon light doesnt change, it's for the bridge, just that one line. the fill coordinates do change
/fill -1 95 20 30 108 -3 dustrial_decor:cyan_neon_light replace minecraft:cyan_wool
#change for the colored lights
/fill -1 95 20 30 108 -3 dustrial_decor:cyan_neon_light replace minecraft:cyan_wool

#--
#CodeBlock 8.5
#--
/fill -1 95 20 30 108 -3 minecraft:cyan_wool replace dustrial_decor:cyan_neon_light
#change for the colored lights
/fill -1 95 20 30 108 -3 minecraft:cyan_wool replace dustrial_decor:cyan_neon_light

#--
#CodeBlock 9
#(The reset codeBlock)
#--
#no need to modifify the next one line:
/execute as @e[tag=LobbyHappiestDummy2] run data merge block -8 -60 22 {auto:0b}
#auto deactivation CodeBLock5 repetitive coords, you know
/execute as @e[tag=LobbyHappiestDummy2] run data merge block -7 -60 4 {auto:0b}

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s PlatformActivationCount 0

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World9ProximityDoorStatus 0

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World9AuxToggle 1
#remove the bridge
/fill -17 99 10 -1 99 9 air
#turn off lights
/setblock -1 -60 0 minecraft:redstone_block

/setblock -1 -60 0 minecraft:air
#put the glass door back
/clone 9 -59 17 9 -55 20 -17 100 8
#--------




#-----------
# WORLD 10
#-----------
#SETUP CODE FOR WORLD10
#-----------
/scoreboard objectives add World10AuxToggle dummy

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World10AuxToggle 1

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World10ProximityDoorStatus 0

-17.30 100.00 10.00 #trigger base reference
-17.30 103.75 10.00
-17.30 103.20 10.00
-17.30 102.75 10.00
-17.30 101.60 10.00

-25.00 100.00 17.50 #trigger base reference
-25.00 103.75 17.80
-25.00 103.20 17.80
-25.00 102.75 17.80
-25.00 101.60 17.80

#take the middle of the danger blocks as coords
/summon armor_stand -25.00 100.00 17.50 {Tags:["World10ProximitytriggerDummy","WorldProximityGeneralTriggerDummy"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"World 10 Proximity Trigger"}',CustomNameVisible:0b}

/summon armor_stand -25.00 103.75 17.80 {Tags:["World10DoorInfoDummy1","World10DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"✧ Mundo 10 ✧","color":"#ffffff"}',CustomNameVisible:1b,Rotation:[0f,0f]}

# /summon armor_stand -25.00 103.20 17.80 {Tags:["World10DoorInfoDummy2","World10DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"⚒ OBSIDIAN ANOMALY ⚒","color":"#ff7900","bold":true}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -25.00 103.20 17.80 {Tags:["World10DoorInfoDummy2","World10DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'[{"text":"⚒ ","color":"#ff7900","bold":true},{"text":"F","color":"#ff6600","bold":true},{"text":"O","color":"#ff5500","bold":true},{"text":"R","color":"#ff4400","bold":true},{"text":"J","color":"#ff3300","bold":true},{"text":"A","color":"#ff2200","bold":true},{"text":" ","color":"#ff1100","bold":true},{"text":"D","color":"#ff0000","bold":true},{"text":"E","color":"#e60000","bold":true},{"text":" ","color":"#ff2200","bold":true},{"text":"A","color":"#ff5500","bold":true},{"text":"N","color":"#ff6600","bold":true},{"text":"O","color":"#ff7900","bold":true},{"text":"M","color":"#ff6600","bold":true},{"text":"A","color":"#ff3300","bold":true},{"text":"L","color":"#ff2200","bold":true},{"text":"Í","color":"#ff0000","bold":true},{"text":"A","color":"#ff2200","bold":true},{"text":"S","color":"#ff0000","bold":true},{"text":" ","color":"#ff2200","bold":true},{"text":"⚒","color":"#ff7900","bold":true}]',CustomNameVisible:1b,Rotation:[0f,0f]}


# /summon armor_stand -25.00 102.90 17.80 {Tags:["World10DoorInfoDummy2LINE2","World10DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"აঌ ⚒ FORGE ⚒ ঌა","color":"#ff7900","bold":true}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -25.00 102.90 17.80 {Tags:["World10DoorInfoDummy2LINE2","World10DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'[{"text":"ა","color":"#ff7900","bold":true},{"text":"ঌ","color":"#ff6600","bold":true},{"text":" ","color":"#ff5500","bold":true},{"text":"⚒","color":"#ff4400","bold":true},{"text":" ","color":"#ff3300","bold":true},{"text":"D","color":"#ff2200","bold":true},{"text":"E","color":"#ff1100","bold":true},{"text":" ","color":"#ff0000","bold":true},{"text":"O","color":"#e60000","bold":true},{"text":"B","color":"#ff2200","bold":true},{"text":"S","color":"#ff3300","bold":true},{"text":"I","color":"#ff4400","bold":true},{"text":"D","color":"#ff5500","bold":true},{"text":"I","color":"#ff6600","bold":true},{"text":"A","color":"#ff7900","bold":true},{"text":"N","color":"#ff6600","bold":true},{"text":"A","color":"#ff3300","bold":true},{"text":" ","color":"#ff2200","bold":true},{"text":"⚒","color":"#ff7900","bold":true},{"text":" ","color":"#ff7900","bold":true},{"text":"ঌ","color":"#ff4400","bold":true},{"text":"ა","color":"#ff2200","bold":true}]',CustomNameVisible:1b,Rotation:[0f,0f]}


#tittle decos
# /summon armor_stand -25.00 103.45 17.80 {Tags:["World10DoorInfoDummy2DECO1","World10DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"ৎঌააঌააৎაঌა୨აঌააঌაঌა","color":"#ee7d17"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -25.00 103.45 17.80 {Tags:["World10DoorInfoDummy2DECO1","World10DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'[{"text":"ৎ","color":"#ff7900"},{"text":"ঌ","color":"#ff6600"},{"text":"ა","color":"#ff5500"},{"text":"ა","color":"#ff4400"},{"text":"ঌ","color":"#ff3300"},{"text":"ა","color":"#ff2200"},{"text":"ა","color":"#ff1100"},{"text":"୨","color":"#ff0000"},{"text":"ა","color":"#e60000"},{"text":"ঌ","color":"#ff2200"},{"text":"ა","color":"#ff1100"},{"text":"ঌ","color":"#ff0000"},{"text":"ა","color":"#ff3300"},{"text":"ঌ","color":"#ff4400"},{"text":"ა","color":"#ff5500"},{"text":"ঌ","color":"#ff6600"},{"text":"ა","color":"#ff7900"},{"text":"ঌ","color":"#ff4400"},{"text":"ა","color":"#ff5500"},{"text":"ঌ","color":"#ff6600"},{"text":"ა","color":"#ff7900"}]',CustomNameVisible:1b,Rotation:[0f,0f]}


# /summon armor_stand -25.00 102.65 17.80 {Tags:["World10DoorInfoDummy2DECO2","World10DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"ঌაঌৎაঌაঌ୨ა","color":"#ee7d17"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -25.00 102.65 17.80 {Tags:["World10DoorInfoDummy2DECO2","World10DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'[{"text":"ঌ","color":"#ff7900"},{"text":"ა","color":"#ff6600"},{"text":"ঌ","color":"#ff5500"},{"text":"ৎ","color":"#ff4400"},{"text":"ა","color":"#ff3300"},{"text":"ঌ","color":"#ff2200"},{"text":"ა","color":"#ff1100"},{"text":"ঌ","color":"#ff0000"},{"text":"୨","color":"#e60000"},{"text":"ঌ","color":"#ff2200"},{"text":"ა","color":"#ff1100"},{"text":"ঌ","color":"#ff0000"},{"text":"ა","color":"#ff3300"},{"text":"ঌ","color":"#ff4400"},{"text":"ა","color":"#ff5500"},{"text":"ঌ","color":"#ff6600"},{"text":"ა","color":"#ff7900"}]',CustomNameVisible:1b,Rotation:[0f,0f]}


/summon armor_stand -25.00 102.40 17.80 {Tags:["World10DoorInfoDummy3","World10DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Dificultad: 4✯","color":"#f27349","italic":true}',CustomNameVisible:1b,Rotation:[0f,0f]}
#death+
# /summon armor_stand -25.00 102.10 17.80 {Tags:["World10DoorInfoDummy3DP","World10DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"· • —– ༻ Muerte+ ༺ —– • ·","color":"#e64051","italic":true,"bold":true}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -25.00 102.10 17.80 {Tags:["World10DoorInfoDummy3DP","World10DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'[{"text":"·","color":"#d22a3b","bold":true},{"text":" • ","color":"#e64051","bold":true},{"text":"—–","color":"#9d233a","bold":true},{"text":" ༻ ","color":"#e64051","bold":true,"italic":true},{"text":"M","color":"#f0606c","bold":true,"italic":true},{"text":"u","color":"#f37d7f","bold":true,"italic":true},{"text":"e","color":"#e64051","bold":true,"italic":true},{"text":"r","color":"#9d233a","bold":true,"italic":true},{"text":"t","color":"#f0606c","bold":true,"italic":true},{"text":"e","color":"#f37d7f","bold":true,"italic":true},{"text":"+","color":"#e64051","bold":true,"italic":true},{"text":" ","color":"#9d233a","bold":true},{"text":"༺","color":"#e64051","bold":true,"italic":true},{"text":" —– ","color":"#9d233a","bold":true},{"text":" • ·","color":"#d22a3b","bold":true}]',CustomNameVisible:1b,Rotation:[0f,0f]}


/summon armor_stand -25.00 101.60 17.80 {Tags:["World10DoorInfoDummy4","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Mín. Req. para desbloqueo: 21✯","color":"#ffffff"}',CustomNameVisible:1b,Rotation:[0f,0f]}

#--
#CodeBlock 1
#--
/execute as @e[tag=World10ProximitytriggerDummy] at @s if entity @p[distance=..8] run execute as @e[tag=LobbyHappiestDummy2] if score @s World10DoorTextTimer >= @s AuxNumber30 run scoreboard players set @s World10DoorTextTimer 0
#in this one next code line, from world 4 to 10 just change the coordinates by removing 1 from z axis
/execute as @e[tag=World10ProximitytriggerDummy] at @s if entity @p[distance=..8] unless entity @e[tag=World10DoorInfoDummy5, distance=..3] run execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected < @s AuxNumber21 run setblock 4 -52 14 minecraft:redstone_block
#in this one next code line, from world 4 to 10 just change the coordinates by removing 1 from z axis
/setblock 4 -52 14 air
#in this one next code line, from world 4 to 10 just change the coordinates by removing 1 from z axis
/execute as @e[tag=World10ProximitytriggerDummy] at @s if entity @p[distance=..8] unless entity @e[tag=World10DoorInfoDummy8, distance=..3] run execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected >= @s AuxNumber21 run setblock 4 -60 14 minecraft:redstone_block
#in this one next code line, from world 4 to 10 just change the coordinates by removing 1 from z axis
/setblock 4 -60 14 air

/execute as @e[tag=World10ProximitytriggerDummy] at @s if entity @p[distance=..8] run execute as @e[tag=LobbyHappiestDummy2] if score @s World10ProximityDoorStatus matches 0 run scoreboard players add @s World10DoorTextTimer 1

/execute as @e[tag=LobbyHappiestDummy2] if score @s World10ProximityDoorStatus matches 0 if score @s World10DoorTextTimer < @s AuxNumber15 run execute as @e[tag=World10DoorInfoGroup2] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World10ProximityDoorStatus matches 0 if score @s World10DoorTextTimer > @s AuxNumber15 run execute as @e[tag=World10DoorInfoGroup2] run data merge entity @s {CustomNameVisible:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World10ProximityDoorStatus matches 0 if score @s World10DoorTextTimer = @s AuxNumber15 run execute at @e[tag=World10ProximitytriggerDummy] if entity @e[tag=World10DoorInfoDummy5, distance=..3] run playsound alexsmobs:enderiophage_squish master @a[distance=..5] ~ ~ ~ 0.8 1

/execute as @e[tag=LobbyHappiestDummy2] if score @s World10ProximityDoorStatus matches 0 if score @s World10DoorTextTimer = @s AuxNumber15 run execute at @e[tag=World10ProximitytriggerDummy] if entity @e[tag=World10DoorInfoDummy8, distance=..3] run playsound spartanweaponry:throwing_weapon_loyalty_return master @a[distance=..5] ~ ~ ~ 0.8 2

/execute as @e[tag=LobbyHappiestDummy2] if score @s World10ProximityDoorStatus matches 1 run execute as @e[tag=World10DoorInfoGroup2] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World10ProximityDoorStatus matches 1 run execute as @e[tag=World10DoorInfoDummy4] run data merge entity @s {CustomNameVisible:0b}
#coordinates here are form the lil block text check, or if youre on world4 to world 12 just ~ ~ ~-1 those coords:
/execute as @e[tag=World10ProximitytriggerDummy] at @s if entity @p[distance=..8] run execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected >= @s AuxNumber21 if score @s World10ProximityDoorStatus matches 0 if score @s World10DoorTextTimer matches 15 run setblock 5 -60 14 minecraft:redstone_block

/execute as @e[tag=LobbyHappiestDummy2] if score @s World10ProximityDoorStatus matches 1 run setblock 5 -60 14 air

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 320 run execute at @e[tag=World10ProximitytriggerDummy] run playsound scalinghealth:heart_crystal_use master @a[distance=..8] ~ ~ ~ 1 0.5

#remove glass door
/fill -24 100 18 -27 104 18 air replace minecraft:light_gray_stained_glass
#coordinates are on the very middle of the glass door and 2 blocks above it
/particle alexsmobs:worm_portal -25.00 102 18.50 0 0 0 0.5 15

#--
#CodeBlock 2
#--
/kill @e[tag=World10DoorInfoGroup2]

-17.50 101.10 10.00
-17.50 100.75 10.00
-17.50 100.50 10.00

-25.00 101.10 17.80
-25.00 100.75 17.80
-25.00 100.50 17.80

/summon armor_stand -25.00 101.10 17.80 {Tags:["World10DoorInfoDummy6","World10DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Requisitos cumplidos!","color":"#6ee524"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -25.00 100.75 17.80 {Tags:["World10DoorInfoDummy7","World10DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Haz click en la opción para","color":"#6ee524"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -25.00 100.50 17.80 {Tags:["World10DoorInfoDummy8","World10DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"abrir esta puerta...","color":"#6ee524"}',CustomNameVisible:1b,Rotation:[0f,0f]}

#--
#CodeBlock 2.5
#--
/kill @e[tag=World10DoorInfoGroup2]

/summon armor_stand -25.00 101.10 17.80 {Tags:["World10DoorInfoDummy5","World10DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Recursos insuficientes...","color":"#cf3b3b"}',CustomNameVisible:1b,Rotation:[0f,0f]}

#--
#CodeBlock 2.5.5 #THIS ONE CODE BLOCK SECTION IS FINISHED
#--
/tellraw @p {"text":"[DESBLOQUEAR MUNDO 4]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World4ProximityDoorStatus 1"}}

#--
#CodeBlock 3
#--
/execute as @e[tag=World10ProximitytriggerDummy] at @s if entity @p[distance=8..] run execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World10DoorTextTimer 0

/execute as @e[tag=World10ProximitytriggerDummy] at @s if entity @p[distance=14..] run execute as @e[tag=World10DoorInfoGroup1] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=World10ProximitytriggerDummy] at @s if entity @p[distance=14..] run execute as @e[tag=World10DoorInfoDummy4] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=World10ProximitytriggerDummy] at @s if entity @p[distance=..14] run execute as @e[tag=World10DoorInfoGroup1] run data merge entity @s {CustomNameVisible:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World10ProximityDoorStatus matches 0 run execute as @e[tag=World10ProximitytriggerDummy] at @s if entity @p[distance=..14] run execute as @e[tag=World10DoorInfoDummy4] run data merge entity @s {CustomNameVisible:1b}

#--
#CodeBlock 4
#--
/execute as @e[tag=LobbyHappiestDummy2] if score @s World10ProximityDoorStatus matches 0 run scoreboard players add @s World10AuxToggle 1

/execute as @e[tag=LobbyHappiestDummy2] if score @s World10ProximityDoorStatus matches 0 if score @s World10AuxToggle >= @s AuxNumber90 run scoreboard players set @s World10AuxToggle 1
#solo en la linea siguiente, en las coordenadas usa las mismas pero solo reduce en 1 la z, osea ~ ~ ~-1
/execute as @e[tag=LobbyHappiestDummy2] if score @s World10AuxToggle >= @s AuxNumber1 if score @s World10ProximityDoorStatus matches 1 run setblock 3 -63 9 minecraft:redstone_block
#solo en la linea siguiente, en las coordenadas usa las mismas pero solo reduce en 1 la z, osea ~ ~ ~-1
/execute as @e[tag=LobbyHappiestDummy2] if score @s World10AuxToggle >= @s AuxNumber1 if score @s World10ProximityDoorStatus matches 1 run setblock 3 -63 9 minecraft:air
#Only the one following line doesn't change coordinates
/execute as @e[tag=LobbyHappiestDummy2] if score @s World10AuxToggle >= @s AuxNumber1 if score @s World10ProximityDoorStatus matches 1 run data merge block -8 -60 22 {auto:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World10AuxToggle >= @s AuxNumber1 if score @s World10ProximityDoorStatus matches 1 run data merge block -5 -60 4 {auto:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World10AuxToggle >= @s AuxNumber1 if score @s World10ProximityDoorStatus matches 1 run scoreboard players set @s World10AuxToggle 0
#put coordinates of lil single block that asks for click or just ~ ~ ~-1 if youre from world4 to world10
/execute as @e[tag=World10ProximitytriggerDummy] at @s if entity @p[distance=8..] run setblock 5 -60 14 minecraft:air

#--
#CodeBlock 5
#--
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount > @s AuxNumber0 if score @s PlatformActivationCount < @s AuxNumber150 run execute as @e[tag=World10LightStartingDummy1] at @s run tp @s ~ ~ ~0.25

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount > @s AuxNumber0 if score @s PlatformActivationCount < @s AuxNumber150 run execute as @e[tag=World10LightStartingDummy2] at @s run tp @s ~ ~ ~0.25

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run kill @e[tag=World10LightStartingDummy1]

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run kill @e[tag=World10LightStartingDummy2]
#In the following one line just change the coordinates a bit. Subtract 1 from the z coord:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber0 run setblock 3 -63 9 minecraft:redstone_block
#In the following one line just change the coordinates a bit. Subtract 1 from the z coord:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber0 run setblock 3 -63 9 minecraft:air
#In the following one line just change the coordinates a bit. Subtract 1 from the z coord:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber50 run setblock 3 -63 9 minecraft:redstone_block
#In the following one line just change the coordinates a bit. Subtract 1 from the z coord:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber50 run setblock 3 -63 9 minecraft:air

#generative bridge dummy creation
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 140 run setblock 1 -63 11 minecraft:redstone_block

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 140 run setblock 1 -63 11 minecraft:air

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run execute at @e[tag=World10ProximitytriggerDummy] run playsound minecraft:block.end_portal.spawn master @a[distance=..8] ~ ~ ~ 0.3 0.1
#this one next line doesnt change:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 145 run data merge block -8 -60 18 {auto:1b}
#self deactivate repetitive poweric code block
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 350 run data merge block -5 -60 4 {auto:0b}
#this one next line doesnt change:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 350 run data merge block -8 -60 22 {auto:0b}

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s PlatformActivationCount 0

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players remove @s PlatformActivationCount 1
#lights
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run execute at @e[tag=World10ProximitytriggerDummy] run setblock -4 -60 0 minecraft:redstone_block

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run execute at @e[tag=World10ProximitytriggerDummy] run setblock -4 -60 0 minecraft:air

#--
#CodeBlock 6 #THIS ONE CODE BLOCK SECTION IS FINISHED
#--
/summon armor_stand -15.50 67.75 8.05 {Tags:["World3LightStartingDummy2"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}

/summon armor_stand -15.50 67.75 11.06 {Tags:["World3LightStartingDummy1"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}

/execute at @e[tag=World3ProximitytriggerDummy] run playsound alexsmobs:void_portal_open master @a[distance=..8] ~ ~ ~ 0.23 2

#--
#CodeBlock 7 #THIS ONE CODE BLOCK SECTION IS FINISHED
#--
/summon armor_stand -18 69 10 {Tags:["WorldModulePassingBridgeGenerator1"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,NoGravity:1b,Rotation:[90f,0f]}

#--
#CodeBlock 8
#(the lights CodeBlock)
#--
#the color of the cyan neon light doesnt change, it's for the bridge, just that one line. the fill coordinates do change
/fill -13 108 65 -38 95 34 dustrial_decor:cyan_neon_light replace minecraft:cyan_wool
#change for the colored lights
/fill -13 108 65 -38 95 34 dustrial_decor:orange_neon_light replace minecraft:orange_wool

#--
#CodeBlock 8.5
#--
/fill -13 108 65 -38 95 34 minecraft:cyan_wool replace dustrial_decor:cyan_neon_light
#change for the colored lights
/fill -13 108 65 -38 95 34 minecraft:orange_wool replace dustrial_decor:orange_neon_light

#--
#CodeBlock 9
#(The reset codeBlock)
#--
#no need to modifify the next one line:
/execute as @e[tag=LobbyHappiestDummy2] run data merge block -8 -60 22 {auto:0b}
#auto deactivation CodeBLock5 repetitive coords, you know
/execute as @e[tag=LobbyHappiestDummy2] run data merge block -5 -60 4 {auto:0b}

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s PlatformActivationCount 0

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World10ProximityDoorStatus 0

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World10AuxToggle 1
#remove the bridge
/fill -26 99 18 -25 99 34 air
#turn off lights
/setblock -3 -60 0 minecraft:redstone_block

/setblock -3 -60 0 minecraft:air
#put the glass door back
/clone 7 -59 21 4 -55 21 -27 100 18
#--------



#-----------
# WORLD 11
#-----------
#SETUP CODE FOR WORLD11
#-----------
/scoreboard objectives add World11AuxToggle dummy

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World11AuxToggle 1

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World11ProximityDoorStatus 0

-32.50 100.00 10.00 #trigger base reference
-32.80 103.75 10.00
-32.80 103.20 10.00
-32.80 102.75 10.00
-32.80 101.60 10.00

-32.50 100.00 10.00 #trigger base reference
-32.50 103.75 10.00
-32.50 103.20 10.00
-32.50 102.75 10.00
-32.50 101.60 10.00

#take the middle of the danger blocks as coords
/summon armor_stand -32.50 100.00 10.00 {Tags:["World11ProximitytriggerDummy","WorldProximityGeneralTriggerDummy"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"World 11 Proximity Trigger"}',CustomNameVisible:0b}

/summon armor_stand -32.80 103.75 10.00 {Tags:["World11DoorInfoDummy1","World11DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"✧ Mundo 11 ✧","color":"#ffffff"}',CustomNameVisible:1b,Rotation:[0f,0f]}

# /summon armor_stand -32.80 103.20 10.00 {Tags:["World11DoorInfoDummy2","World11DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"✮ TORMENTA CELESTIAL ✮","color":"#d452ff","bold":true}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -32.80 103.20 10.00 {Tags:["World11DoorInfoDummy2","World11DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'[{"text":"✮","color":"#af4ff9","bold":true},{"text":" ","color":"#af4ff9"},{"text":"T","color":"#e066f9","bold":true},{"text":"O","color":"#e66bf9","bold":true},{"text":"R","color":"#f04af2","bold":true},{"text":"M","color":"#f64cf4","bold":true},{"text":"E","color":"#f94af1","bold":true},{"text":"N","color":"#f84af1","bold":true},{"text":"T","color":"#f44af1","bold":true},{"text":"A","color":"#f452ff","bold":true},{"text":" ","color":"#f452ff"},{"text":"C","color":"#f44af1","bold":true},{"text":"E","color":"#f04af2","bold":true},{"text":"L","color":"#e64af4","bold":true},{"text":"E","color":"#f64cf4","bold":true},{"text":"S","color":"#f94af1","bold":true},{"text":"T","color":"#f04af2","bold":true},{"text":"I","color":"#e66bf9","bold":true},{"text":"A","color":"#f452ff","bold":true},{"text":"L","color":"#f452ff","bold":true},{"text":" ","color":"#f452ff"},{"text":"✮","color":"#af4ff9","bold":true}]',CustomNameVisible:1b,Rotation:[0f,0f]}


#tittle decos
# /summon armor_stand -32.80 103.45 10.00 {Tags:["World11DoorInfoDummy2DECO1","World11DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"◇─◇─˖⋆˖⁺‧₊☽◯☾₊‧⁺˖⋆˖─◇─◇","color":"#bf4ff7"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -32.80 103.45 10.00 {Tags:["World11DoorInfoDummy2DECO1","World11DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'[{"text":"◇","color":"#af4ff9","bold":true},{"text":"─","color":"#c94af9"},{"text":"◇","color":"#d14bf9","bold":true},{"text":"─","color":"#d74af8"},{"text":"˖","color":"#e14af6"},{"text":"⋆","color":"#e64af4","bold":true},{"text":"˖","color":"#f04af2"},{"text":"˖","color":"#f44af1"},{"text":"⁺","color":"#d452ff","bold":true},{"text":"‧","color":"#d452ff"},{"text":"₊","color":"#d452ff","bold":true},{"text":"☽","color":"#d452ff","bold":true},{"text":"◯","color":"#f44af1"},{"text":"☾","color":"#f04af2"},{"text":"₊","color":"#e64af4"},{"text":"‧","color":"#e14af6"},{"text":"⁺","color":"#d74af8"},{"text":"˖","color":"#d14bf9"},{"text":"⋆","color":"#c94af9"},{"text":"˖","color":"#af4ff9"},{"text":"─","color":"#af4ff9"},{"text":"◇","color":"#af4ff9","bold":true},{"text":"─","color":"#af4ff9"},{"text":"◇","color":"#af4ff9"}]',CustomNameVisible:1b,Rotation:[0f,0f]}


# /summon armor_stand -32.80 102.95 10.00 {Tags:["World11DoorInfoDummy2DECO2","World11DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"◇─◇─˖⋆˖⁺‧₊☽◯☾₊‧⁺˖⋆˖─◇─◇","color":"#bf4ff7"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -32.80 102.95 10.00 {Tags:["World11DoorInfoDummy2DECO2","World11DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'[{"text":"◇","color":"#af4ff9","bold":true},{"text":"─","color":"#c94af9"},{"text":"◇","color":"#d14bf9","bold":true},{"text":"─","color":"#d74af8"},{"text":"˖","color":"#e14af6"},{"text":"⋆","color":"#e64af4","bold":true},{"text":"˖","color":"#f04af2"},{"text":"˖","color":"#f44af1"},{"text":"⁺","color":"#d452ff","bold":true},{"text":"‧","color":"#d452ff"},{"text":"₊","color":"#d452ff","bold":true},{"text":"☽","color":"#d452ff","bold":true},{"text":"◯","color":"#f44af1"},{"text":"☾","color":"#f04af2"},{"text":"₊","color":"#e64af4"},{"text":"‧","color":"#e14af6"},{"text":"⁺","color":"#d74af8"},{"text":"˖","color":"#d14bf9"},{"text":"⋆","color":"#c94af9"},{"text":"˖","color":"#af4ff9"},{"text":"─","color":"#af4ff9"},{"text":"◇","color":"#af4ff9","bold":true},{"text":"─","color":"#af4ff9"},{"text":"◇","color":"#af4ff9"}]',CustomNameVisible:1b,Rotation:[0f,0f]}


/summon armor_stand -32.80 102.75 10.00 {Tags:["World11DoorInfoDummy3","World11DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Dificultad: 5✯","color":"#b33d30","italic":true}',CustomNameVisible:1b,Rotation:[0f,0f]}
#death+
# /summon armor_stand -32.80 102.50 10.00 {Tags:["World11DoorInfoDummy3DP","World11DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"· • —– ༻ Muerte+ ༺ —– • ·","color":"#e64051","italic":true,"bold":true}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -32.80 102.50 10.00 {Tags:["World11DoorInfoDummy3DP","World11DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'[{"text":"·","color":"#d22a3b","bold":true},{"text":" • ","color":"#e64051","bold":true},{"text":"—–","color":"#9d233a","bold":true},{"text":" ༻ ","color":"#e64051","bold":true,"italic":true},{"text":"M","color":"#f0606c","bold":true,"italic":true},{"text":"u","color":"#f37d7f","bold":true,"italic":true},{"text":"e","color":"#e64051","bold":true,"italic":true},{"text":"r","color":"#9d233a","bold":true,"italic":true},{"text":"t","color":"#f0606c","bold":true,"italic":true},{"text":"e","color":"#f37d7f","bold":true,"italic":true},{"text":"+","color":"#e64051","bold":true,"italic":true},{"text":" ","color":"#9d233a","bold":true},{"text":"༺","color":"#e64051","bold":true,"italic":true},{"text":" —– ","color":"#9d233a","bold":true},{"text":" • ·","color":"#d22a3b","bold":true}]',CustomNameVisible:1b,Rotation:[0f,0f]}


/summon armor_stand -32.80 101.60 10.00 {Tags:["World11DoorInfoDummy4","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Mín. Req. para desbloqueo: 25✯","color":"#ffffff"}',CustomNameVisible:1b,Rotation:[0f,0f]}

#--
#CodeBlock 1
#--
/execute as @e[tag=World11ProximitytriggerDummy] at @s if entity @p[distance=..8] run execute as @e[tag=LobbyHappiestDummy2] if score @s World11DoorTextTimer >= @s AuxNumber30 run scoreboard players set @s World11DoorTextTimer 0
#in this one next code line, from world 4 to 10 just change the coordinates by removing 1 from z axis
/execute as @e[tag=World11ProximitytriggerDummy] at @s if entity @p[distance=..8] unless entity @e[tag=World11DoorInfoDummy5, distance=..3] run execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected < @s AuxNumber25 run setblock 7 -52 14 minecraft:redstone_block
#in this one next code line, from world 4 to 10 just change the coordinates by removing 1 from z axis
/setblock 7 -52 14 air
#in this one next code line, from world 4 to 10 just change the coordinates by removing 1 from z axis
/execute as @e[tag=World11ProximitytriggerDummy] at @s if entity @p[distance=..8] unless entity @e[tag=World11DoorInfoDummy8, distance=..3] run execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected >= @s AuxNumber25 run setblock 7 -60 14 minecraft:redstone_block
#in this one next code line, from world 4 to 10 just change the coordinates by removing 1 from z axis
/setblock 7 -60 14 air

/execute as @e[tag=World11ProximitytriggerDummy] at @s if entity @p[distance=..8] run execute as @e[tag=LobbyHappiestDummy2] if score @s World11ProximityDoorStatus matches 0 run scoreboard players add @s World11DoorTextTimer 1

/execute as @e[tag=LobbyHappiestDummy2] if score @s World11ProximityDoorStatus matches 0 if score @s World11DoorTextTimer < @s AuxNumber15 run execute as @e[tag=World11DoorInfoGroup2] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World11ProximityDoorStatus matches 0 if score @s World11DoorTextTimer > @s AuxNumber15 run execute as @e[tag=World11DoorInfoGroup2] run data merge entity @s {CustomNameVisible:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World11ProximityDoorStatus matches 0 if score @s World11DoorTextTimer = @s AuxNumber15 run execute at @e[tag=World11ProximitytriggerDummy] if entity @e[tag=World11DoorInfoDummy5, distance=..3] run playsound alexsmobs:enderiophage_squish master @a[distance=..5] ~ ~ ~ 0.8 1

/execute as @e[tag=LobbyHappiestDummy2] if score @s World11ProximityDoorStatus matches 0 if score @s World11DoorTextTimer = @s AuxNumber15 run execute at @e[tag=World11ProximitytriggerDummy] if entity @e[tag=World11DoorInfoDummy8, distance=..3] run playsound spartanweaponry:throwing_weapon_loyalty_return master @a[distance=..5] ~ ~ ~ 0.8 2

/execute as @e[tag=LobbyHappiestDummy2] if score @s World11ProximityDoorStatus matches 1 run execute as @e[tag=World11DoorInfoGroup2] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World11ProximityDoorStatus matches 1 run execute as @e[tag=World11DoorInfoDummy4] run data merge entity @s {CustomNameVisible:0b}
#coordinates here are form the lil block text check, or if youre on world4 to world 10 just ~ ~ ~-1 those coords:
/execute as @e[tag=World11ProximitytriggerDummy] at @s if entity @p[distance=..8] run execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected >= @s AuxNumber25 if score @s World11ProximityDoorStatus matches 0 if score @s World11DoorTextTimer matches 15 run setblock 8 -60 14 minecraft:redstone_block

/execute as @e[tag=LobbyHappiestDummy2] if score @s World11ProximityDoorStatus matches 1 run setblock 8 -60 14 air

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 320 run execute at @e[tag=World11ProximitytriggerDummy] run playsound scalinghealth:heart_crystal_use master @a[distance=..8] ~ ~ ~ 1 0.5

#remove glass door
/fill -34 100 11 -34 104 8 air replace minecraft:light_gray_stained_glass
#coordinates are on the very middle of the glass door and 2 blocks above it
/particle alexsmobs:worm_portal -33.50 102.00 10.00 0 0 0 0.5 15

#--
#CodeBlock 2
#--
/kill @e[tag=World11DoorInfoGroup2]

-32.80 101.10 10.00
-32.80 100.75 10.00
-32.80 100.50 10.00

-25.00 101.10 17.80
-25.00 100.75 17.80
-25.00 100.50 17.80

/summon armor_stand -32.80 101.10 10.00 {Tags:["World11DoorInfoDummy6","World11DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Requisitos cumplidos!","color":"#6ee524"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -32.80 100.75 10.00 {Tags:["World11DoorInfoDummy7","World11DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Haz click en la opción para","color":"#6ee524"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -32.80 100.50 10.00 {Tags:["World11DoorInfoDummy8","World11DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"abrir esta puerta...","color":"#6ee524"}',CustomNameVisible:1b,Rotation:[0f,0f]}

#--
#CodeBlock 2.5
#--
/kill @e[tag=World11DoorInfoGroup2]

/summon armor_stand -32.80 101.10 10.00 {Tags:["World11DoorInfoDummy5","World11DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Recursos insuficientes...","color":"#cf3b3b"}',CustomNameVisible:1b,Rotation:[0f,0f]}

#--
#CodeBlock 2.5.5 #THIS ONE CODE BLOCK SECTION IS FINISHED
#--
/tellraw @p {"text":"[DESBLOQUEAR MUNDO 4]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World4ProximityDoorStatus 1"}}

#--
#CodeBlock 3
#--
/execute as @e[tag=World11ProximitytriggerDummy] at @s if entity @p[distance=8..] run execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World11DoorTextTimer 0

/execute as @e[tag=World11ProximitytriggerDummy] at @s if entity @p[distance=14..] run execute as @e[tag=World11DoorInfoGroup1] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=World11ProximitytriggerDummy] at @s if entity @p[distance=14..] run execute as @e[tag=World11DoorInfoDummy4] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=World11ProximitytriggerDummy] at @s if entity @p[distance=..14] run execute as @e[tag=World11DoorInfoGroup1] run data merge entity @s {CustomNameVisible:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World11ProximityDoorStatus matches 0 run execute as @e[tag=World11ProximitytriggerDummy] at @s if entity @p[distance=..14] run execute as @e[tag=World11DoorInfoDummy4] run data merge entity @s {CustomNameVisible:1b}

#--
#CodeBlock 4
#--
/execute as @e[tag=LobbyHappiestDummy2] if score @s World11ProximityDoorStatus matches 0 run scoreboard players add @s World11AuxToggle 1

/execute as @e[tag=LobbyHappiestDummy2] if score @s World11ProximityDoorStatus matches 0 if score @s World11AuxToggle >= @s AuxNumber90 run scoreboard players set @s World11AuxToggle 1
#solo en la linea siguiente, en las coordenadas usa las mismas pero solo reduce en 1 la z, osea ~ ~ ~-1
/execute as @e[tag=LobbyHappiestDummy2] if score @s World11AuxToggle >= @s AuxNumber1 if score @s World11ProximityDoorStatus matches 1 run setblock 3 -63 8 minecraft:redstone_block
#solo en la linea siguiente, en las coordenadas usa las mismas pero solo reduce en 1 la z, osea ~ ~ ~-1
/execute as @e[tag=LobbyHappiestDummy2] if score @s World11AuxToggle >= @s AuxNumber1 if score @s World11ProximityDoorStatus matches 1 run setblock 3 -63 8 minecraft:air
#Only the one following line doesn't change coordinates
/execute as @e[tag=LobbyHappiestDummy2] if score @s World11AuxToggle >= @s AuxNumber1 if score @s World11ProximityDoorStatus matches 1 run data merge block -8 -60 22 {auto:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World11AuxToggle >= @s AuxNumber1 if score @s World11ProximityDoorStatus matches 1 run data merge block -3 -60 4 {auto:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World11AuxToggle >= @s AuxNumber1 if score @s World11ProximityDoorStatus matches 1 run scoreboard players set @s World11AuxToggle 0
#put coordinates of lil single block that asks for click or just ~ ~ ~-1 if youre from world4 to world10
/execute as @e[tag=World11ProximitytriggerDummy] at @s if entity @p[distance=8..] run setblock 8 -60 14 minecraft:air

#--
#CodeBlock 5
#--
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount > @s AuxNumber0 if score @s PlatformActivationCount < @s AuxNumber150 run execute as @e[tag=World11LightStartingDummy1] at @s run tp @s ~-0.25 ~ ~

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount > @s AuxNumber0 if score @s PlatformActivationCount < @s AuxNumber150 run execute as @e[tag=World11LightStartingDummy2] at @s run tp @s ~-0.25 ~ ~

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run kill @e[tag=World11LightStartingDummy1]

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run kill @e[tag=World11LightStartingDummy2]
#In the following one line just change the coordinates a bit. Subtract 1 from the z coord:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber0 run setblock 3 -63 8 minecraft:redstone_block
#In the following one line just change the coordinates a bit. Subtract 1 from the z coord:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber0 run setblock 3 -63 8 minecraft:air
#In the following one line just change the coordinates a bit. Subtract 1 from the z coord:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber50 run setblock 3 -63 8 minecraft:redstone_block
#In the following one line just change the coordinates a bit. Subtract 1 from the z coord:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber50 run setblock 3 -63 8 minecraft:air

#generative bridge dummy creation
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 140 run setblock 0 -63 10 minecraft:redstone_block

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 140 run setblock 0 -63 10 minecraft:air

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run execute at @e[tag=World11ProximitytriggerDummy] run playsound minecraft:block.end_portal.spawn master @a[distance=..8] ~ ~ ~ 0.3 0.1
#this one next line doesnt change:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 145 run data merge block -8 -60 18 {auto:1b}
#self deactivate repetitive poweric code block
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 350 run data merge block -3 -60 4 {auto:0b}
#this one next line doesnt change:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 350 run data merge block -8 -60 22 {auto:0b}

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s PlatformActivationCount 0

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players remove @s PlatformActivationCount 1
#lights
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run execute at @e[tag=World11ProximitytriggerDummy] run setblock -6 -60 0 minecraft:redstone_block

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run execute at @e[tag=World11ProximitytriggerDummy] run setblock -6 -60 0 minecraft:air

#--
#CodeBlock 6 #THIS ONE CODE BLOCK SECTION IS FINISHED
#--
/summon armor_stand -15.50 67.75 8.05 {Tags:["World3LightStartingDummy2"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}

/summon armor_stand -15.50 67.75 11.06 {Tags:["World3LightStartingDummy1"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}

/execute at @e[tag=World3ProximitytriggerDummy] run playsound alexsmobs:void_portal_open master @a[distance=..8] ~ ~ ~ 0.23 2

#--
#CodeBlock 7 #THIS ONE CODE BLOCK SECTION IS FINISHED
#--
/summon armor_stand -18 69 10 {Tags:["WorldModulePassingBridgeGenerator1"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,NoGravity:1b,Rotation:[90f,0f]}

#--
#CodeBlock 8
#(the lights CodeBlock)
#--
#the color of the cyan neon light doesnt change, it's for the bridge, just that one line. the fill coordinates do change
/fill -81 108 22 -51 95 -3 dustrial_decor:cyan_neon_light replace minecraft:cyan_wool
#change for the colored lights
/fill -81 108 22 -51 95 -3 dustrial_decor:purple_neon_light replace minecraft:purple_wool

#--
#CodeBlock 8.5
#--
/fill -81 108 22 -51 95 -3 minecraft:cyan_wool replace dustrial_decor:cyan_neon_light
#change for the colored lights
/fill -81 108 22 -51 95 -3 minecraft:purple_wool replace dustrial_decor:purple_neon_light

#--
#CodeBlock 9
#(The reset codeBlock)
#--
#no need to modifify the next one line:
/execute as @e[tag=LobbyHappiestDummy2] run data merge block -8 -60 22 {auto:0b}
#auto deactivation CodeBLock5 repetitive coords, you know
/execute as @e[tag=LobbyHappiestDummy2] run data merge block -3 -60 4 {auto:0b}

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s PlatformActivationCount 0

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World11ProximityDoorStatus 0

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World11AuxToggle 1
#remove the bridge
/fill -34 99 9 -50 99 10 air
#turn off lights
/setblock -5 -60 0 minecraft:redstone_block

/setblock -5 -60 0 minecraft:air
#put the glass door back
/clone 9 -59 17 9 -55 20 -34 100 8
#--------




#-----------
# WORLD 12
#-----------
#SETUP CODE FOR WORLD12
#-----------
/scoreboard objectives add World12AuxToggle dummy

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World12AuxToggle 1

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World12ProximityDoorStatus 0

-25.00 100.00 2.50 #trigger base reference
-25.00 103.75 2.20
-25.00 103.20 2.20
-25.00 102.75 2.20
-25.00 101.60 2.20

-32.50 100.00 10.00 #trigger base reference
-32.50 103.75 10.00
-32.50 103.20 10.00
-32.50 102.75 10.00
-32.50 101.60 10.00

#take the middle of the danger blocks as coords
/summon armor_stand -25.00 100.00 2.50 {Tags:["World12ProximitytriggerDummy","WorldProximityGeneralTriggerDummy"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"World 12 Proximity Trigger"}',CustomNameVisible:0b}

/summon armor_stand -25.00 103.75 2.20 {Tags:["World12DoorInfoDummy1","World12DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"✧ Mundo 12 ✧","color":"#ffffff"}',CustomNameVisible:1b,Rotation:[0f,0f]}

# /summon armor_stand -25.00 103.20 2.20 {Tags:["World12DoorInfoDummy2","World12DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"｡˚ SANTUARIO DEL ˚｡","color":"#d452ff","bold":true}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -25.00 103.20 2.20 {Tags:["World12DoorInfoDummy2","World12DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'[{"text":"｡˚","color":"#bfbfbf"},{"text":"Ｓ","color":"#a9a9a9","bold":true},{"text":"Ａ","color":"#c0c0c0","bold":true},{"text":"Ｎ","color":"#808080","italic":true},{"text":"Ｔ","color":"#696969","bold":true},{"text":"Ｕ","color":"#d3d3d3"},{"text":"Ａ","color":"#a8a8a8","bold":true},{"text":"Ｒ","color":"#989898","italic":true},{"text":"Ｉ","color":"#7f7f7f","bold":true},{"text":"Ｏ","color":"#c0c0c0"},{"text":"　","color":"#696969"},{"text":"Ｄ","color":"#c9c9c9","bold":true},{"text":"Ｅ","color":"#b0b0b0","italic":true},{"text":"Ｌ","color":"#8b8b8b"},{"text":"˚｡","color":"#dcdcdc"}]',CustomNameVisible:1b,Rotation:[0f,0f]}


# /summon armor_stand -25.00 102.90 2.20 {Tags:["World12DoorInfoDummy2LINE2","World12DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"｡˚ FIN DEL MUNDO ˚｡","color":"#d452ff","bold":true}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -25.00 102.90 2.20 {Tags:["World12DoorInfoDummy2LINE2","World12DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'[{"text":"｡˚","color":"#bfbfbf"},{"text":"Ｆ","color":"#a9a9a9","bold":true},{"text":"Ｉ","color":"#c0c0c0","bold":true},{"text":"Ｎ","color":"#808080","italic":true},{"text":"　","color":"#696969"},{"text":"Ｄ","color":"#696969","bold":true},{"text":"Ｅ","color":"#d3d3d3"},{"text":"Ｌ","color":"#a8a8a8","bold":true},{"text":"　","color":"#696969"},{"text":"Ｍ","color":"#989898","bold":true},{"text":"Ｕ","color":"#7f7f7f","italic":true},{"text":"Ｎ","color":"#4f4f4f","bold":true},{"text":"Ｄ","color":"#6e6e6e"},{"text":"Ｏ","color":"#989898"},{"text":"˚｡","color":"#dcdcdc"}]',CustomNameVisible:1b,Rotation:[0f,0f]}


tittle decos
# /summon armor_stand -25.00 102.75 2.20 {Tags:["World12DoorInfoDummy2DECO1","World12DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"⟡─◇─⊰⟡⊱─·꘏·─⊰⟡⊱─◇─⟡","color":"#989898"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -25.00 103.45 2.20 {Tags:["World12DoorInfoDummy2DECO1","World12DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'[{"text":"⟡","color":"#b0b0b0"},{"text":"─","color":"#a8a8a8"},{"text":"◇","color":"#c0c0c0"},{"text":"─","color":"#a8a8a8"},{"text":"⊰","color":"#808080"},{"text":"⟡","color":"#989898"},{"text":"⊱","color":"#707070"},{"text":"─","color":"#b0b0b0"},{"text":"·","color":"#a0a0a0"},{"text":"꘏","color":"#6e6e6e"},{"text":"·","color":"#a0a0a0"},{"text":"─","color":"#b0b0b0"},{"text":"⊰","color":"#707070"},{"text":"⟡","color":"#989898"},{"text":"⊱","color":"#808080"},{"text":"─","color":"#a8a8a8"},{"text":"◇","color":"#c0c0c0"},{"text":"─","color":"#a8a8a8"},{"text":"⟡","color":"#b0b0b0"}]',CustomNameVisible:1b,Rotation:[0f,0f]}


# /summon armor_stand -25.00 102.65 2.20 {Tags:["World12DoorInfoDummy2DECO2","World12DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"⟡─◇─⊰⟡⊱─·꘏·─⊰⟡⊱─◇─⟡","color":"#989898"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -25.00 102.65 2.20 {Tags:["World12DoorInfoDummy2DECO2","World12DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'[{"text":"⟡","color":"#b3b3b3"},{"text":"─","color":"#a9a9a9"},{"text":"◇","color":"#d3d3d3"},{"text":"─","color":"#a9a9a9"},{"text":"⊰","color":"#808080"},{"text":"⟡","color":"#a6a6a6"},{"text":"⊱","color":"#6e6e6e"},{"text":"─","color":"#b0b0b0"},{"text":"·","color":"#9e9e9e"},{"text":"꘏","color":"#5c5c5c"},{"text":"·","color":"#9e9e9e"},{"text":"─","color":"#b0b0b0"},{"text":"⊰","color":"#6e6e6e"},{"text":"⟡","color":"#a6a6a6"},{"text":"⊱","color":"#808080"},{"text":"─","color":"#a9a9a9"},{"text":"◇","color":"#d3d3d3"},{"text":"─","color":"#a9a9a9"},{"text":"⟡","color":"#b3b3b3"}]',CustomNameVisible:1b,Rotation:[0f,0f]}


/summon armor_stand -25.00 102.45 2.20 {Tags:["World12DoorInfoDummy3","World12DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Dificultad: 5✯","color":"#b33d30","italic":true}',CustomNameVisible:1b,Rotation:[0f,0f]}

# /summon armor_stand -25.00 102.50 2.20 {Tags:["World12DoorInfoDummy3DP","World12DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"• • ༻  Hiper-muerte+ ༺  • •","color":"#e64051","italic":true,"bold":true}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -25.00 102.20 2.20 {Tags:["World12DoorInfoDummy3DP","World12DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'[{"text":"• ","color":"#d22a3b","bold":true},{"text":"• ","color":"#e64051","bold":true},{"text":"༻ ","color":"#9d233a","bold":true,"italic":true},{"text":"H","color":"#f0606c","bold":true,"italic":true},{"text":"i","color":"#f37d7f","bold":true,"italic":true},{"text":"p","color":"#e64051","bold":true,"italic":true},{"text":"e","color":"#9d233a","bold":true,"italic":true},{"text":"r","color":"#f0606c","bold":true,"italic":true},{"text":"-","color":"#f37d7f","bold":true,"italic":true},{"text":"m","color":"#e64051","bold":true,"italic":true},{"text":"u","color":"#9d233a","bold":true,"italic":true},{"text":"e","color":"#f0606c","bold":true,"italic":true},{"text":"r","color":"#f37d7f","bold":true,"italic":true},{"text":"t","color":"#e64051","bold":true,"italic":true},{"text":"e","color":"#9d233a","bold":true,"italic":true},{"text":"+","color":"#f0606c","bold":true,"italic":true},{"text":" ","color":"#9d233a","bold":true},{"text":"༺ ","color":"#e64051","bold":true,"italic":true},{"text":"• ","color":"#d22a3b","bold":true},{"text":"•","color":"#e64051","bold":true}]',CustomNameVisible:1b,Rotation:[0f,0f]}


/summon armor_stand -25.00 101.60 2.20 {Tags:["World12DoorInfoDummy4","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Mín. Req. para desbloqueo: 30✯","color":"#ffffff"}',CustomNameVisible:1b,Rotation:[0f,0f]}

#--
#CodeBlock 1
#--
/execute as @e[tag=World12ProximitytriggerDummy] at @s if entity @p[distance=..8] run execute as @e[tag=LobbyHappiestDummy2] if score @s World12DoorTextTimer >= @s AuxNumber30 run scoreboard players set @s World12DoorTextTimer 0
#in this one next code line, from world 4 to 10 just change the coordinates by removing 1 from z axis
/execute as @e[tag=World12ProximitytriggerDummy] at @s if entity @p[distance=..8] unless entity @e[tag=World12DoorInfoDummy5, distance=..3] run execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected < @s AuxNumber30 run setblock 7 -52 15 minecraft:redstone_block
#in this one next code line, from world 4 to 10 just change the coordinates by removing 1 from z axis
/setblock 7 -52 15 air
#in this one next code line, from world 4 to 10 just change the coordinates by removing 1 from z axis
/execute as @e[tag=World12ProximitytriggerDummy] at @s if entity @p[distance=..8] unless entity @e[tag=World12DoorInfoDummy8, distance=..3] run execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected >= @s AuxNumber30 run setblock 7 -60 15 minecraft:redstone_block
#in this one next code line, from world 4 to 10 just change the coordinates by removing 1 from z axis
/setblock 7 -60 15 air

/execute as @e[tag=World12ProximitytriggerDummy] at @s if entity @p[distance=..8] run execute as @e[tag=LobbyHappiestDummy2] if score @s World12ProximityDoorStatus matches 0 run scoreboard players add @s World12DoorTextTimer 1

/execute as @e[tag=LobbyHappiestDummy2] if score @s World12ProximityDoorStatus matches 0 if score @s World12DoorTextTimer < @s AuxNumber15 run execute as @e[tag=World12DoorInfoGroup2] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World12ProximityDoorStatus matches 0 if score @s World12DoorTextTimer > @s AuxNumber15 run execute as @e[tag=World12DoorInfoGroup2] run data merge entity @s {CustomNameVisible:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World12ProximityDoorStatus matches 0 if score @s World12DoorTextTimer = @s AuxNumber15 run execute at @e[tag=World12ProximitytriggerDummy] if entity @e[tag=World12DoorInfoDummy5, distance=..3] run playsound alexsmobs:enderiophage_squish master @a[distance=..5] ~ ~ ~ 0.8 1

/execute as @e[tag=LobbyHappiestDummy2] if score @s World12ProximityDoorStatus matches 0 if score @s World12DoorTextTimer = @s AuxNumber15 run execute at @e[tag=World12ProximitytriggerDummy] if entity @e[tag=World12DoorInfoDummy8, distance=..3] run playsound spartanweaponry:throwing_weapon_loyalty_return master @a[distance=..5] ~ ~ ~ 0.8 2

/execute as @e[tag=LobbyHappiestDummy2] if score @s World12ProximityDoorStatus matches 1 run execute as @e[tag=World12DoorInfoGroup2] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World12ProximityDoorStatus matches 1 run execute as @e[tag=World12DoorInfoDummy4] run data merge entity @s {CustomNameVisible:0b}
#coordinates here are form the lil block text check, or if youre on world4 to world 10 just ~ ~ ~-1 those coords:
/execute as @e[tag=World12ProximitytriggerDummy] at @s if entity @p[distance=..8] run execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected >= @s AuxNumber30 if score @s World12ProximityDoorStatus matches 0 if score @s World12DoorTextTimer matches 15 run setblock 8 -60 15 minecraft:redstone_block

/execute as @e[tag=LobbyHappiestDummy2] if score @s World12ProximityDoorStatus matches 1 run setblock 8 -60 15 air

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 320 run execute at @e[tag=World12ProximitytriggerDummy] run playsound scalinghealth:heart_crystal_use master @a[distance=..8] ~ ~ ~ 1 0.5

#remove glass door
/fill -27 100 1 -24 104 1 air replace minecraft:light_gray_stained_glass
#coordinates are on the very middle of the glass door and 2 blocks above it
/particle alexsmobs:worm_portal -25.00 102.00 1.50 0 0 0 0.5 15

#--
#CodeBlock 2
#--
/kill @e[tag=World12DoorInfoGroup2]

-25.00 101.10 2.50
-25.00 100.75 2.50
-25.00 100.50 2.50

-25.00 101.10 17.80
-25.00 100.75 17.80
-25.00 100.50 17.80

/summon armor_stand -25.00 101.10 2.20 {Tags:["World12DoorInfoDummy6","World12DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Requisitos cumplidos!","color":"#6ee524"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -25.00 100.75 2.20 {Tags:["World12DoorInfoDummy7","World12DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Haz click en la opción para","color":"#6ee524"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -25.00 100.50 2.20 {Tags:["World12DoorInfoDummy8","World12DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"abrir esta puerta...","color":"#6ee524"}',CustomNameVisible:1b,Rotation:[0f,0f]}

#--
#CodeBlock 2.5
#--
/kill @e[tag=World12DoorInfoGroup2]

/summon armor_stand -25.00 101.10 2.20 {Tags:["World12DoorInfoDummy5","World12DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Recursos insuficientes...","color":"#cf3b3b"}',CustomNameVisible:1b,Rotation:[0f,0f]}

#--
#CodeBlock 2.5.5 #THIS ONE CODE BLOCK SECTION IS FINISHED
#--
/tellraw @p {"text":"[DESBLOQUEAR MUNDO 4]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World4ProximityDoorStatus 1"}}

#--
#CodeBlock 3
#--
/execute as @e[tag=World12ProximitytriggerDummy] at @s if entity @p[distance=8..] run execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World12DoorTextTimer 0

/execute as @e[tag=World12ProximitytriggerDummy] at @s if entity @p[distance=14..] run execute as @e[tag=World12DoorInfoGroup1] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=World12ProximitytriggerDummy] at @s if entity @p[distance=14..] run execute as @e[tag=World12DoorInfoDummy4] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=World12ProximitytriggerDummy] at @s if entity @p[distance=..14] run execute as @e[tag=World12DoorInfoGroup1] run data merge entity @s {CustomNameVisible:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World12ProximityDoorStatus matches 0 run execute as @e[tag=World12ProximitytriggerDummy] at @s if entity @p[distance=..14] run execute as @e[tag=World12DoorInfoDummy4] run data merge entity @s {CustomNameVisible:1b}

#--
#CodeBlock 4
#--
/execute as @e[tag=LobbyHappiestDummy2] if score @s World12ProximityDoorStatus matches 0 run scoreboard players add @s World12AuxToggle 1

/execute as @e[tag=LobbyHappiestDummy2] if score @s World12ProximityDoorStatus matches 0 if score @s World12AuxToggle >= @s AuxNumber90 run scoreboard players set @s World12AuxToggle 1
#solo en la linea siguiente, en las coordenadas usa las mismas pero solo reduce en 1 la z, osea ~ ~ ~-1
/execute as @e[tag=LobbyHappiestDummy2] if score @s World12AuxToggle >= @s AuxNumber1 if score @s World12ProximityDoorStatus matches 1 run setblock 3 -63 7 minecraft:redstone_block
#solo en la linea siguiente, en las coordenadas usa las mismas pero solo reduce en 1 la z, osea ~ ~ ~-1
/execute as @e[tag=LobbyHappiestDummy2] if score @s World12AuxToggle >= @s AuxNumber1 if score @s World12ProximityDoorStatus matches 1 run setblock 3 -63 7 minecraft:air
#Only the one following line doesn't change coordinates
/execute as @e[tag=LobbyHappiestDummy2] if score @s World12AuxToggle >= @s AuxNumber1 if score @s World12ProximityDoorStatus matches 1 run data merge block -8 -60 22 {auto:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World12AuxToggle >= @s AuxNumber1 if score @s World12ProximityDoorStatus matches 1 run data merge block -1 -60 4 {auto:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World12AuxToggle >= @s AuxNumber1 if score @s World12ProximityDoorStatus matches 1 run scoreboard players set @s World12AuxToggle 0
#put coordinates of lil single block that asks for click or just ~ ~ ~-1 if youre from world4 to world10
/execute as @e[tag=World12ProximitytriggerDummy] at @s if entity @p[distance=8..] run setblock 8 -60 15 minecraft:air

#--
#CodeBlock 5
#--
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount > @s AuxNumber0 if score @s PlatformActivationCount < @s AuxNumber150 run execute as @e[tag=World12LightStartingDummy1] at @s run tp @s ~ ~ ~-0.25

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount > @s AuxNumber0 if score @s PlatformActivationCount < @s AuxNumber150 run execute as @e[tag=World12LightStartingDummy2] at @s run tp @s ~ ~ ~-0.25

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run kill @e[tag=World12LightStartingDummy1]

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run kill @e[tag=World12LightStartingDummy2]
#In the following one line just change the coordinates a bit. Subtract 1 from the z coord:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber0 run setblock 3 -63 7 minecraft:redstone_block
#In the following one line just change the coordinates a bit. Subtract 1 from the z coord:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber0 run setblock 3 -63 7 minecraft:air
#In the following one line just change the coordinates a bit. Subtract 1 from the z coord:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber50 run setblock 3 -63 7 minecraft:redstone_block
#In the following one line just change the coordinates a bit. Subtract 1 from the z coord:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber50 run setblock 3 -63 7 minecraft:air

#generative bridge dummy creation
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 140 run setblock 0 -63 11 minecraft:redstone_block

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 140 run setblock 0 -63 11 minecraft:air

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run execute at @e[tag=World12ProximitytriggerDummy] run playsound minecraft:block.end_portal.spawn master @a[distance=..8] ~ ~ ~ 0.3 0.1
#this one next line doesnt change:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 145 run data merge block -8 -60 18 {auto:1b}
#self deactivate repetitive poweric code block
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 350 run data merge block -1 -60 4 {auto:0b}
#this one next line doesnt change:
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 350 run data merge block -8 -60 22 {auto:0b}

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s PlatformActivationCount 0

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players remove @s PlatformActivationCount 1
#lights
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run execute at @e[tag=World12ProximitytriggerDummy] run setblock -8 -60 0 minecraft:redstone_block

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run execute at @e[tag=World12ProximitytriggerDummy] run setblock -8 -60 0 minecraft:air

#--
#CodeBlock 6 #THIS ONE CODE BLOCK SECTION IS FINISHED
#--
/summon armor_stand -15.50 67.75 8.05 {Tags:["World3LightStartingDummy2"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}

/summon armor_stand -15.50 67.75 11.06 {Tags:["World3LightStartingDummy1"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}

/execute at @e[tag=World3ProximitytriggerDummy] run playsound alexsmobs:void_portal_open master @a[distance=..8] ~ ~ ~ 0.23 2

#--
#CodeBlock 7 #THIS ONE CODE BLOCK SECTION IS FINISHED
#--
/summon armor_stand -18 69 10 {Tags:["WorldModulePassingBridgeGenerator1"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,NoGravity:1b,Rotation:[90f,0f]}

#--
#CodeBlock 8
#(the lights CodeBlock)
#--
#the color of the cyan neon light doesnt change, it's for the bridge, just that one line. the fill coordinates do change
/fill -37 108 -45 -14 95 -15 dustrial_decor:cyan_neon_light replace minecraft:cyan_wool
#change for the colored lights
/fill -37 108 -45 -14 95 -15 dustrial_decor:rainbow_neon_light replace minecraft:light_gray_wool

#--
#CodeBlock 8.5
#--
/fill -37 108 -45 -14 95 -15 minecraft:cyan_wool replace dustrial_decor:cyan_neon_light
#change for the colored lights
/fill -37 108 -45 -14 95 -15 minecraft:light_gray_wool replace dustrial_decor:rainbow_neon_light

#--
#CodeBlock 9
#(The reset codeBlock)
#--
#no need to modifify the next one line:
/execute as @e[tag=LobbyHappiestDummy2] run data merge block -8 -60 22 {auto:0b}
#auto deactivation CodeBLock5 repetitive coords, you know
/execute as @e[tag=LobbyHappiestDummy2] run data merge block -1 -60 4 {auto:0b}

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s PlatformActivationCount 0

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World12ProximityDoorStatus 0

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World12AuxToggle 1
#remove the bridge
/fill -25 99 1 -26 99 -15 air
#turn off lights
/setblock -7 -60 0 minecraft:redstone_block

/setblock -7 -60 0 minecraft:air
#put the glass door back
/clone 7 -59 21 4 -55 21 -27 100 1
#--------
