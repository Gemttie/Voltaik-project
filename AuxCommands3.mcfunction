#WORLD COORDINATES
#World 1
500 70 13

#World 2
1000 70 13

#World 3
1500 70 13

#World 4
2000 70 13

#World 5
-26 70 500

#World 6
-26 70 1000

#World 7
-26 70 1500

#World 8
-26 70 2000

#World 9
-500 70 9

#World 10
-1000 70 9

#World 11
-1500 70 9

#World 12
-2000 70 9

#---------------

#WORLD SKYIES
#World 1:
/time set 13150


#Gravity modiying
#for mainlobby
/execute as @a at @s if entity @e[tag=LobbyHappiestDummy1,distance=..56] run scoreboard players set @s LocationNumberId 0 
/execute as @a if score @s LocationNumberId matches 0 run attribute @s forge:entity_gravity base set 0.08
#for worldplatform
/execute as @a at @s if entity @e[tag=LobbyHappiestDummy1,distance=56..170] run scoreboard players set @s LocationNumberId 1
/execute as @a if score @s LocationNumberId matches 1 run attribute @s forge:entity_gravity base set 0.025
#for world1
/execute as @a if score @s LocationNumberId matches 10 run attribute @s forge:entity_gravity base set 0.08

#LOCATION IDs:
Lobby : 0
LobbyWorldPlatform : 1
World1 : 10
