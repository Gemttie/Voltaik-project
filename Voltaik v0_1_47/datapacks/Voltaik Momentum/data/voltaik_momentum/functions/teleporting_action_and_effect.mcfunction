# Step 1: Start the WorldTpTimer1 countdown if a player clicks the teleport button
execute as @e[tag=TPlayer,tag=TpTimerTag1] run scoreboard players add @e[tag=LobbyHappiestDummy2] WorldTpTimer1 1

# Step 2: Play particle and sound effects at the teleport dummies
execute as @e[tag=WorldGeneralTpDummy1] at @s run particle minecraft:portal ~ ~1 ~ 0.5 1 0.5 0.1 100 force
execute as @e[tag=TPlayer] run function voltaik_musical_resources_other_dp:play_teleportingone

# Step 3: Check if the timer has reached 45; if so, teleport players
execute if score @e[tag=LobbyHappiestDummy2] WorldTpTimer1 matches 45 run tp @e[tag=TPlayer] -2 70 25
