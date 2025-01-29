# DOUBLE JUMP CORE MODIFICATION
# Description: The user can jump in mid-air, zero cooldown and some extra height if timing is done right
#ADITIONAL DETAL MECHANIC:
#Parabolic boosted dash: The user can convert their dash into a strong semi-vertical leap using the double jump CM upward boosters. To execute this, start sprinting, then quickly press sneak and jump simultaneously. You did this technique right if the dash cooldown sounds
#Boosted Highjump: If the user jumps while sneaking, they will propel themselves into the air, reaching a height far greater than what a normal jump can accomplish

# Usage dependencies in game menus:
# - Dash CM

# Upgrades available: 
# - Increased second jump height: Increases the height your second jump gives you (Tag=IncreasedSecondJumpHeight)

# Not compatible with:
# - Air Dash CM
# - Hover CM

# REQUIRES DASH CORE MODIFICATION ENABLED (Tag=DashModActive)
# REQUIRES DOUBLE JUMP CORE MODIFICATION ENABLED (Tag=DoubleJumpModActive)

#---

# Define if the player can double jump (based on their ground state and jump use)
execute as @a[tag=DoubleJumpModActive] at @s unless entity @s[nbt={OnGround:1b}] run scoreboard players set @s CanDoubleJump 1
execute as @a[tag=DoubleJumpModActive] at @s if entity @s[nbt={OnGround:1b}] run scoreboard players set @s CanDoubleJump 0

# Trigger double jump if the player is airborne, presses sneak again, and has touched the ground
execute as @a[scores={CanDoubleJump=1,SneakToggle=1},tag=DoubleJumpModActive,tag=!TriggerDoubleJump,tag=HasTouchedGround] run tag @s add TriggerDoubleJump

# Apply levitation effect for hover during double jump
# Set timer when triggering double jump
execute as @a[tag=DoubleJumpModActive,tag=TriggerDoubleJump,tag=HasTouchedGround] run scoreboard players set @s DoubleJumpDurationTimer 5

# Apply levitation effect while the timer is active, and clear it afterwards
#For normal height
execute as @a[scores={DoubleJumpDurationTimer=1..5},tag=DoubleJumpModActive,tag=!IncreasedSecondJumpHeight] run effect give @s minecraft:levitation 1 12 true
#For increased second jump height
execute as @a[scores={DoubleJumpDurationTimer=1..5},tag=DoubleJumpModActive,tag=IncreasedSecondJumpHeight] run effect give @s minecraft:levitation 1 17 true
execute as @a[scores={DoubleJumpDurationTimer=0},tag=DoubleJumpModActive] run effect clear @s minecraft:levitation

# Decrease the timer each tick
execute as @a[scores={DoubleJumpDurationTimer=1..5},tag=DoubleJumpModActive] run scoreboard players remove @s DoubleJumpDurationTimer 1

# Play particles and sound effects for double jump
execute as @a[tag=DoubleJumpModActive,tag=TriggerDoubleJump] at @s run particle minecraft:cloud ~ ~-0.5 ~ 0.5 0.5 0.5 0 10 force @a
execute as @a[tag=DoubleJumpModActive,tag=TriggerDoubleJump] run function voltaik_musical_resources_other_dp:play_doublejumpone

# Reset the CanDoubleJump score when the player lands (must land before being able to double jump again)
execute as @a[tag=DoubleJumpModActive] at @s if entity @s[nbt={OnGround:1b}] run tag @s add HasTouchedGround

# Remove tag if player triggers the double jump
execute as @a[tag=TriggerDoubleJump] run tag @s remove HasTouchedGround

# Remove TriggerDoubleJump tag after execution to prevent multiple triggers
execute as @a[tag=TriggerDoubleJump] run tag @s remove TriggerDoubleJump

# Make function call itself indefinitely to maintain loop
schedule function voltaik_momentum:double_jump_core_modification 1t
