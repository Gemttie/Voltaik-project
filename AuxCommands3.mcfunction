/tellraw @p {"text":"[DESBLOQUEAR MUNDO 2]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World2ProximityDoorStatus 1"}}
/tellraw @p {"text":"[DESBLOQUEAR MUNDO 3]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World3ProximityDoorStatus 1"}}
/tellraw @p {"text":"[DESBLOQUEAR MUNDO 4]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World4ProximityDoorStatus 1"}}
/tellraw @p {"text":"[DESBLOQUEAR MUNDO 5]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World5ProximityDoorStatus 1"}}
/tellraw @p {"text":"[DESBLOQUEAR MUNDO 6]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World6ProximityDoorStatus 1"}}
/tellraw @p {"text":"[DESBLOQUEAR MUNDO 7]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World7ProximityDoorStatus 1"}}
/tellraw @p {"text":"[DESBLOQUEAR MUNDO 8]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World8ProximityDoorStatus 1"}}
/tellraw @p {"text":"[DESBLOQUEAR MUNDO 9]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World9ProximityDoorStatus 1"}}
/tellraw @p {"text":"[DESBLOQUEAR MUNDO 10]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World10ProximityDoorStatus 1"}}
/tellraw @p {"text":"[DESBLOQUEAR MUNDO 11]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World11ProximityDoorStatus 1"}}
/tellraw @p {"text":"[DESBLOQUEAR MUNDO 12]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World12ProximityDoorStatus 1"}}


/execute as @e[tag=WorldGeneralProximityTriggerDummy] at @s if entity @p[distance=8..] run execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s WorldDoorTextTimer 1

