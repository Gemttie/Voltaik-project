#You must summon the worlds teleporting dummy, use this as a template:
#/summon minecraft:armor_stand 18.00 70.00 10.00 {NoGravity:1b,Invulnerable:1b,Invisible:0b,CustomName:'{"text":"World1TpDummy1"}', CustomNameVisible:0b, Tags:["World1TpDummy1","WorldGeneralTpDummy1"]}

#Testing dummy
#/summon minecraft:armor_stand 16 70 10 {NoGravity:1b,Invulnerable:1b,Invisible:0b,CustomName:'{"text":"TPlayer Test Dummy2"}', CustomNameVisible:0b, Tags:["TPlayer","Player2"]}

#IMPORTANT!!!
#BEFORE ANY USE OF THE TELEPORTER THIS MUST RUN ON WATHEVER U WANT BUT IT MUST RUN:
#/execute as @e[tag=LobbyHappiestDummy2] run tag @s remove GeneralWorldCanotTp

# -------------------------
# | TELEPORTING UTILITIES |
# -------------------------
# Step 1: Reset relevant scores and tags for players and dummies
scoreboard players set @e[tag=LobbyHappiestDummy2] PlayersNearTp 0
scoreboard players set @e[tag=LobbyHappiestDummy2] WorldTpTimer1 0

#FOOL PROOF: make sure that no player can get out of the circle once the teleportation process started
execute as @e[tag=LobbyHappiestDummy2] if score @s TpTimer2 matches 1..150 run execute as @e[tag=TpOnUseTag1] at @s if entity @e[tag=TPlayer,distance=2..] run tp @e[tag=TPlayer,sort=furthest,limit=1] @e[tag=TpOnUseTag1,limit=1]

#Only execute code and use one teleporting armorstand at the time, and all of the other ones get tagged as TpBusyTag1
# Step 1: Remove TpBusyTag1 if player leaves the radius
execute as @e[tag=WorldGeneralTpDummy1,tag=TpBusyTag1] at @s unless entity @e[tag=TPlayer,distance=..2] run tag @s remove TpBusyTag1

# Step 2: Remove TpOnUseTag1 if player leaves the radius
execute as @e[tag=WorldGeneralTpDummy1,tag=TpOnUseTag1] at @s unless entity @e[tag=TPlayer,distance=..2] run tag @s remove TpOnUseTag1

# Step 3: Assign TpOnUseTag1 to the first dummy near the player (no other dummy should have TpOnUseTag1)
execute as @e[tag=WorldGeneralTpDummy1,tag=!TpOnUseTag1,tag=!TpBusyTag1] at @s if entity @e[tag=TPlayer,distance=..2] unless entity @e[tag=WorldGeneralTpDummy1,tag=TpOnUseTag1] run tag @s add TpOnUseTag1

# Step 4: Mark all other dummies as busy if one has TpOnUseTag1
execute as @e[tag=WorldGeneralTpDummy1,tag=!TpOnUseTag1] if entity @e[tag=WorldGeneralTpDummy1,tag=TpOnUseTag1] run tag @s add TpBusyTag1

#Execute teleportation for the armorstand thats being used if there are players nearby it
#Remove NearTp tag from players if theyre out of the range
execute as @e[tag=TPlayer] at @s unless entity @e[tag=WorldGeneralTpDummy1,tag=TpOnUseTag1,distance=..2] run tag @s remove NearTp
#Detect players near teleport dummies and add the "NearTP" tag
execute as @e[tag=TPlayer] at @s if entity @e[tag=WorldGeneralTpDummy1,tag=TpOnUseTag1,distance=..2] run tag @s add NearTp

# Step 3: Count players near each teleport dummy
scoreboard players set @e[tag=LobbyHappiestDummy2] PlayersNearTp 0
execute as @e[tag=TPlayer,tag=NearTp] run scoreboard players add @e[tag=LobbyHappiestDummy2] PlayersNearTp 1

#Asign first tag
execute as @e[tag=TPlayer,tag=!TpTag2] at @s if entity @e[tag=WorldGeneralTpDummy1,tag=TpOnUseTag1,distance=..2] run tag @s add TpTag1

