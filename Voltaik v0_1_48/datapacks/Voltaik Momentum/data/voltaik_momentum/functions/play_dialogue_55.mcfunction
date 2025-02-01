# Initialize DialogueIdNum1 for the first run if SentenceProgress1 and DialogueCounter1 are 0 (CHANGE THE ID, MODIFY THIS ONE LINE:)
execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 0 if score @s DialogueCounter1 matches 0 run scoreboard players set @s DialogueIdNum1 55

# Set initial dialogue counter only once when SentenceProgress1 == 1 and DialogueCounter1 == 0 (CHANGE THE COUNTER AND ID{It must be higher than the maximun SentenceProgress and any IdNum by 2 at least}, MODIFY THIS ONE LINE:)
execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 0 if score @s DialogueIdNum1 matches 55 run scoreboard players set @s DialogueCounter1 58

# Increase SentenceProgress1 to iterate through dialogue
execute as @e[tag=LobbyHappiestDummy3] if score @s DialogueCounter1 matches 1.. run scoreboard players add @s SentenceProgress1 1

# Decrease DialogueCounter1 by 1 to count down iterations
execute as @e[tag=LobbyHappiestDummy3] if score @s DialogueCounter1 matches 1.. run scoreboard players remove @s DialogueCounter1 1

#(MODIFY THESE DIALOGUE LINES ID AND THE TEXT)
# Dialogue 50 - Sentence 1
#(Sentence 1) [Eux] : Teletransportando...

execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 10 if score @s DialogueIdNum1 matches 55 run title @a actionbar ["",{"text":"|[Parallax]| :","color":"aqua"}," T"]
execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 10 if score @s DialogueIdNum1 matches 55 run execute as @a[limit=1] run function voltaik_musical_resources_other_dp:play_heliosvoicesampleone

execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 11 if score @s DialogueIdNum1 matches 55 run title @a actionbar ["",{"text":"|[Parallax]| :","color":"aqua"}," Te"]
execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 11 if score @s DialogueIdNum1 matches 55 run execute as @a[limit=1] run function voltaik_musical_resources_other_dp:play_heliosvoicesampleone

execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 12 if score @s DialogueIdNum1 matches 55 run title @a actionbar ["",{"text":"|[Parallax]| :","color":"aqua"}," Tel"]
execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 12 if score @s DialogueIdNum1 matches 55 run execute as @a[limit=1] run function voltaik_musical_resources_other_dp:play_heliosvoicesampleone

execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 13 if score @s DialogueIdNum1 matches 55 run title @a actionbar ["",{"text":"|[Parallax]| :","color":"aqua"}," Tele"]
execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 13 if score @s DialogueIdNum1 matches 55 run execute as @a[limit=1] run function voltaik_musical_resources_other_dp:play_heliosvoicesampleone

execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 14 if score @s DialogueIdNum1 matches 55 run title @a actionbar ["",{"text":"|[Parallax]| :","color":"aqua"}," Telet"]
execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 14 if score @s DialogueIdNum1 matches 55 run execute as @a[limit=1] run function voltaik_musical_resources_other_dp:play_heliosvoicesampleone

execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 15 if score @s DialogueIdNum1 matches 55 run title @a actionbar ["",{"text":"|[Parallax]| :","color":"aqua"}," Teletr "]
execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 15 if score @s DialogueIdNum1 matches 55 run execute as @a[limit=1] run function voltaik_musical_resources_other_dp:play_heliosvoicesampleone

execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 16 if score @s DialogueIdNum1 matches 55 run title @a actionbar ["",{"text":"|[Parallax]| :","color":"aqua"}," Teletra"]
execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 16 if score @s DialogueIdNum1 matches 55 run execute as @a[limit=1] run function voltaik_musical_resources_other_dp:play_heliosvoicesampleone

execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 17 if score @s DialogueIdNum1 matches 55 run title @a actionbar ["",{"text":"|[Parallax]| :","color":"aqua"}," Teletran"]
execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 17 if score @s DialogueIdNum1 matches 55 run execute as @a[limit=1] run function voltaik_musical_resources_other_dp:play_heliosvoicesampleone

execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 18 if score @s DialogueIdNum1 matches 55 run title @a actionbar ["",{"text":"|[Parallax]| :","color":"aqua"}," Teletrans"]
execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 18 if score @s DialogueIdNum1 matches 55 run execute as @a[limit=1] run function voltaik_musical_resources_other_dp:play_heliosvoicesampleone

execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 19 if score @s DialogueIdNum1 matches 55 run title @a actionbar ["",{"text":"|[Parallax]| :","color":"aqua"}," Teletransp"]
execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 19 if score @s DialogueIdNum1 matches 55 run execute as @a[limit=1] run function voltaik_musical_resources_other_dp:play_heliosvoicesampleone

execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 20 if score @s DialogueIdNum1 matches 55 run title @a actionbar ["",{"text":"|[Parallax]| :","color":"aqua"}," Teletranspo"]
execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 20 if score @s DialogueIdNum1 matches 55 run execute as @a[limit=1] run function voltaik_musical_resources_other_dp:play_heliosvoicesampleone

execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 21 if score @s DialogueIdNum1 matches 55 run title @a actionbar ["",{"text":"|[Parallax]| :","color":"aqua"}," Teletranspor"]
execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 21 if score @s DialogueIdNum1 matches 55 run execute as @a[limit=1] run function voltaik_musical_resources_other_dp:play_heliosvoicesampleone

execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 22 if score @s DialogueIdNum1 matches 55 run title @a actionbar ["",{"text":"|[Parallax]| :","color":"aqua"}," Teletransport"]
execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 22 if score @s DialogueIdNum1 matches 55 run execute as @a[limit=1] run function voltaik_musical_resources_other_dp:play_heliosvoicesampleone

execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 23 if score @s DialogueIdNum1 matches 55 run title @a actionbar ["",{"text":"|[Parallax]| :","color":"aqua"}," Teletransporta"]
execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 23 if score @s DialogueIdNum1 matches 55 run execute as @a[limit=1] run function voltaik_musical_resources_other_dp:play_heliosvoicesampleone

execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 24 if score @s DialogueIdNum1 matches 55 run title @a actionbar ["",{"text":"|[Parallax]| :","color":"aqua"}," Teletransportan"]
execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 24 if score @s DialogueIdNum1 matches 55 run execute as @a[limit=1] run function voltaik_musical_resources_other_dp:play_heliosvoicesampleone

execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 25 if score @s DialogueIdNum1 matches 55 run title @a actionbar ["",{"text":"|[Parallax]| :","color":"aqua"}," Teletransportand"]
execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 25 if score @s DialogueIdNum1 matches 55 run execute as @a[limit=1] run function voltaik_musical_resources_other_dp:play_heliosvoicesampleone

execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 26 if score @s DialogueIdNum1 matches 55 run title @a actionbar ["",{"text":"|[Parallax]| :","color":"aqua"}," Teletransportando"]
execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 26 if score @s DialogueIdNum1 matches 55 run execute as @a[limit=1] run function voltaik_musical_resources_other_dp:play_heliosvoicesampleone
#Dots
execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 36 if score @s DialogueIdNum1 matches 55 run title @a actionbar ["",{"text":"|[Parallax]| :","color":"aqua"}," Teletransportando."]
execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 36 if score @s DialogueIdNum1 matches 55 run execute as @a[limit=1] run function 

execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 46 if score @s DialogueIdNum1 matches 55 run title @a actionbar ["",{"text":"|[Parallax]| :","color":"aqua"}," Teletransportando.."]
execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 46 if score @s DialogueIdNum1 matches 55 run execute as @a[limit=1] run function 

execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 56 if score @s DialogueIdNum1 matches 55 run title @a actionbar ["",{"text":"|[Parallax]| :","color":"aqua"}," Teletransportando..."]
execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 56 if score @s DialogueIdNum1 matches 55 run execute as @a[limit=1] run function 
#--------


# Reset SentenceProgress1 and DialogueIdNum1 after reaching the final sentence progress
execute as @e[tag=LobbyHappiestDummy3] if score @s DialogueCounter1 matches 0 run scoreboard players set @s SentenceProgress1 0
#(CHANGE ID, MODIFY THIS ONE LINE:)
execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 0 if score @s DialogueIdNum1 matches 55 run scoreboard players set @s DialogueIdNum1 0

# Function calls itself only if DialogueCounter1 > 1 (CHANGE FUNCTION NAME, MODIFY THIS ONE LINE:)
execute as @e[tag=LobbyHappiestDummy3] if score @s DialogueCounter1 matches 1.. run schedule function voltaik_momentum:play_dialogue_55 1t