/execute as @e[tag=WorldGeneralProximityTriggerDummy] at @s if entity @p[distance=14..] run execute as @e[tag=World1DoorInfoGroup1] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=WorldGeneralProximityTriggerDummy] at @s if entity @p[distance=14..] run execute as @e[tag=World2DoorInfoDummy4] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=WorldGeneralProximityTriggerDummy] at @s if entity @p[distance=..14] run execute as @e[tag=World1DoorInfoGroup1] run data merge entity @s {CustomNameVisible:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World1ProximityDoorStatus matches 0 run execute as @e[tag=WorldGeneralProximityTriggerDummy] at @s if entity @p[distance=..14] run execute as @e[tag=World1DoorInfoDummy4] run data merge entity @s {CustomNameVisible:1b}




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






/execute as @e[tag=WorldGeneralProximityTriggerDummy] at @s if entity @p[distance=8..] run execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s WorldDoorTextTimer 0

/execute as @e[tag=WorldGeneralProximityTriggerDummy] at @s if entity @p[distance=14..] run execute as @e[tag=World1DoorInfoGroup1] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=WorldGeneralProximityTriggerDummy] at @s if entity @p[distance=14..] run execute as @e[tag=World2DoorInfoDummy4] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=WorldGeneralProximityTriggerDummy] at @s if entity @p[distance=..14] run execute as @e[tag=World1DoorInfoGroup1] run data merge entity @s {CustomNameVisible:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World1ProximityDoorStatus matches 0 run execute as @e[tag=WorldGeneralProximityTriggerDummy] at @s if entity @p[distance=..14] run execute as @e[tag=World1DoorInfoDummy4] run data merge entity @s {CustomNameVisible:1b}




/execute as @e[tag=LobbyHappiestDummy2] if score @s World1ProximityDoorStatus matches 0 run scoreboard players add @s World1AuxToggle 1

/execute as @e[tag=LobbyHappiestDummy2] if score @s World1ProximityDoorStatus matches 0 if score @s World1AuxToggle >= @s AuxNumber90 run scoreboard players set @s World1AuxToggle 1

/execute as @e[tag=LobbyHappiestDummy2] if score @s World1AuxToggle >= @s AuxNumber1 if score @s World1ProximityDoorStatus matches 1 run setblock -6 -60 22 minecraft:redstone_block

/execute as @e[tag=LobbyHappiestDummy2] if score @s World1AuxToggle >= @s AuxNumber1 if score @s World1ProximityDoorStatus matches 1 run setblock -6 -60 22 minecraft:air

/execute as @e[tag=LobbyHappiestDummy2] if score @s World1AuxToggle >= @s AuxNumber1 if score @s World1ProximityDoorStatus matches 1 run data merge block -8 -60 22 {auto:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World1AuxToggle >= @s AuxNumber1 if score @s World1ProximityDoorStatus matches 1 run data merge block -6 -60 20 {auto:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World1AuxToggle >= @s AuxNumber1 if score @s World1ProximityDoorStatus matches 1 run scoreboard players set @s World1AuxToggle 0

/execute as @e[tag=WorldGeneralProximityTriggerDummy] at @s if entity @p[distance=8..] run setblock 8 -60 18 minecraft:air





/execute as @e[tag=World1ProximitytriggerDummy] at @s if entity @p[distance=8..] run execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s WorldDoorTextTimer 0



/summon armor_stand -18 69 10 {Tags:["WorldModulePassingBridgeGenerator1"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,NoGravity:1b,Rotation:[90f,0f]}
/summon armor_stand -26 69 17 {Tags:["WorldModulePassingBridgeGenerator1"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,NoGravity:1b,Rotation:[180f,0f]}
/summon armor_stand -33 69 9 {Tags:["WorldModulePassingBridgeGenerator1"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,NoGravity:1b,Rotation:[270f,0f]}
/summon armor_stand -25 69 2 {Tags:["WorldModulePassingBridgeGenerator1"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,NoGravity:1b,Rotation:[0f,0f]}

/summon armor_stand -18 84 10 {Tags:["WorldModulePassingBridgeGenerator1"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,NoGravity:1b,Rotation:[90f,0f]}
/summon armor_stand -26 84 17 {Tags:["WorldModulePassingBridgeGenerator1"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,NoGravity:1b,Rotation:[180f,0f]}
/summon armor_stand -33 84 9 {Tags:["WorldModulePassingBridgeGenerator1"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,NoGravity:1b,Rotation:[270f,0f]}
/summon armor_stand -25 84 2 {Tags:["WorldModulePassingBridgeGenerator1"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,NoGravity:1b,Rotation:[0f,0f]}

/summon armor_stand -18 99 10 {Tags:["WorldModulePassingBridgeGenerator1"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,NoGravity:1b,Rotation:[90f,0f]}
/summon armor_stand -26 99 17 {Tags:["WorldModulePassingBridgeGenerator1"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,NoGravity:1b,Rotation:[180f,0f]}
/summon armor_stand -33 99 9 {Tags:["WorldModulePassingBridgeGenerator1"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,NoGravity:1b,Rotation:[270f,0f]}
/summon armor_stand -25 99 2 {Tags:["WorldModulePassingBridgeGenerator1"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,NoGravity:1b,Rotation:[0f,0f]}

#light dummies
#world1
/summon armor_stand -15.50 67.75 11.06 {Tags:["World1LightStartingDummy1"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,Rotation:[0f,0f],HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}
/summon armor_stand -15.50 67.75 8.05 {Tags:["World1LightStartingDummy2"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,Rotation:[0f,0f],HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}
/execute at @e[tag=World1ProximitytriggerDummy] run playsound alexsmobs:void_portal_open master @a[distance=..8] ~ ~ ~ 0.23 2

#world2
/summon armor_stand -26.93 67.75 18.70 {Tags:["World2LightStartingDummy1"],Invisible:0b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,Rotation:[270f,0f],HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}
/summon armor_stand -23.93 67.75 18.70 {Tags:["World2LightStartingDummy2"],Invisible:0b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,Rotation:[270f,0f],HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}
/execute at @e[tag=World1ProximitytriggerDummy] run playsound alexsmobs:void_portal_open master @a[distance=..8] ~ ~ ~ 0.23 2

#world3
/summon armor_stand -34.55 67.75 8.93 {Tags:["World3LightStartingDummy1"],Invisible:0b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,Rotation:[180f,0f],HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}
/summon armor_stand -34.55 67.75 11.93 {Tags:["World3LightStartingDummy2"],Invisible:0b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,Rotation:[180f,0f],HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}
/execute at @e[tag=World1ProximitytriggerDummy] run playsound alexsmobs:void_portal_open master @a[distance=..8] ~ ~ ~ 0.23 2

#world4
/summon armor_stand -23.06 67.75 1.30 {Tags:["World4LightStartingDummy1"],Invisible:0b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,Rotation:[90f,0f],HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}
/summon armor_stand -26.06 67.75 1.30 {Tags:["World4LightStartingDummy2"],Invisible:0b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,Rotation:[90f,0f],HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}
/execute at @e[tag=World1ProximitytriggerDummy] run playsound alexsmobs:void_portal_open master @a[distance=..8] ~ ~ ~ 0.23 2
#----
#world5
/summon armor_stand -15.50 82.75 11.06 {Tags:["World5LightStartingDummy1"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,Rotation:[0f,0f],HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}
/summon armor_stand -15.50 82.75 8.05 {Tags:["World5LightStartingDummy2"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,Rotation:[0f,0f],HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}
/execute at @e[tag=World1ProximitytriggerDummy] run playsound alexsmobs:void_portal_open master @a[distance=..8] ~ ~ ~ 0.23 2

#world6
/summon armor_stand -26.93 82.75 18.70 {Tags:["World6LightStartingDummy1"],Invisible:0b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,Rotation:[270f,0f],HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}
/summon armor_stand -23.93 82.75 18.70 {Tags:["World6LightStartingDummy2"],Invisible:0b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,Rotation:[270f,0f],HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}
/execute at @e[tag=World1ProximitytriggerDummy] run playsound alexsmobs:void_portal_open master @a[distance=..8] ~ ~ ~ 0.23 2

#world7
/summon armor_stand -34.55 82.75 8.93 {Tags:["World7LightStartingDummy1"],Invisible:0b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,Rotation:[180f,0f],HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}
/summon armor_stand -34.55 82.75 11.93 {Tags:["World7LightStartingDummy2"],Invisible:0b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,Rotation:[180f,0f],HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}
/execute at @e[tag=World1ProximitytriggerDummy] run playsound alexsmobs:void_portal_open master @a[distance=..8] ~ ~ ~ 0.23 2

#world8
/summon armor_stand -23.06 82.75 1.30 {Tags:["World8LightStartingDummy1"],Invisible:0b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,Rotation:[90f,0f],HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}
/summon armor_stand -26.06 82.75 1.30 {Tags:["World8LightStartingDummy2"],Invisible:0b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,Rotation:[90f,0f],HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}
/execute at @e[tag=World1ProximitytriggerDummy] run playsound alexsmobs:void_portal_open master @a[distance=..8] ~ ~ ~ 0.23 2
#----
#world9
/summon armor_stand -15.50 97.75 11.06 {Tags:["World9LightStartingDummy1"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,Rotation:[0f,0f],HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}
/summon armor_stand -15.50 97.75 8.05 {Tags:["World9LightStartingDummy2"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,Rotation:[0f,0f],HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}
/execute at @e[tag=World1ProximitytriggerDummy] run playsound alexsmobs:void_portal_open master @a[distance=..8] ~ ~ ~ 0.23 2

#world10
/summon armor_stand -26.93 97.75 18.70 {Tags:["World10LightStartingDummy1"],Invisible:0b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,Rotation:[270f,0f],HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}
/summon armor_stand -23.93 97.75 18.70 {Tags:["World10LightStartingDummy2"],Invisible:0b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,Rotation:[270f,0f],HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}
/execute at @e[tag=World1ProximitytriggerDummy] run playsound alexsmobs:void_portal_open master @a[distance=..8] ~ ~ ~ 0.23 2

#world11
/summon armor_stand -34.55 97.75 8.93 {Tags:["World11LightStartingDummy1"],Invisible:0b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,Rotation:[180f,0f],HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}
/summon armor_stand -34.55 97.75 11.93 {Tags:["World11LightStartingDummy2"],Invisible:0b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,Rotation:[180f,0f],HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}
/execute at @e[tag=World1ProximitytriggerDummy] run playsound alexsmobs:void_portal_open master @a[distance=..8] ~ ~ ~ 0.23 2

#world12
/summon armor_stand -23.06 97.75 1.30 {Tags:["World12LightStartingDummy1"],Invisible:0b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,Rotation:[90f,0f],HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}
/summon armor_stand -26.06 97.75 1.30 {Tags:["World12LightStartingDummy2"],Invisible:0b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,Rotation:[90f,0f],HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}
/execute at @e[tag=World1ProximitytriggerDummy] run playsound alexsmobs:void_portal_open master @a[distance=..8] ~ ~ ~ 0.23 2

#-----------------
/summon armor_stand -15.50 67.75 8.05 {Tags:["lightTestDummy1","lightTestDummy"],Invisible:0b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,Rotation:[0f,0f],HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}

/kill @e[tag=lightTestDummy]