#-------One time run only zone--------
#Message display the green status message for players ready to teleport, just add the tag "TpTag1"
execute as @e[tag=TPlayer,tag=NearTp,tag=TpTag1] run tellraw @a [{"text":"Número de jugadores listos para teletransporte: ","color":"green"},{"score":{"name":"@e[tag=LobbyHappiestDummy2]","objective":"PlayersNearTp"}},{"text":"/","color":"green"},{"score":{"name":"@e[tag=LobbyHappiestDummy2]","objective":"ConectedPlayers"}}]
#Start the timer
execute as @e[tag=TPlayer,tag=NearTp,tag=TpTag1,limit=1] run execute as @e[tag=LobbyHappiestDummy2] run scoreboard players add @s TpTimer1 1
#play sound at proximity
execute as @e[tag=TPlayer,tag=NearTp,tag=TpTag1,limit=1] run execute as @e[tag=TpOnUseTag1] at @s run playsound minecraft:block.enchantment_table.use master @a[tag=TPlayer,distance=..2] ~ ~ ~ 1 2
#-------One time run only zone--------

execute as @e[tag=TPlayer] at @s if entity @e[tag=WorldGeneralTpDummy1,tag=TpOnUseTag1,distance=..2] run tag @s add TpTag2

#Remove tags on distance
execute as @e[tag=TPlayer,tag=TpTag2] run tag @s remove TpTag1
execute as @e[tag=TPlayer] at @s unless entity @e[tag=WorldGeneralTpDummy1,tag=TpOnUseTag1,distance=..2] run tag @s remove TpTag2

#Run timer TpTimer1
execute as @e[tag=LobbyHappiestDummy2] if score @s TpTimer1 matches 1.. if score @s TpTimer1 matches ..39 run scoreboard players add @s TpTimer1 1
execute as @e[tag=LobbyHappiestDummy2] if score @s TpTimer1 matches 40 run scoreboard players set @s TpTimer1 0

# Step 5: Display the yellow clickable text when all players are ready, and its sound
execute as @e[tag=LobbyHappiestDummy2] if score @s TpTimer1 matches 39 if score @s PlayersNearTp = @s ConectedPlayers run tellraw @a[tag=TPlayer] [{"text":"¡Todo listo! ","color":"yellow"},{"text":"[Presione AQUÍ]","color":"yellow","bold":true,"clickEvent":{"action":"run_command","value":"/tag @e[tag=LobbyHappiestDummy2,tag=!GeneralWorldCanotTp] add TriggerTeleportGeneral"}}]

execute as @e[tag=LobbyHappiestDummy2] if score @s TpTimer1 matches 39 if score @s PlayersNearTp = @s ConectedPlayers run execute as @e[tag=TpOnUseTag1] at @s run playsound scalinghealth:enchanted_heart_use master @a[tag=TPlayer,distance=..2] ~ ~ ~ 1 1.4

#Run timer TpTimer2
#Reset timer if happiest2 is not tagged for tp
# execute as @e[tag=LobbyHappiestDummy2,tag=!TriggerTeleportGeneral] run scoreboard players set @s TpTimer2 0


#This is a one time run zone, just at the prefix-------
#Don't allow clickling the button if all the players arent ready for tp
execute as @e[tag=LobbyHappiestDummy2,tag=TriggerTeleportGeneral] if score @s PlayersNearTp < @s ConectedPlayers run tellraw @a[tag=TPlayer] {"text":"Todos los jugadores deben estar en la zona de teletransporte!","color":"red"}
execute as @e[tag=LobbyHappiestDummy2,tag=TriggerTeleportGeneral] if score @s PlayersNearTp < @s ConectedPlayers run tag @s remove TriggerTeleportGeneral

