#/scoreboard objectives add LoadingScreenTimer1 dummy
#/scoreboard objectives add LoadingScreenPlayerCount dummy
#Summon the Needed armorstands to trigger the effects
#World1:
#summon minecraft:armor_stand 608 27 -4 {NoGravity:1b,Invulnerable:1b,Invisible:1b,CustomName:'{"text":"World1LoadScreenDummy1"}', CustomNameVisible:0b, Tags:["World1LoadScreenDummy1","WorldGeneralLoadScreenDummy","World1YipeeLoadScreenDummy","LoadScreenD1"]}
#summon minecraft:armor_stand 608 27 28 {NoGravity:1b,Invulnerable:1b,Invisible:1b,CustomName:'{"text":"World1LoadScreenDummy2"}', CustomNameVisible:0b, Tags:["World1LoadScreenDummy2","WorldGeneralLoadScreenDummy","World1YipeeLoadScreenDummy","LoadScreenD2"]}
#summon minecraft:armor_stand 640 27 28 {NoGravity:1b,Invulnerable:1b,Invisible:1b,CustomName:'{"text":"World1LoadScreenDummy3"}', CustomNameVisible:0b, Tags:["World1LoadScreenDummy3","WorldGeneralLoadScreenDummy","World1YipeeLoadScreenDummy","LoadScreenD3"]}
#summon minecraft:armor_stand 640 27 -4 {NoGravity:1b,Invulnerable:1b,Invisible:1b,CustomName:'{"text":"World1LoadScreenDummy4"}', CustomNameVisible:0b, Tags:["World1LoadScreenDummy4","WorldGeneralLoadScreenDummy","World1YipeeLoadScreenDummy","LoadScreenD4"]}

#Armorstand that sits at the actual start of world1:
#summon minecraft:armor_stand 580 73 12 {NoGravity:1b,Invulnerable:1b,Invisible:0b,CustomName:'{"text":"World1LocationDummy1"}', CustomNameVisible:0b, Tags:["World1LocationDummy1","WorldAllGeneralLocationDummy1","World1GeneralLocationDummy"]}

#generate armorstands around to generate effects only if the player is nearby the armorstand
execute as @e[tag=WorldGeneralLoadScreenDummy,tag=!LoadScreenTrigger2] at @s if entity @e[tag=TPlayer,limit=1,distance=..1] run tag @s add LoadScreenTrigger1

#One time execution zone------
#Summon the effect armorstands
execute as @e[tag=LoadScreenTrigger1] at @s run summon minecraft:armor_stand ^ ^ ^7 {NoGravity:1b,Invulnerable:1b,Invisible:1b,CustomName:'{"text":"CARGANDO","bold":false}', CustomNameVisible:1b, Tags:["LoadScreenAuxDummy1","LoadScreenGeneralAuxDummy","LoadScreenAuxMessageDummy"]}

execute as @e[tag=LoadScreenTrigger1] at @s run summon minecraft:armor_stand ^ ^ ^-7 {NoGravity:1b,Invulnerable:1b,Invisible:1b,CustomName:'{"text":"CARGANDO","bold":false}', CustomNameVisible:1b, Tags:["LoadScreenAuxDummy1","LoadScreenGeneralAuxDummy","LoadScreenAuxMessageDummy"]}
execute as @e[tag=LoadScreenTrigger1] at @s run summon minecraft:armor_stand ^7 ^ ^ {NoGravity:1b,Invulnerable:1b,Invisible:1b,CustomName:'{"text":"CARGANDO","bold":false}', CustomNameVisible:1b, Tags:["LoadScreenAuxDummy1","LoadScreenGeneralAuxDummy","LoadScreenAuxMessageDummy"]}
execute as @e[tag=LoadScreenTrigger1] at @s run summon minecraft:armor_stand ^-7 ^ ^ {NoGravity:1b,Invulnerable:1b,Invisible:1b,CustomName:'{"text":"CARGANDO","bold":false}', CustomNameVisible:1b, Tags:["LoadScreenAuxDummy1","LoadScreenGeneralAuxDummy","LoadScreenAuxMessageDummy"]}
#start their lights
execute as @e[tag=LoadScreenTrigger1] run execute as @e[tag=LoadScreenAuxDummy1] at @s run setblock ~ ~ ~ light

