#/scoreboard objectives add LoadingScreenTimer1 dummy
#/scoreboard objectives add LoadingScreenPlayerCount dummy

#Summon the Needed armorstands to trigger the effects
#World1:
#summon minecraft:armor_stand 608 27 -4 {NoGravity:1b,Invulnerable:1b,Invisible:0b,CustomName:'{"text":"World1LoadScreenDummy1"}', CustomNameVisible:0b, Tags:["World1LoadScreenDummy1","WorldGeneralLoadScreenDummy"]}
#summon minecraft:armor_stand 608 27 28 {NoGravity:1b,Invulnerable:1b,Invisible:0b,CustomName:'{"text":"World1LoadScreenDummy2"}', CustomNameVisible:0b, Tags:["World1LoadScreenDummy2","WorldGeneralLoadScreenDummy"]}
#summon minecraft:armor_stand 640 27 28 {NoGravity:1b,Invulnerable:1b,Invisible:0b,CustomName:'{"text":"World1LoadScreenDummy3"}', CustomNameVisible:0b, Tags:["World1LoadScreenDummy3","WorldGeneralLoadScreenDummy"]}
#summon minecraft:armor_stand 640 27 -4 {NoGravity:1b,Invulnerable:1b,Invisible:0b,CustomName:'{"text":"World1LoadScreenDummy4"}', CustomNameVisible:0b, Tags:["World1LoadScreenDummy4","WorldGeneralLoadScreenDummy"]}

#Armorstand that sits at the actual start of world1:
#summon minecraft:armor_stand 580 73 12 {NoGravity:1b,Invulnerable:1b,Invisible:0b,CustomName:'{"text":"World1LocationDummy1"}', CustomNameVisible:0b, Tags:["World1LocationDummy1","WorldAllGeneralLocationDummy","World1GeneralLocationDummy"]}

#generate armorstands around to generate effects only if the player is nearby the armorstand
execute as @e[tag=WorldGeneralLoadScreenDummy,tag=!LoadScreenTrigger2] at @s if entity @e[tag=TPlayer,limit=1,distance=..1] run tag @s add LoadScreenTrigger1

#One time execution zone------
#Summon the effect armorstands
execute as @e[tag=LoadScreenTrigger1] at @s run summon minecraft:armor_stand ^ ^ ^7 {NoGravity:1b,Invulnerable:1b,Invisible:1b,CustomName:'{"text":"LoadScreenAuxDummy1"}', CustomNameVisible:0b, Tags:["LoadScreenAuxDummy1","LoadScreenGeneralAuxDummy"]}
execute as @e[tag=LoadScreenTrigger1] at @s run summon minecraft:armor_stand ^ ^ ^-7 {NoGravity:1b,Invulnerable:1b,Invisible:1b,CustomName:'{"text":"LoadScreenAuxDummy1"}', CustomNameVisible:0b, Tags:["LoadScreenAuxDummy1","LoadScreenGeneralAuxDummy"]}
execute as @e[tag=LoadScreenTrigger1] at @s run summon minecraft:armor_stand ^7 ^ ^ {NoGravity:1b,Invulnerable:1b,Invisible:1b,CustomName:'{"text":"LoadScreenAuxDummy1"}', CustomNameVisible:0b, Tags:["LoadScreenAuxDummy1","LoadScreenGeneralAuxDummy"]}
execute as @e[tag=LoadScreenTrigger1] at @s run summon minecraft:armor_stand ^-7 ^ ^ {NoGravity:1b,Invulnerable:1b,Invisible:1b,CustomName:'{"text":"LoadScreenAuxDummy1"}', CustomNameVisible:0b, Tags:["LoadScreenAuxDummy1","LoadScreenGeneralAuxDummy"]}

#One time execution zone------
execute as @e[tag=WorldGeneralLoadScreenDummy,tag=LoadScreenTrigger1] at @s if entity @e[tag=TPlayer,limit=1,distance=..1] run tag @s add LoadScreenTrigger2

#Remove tags on distance
execute as @e[tag=WorldGeneralLoadScreenDummy,tag=LoadScreenTrigger2] run tag @s remove LoadScreenTrigger1
execute as @e[tag=WorldGeneralLoadScreenDummy] at @s unless entity @e[tag=TPlayer,distance=..2] run tag @s remove LoadScreenTrigger2

#generate particles at aux dummies
execute as @e[tag=LoadScreenAuxDummy1] at @s run particle minecraft:end_rod ~ ~ ~ 1 1 1 0 1 force

#Count the players and make sure the number of players near a worldgeneralloadscreen dummy is the same as conected players. if so then start count to actually tp players
execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s LoadingScreenPlayerCount 0
execute as @e[tag=LoadScreenTrigger2] run scoreboard players add @e[tag=LobbyHappiestDummy2] LoadingScreenPlayerCount 1

execute as @e[tag=LobbyHappiestDummy2] if score @s LoadingScreenPlayerCount = @s ConectedPlayers if score @s LoadingScreenTimer1 matches 0 run scoreboard players add @s LoadingScreenTimer1 1

#Run the timer all the time, and stop it if players went away
execute as @e[tag=LobbyHappiestDummy2] if score @s LoadingScreenTimer1 matches 1..100 run scoreboard players add @s LoadingScreenTimer1 1
execute as @e[tag=LobbyHappiestDummy2] if score @s LoadingScreenTimer1 matches 101 run scoreboard players set @s LoadingScreenTimer1 0
execute as @e[tag=LobbyHappiestDummy2] if score @s LoadingScreenPlayerCount < @s ConectedPlayers run scoreboard players set @s LoadingScreenTimer1 0

#Kill the dummies when there are no more players nearby
execute as @e[tag=LobbyHappiestDummy2] if score @s LoadingScreenPlayerCount matches 0 run kill @e[tag=LoadScreenAuxDummy1]

#Tp the players after the timer hits a number
#World1:
execute as @e[tag=LobbyHappiestDummy2] if score @s LoadingScreenTimer1 matches 100 run tp @e[tag=TPlayer] @e[tag=World1LocationDummy1,limit=1]

#WIP
#WIP
#WIP
#WIP

#Almost done, just need to add sounds and playtest with the TPlayer dummies a bit more

#Repeat this function
schedule function voltaik_momentum:tp_loading_screen 1t