#Make timer go on once the trigger tag is given to happiest2, then remove the tag
execute as @e[tag=LobbyHappiestDummy2,tag=TriggerTeleportGeneral] run scoreboard players add @s TpTimer2 1
execute as @e[tag=LobbyHappiestDummy2,tag=TriggerTeleportGeneral] run execute as @e[tag=TpOnUseTag1] at @s run playsound minecraft:ui.stonecutter.select_recipe master @a[tag=TPlayer,distance=..2] ~ ~ ~ 1 2
#make the clickable tp message only clickable once until the tag GeneralWorldCanotTp is removed
execute as @e[tag=LobbyHappiestDummy2,tag=TriggerTeleportGeneral] run tag @s add GeneralWorldCanotTp
#This is a one time run zone-------

#End the trigger tag
execute as @e[tag=LobbyHappiestDummy2,tag=TriggerTeleportGeneral] if score @s TpTimer2 matches 1.. run tag @s remove TriggerTeleportGeneral

execute as @e[tag=LobbyHappiestDummy2] if score @s TpTimer2 matches 1.. if score @s TpTimer2 matches ..190 run scoreboard players add @s TpTimer2 1
execute as @e[tag=LobbyHappiestDummy2] if score @s TpTimer2 matches 191 run scoreboard players set @s TpTimer2 0

#display dialogue from Eux-parallax
execute as @e[tag=LobbyHappiestDummy2] if score @s TpTimer2 matches 10 run function voltaik_momentum:play_dialogue_55
#play tp sound
execute as @e[tag=LobbyHappiestDummy2] if score @s TpTimer2 matches 70 run execute as @e[tag=TpOnUseTag1] at @s run function voltaik_musical_resources_other_dp:play_teleportingone

#make pilar ring of particles while actually teleporting
execute as @e[tag=LobbyHappiestDummy2] if score @s TpTimer2 matches 70..150 run execute as @e[tag=TpOnUseTag1] at @s run particle minecraft:end_rod ^ ^ ^ 0.1 10 0.1 0 50 force

#--------------------
#tp the player to the teleporting loadingscreen room
#World1:
execute as @e[tag=LobbyHappiestDummy2] if score @s TpTimer2 matches 151 run execute as @e[tag=World1TpDummy1,tag=TpOnUseTag1] run tp @e[tag=TPlayer,tag=Player1] 608 27 -4
execute as @e[tag=LobbyHappiestDummy2] if score @s TpTimer2 matches 151 run execute as @e[tag=World1TpDummy1,tag=TpOnUseTag1] run tp @e[tag=TPlayer,tag=Player2] 608 27 28
execute as @e[tag=LobbyHappiestDummy2] if score @s TpTimer2 matches 151 run execute as @e[tag=World1TpDummy1,tag=TpOnUseTag1] run tp @e[tag=TPlayer,tag=Player3] 640 27 28
execute as @e[tag=LobbyHappiestDummy2] if score @s TpTimer2 matches 151 run execute as @e[tag=World1TpDummy1,tag=TpOnUseTag1] run tp @e[tag=TPlayer,tag=Player4] 640 27 -4

#World2:
execute as @e[tag=LobbyHappiestDummy2] if score @s TpTimer2 matches 151 run execute as @e[tag=World2TpDummy1,tag=TpOnUseTag1] run tp @e[tag=TPlayer,tag=Player1] 1 71 11
execute as @e[tag=LobbyHappiestDummy2] if score @s TpTimer2 matches 151 run execute as @e[tag=World2TpDummy1,tag=TpOnUseTag1] run tp @e[tag=TPlayer,tag=Player2] 1 71 11
execute as @e[tag=LobbyHappiestDummy2] if score @s TpTimer2 matches 151 run execute as @e[tag=World2TpDummy1,tag=TpOnUseTag1] run tp @e[tag=TPlayer,tag=Player3] 1 71 11
execute as @e[tag=LobbyHappiestDummy2] if score @s TpTimer2 matches 151 run execute as @e[tag=World2TpDummy1,tag=TpOnUeTag1] run tp @e[tag=TPlayer,tag=Player4] 1 71 11

#World3:
# ADD THE REST FOR THE REST OF THE WORLDS
# ADD THE REST FOR THE REST OF THE WORLDS

#World4:
#World5:
#World6:
#World7:
#World8:
#World9:
#World10:
#World11:
#World12:
#-------------------