#Make the loading text change, change name to when LoadingScreenTimer1 reaches certain numbers
execute as @e[tag=LoadScreenAuxMessageDummy] if entity @e[tag=LobbyHappiestDummy2,scores={LoadingScreenTimer1=50}] run data merge entity @s {CustomName:'{"text":"CARGANDO"}'}
execute as @e[tag=LoadScreenAuxMessageDummy] if entity @e[tag=LobbyHappiestDummy2,scores={LoadingScreenTimer1=80}] run data merge entity @s {CustomName:'{"text":"CARGANDO."}'}
execute as @e[tag=LoadScreenAuxMessageDummy] if entity @e[tag=LobbyHappiestDummy2,scores={LoadingScreenTimer1=110}] run data merge entity @s {CustomName:'{"text":"CARGANDO.."}'}
execute as @e[tag=LoadScreenAuxMessageDummy] if entity @e[tag=LobbyHappiestDummy2,scores={LoadingScreenTimer1=140}] run data merge entity @s {CustomName:'{"text":"CARGANDO..."}'}
execute as @e[tag=LoadScreenAuxMessageDummy] if entity @e[tag=LobbyHappiestDummy2,scores={LoadingScreenTimer1=170}] run data merge entity @s {CustomName:'{"text":"CARGANDO"}'}
execute as @e[tag=LoadScreenAuxMessageDummy] if entity @e[tag=LobbyHappiestDummy2,scores={LoadingScreenTimer1=210}] run data merge entity @s {CustomName:'{"text":"CARGANDO."}'}
execute as @e[tag=LoadScreenAuxMessageDummy] if entity @e[tag=LobbyHappiestDummy2,scores={LoadingScreenTimer1=240}] run data merge entity @s {CustomName:'{"text":"CARGANDO.."}'}
execute as @e[tag=LoadScreenAuxMessageDummy] if entity @e[tag=LobbyHappiestDummy2,scores={LoadingScreenTimer1=270}] run data merge entity @s {CustomName:'{"text":"CARGANDO..."}'}
execute as @e[tag=LoadScreenAuxMessageDummy] if entity @e[tag=LobbyHappiestDummy2,scores={LoadingScreenTimer1=300}] run data merge entity @s {CustomName:'{"text":"CARGANDO"}'}
execute as @e[tag=LoadScreenAuxMessageDummy] if entity @e[tag=LobbyHappiestDummy2,scores={LoadingScreenTimer1=310}] run data merge entity @s {CustomName:'{"text":"CARGANDO."}'}
execute as @e[tag=LoadScreenAuxMessageDummy] if entity @e[tag=LobbyHappiestDummy2,scores={LoadingScreenTimer1=340}] run data merge entity @s {CustomName:'{"text":"CARGANDO.."}'}
execute as @e[tag=LoadScreenAuxMessageDummy] if entity @e[tag=LobbyHappiestDummy2,scores={LoadingScreenTimer1=370}] run data merge entity @s {CustomName:'{"text":"CARGANDO..."}'}

#One time execution zone------
execute as @e[tag=WorldGeneralLoadScreenDummy,tag=LoadScreenTrigger1] at @s if entity @e[tag=TPlayer,limit=1,distance=..1] run tag @s add LoadScreenTrigger2
#play loading screen theme
execute as @e[tag=WorldGeneralLoadScreenDummy,tag=LoadScreenTrigger1] at @s if entity @p[distance=..1] run playsound minecraft:music_disc.loadingscreenthemeone record @p[distance=..1] ~ ~ ~ 1 1 1
#------------------------------

#FOOL PROOF: In case the player falls while teleporting
execute as @e[tag=LobbyHappiestDummy2] if score @s TpTimer2 matches 159..188 run execute as @e[tag=LoadScreenD1] at @s if entity @e[tag=Player1,distance=5..20] run tp @e[tag=Player1] @e[tag=LoadScreenD1,limit=1]
execute as @e[tag=LobbyHappiestDummy2] if score @s TpTimer2 matches 159..188 run execute as @e[tag=LoadScreenD2] at @s if entity @e[tag=Player2,distance=5..20] run tp @e[tag=Player2] @e[tag=LoadScreenD2,limit=1]
execute as @e[tag=LobbyHappiestDummy2] if score @s TpTimer2 matches 159..188 run execute as @e[tag=LoadScreenD3] at @s if entity @e[tag=Player3,distance=5..20] run tp @e[tag=Player3] @e[tag=LoadScreenD3,limit=1]
execute as @e[tag=LobbyHappiestDummy2] if score @s TpTimer2 matches 159..188 run execute as @e[tag=LoadScreenD4] at @s if entity @e[tag=Player4,distance=5..20] run tp @e[tag=Player4] @e[tag=LoadScreenD4,limit=1]

