#AIR DASH CORE MODIFICATION
#Description: Enables a quick dash in mid-air for enhanced mobility

#Usage dependencies in game menus:
# - Dash CM

#Upgrades avaiable: 
# - Reduced cooldown: Decreases the cooldown period for this modification, enabling more frequent air dashes (Tag=ReducedAirDashCooldown)

#Not compatible with:
# - Hover CM
# - Double Jump CM

#REQUIRES DASH CORE MODIFICATION ENABLED (Tag=DashModActive)
#REQUIRES AIR DASH CORE MODIFICATION ENABLED (Tag=AirDashModActive)

#Define if the player can dash based on their ground nbt
execute as @a[tag=AirDashModActive] at @s unless entity @s[nbt={OnGround:1b}] run scoreboard players set @s CanAirDash 1
execute as @a[tag=AirDashModActive] at @s if entity @s[nbt={OnGround:1b}] run scoreboard players set @s CanAirDash 0



#Give and remove the effect to player when they dash
execute as @a[scores={SneakToggle=1,CanAirDash=1,DashCooldownTimer=0}] at @s run tag @s add DashTrigger

#For Normal Cooldown
execute as @e[scores={CanAirDash=1,DashCooldownTimer=58..70},tag=!ReducedAirDashCooldown] run effect give @s minecraft:levitation 1 1 true
execute as @e[scores={DashCooldownTimer=..57},tag=!ReducedAirDashCooldown,tag=AirDashModActive] run effect clear @s minecraft:levitation
#For Reduced Cooldown
execute as @e[scores={CanAirDash=1,DashCooldownTimer=33..45},tag=ReducedAirDashCooldown] run effect give @s minecraft:levitation 1 1 true
execute as @e[scores={DashCooldownTimer=..32},tag=ReducedAirDashCooldown,tag=AirDashModActive] run effect clear @s minecraft:levitation

#Activate cooldown
execute as @e[scores={SneakToggle=1,CanAirDash=1}] run tag @s add DashCooldownActive
#Normal Cooldown
execute as @e[scores={SneakToggle=1,CanAirDash=1,DashCooldownTimer=..1},tag=!ReducedAirDashCooldown] run scoreboard players set @s DashCooldownTimer 70
#For players with reduced cooldown
execute as @e[scores={SneakToggle=1,CanAirDash=1,DashCooldownTimer=..1},tag=ReducedAirDashCooldown] run scoreboard players set @s DashCooldownTimer 45
#----
#make function call itself indefinetly
schedule function voltaik_momentum:airdash_core_modification 1t