#DASH CORE MODIFICATION
#Description: Allows player to move very quickly for an instant, speedrun time!

#Upgrades avaiable: 
# - Reduced cooldown: Decreases the cooldown period for this modification, enabling more frequent dashes (Tag=ReducedDashCooldown)

#Usage dependencies in game menus:
# - None

#REQUIRES DASH CORE MODIFICATION ENABLED (Tag=DashModActive)
# Players must have TPlayer tag

# Start Cooldown Timer when Dash is triggered
execute as @e[tag=DashTriggerAproved] run tag @s add DashTrigger
execute as @e[tag=DashTriggerAproved] run tag @s add DashCooldownActive
#Make sure any player with cooldown on their sb also has the tag
execute as @e[scores={DashCooldownTimer=1..}] run tag @s add DashCooldownActive

#Normal Cooldown
execute as @e[tag=DashTriggerAproved,tag=!ReducedDashCooldown] run scoreboard players set @s DashCooldownTimer 70
#For players with reduced cooldown
execute as @e[tag=DashTriggerAproved,tag=ReducedDashCooldown] run scoreboard players set @s DashCooldownTimer 45
execute as @e[tag=DashTriggerAproved] run tag @s remove DashTriggerAproved


# Decrement Cooldown Timer for entities in cooldown, also note leting it go under 0
execute as @e[scores={DashCooldownTimer=1..},tag=DashCooldownActive] run scoreboard players remove @s DashCooldownTimer 1

# Play SFX when cooldown reaches 0
execute as @e[scores={DashCooldownTimer=1}] run function voltaik_musical_resources_other_dp:play_cooldownfinishedone

# Remove DashCooldownActive Tag Once Cooldown Reaches 0
execute as @e[scores={DashCooldownTimer=0}] run tag @s remove DashCooldownActive


# Give speed, play SFX and VFX when Dash is triggered
execute as @e[tag=DashTrigger,tag=DashModActive] at @s if score @s DashDurationCounter matches ..13 run effect give @s minecraft:speed 1 4 true
execute as @e[tag=DashTrigger,tag=DashModActive] at @s if score @s DashDurationCounter matches 1 run playsound nmcmobs:phoenix_fireball master @s ~ ~ ~ 1 1.8 1
execute as @e[tag=DashTrigger,tag=DashModActive] at @s if score @s DashDurationCounter matches 1 run particle minecraft:cloud ~ ~1 ~ 0.5 0.5 0.5 0.1 10

# Increment the DashDurationCounter to track duration
execute as @e[tag=DashTrigger] run scoreboard players add @s DashDurationCounter 1

# Clear effects after dash duration ends and remove trigger tag
execute as @e[tag=DashTrigger] if score @s DashDurationCounter matches 13.. run effect clear @s minecraft:speed
execute as @e[tag=DashTrigger] if score @s DashDurationCounter matches 13.. run tag @s remove DashTrigger

# Reset DashDurationCounter for players not triggering Dash
execute as @e[tag=!DashTrigger,tag=TPlayer] run scoreboard players set @s DashDurationCounter 0

# Make the function call itself
schedule function voltaik_momentum:dash_core_modification 1t