#give the players the locatioNumberId and time (FOR TIME SPECIFICALLY JUST MODIFY THE TIME SET NUMBER, NOTHING ELSE)
# World 1
execute as @e[tag=World1YipeeLoadScreenDummy] at @s if entity @e[tag=TPlayer,distance=..1] run scoreboard players set @e[tag=TPlayer,sort=nearest] LocationNumberId 10
execute as @e[tag=LobbyHappiestDummy2] if score @s TpTimer2 matches 188 run execute as @e[tag=World1YipeeLoadScreenDummy] at @s if entity @e[tag=TPlayer,distance=..1] run time set 13200
# World 2
execute as @e[tag=World2YipeeLoadScreenDummy] at @s if entity @e[tag=TPlayer,distance=..1] run scoreboard players set @e[tag=TPlayer,sort=nearest] LocationNumberId 11
# World 3
execute as @e[tag=World3YipeeLoadScreenDummy] at @s if entity @e[tag=TPlayer,distance=..1] run scoreboard players set @e[tag=TPlayer,sort=nearest] LocationNumberId 12
# World 4
execute as @e[tag=World4YipeeLoadScreenDummy] at @s if entity @e[tag=TPlayer,distance=..1] run scoreboard players set @e[tag=TPlayer,sort=nearest] LocationNumberId 13
# World 5
execute as @e[tag=World5YipeeLoadScreenDummy] at @s if entity @e[tag=TPlayer,distance=..1] run scoreboard players set @e[tag=TPlayer,sort=nearest] LocationNumberId 14
# World 6
execute as @e[tag=World6YipeeLoadScreenDummy] at @s if entity @e[tag=TPlayer,distance=..1] run scoreboard players set @e[tag=TPlayer,sort=nearest] LocationNumberId 15
# World 7
execute as @e[tag=World7YipeeLoadScreenDummy] at @s if entity @e[tag=TPlayer,distance=..1] run scoreboard players set @e[tag=TPlayer,sort=nearest] LocationNumberId 16
# World 8
execute as @e[tag=World8YipeeLoadScreenDummy] at @s if entity @e[tag=TPlayer,distance=..1] run scoreboard players set @e[tag=TPlayer,sort=nearest] LocationNumberId 17
# World 9
execute as @e[tag=World9YipeeLoadScreenDummy] at @s if entity @e[tag=TPlayer,distance=..1] run scoreboard players set @e[tag=TPlayer,sort=nearest] LocationNumberId 18
# World 10
execute as @e[tag=World10YipeeLoadScreenDummy] at @s if entity @e[tag=TPlayer,distance=..1] run scoreboard players set @e[tag=TPlayer,sort=nearest] LocationNumberId 19
# World 11
execute as @e[tag=World11YipeeLoadScreenDummy] at @s if entity @e[tag=TPlayer,distance=..1] run scoreboard players set @e[tag=TPlayer,sort=nearest] LocationNumberId 20
# World 12
execute as @e[tag=World12YipeeLoadScreenDummy] at @s if entity @e[tag=TPlayer,distance=..1] run scoreboard players set @e[tag=TPlayer,sort=nearest] LocationNumberId 21

#Remove tags on distance
execute as @e[tag=WorldGeneralLoadScreenDummy,tag=LoadScreenTrigger2] run tag @s remove LoadScreenTrigger1
execute as @e[tag=WorldGeneralLoadScreenDummy] at @s unless entity @e[tag=TPlayer,distance=..2] run tag @s remove LoadScreenTrigger2

#Dont allow the player to move if theyre near a dummy with LoadScreenTrigger2
execute as @e[tag=LoadScreenTrigger2] at @s if entity @e[tag=TPlayer,distance=..2] if entity @e[tag=LobbyHappiestDummy2,scores={LoadingScreenTimer1=1..380}] run effect give @e[tag=TPlayer,limit=1,sort=nearest] minecraft:slowness 1 255 true