#Make the on use dummy spin and generate particles at palyer proximity
# Spin when a player is nearby
execute as @e[tag=WorldGeneralTpDummy1,limit=4] at @s if entity @p[tag=TPlayer,distance=..2] run tp @s ~ ~ ~ ~9 ~
# Reset orientation when no players are nearby
execute as @e[tag=WorldGeneralTpDummy1,limit=4] at @s unless entity @p[tag=TPlayer,distance=..2] run tp @s ~ ~ ~ 0 0
# Spawn particles in the direction the dummy is looking
execute as @e[tag=LobbyHappiestDummy2] if score @s PlayersNearTp = @s ConectedPlayers run execute as @e[tag=TpOnUseTag1] at @s run particle bosses_of_mass_destruction:sparkles ^ ^0.1 ^2 0 0 0 0 1 force
execute as @e[tag=LobbyHappiestDummy2] if score @s PlayersNearTp = @s ConectedPlayers run execute as @e[tag=TpOnUseTag1] at @s run particle bosses_of_mass_destruction:sparkles ^ ^0.1 ^-2 0 0 0 0 1 force

#Create move and delete auxilir particle armorstands around when actual teleporting is happening
# Spawn armor stand 2 blocks in front and behind
execute as @e[tag=LobbyHappiestDummy2] if score @s TpTimer2 matches 70 run execute as @e[tag=TpOnUseTag1] at @s run summon armor_stand ^ ^ ^2 {Tags:["TpParticleAuxDummy1"],NoGravity:1b,Invulnerable:1b,Invisible:1b}
execute as @e[tag=LobbyHappiestDummy2] if score @s TpTimer2 matches 70 run execute as @e[tag=TpOnUseTag1] at @s run summon armor_stand ^ ^ ^-2 {Tags:["TpParticleAuxDummy2"],NoGravity:1b,Invulnerable:1b,Invisible:1b}

# Move armor stand 2 blocks in front of the entity (relative to its direction)
execute as @e[tag=TpOnUseTag1] at @s run tp @e[tag=TpParticleAuxDummy1] ^ ^ ^2
execute as @e[tag=TpOnUseTag1] at @s run tp @e[tag=TpParticleAuxDummy2] ^ ^ ^-2

# Create particle column at armor stand positions
execute as @e[tag=TpParticleAuxDummy1] at @s run particle minecraft:end_rod ^ ^ ^ 0.1 10 0.1 0 50 force
execute as @e[tag=TpParticleAuxDummy2] at @s run particle minecraft:end_rod ^ ^ ^ 0.1 10 0.1 0 50 force
#kill aux dummies at end of teleport
execute as @e[tag=LobbyHappiestDummy2] if score @s TpTimer2 matches 150 run kill @e[tag=TpParticleAuxDummy1]
execute as @e[tag=LobbyHappiestDummy2] if score @s TpTimer2 matches 150 run kill @e[tag=TpParticleAuxDummy2]


#particle vertical beam (gray)
execute as @e[tag=TpOnUseTag1] at @s run particle dust 1 1 1 1 ^ ^ ^ 0 1 0 10 1 force

