#initiate SB's
#Dialogue
scoreboard objectives add SentenceProgress1 dummy
scoreboard objectives add DialogueIdNum1 dummy
scoreboard objectives add DialogueCounter1 dummy

#Sprinting detection
scoreboard objectives add IsSprinting minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add IsMoving minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add IsSneaking minecraft.custom:minecraft.sneak_time

scoreboard objectives add SprintToggle dummy
scoreboard objectives add MoveToggle dummy
scoreboard objectives add SneakToggle dummy

#Dash Core Modification
scoreboard objectives add DashCooldownTimer dummy
scoreboard objectives add DashDurationCounter dummy

#Air Dash Core Modification
scoreboard objectives add CanAirDash dummy
scoreboard objectives add AirDashModActive dummy

#Hover Core Modification
scoreboard objectives add CanHover dummy
scoreboard objectives add HoverCooldownTimer dummy
scoreboard objectives add HoverSoundTimer dummy

#Double Jump Core Modification
scoreboard objectives add CanDoubleJump dummy
scoreboard objectives add DoubleJumpDurationTimer dummy

# scoreboard objectives add x_pos1 dummy
# scoreboard objectives add y_pos1 dummy
# scoreboard objectives add z_pos1 dummy
# scoreboard objectives add x_pos2 dummy
# scoreboard objectives add y_pos2 dummy
# scoreboard objectives add z_pos2 dummy


#Set initial SBs of LobbyHappiestDummy3
# SentenceProgress1 = Which letter is show
# DialogueIdNum1 = Which dialogue is Playing
# DialogueCounter1 = Number of iterations to do
execute as @e[tag=LobbyHappiestDummy3] run scoreboard players set @s SentenceProgress1 0
execute as @e[tag=LobbyHappiestDummy3] run scoreboard players set @s DialogueIdNum1 0
execute as @e[tag=LobbyHappiestDummy3] run scoreboard players set @s DialogueCounter1 0

#---------------------
#THIS MUST RUN FOR EVERY NEW PLAYER THAT JOINS
#scoreboard players set @a DashCooldownTimer 0
#scoreboard players set Ginnyd HoverCooldownTimer 0
#---------------------

#Start function Misc. Utilities:
gamerule naturalRegeneration false
schedule function voltaik_momentum:miscelaneous_repeating_utilities 10t
#Start function Sprinting detection:
schedule function voltaik_momentum:sprinting_detection 30t
#Start function Dash:
schedule function voltaik_momentum:dash_core_modification 50t
#Start function Air dash:
schedule function voltaik_momentum:airdash_core_modification 70t
#Start function Hover:
#ACTIVATE HOVER CORE SEPARATELY AFTER ALL THE MOMENTUM FUNCTIONS HAVE BEEN ACTIVATED
# schedule function voltaik_momentum:hover_core_modification 90t

#Start function Double Jump:
schedule function voltaik_momentum:double_jump_core_modification 110t