#Prevent player from getting away
execute as @e[tag=TPlayer] at @s if entity @e[tag=LoadScreenTrigger2,distance=1..3,limit=1] if entity @e[tag=LobbyHappiestDummy2,scores={LoadingScreenTimer1=1..380}] run tp @s @e[tag=LoadScreenTrigger2,sort=nearest,limit=1]

#generate particles at aux dummies
execute as @e[tag=LoadScreenAuxDummy1] at @s run particle minecraft:end_rod ~ ~ ~ 5 5 5 0.1 1 force
# execute as @e[tag=LoadScreenAuxDummy1] at @s run particle minecraft:explosion_emitter ~ ~ ~ 3 3 3 0.2 2 force
execute as @e[tag=LoadScreenAuxDummy1] at @s run particle minecraft:portal ~ ~ ~ 5 5 5 0.05 1 force
execute as @e[tag=LoadScreenAuxDummy1] at @s run particle minecraft:glow ~ ~ ~ 4 4 4 0.05 1 force


#Count the players and make sure the number of players near a worldgeneralloadscreen dummy is the same as conected players. if so then start count to actually tp players
execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s LoadingScreenPlayerCount 0
execute as @e[tag=LoadScreenTrigger2] run scoreboard players add @e[tag=LobbyHappiestDummy2] LoadingScreenPlayerCount 1

execute as @e[tag=LobbyHappiestDummy2] if score @s LoadingScreenPlayerCount = @s ConectedPlayers if score @s LoadingScreenTimer1 matches 0 run scoreboard players add @s LoadingScreenTimer1 1

#Run the timer all the time, and stop it if players went away
execute as @e[tag=LobbyHappiestDummy2] if score @s LoadingScreenTimer1 matches 1..400 run scoreboard players add @s LoadingScreenTimer1 1
execute as @e[tag=LobbyHappiestDummy2] if score @s LoadingScreenTimer1 matches 401 run scoreboard players set @s LoadingScreenTimer1 0
execute as @e[tag=LobbyHappiestDummy2] if score @s LoadingScreenPlayerCount < @s ConectedPlayers run scoreboard players set @s LoadingScreenTimer1 0

#Kill the dummies when there are no more players nearby
execute as @e[tag=LobbyHappiestDummy2] if score @s LoadingScreenPlayerCount matches 0 run kill @e[tag=LoadScreenAuxDummy1]

#Stop the loading screen music when timer hits a number
execute as @e[tag=LobbyHappiestDummy2] if score @s LoadingScreenTimer1 matches 400 run stopsound @a record minecraft:music_disc.loadingscreenthemeone

#Tp the players after the timer hits a number, tp to nearest all general loaction dummy
execute as @e[tag=LobbyHappiestDummy2] if score @s LoadingScreenTimer1 matches 400 run execute as @e[tag=TPlayer] at @s run tp @s @e[tag=WorldAllGeneralLocationDummy1,limit=1,sort=nearest]

#teleporting arrival sound
execute if score @e[tag=LobbyHappiestDummy2,limit=1] LoadingScreenTimer1 matches 370 as @e[tag=WorldAllGeneralLocationDummy1,limit=1] at @s run playsound minecraft:music_disc.teleportingtwo record @a ~ ~ ~ 1 1 1

#Spawn particles after teleporting
execute if score @e[tag=LobbyHappiestDummy2,limit=1] LoadingScreenTimer1 matches 400 as @e[tag=WorldAllGeneralLocationDummy1,limit=1] at @s run particle minecraft:end_rod ~ ~ ~ 1 1 1 0 120 force
#IF THERE ARE ISSUES ON OTHER WORLDS, ITS BECAUSE ALL THE LATER LINES OF COMMANDS  IN THIS FUNCTION USING @e[tag=WorldAllGeneralLocationDummy1,limit=1] OR SIMILAR ARE TARGETING OTHER WorldAllGeneralLocationDummy1 INSTEAD OF THE CLOSEST TO THE PLAYERS

#Remove the light
execute if score @e[tag=LobbyHappiestDummy2,limit=1] LoadingScreenTimer1 matches 400 run execute as @e[tag=LoadScreenAuxDummy1] at @s run setblock ~ ~ ~ air

#Repeat this function
schedule function voltaik_momentum:tp_loading_screen 1t