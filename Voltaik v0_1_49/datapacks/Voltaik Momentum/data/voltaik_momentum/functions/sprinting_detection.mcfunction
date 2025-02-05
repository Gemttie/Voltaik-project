#REQUIRES DASH CORE MODIFICATION ENABLED (Tag=DashModActive)

# Detect if the player is sprinting (using the IsSprinting scoreboard)
execute as @a[scores={IsSprinting=1..},tag=DashModActive] run scoreboard players set @s SprintToggle 1

#Detect if the player is not sprinting and reset the toggle
execute as @a[scores={IsSprinting=0},tag=DashModActive] run scoreboard players set @s SprintToggle 0

# Detect if the player is moving (using the IsMoving scoreboard)
execute as @a[scores={IsMoving=1..},tag=DashModActive] run scoreboard players set @s MoveToggle 1

#Detect if the player is not moving and reset the toggle
execute as @a[scores={IsMoving=0},tag=DashModActive] run scoreboard players set @s MoveToggle 0

# Detect if the player is sneaking (using IsSneaking scoreboard)
execute as @a[scores={IsSneaking=1..},tag=DashModActive] run scoreboard players set @s SneakToggle 1

# Detect if the player is not sneaking and reset the toggle
execute as @a[scores={IsSneaking=0},tag=DashModActive] run scoreboard players set @s SneakToggle 0

# Reset IsSneaking to 0 if the player is not sneaking
execute as @a[scores={IsSneaking=1..},tag=DashModActive] unless entity @s[nbt={Pose:["CROUCHING"]}] run scoreboard players set @s IsSneaking 0

#Dectec sprinting or runing
execute as @a[scores={IsMoving=1..},tag=DashModActive] if score @s IsSprinting matches 0.. run scoreboard players set @s IsMoving 0
execute as @a[scores={IsSprinting=1..},tag=DashModActive] if score @s IsMoving matches 0.. run scoreboard players set @s IsSprinting 0
execute as @a[scores={MoveToggle=1},tag=DashModActive] if score @s IsSneaking matches 0.. run scoreboard players set @s IsSneaking 0
execute as @a[scores={SprintToggle=1},tag=DashModActive] if score @s IsSneaking matches 0.. run scoreboard players set @s IsSneaking 0

#Sneak while sprinting to trigger dash
execute as @a[scores={SprintToggle=1,SneakToggle=1,DashCooldownTimer=0},tag=DashModActive] run tag @s add DashTriggerAproved

#If player doesnt have the tag DashModeActive, their isMoving,IsSprinting,IsSneaking sb are set to 0
execute as @a[tag=!DashModActive] run scoreboard players set @s IsSprinting 0
execute as @a[tag=!DashModActive] run scoreboard players set @s IsMoving 0
execute as @a[tag=!DashModActive] run scoreboard players set @s IsSneaking 0

#make function call itself indefinetly
schedule function voltaik_momentum:sprinting_detection 1t