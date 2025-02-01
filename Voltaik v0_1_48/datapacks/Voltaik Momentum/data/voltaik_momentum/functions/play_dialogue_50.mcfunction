# Initialize DialogueIdNum1 for the first run if SentenceProgress1 and DialogueCounter1 are 0 (CHANGE THE ID, MODIFY THIS ONE LINE:)
execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 0 if score @s DialogueCounter1 matches 0 run scoreboard players set @s DialogueIdNum1 50

# Set initial dialogue counter only once when SentenceProgress1 == 1 and DialogueCounter1 == 0 (CHANGE THE COUNTER AND ID{It must be higher than the maximun SentenceProgress and any IdNum by 2 at least}, MODIFY THIS ONE LINE:)
execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 0 if score @s DialogueIdNum1 matches 50 run scoreboard players set @s DialogueCounter1 74

# Increase SentenceProgress1 to iterate through dialogue
execute as @e[tag=LobbyHappiestDummy3] if score @s DialogueCounter1 matches 1.. run scoreboard players add @s SentenceProgress1 1

# Decrease DialogueCounter1 by 1 to count down iterations
execute as @e[tag=LobbyHappiestDummy3] if score @s DialogueCounter1 matches 1.. run scoreboard players remove @s DialogueCounter1 1

#(MODIFY THESE DIALOGUE LINES ID:)
# Dialogue 50 - Sentence 1
#(Sentence 1) [Helios] : Hello World

execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 10 if score @s DialogueIdNum1 matches 50 run title @a actionbar ["",{"text":"|[Helios]| :","color":"aqua"}," H"]
execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 10 if score @s DialogueIdNum1 matches 50 run execute as @a[limit=1] run function voltaik_musical_resources_other_dp:play_heliosvoicesampleone

execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 12 if score @s DialogueIdNum1 matches 50 run title @a actionbar ["",{"text":"|[Helios]| :","color":"aqua"}," He"]
execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 12 if score @s DialogueIdNum1 matches 50 run execute as @a[limit=1] run function voltaik_musical_resources_other_dp:play_heliosvoicesampleone

execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 14 if score @s DialogueIdNum1 matches 50 run title @a actionbar ["",{"text":"|[Helios]| :","color":"aqua"}," Hel"]
execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 14 if score @s DialogueIdNum1 matches 50 run execute as @a[limit=1] run function voltaik_musical_resources_other_dp:play_heliosvoicesampleone

execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 16 if score @s DialogueIdNum1 matches 50 run title @a actionbar ["",{"text":"|[Helios]| :","color":"aqua"}," Hell"]
execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 16 if score @s DialogueIdNum1 matches 50 run execute as @a[limit=1] run function voltaik_musical_resources_other_dp:play_heliosvoicesampleone

execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 18 if score @s DialogueIdNum1 matches 50 run title @a actionbar ["",{"text":"|[Helios]| :","color":"aqua"}," Hello"]
execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 18 if score @s DialogueIdNum1 matches 50 run execute as @a[limit=1] run function voltaik_musical_resources_other_dp:play_heliosvoicesampleone

execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 20 if score @s DialogueIdNum1 matches 50 run title @a actionbar ["",{"text":"|[Helios]| :","color":"aqua"}," Hello "]
execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 20 if score @s DialogueIdNum1 matches 50 run execute as @a[limit=1] run function voltaik_musical_resources_other_dp:play_heliosvoicesampleone

execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 22 if score @s DialogueIdNum1 matches 50 run title @a actionbar ["",{"text":"|[Helios]| :","color":"aqua"}," Hello W"]
execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 22 if score @s DialogueIdNum1 matches 50 run execute as @a[limit=1] run function voltaik_musical_resources_other_dp:play_heliosvoicesampleone

execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 24 if score @s DialogueIdNum1 matches 50 run title @a actionbar ["",{"text":"|[Helios]| :","color":"aqua"}," Hello Wo"]
execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 24 if score @s DialogueIdNum1 matches 50 run execute as @a[limit=1] run function voltaik_musical_resources_other_dp:play_heliosvoicesampleone

execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 26 if score @s DialogueIdNum1 matches 50 run title @a actionbar ["",{"text":"|[Helios]| :","color":"aqua"}," Hello Wor"]
execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 26 if score @s DialogueIdNum1 matches 50 run execute as @a[limit=1] run function voltaik_musical_resources_other_dp:play_heliosvoicesampleone

execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 28 if score @s DialogueIdNum1 matches 50 run title @a actionbar ["",{"text":"|[Helios]| :","color":"aqua"}," Hello Worl"]
execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 28 if score @s DialogueIdNum1 matches 50 run execute as @a[limit=1] run function voltaik_musical_resources_other_dp:play_heliosvoicesampleone

execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 30 if score @s DialogueIdNum1 matches 50 run title @a actionbar ["",{"text":"|[Helios]| :","color":"aqua"}," Hello World"]
execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 30 if score @s DialogueIdNum1 matches 50 run execute as @a[limit=1] run function voltaik_musical_resources_other_dp:play_heliosvoicesampleone
#--------

#(Sentence 2) [Helios] : Macaco
execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 62 if score @s DialogueIdNum1 matches 50 run title @a actionbar ["",{"text":"|[Helios]| :","color":"aqua"}," M"]
execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 62 if score @s DialogueIdNum1 matches 50 run execute as @a[limit=1] run function voltaik_musical_resources_other_dp:play_heliosvoicesampletwo

execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 64 if score @s DialogueIdNum1 matches 50 run title @a actionbar ["",{"text":"|[Helios]| :","color":"aqua"}," Ma"]
execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 64 if score @s DialogueIdNum1 matches 50 run execute as @a[limit=1] run function voltaik_musical_resources_other_dp:play_heliosvoicesampletwo

execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 66 if score @s DialogueIdNum1 matches 50 run title @a actionbar ["",{"text":"|[Helios]| :","color":"aqua"}," Mac"]
execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 66 if score @s DialogueIdNum1 matches 50 run execute as @a[limit=1] run function voltaik_musical_resources_other_dp:play_heliosvoicesampletwo

execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 68 if score @s DialogueIdNum1 matches 50 run title @a actionbar ["",{"text":"|[Helios]| :","color":"aqua"}," Maca"]
execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 68 if score @s DialogueIdNum1 matches 50 run execute as @a[limit=1] run function voltaik_musical_resources_other_dp:play_heliosvoicesampletwo

execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 70 if score @s DialogueIdNum1 matches 50 run title @a actionbar ["",{"text":"|[Helios]| :","color":"aqua"}," Macac"]
execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 70 if score @s DialogueIdNum1 matches 50 run execute as @a[limit=1] run function voltaik_musical_resources_other_dp:play_heliosvoicesampletwo

execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 72 if score @s DialogueIdNum1 matches 50 run title @a actionbar ["",{"text":"|[Helios]| :","color":"aqua"}," Macaco"]
execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 72 if score @s DialogueIdNum1 matches 50 run execute as @a[limit=1] run function voltaik_musical_resources_other_dp:play_heliosvoicesampletwo
#--------


# Reset SentenceProgress1 and DialogueIdNum1 after reaching 70
execute as @e[tag=LobbyHappiestDummy3] if score @s DialogueCounter1 matches 0 run scoreboard players set @s SentenceProgress1 0
#(CHANGE ID, MODIFY THIS ONE LINE:)
execute as @e[tag=LobbyHappiestDummy3] if score @s SentenceProgress1 matches 0 if score @s DialogueIdNum1 matches 50 run scoreboard players set @s DialogueIdNum1 0

# Function calls itself only if DialogueCounter1 > 1 (CHANGE FUNCTION NAME, MODIFY THIS ONE LINE:)
execute as @e[tag=LobbyHappiestDummy3] if score @s DialogueCounter1 matches 1.. run schedule function voltaik_momentum:play_dialogue_50 1t