#color beam (color based on world)
# World1: Green
execute as @e[tag=TpOnUseTag1,tag=World1TpDummy1] at @s run particle dust 0 1 0 1 ^ ^ ^ 0 1 0 10 1 force
# World2: Pink
execute as @e[tag=TpOnUseTag1,tag=World2TpDummy1] at @s run particle dust 1 0.5 0.7 1 ^ ^ ^ 0 1 0 10 1 force
# World3: Purple
execute as @e[tag=TpOnUseTag1,tag=World3TpDummy1] at @s run particle dust 0.5 0 0.5 1 ^ ^ ^ 0 1 0 10 1 force
# World4: Light Blue
execute as @e[tag=TpOnUseTag1,tag=World4TpDummy1] at @s run particle dust 0.5 0.7 1 1 ^ ^ ^ 0 1 0 10 1 force
# World5: Yellow
execute as @e[tag=TpOnUseTag1,tag=World5TpDummy1] at @s run particle dust 1 1 0 1 ^ ^ ^ 0 1 0 10 1 force
# World6: Red
execute as @e[tag=TpOnUseTag1,tag=World6TpDummy1] at @s run particle dust 1 0 0 1 ^ ^ ^ 0 1 0 10 1 force
# World7: White (Slightly Yellowish/Grayish)
execute as @e[tag=TpOnUseTag1,tag=World7TpDummy1] at @s run particle dust 0.9 0.9 0.8 1 ^ ^ ^ 0 1 0 10 1 force
# World8: Brown (Orangish)
execute as @e[tag=TpOnUseTag1,tag=World8TpDummy1] at @s run particle dust 0.8 0.4 0.1 1 ^ ^ ^ 0 1 0 10 1 force
# World9: Light Blueish White
execute as @e[tag=TpOnUseTag1,tag=World9TpDummy1] at @s run particle dust 0.8 0.9 1 1 ^ ^ ^ 0 1 0 10 1 force
# World10: A Bit Orangish Red
execute as @e[tag=TpOnUseTag1,tag=World10TpDummy1] at @s run particle dust 1 0.4 0.2 1 ^ ^ ^ 0 1 0 10 1 force
# World11: Pinkish Purple
execute as @e[tag=TpOnUseTag1,tag=World11TpDummy1] at @s run particle dust 0.9 0.5 0.8 1 ^ ^ ^ 0 1 0 10 1 force
# World12: Gray
execute as @e[tag=TpOnUseTag1,tag=World12TpDummy1] at @s run particle dust 0.5 0.5 0.5 1 ^ ^ ^ 0 1 0 10 1 force
#Generic Gray portal
execute as @e[tag=TpOnUseTag1,tag=WorldGeneric1TpDummy1] at @s run particle dust 0.5 0.5 0.5 1 ^ ^ ^ 0 1 0 10 1 force

#light
execute as @e[tag=WorldGeneralTpDummy1,tag=TpOnUseTag1,limit=4] at @s run setblock ~ ~2 ~ minecraft:light[level=15]
execute as @e[tag=WorldGeneralTpDummy1,tag=!TpOnUseTag1,limit=4] at @s run setblock ~ ~2 ~ air

#-----
#Tell players that come near a busy tp that there are other players waiting on another tp
#Remove NearBusyTp tag from players if theyre out of the range
execute as @e[tag=TPlayer] at @s unless entity @e[tag=WorldGeneralTpDummy1,tag=TpBusyTag1,distance=..2] run tag @s remove NearBusyTp
#Detect players near teleport dummies and add the "NearBusyTp" tag
execute as @e[tag=TPlayer] at @s if entity @e[tag=WorldGeneralTpDummy1,tag=TpBusyTag1,distance=..2] run tag @s add NearBusyTp


#Asign first tag
execute as @e[tag=TPlayer,tag=!NoTpTag2] at @s if entity @e[tag=WorldGeneralTpDummy1,tag=TpBusyTag1,distance=..2] run tag @s add NoTpTag1

#-------One time run only zone--------
#Message display the green status message for players ready to teleport, just add the tag "NoTpTag1"
execute as @e[tag=TPlayer,tag=NearBusyTp,tag=NoTpTag1] run title @s actionbar {"text":"Todos los jugadores deben estar en el mismo teletransportador","color":"red"}

#play sound at proximity
execute as @e[tag=TPlayer,tag=NearBusyTp,tag=NoTpTag1,limit=1] run execute as @e[tag=TpBusyTag1] at @s run playsound minecraft:block.note_block.bass master @a[tag=TPlayer,distance=..2] ~ ~ ~ 1 0.5
#-------One time run only zone--------

execute as @e[tag=TPlayer] at @s if entity @e[tag=WorldGeneralTpDummy1,tag=TpBusyTag1,distance=..2] run tag @s add NoTpTag2

#Remove tags on distance
execute as @e[tag=TPlayer,tag=NoTpTag2] run tag @s remove NoTpTag1
execute as @e[tag=TPlayer] at @s unless entity @e[tag=WorldGeneralTpDummy1,tag=TpBusyTag1,distance=..2] run tag @s remove NoTpTag2


#--

#Repeat this function
schedule function voltaik_momentum:teleporting_utilities 1t