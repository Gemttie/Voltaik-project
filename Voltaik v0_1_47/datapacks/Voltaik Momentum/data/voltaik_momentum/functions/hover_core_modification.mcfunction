#HOVER CORE MODIFICATION
#Description: Allows temporary hovering in mid-air thanks to a pair of minijets, has a bit more coldown

#Usage dependencies in game menus:
# - Dash CM

#Upgrades avaiable: 
# - Reduced cooldown: Decreases the cooldown period for this modification, enabling more frequent hovering (Tag=ReducedHoverCooldown)

#Not compatible with:
# - Air Dash CM
# - Double Jump CM

#REQUIRES DASH CORE MODIFICATION ENABLED (Tag=DashModActive)
#REQUIRES HOVER CORE MODIFICATION ENABLED (Tag=HoverModActive)

#Define if the player can hover based on their ground nbt
execute as @a[tag=HoverModActive] at @s unless entity @s[nbt={OnGround:1b}] run scoreboard players set @s CanHover 1
execute as @a[tag=HoverModActive] at @s if entity @s[nbt={OnGround:1b}] run scoreboard players set @s CanHover 0

#Dont move or run, then jump and sneak to trigger hover
execute as @a[scores={SprintToggle=0,MoveToggle=0,SneakToggle=1,CanHover=1,HoverCooldownTimer=0},tag=HoverModActive] run tag @s add TriggerHover

#Cooldowns
execute as @a[tag=TriggerHover] run tag @s add HoverCooldownActive
execute as @a[scores={HoverCooldownTimer=1..}] run tag @s add HoverCooldownActive

#Set timers
#Normal Cooldown
execute as @a[tag=TriggerHover,tag=!ReducedHoverCooldown] run scoreboard players set @s HoverCooldownTimer 168
#For players with reduced cooldown
execute as @a[tag=TriggerHover,tag=ReducedHoverCooldown] run scoreboard players set @s HoverCooldownTimer 143

#Remove triggerHover
execute as @a[tag=TriggerHover] run tag @s remove TriggerHover
#--

#For Normal Cooldown (Para calcular tiempos, Ejm en 78..168, el 78 es el coldown real y se le suma la duracion de la habilidad, en esta caso 90, por lo tanto 168 en el otro lado)
execute as @a[scores={SprintToggle=0,MoveToggle=0,SneakToggle=1,CanHover=1,HoverCooldownTimer=78..168},tag=!ReducedHoverCooldown] run effect give @s minecraft:levitation 1 0 true
#Countereact levitation with tp
execute as @a[scores={SprintToggle=0,MoveToggle=0,SneakToggle=1,CanHover=1,HoverCooldownTimer=78..168},tag=!ReducedHoverCooldown] run execute as @s at @s run tp @s ~ ~-0.037 ~
execute as @a[scores={HoverCooldownTimer=..77},tag=!ReducedHoverCooldown,tag=HoverModActive] run effect clear @s minecraft:levitation

#For Reduced Cooldown
execute as @a[scores={SprintToggle=0,MoveToggle=0,SneakToggle=1,CanHover=1,HoverCooldownTimer=53..143},tag=ReducedHoverCooldown] run effect give @s minecraft:levitation 1 0 true
#Countereact levitation with tp
execute as @a[scores={SprintToggle=0,MoveToggle=0,SneakToggle=1,CanHover=1,HoverCooldownTimer=53..143},tag=ReducedHoverCooldown] run execute as @s at @s run tp @s ~ ~-0.037 ~
execute as @a[scores={HoverCooldownTimer=..52},tag=ReducedHoverCooldown,tag=HoverModActive] run effect clear @s minecraft:levitation

#Remove effect if player is in air but not pressing control, just so they dont float aditionally when the palyer releases the control button
execute as @a[scores={SprintToggle=0,MoveToggle=0,SneakToggle=0,CanHover=1,HoverCooldownTimer=78..168},tag=!ReducedHoverCooldown,tag=HoverModActive] run effect clear @s minecraft:levitation
execute as @a[scores={SprintToggle=0,MoveToggle=0,SneakToggle=0,CanHover=1,HoverCooldownTimer=53..143},tag=ReducedHoverCooldown,tag=HoverModActive] run effect clear @s minecraft:levitation

# Decrement Cooldown Timer for entities in cooldown, also note leting it go under 0
execute as @a[scores={HoverCooldownTimer=1..},tag=HoverCooldownActive] run scoreboard players remove @s HoverCooldownTimer 1

# Play SFX when cooldown reaches 0
execute as @a[scores={HoverCooldownTimer=1}] run function voltaik_musical_resources_other_dp:play_cooldownfinishedtwo

# Remove HoverCooldownActive Tag Once Cooldown Reaches 0
execute as @a[scores={HoverCooldownTimer=0}] run tag @s remove HoverCooldownActive

#AD to sound timer
#For normal cooldown
execute as @a[tag=!ReducedHoverCooldown,scores={HoverCooldownTimer=78..,SneakToggle=1}] run scoreboard players add @s HoverSoundTimer 1
#For reduced cooldown
execute as @a[tag=ReducedHoverCooldown,scores={HoverCooldownTimer=53..,SneakToggle=1}] run scoreboard players add @s HoverSoundTimer 1

#Reset the sound timer when it reaches a number, also making shure the sound stops at the perfect time, also play vfx
#For normal cooldown
execute as @a[tag=!ReducedHoverCooldown,scores={HoverCooldownTimer=98..}] if score @s HoverSoundTimer matches 40 run scoreboard players set @s HoverSoundTimer 0
execute as @a[tag=!ReducedHoverCooldown,scores={HoverCooldownTimer=78..,SneakToggle=1}] at @s if score @s HoverSoundTimer matches 1..40 run particle nmcmobs:ice_dragon_breath ~ ~ ~ 0.1 -0.1 0.1 0 3 force @a
execute as @a[tag=!ReducedHoverCooldown,scores={HoverCooldownTimer=78..,SneakToggle=1}] at @s if score @s HoverSoundTimer matches 1..40 run particle minecraft:smoke ~ ~-0.3 ~ 0.1 -0.5 0.1 0 5 force @a

#For reduced cooldown
execute as @a[tag=ReducedHoverCooldown,scores={HoverCooldownTimer=73..}] if score @s HoverSoundTimer matches 40 run scoreboard players set @s HoverSoundTimer 0
execute as @a[tag=ReducedHoverCooldown,scores={HoverCooldownTimer=53..,SneakToggle=1}] at @s if score @s HoverSoundTimer matches 1..40 run particle nmcmobs:ice_dragon_breath ~ ~ ~ 0.1 -0.1 0.1 0 3 force @a
execute as @a[tag=ReducedHoverCooldown,scores={HoverCooldownTimer=53..,SneakToggle=1}] at @s if score @s HoverSoundTimer matches 1..40 run particle minecraft:smoke ~ ~-0.3 ~ 0.1 -0.5 0.1 0 5 force @a

#Reset the Sound timer when tag hoverCooldown active is not on player
execute as @a[tag=!HoverCooldownActive] run scoreboard players set @s HoverSoundTimer 0 
#Play the sfx and vfx of hovering when sound timer = 2
execute as @e[scores={HoverSoundTimer=2}] run function voltaik_musical_resources_other_dp:play_hoverjetone

#----
#make function call itself indefinetly
schedule function voltaik_momentum:hover_core_modification 1t