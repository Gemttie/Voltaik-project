
/execute as @e[tag=LobbyLineLightsFloorSyncDummy] if score @s LobbyLineLightsFloorDummiesSyncTimer1 >= @s AuxNumber40 if score @s LobbyLineLightsFloorDummiesSyncTimer1 <= @s AuxNumber70 run execute as @e[tag=LobbyLineLightsFloorDummy3a] at @s run tp ~ ~ ~0.15
/execute as @e[tag=LobbyLineLightsFloorSyncDummy] if score @s LobbyLineLightsFloorDummiesSyncTimer1 >= @s AuxNumber50 if score @s LobbyLineLightsFloorDummiesSyncTimer1 <= @s AuxNumber80 run execute as @e[tag=LobbyLineLightsFloorDummy3b] at @s run tp ~ ~ ~0.15
/execute as @e[tag=LobbyLineLightsFloorSyncDummy] if score @s LobbyLineLightsFloorDummiesSyncTimer1 >= @s AuxNumber60 if score @s LobbyLineLightsFloorDummiesSyncTimer1 <= @s AuxNumber90 run execute as @e[tag=LobbyLineLightsFloorDummy3c] at @s run tp ~ ~ ~0.15

/execute as @e[tag=LobbyLineLightsFloorSyncDummy] if score @s LobbyLineLightsFloorDummiesSyncTimer1 > @s AuxNumber60 if score @s LobbyLineLightsFloorDummiesSyncTimer1 <= @s AuxNumber70 run execute as @e[tag=LobbyLineLightsFloorDummy3a] at @s run tp ~0.2 ~ ~0.15
/execute as @e[tag=LobbyLineLightsFloorSyncDummy] if score @s LobbyLineLightsFloorDummiesSyncTimer1 > @s AuxNumber80 if score @s LobbyLineLightsFloorDummiesSyncTimer1 <= @s AuxNumber90 run execute as @e[tag=LobbyLineLightsFloorDummy3b] at @s run tp ~0.2 ~ ~0.15
/execute as @e[tag=LobbyLineLightsFloorSyncDummy] if score @s LobbyLineLightsFloorDummiesSyncTimer1 >= @s AuxNumber100 run execute as @e[tag=LobbyLineLightsFloorDummy3c] at @s run tp ~0.2 ~ ~0.15





/execute as @e[tag=LobbyLineLightsFloorSyncDummy] if score @s LobbyLineLightsFloorDummiesSyncTimer1 >= @s AuxNumber40 if score @s LobbyLineLightsFloorDummiesSyncTimer1 <= @s AuxNumber70 run execute as @e[tag=LobbyLineLightsFloorDummy4a] at @s run tp ~ ~ ~-0.15
/execute as @e[tag=LobbyLineLightsFloorSyncDummy] if score @s LobbyLineLightsFloorDummiesSyncTimer1 >= @s AuxNumber50 if score @s LobbyLineLightsFloorDummiesSyncTimer1 <= @s AuxNumber80 run execute as @e[tag=LobbyLineLightsFloorDummy4b] at @s run tp ~ ~ ~-0.15
/execute as @e[tag=LobbyLineLightsFloorSyncDummy] if score @s LobbyLineLightsFloorDummiesSyncTimer1 >= @s AuxNumber60 if score @s LobbyLineLightsFloorDummiesSyncTimer1 <= @s AuxNumber90 run execute as @e[tag=LobbyLineLightsFloorDummy4c] at @s run tp ~ ~ ~-0.15

/execute as @e[tag=LobbyLineLightsFloorSyncDummy] if score @s LobbyLineLightsFloorDummiesSyncTimer1 > @s AuxNumber60 if score @s LobbyLineLightsFloorDummiesSyncTimer1 <= @s AuxNumber70 run execute as @e[tag=LobbyLineLightsFloorDummy4a] at @s run tp ~0.2 ~ ~-0.15
/execute as @e[tag=LobbyLineLightsFloorSyncDummy] if score @s LobbyLineLightsFloorDummiesSyncTimer1 > @s AuxNumber80 if score @s LobbyLineLightsFloorDummiesSyncTimer1 <= @s AuxNumber90 run execute as @e[tag=LobbyLineLightsFloorDummy4b] at @s run tp ~0.2 ~ ~-0.15
/execute as @e[tag=LobbyLineLightsFloorSyncDummy] if score @s LobbyLineLightsFloorDummiesSyncTimer1 >= @s AuxNumber100 run execute as @e[tag=LobbyLineLightsFloorDummy4c] at @s run tp ~0.2 ~ ~-0.15




/execute as @e[tag=LobbyLineLightsFloorGroup3] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:light_blue_stained_glass replace minecraft:gray_stained_glass
/execute as @e[tag=LobbyLineLightsFloorGroup4] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:cyan_stained_glass replace minecraft:light_blue_stained_glass
/execute as @e[tag=LobbyLineLightsFloorGroup5] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:gray_stained_glass replace minecraft:light_blue_stained_glass
/execute as @e[tag=LobbyLineLightsFloorGroup5] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:gray_stained_glass replace minecraft:cyan_stained_glass

LobbyLineLightsFloorGroup3
LobbyLineLightsFloorGroup4
LobbyLineLightsFloorGroup5











#-------
/summon armor_stand -27.81 -41.5 10.00 {Invisible:0b,NoGravity:1b,Marker:1b,CustomName:'{"text":"Al usar este elevador","bold":true,"color":"gold"}',CustomNameVisible:1b,Tags:["LobbyMainElevatorDummyMessage1", "LobbyMainElevatorMessageGroup1"]}
/summon armor_stand -27.81 -42 10.00 {Invisible:0b,NoGravity:1b,Marker:1b,CustomName:'{"text":"Posicionarse lo más cerca al centro posible","bold":true,"color":"gold"}',CustomNameVisible:1b,Tags:["LobbyMainElevatorDummyMessage2", "LobbyMainElevatorMessageGroup1"]}
/summon armor_stand -27.81 -42.5 10.00 {Invisible:0b,NoGravity:1b,Marker:1b,CustomName:'{"text":"▼","bold":true,"color":"gold"}',CustomNameVisible:1b,Tags:["LobbyMainElevatorDummyMessage3", "LobbyMainElevatorMessageGroup1"]}

/execute as @e[tag=LobbyMainElevatorDummy1, limit=2] run execute if entity @e[type=player, distance=..9] run data merge entity @s {CustomNameVisible:1b}
/execute as @e[tag=LobbyMainElevatorDummy1, limit=2] run execute if entity @e[type=player, distance=9..] run data merge entity @s {CustomNameVisible:0b}


/summon armor_stand -27.81 10.5 10.00 {Invisible:0b,NoGravity:1b,Marker:1b,CustomName:'{"text":"Al usar este elevador","bold":true,"color":"gold"}',CustomNameVisible:1b,Tags:["LobbyMainElevatorDummyMessage4", "LobbyMainElevatorMessageGroup2"]}
/summon armor_stand -27.81 10 10.00 {Invisible:0b,NoGravity:1b,Marker:1b,CustomName:'{"text":"Posicionarse lo más cerca al centro posible","bold":true,"color":"gold"}',CustomNameVisible:1b,Tags:["LobbyMainElevatorDummyMessage5", "LobbyMainElevatorMessageGroup2"]}
/summon armor_stand -27.81 9.5 10.00 {Invisible:0b,NoGravity:1b,Marker:1b,CustomName:'{"text":"▼","bold":true,"color":"gold"}',CustomNameVisible:1b,Tags:["LobbyMainElevatorDummyMessage6", "LobbyMainElevatorMessageGroup2"]}

/execute as @e[tag=LobbyMainElevatorDummy2, limit=2] run execute if entity @e[type=player, distance=..9] run data merge entity @s {CustomNameVisible:1b}
/execute as @e[tag=LobbyMainElevatorDummy2, limit=2] run execute if entity @e[type=player, distance=9..] run data merge entity @s {CustomNameVisible:0b}

/scoreboard players add @e[tag=LobbyHappiestDummy1] LobbyElevatorMessageTimer 1
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer matches 150 run scoreboard players set @s LobbyElevatorMessageTimer 0

/execute as @e[tag=LobbyMainElevatorDummyMessage4] at @s if entity @e[type=player, distance=..9] run scoreboard players add @e[tag=LobbyH/execute as @e[tag=LobbyMainElevatorDummyMessage4] at @s if entity @e[type=player, distance=..9] run execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer2 <= @s AuxNumber100 run scoreboard players add @s LobbyElevatorMessageTimer2 1appiestDummy1] LobbyElevatorMessageTimer2 1
/execute as @e[tag=LobbyMainElevatorDummyMessage4] at @s if entity @e[type=player, distance=9..] run scoreboard players set @e[tag=LobbyHappiestDummy1] LobbyElevatorMessageTimer2 0

/execute as @e[tag=LobbyMainElevatorMessageGroup1] run execute if entity @e[type=player, distance=..9] run data merge entity @s {CustomNameVisible:1b}
/execute as @e[tag=LobbyMainElevatorMessageGroup1] run execute if entity @e[type=player, distance=9..] run data merge entity @s {CustomNameVisible:0b}


/execute as @e[tag=LobbyMainElevatorDummyMessage1] at @s if entity @e[type=player, distance=..9] run execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer <= @s AuxNumber100 run scoreboard players add @s LobbyElevatorMessageTimer 1
/execute as @e[tag=LobbyMainElevatorDummyMessage1] at @s if entity @e[type=player, distance=9..] run scoreboard players set @e[tag=LobbyHappiestDummy1] LobbyElevatorMessageTimer 0


/execute as @e[tag=LobbyMainElevatorDummyMessage4] at @s if entity @e[type=player, distance=9..] run scoreboard players set @e[tag=LobbyHappiestDummy1] LobbyElevatorMessageTimer2 0

/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer <= @s AuxNumber50 run execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomNameVisible:1b}
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer > @s AuxNumber50 run execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomNameVisible:0b}
/execute as @e[tag=LobbyMainElevatorDummyMessage1] at @s if entity @e[type=player, distance=..9] run execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer <= @s AuxNumber100 run scoreboard players add @s LobbyElevatorMessageTimer 1
#-------------


/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer <= @s AuxNumber50 run execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomNameVisible:1b}
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer > @s AuxNumber50 run execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer2 <= @s AuxNumber50 run execute as @e[tag=LobbyMainElevatorMessageGroup2] run data merge entity @s {CustomNameVisible:1b}
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer2 > @s AuxNumber50 run execute as @e[tag=LobbyMainElevatorMessageGroup2] run data merge entity @s {CustomNameVisible:0b}



/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer <= @s AuxNumber50 if score @s LobbyElevatorMessageTimer <= @s AuxNumber50 run execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomNameVisible:1b}
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer > @s AuxNumber50 run execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomNameVisible:0b}
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer2 <= @s AuxNumber50 run execute as @e[tag=LobbyMainElevatorMessageGroup2] run data merge entity @s {CustomNameVisible:1b}
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer2 > @s AuxNumber50 run execute as @e[tag=LobbyMainElevatorMessageGroup2] run data merge entity @s {CustomNameVisible:0b}


/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer <= @s AuxNumber50 if score @s LobbyElevatorMessageTimer > @s  run execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomNameVisible:1b}



/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer <= @s AuxNumber50 if score @s LobbyElevatorMessageTimer > @s AuxNumber0 run execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomNameVisible:1b}









/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer2 <= @s AuxNumber50 if score @s LobbyElevatorMessageTimer > @s AuxNumber0 run execute as @e[tag=LobbyMainElevatorMessageGroup2] run data merge entity @s {CustomNameVisible:1b}
















/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer <= @s AuxNumber50 run execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomNameVisible:1b}
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer > @s AuxNumber50 if score @s LobbyElevatorMessageTimer = @s AuxNumber0 run execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer2 <= @s AuxNumber50 run execute as @e[tag=LobbyMainElevatorMessageGroup2] run data merge entity @s {CustomNameVisible:1b}
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer2 > @s AuxNumber50 if score @s LobbyElevatorMessageTimer = @s AuxNumber0 run execute as @e[tag=LobbyMainElevatorMessageGroup2] run data merge entity @s {CustomNameVisible:0b}

# LobbyMainElevatorMessageGroup1
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer >= @s AuxNumber50 run execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomNameVisible:1b}
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer < @s AuxNumber50 run execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomNameVisible:0b}

# LobbyMainElevatorMessageGroup2
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer2 >= @s AuxNumber50 run execute as @e[tag=LobbyMainElevatorMessageGroup2] run data merge entity @s {CustomNameVisible:1b}
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer2 < @s AuxNumber50 run execute as @e[tag=LobbyMainElevatorMessageGroup2] run data merge entity @s {CustomNameVisible:0b}


# LobbyMainElevatorMessageGroup1
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer <= @s AuxNumber50 run execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomNameVisible:1b}
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer > @s AuxNumber50 run execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomNameVisible:0b}

# LobbyMainElevatorMessageGroup2
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer2 <= @s AuxNumber50 run execute as @e[tag=LobbyMainElevatorMessageGroup2] run data merge entity @s {CustomNameVisible:1b}
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer2 > @s AuxNumber50 run execute as @e[tag=LobbyMainElevatorMessageGroup2] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer2 > @s AuxNumber50 run execute as @e[tag=LobbyMainElevatorMessageGroup2] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer matches 0 run execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomNameVisible:0b}
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer2 matches 0 run execute as @e[tag=LobbyMainElevatorMessageGroup2] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer = @s AuxNumber50 run execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomNameVisible:1b}





















# LobbyMainElevatorMessageGroup1
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer < @s AuxNumber50 run execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomNameVisible:0b}
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer >= @s AuxNumber50 run execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomNameVisible:1b}


# LobbyMainElevatorMessageGroup2
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer2 < @s AuxNumber50 run execute as @e[tag=LobbyMainElevatorMessageGroup2] run data merge entity @s {CustomNameVisible:0b}
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer2 >= @s AuxNumber50 run execute as @e[tag=LobbyMainElevatorMessageGroup2] run data merge entity @s {CustomNameVisible:1b}



# Color #e59900
/data merge entity @e[tag=LobbyMainElevatorMessageGroup1] {CustomName:'{"color":"#e59900"}'}

# Color #d18b00
/data merge entity @e[tag=LobbyMainElevatorMessageGroup1] {CustomName:'{"color":"#d18b00"}'}

# Color #b97b00
/data merge entity @e[tag=LobbyMainElevatorMessageGroup1] {CustomName:'{"color":"#b97b00"}'}

# Color #9e6900
/data merge entity @e[tag=LobbyMainElevatorMessageGroup1] {CustomName:'{"color":"#9e6900"}'}

# Color #835700
/data merge entity @e[tag=LobbyMainElevatorMessageGroup1] {CustomName:'{"color":"#835700"}'}

# Color #634200
/data merge entity @e[tag=LobbyMainElevatorMessageGroup1] {CustomName:'{"color":"#634200"}'}

# Color #462f00
/data merge entity @e[tag=LobbyMainElevatorMessageGroup1] {CustomName:'{"color":"#462f00"}'}

# Color #312100
/data merge entity @e[tag=LobbyMainElevatorMessageGroup1] {CustomName:'{"color":"#312100"}'}

# Color #1a1100
/data merge entity @e[tag=LobbyMainElevatorMessageGroup1] {CustomName:'{"color":"#1a1100"}'}






#--------

# Color #e59900
/execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomName:'{"color":"#e59900"}'}

# Color #d18b00
/execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomName:'{"color":"#d18b00"}'}

# Color #b97b00
/execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomName:'{"color":"#b97b00"}'}

# Color #9e6900
/execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomName:'{"color":"#9e6900"}'}

# Color #835700
/execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomName:'{"color":"#835700"}'}

# Color #634200
/execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomName:'{"color":"#634200"}'}

# Color #462f00
/execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomName:'{"color":"#462f00"}'}

# Color #312100
/execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomName:'{"color":"#312100"}'}

# Color #1a1100
/execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomName:'{"color":"#1a1100"}'}




/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer >= @s AuxNumber50 run execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomNameVisible:1b}
/scoreboard players set @e[tag=LobbyHappiestDummy1] LobbyElevatorMsgToggle1 1

/execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomNameVisible:1b}

/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer >= @s AuxNumber50 if score @s LobbyElevatorMessageTimer >= @s AuxNumber50 run execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomNameVisible:1b}
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer >= @s AuxNumber50 if score @s LobbyElevatorMsgToggle1 matches 0 run execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomNameVisible:1b}


#--------


/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer < @s AuxNumber50 run execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomNameVisible:0b}
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer < @s AuxNumber50 run execute as @e[tag=LobbyMainElevatorMessageGroup1] run scoreboard players set @e[tag=LobbyHappiestDummy1] LobbyElevatorMsgToggle1 0
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer < @s AuxNumber50 run execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomName:'{"color":"#e59900"}'}

/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer >= @s AuxNumber50 run execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomNameVisible:1b}
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer >= @s AuxNumber50 if score @s LobbyElevatorMsgToggle1 matches 0 run execute as @e[tag=LobbyMainElevatorMessageGroup1] run setblock 9 -61 5 minecraft:redstone_block

/scoreboard players set @e[tag=LobbyHappiestDummy1] LobbyElevatorMsgToggle1 1
#colores
/setblock 9 -61 5 minecraft:air



/execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomName:'{"color":"#1a1100"}'}
/execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomName:'{"color":"#462f00"}'}
/execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomName:'{"color":"#835700"}'}
/execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomName:'{"color":"#b97b00"}'}
/execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomName:'{"color":"#e59900"}'}

# Color Change Sequences based on LobbyMessageColorTimer values

/scoreboard players set @e[tag=LobbyHappiestDummy1] LobbyElevatorMsgToggle1 1

/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyMessageColorTimer matches 5 run execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomName:'{"color":"#1a1100"}'}
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyMessageColorTimer matches 10 run execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomName:'{"color":"#462f00"}'}
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyMessageColorTimer matches 15 run execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomName:'{"color":"#835700"}'}
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyMessageColorTimer matches 20 run execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomName:'{"color":"#b97b00"}'}
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyMessageColorTimer matches 25 run execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomName:'{"color":"#e59900"}'}
/setblock 9 -61 5 minecraft:air


/execute as @e[tag=LobbyHappiestDummy1] run scoreboard players add @s LobbyMessageColorTimer 1
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyMessageColorTimer matches 51 run scoreboard players set @s LobbyMessageColorTimer 0

# Color Change Sequences based on LobbyMessageColorTimer values

/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyMessageColorTimer matches 1 run execute as @e[tag=LobbyMainElevatorMessageGroup2] run data merge entity @s {CustomName:'{"color":"#1a1100"}'}
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyMessageColorTimer matches 2 run execute as @e[tag=LobbyMainElevatorMessageGroup2] run data merge entity @s {CustomName:'{"color":"#462f00"}'}
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyMessageColorTimer matches 3 run execute as @e[tag=LobbyMainElevatorMessageGroup2] run data merge entity @s {CustomName:'{"color":"#835700"}'}
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyMessageColorTimer matches 4 run execute as @e[tag=LobbyMainElevatorMessageGroup2] run data merge entity @s {CustomName:'{"color":"#b97b00"}'}
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyMessageColorTimer matches 5 run execute as @e[tag=LobbyMainElevatorMessageGroup2] run data merge entity @s {CustomName:'{"color":"#e59900"}'}


/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer < @s AuxNumber50 run execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomNameVisible:0b}
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer >= @s AuxNumber50 run execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomNameVisible:1b}

/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer2 < @s AuxNumber50 run execute as @e[tag=LobbyMainElevatorMessageGroup2] run data merge entity @s {CustomNameVisible:0b}
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer2 >= @s AuxNumber50 run execute as @e[tag=LobbyMainElevatorMessageGroup2] run data merge entity @s {CustomNameVisible:1b}

/execute as @e[tag=LobbyHappiestDummy1] if score @s PassiveLobbyLightFlickerTimer matches 30 run data merge entity @e[tag=LobbyMainElevatorDummyMessage3, limit=1] {CustomNameVisible:0b} 
/execute as @e[tag=LobbyHappiestDummy1] if score @s PassiveLobbyLightFlickerTimer matches 59 run data merge entity @e[tag=LobbyMainElevatorDummyMessage3, limit=1] {CustomNameVisible:0b} 

/execute as @e[tag=LobbyHappiestDummy1] if score @s PassiveLobbyLightFlickerTimer matches 30 run execute as @e[tag=LobbyMainElevatorDummyMessage3, limit=1] run data merge entity @s {CustomNameVisible:0b} 
/execute as @e[tag=LobbyHappiestDummy1] if score @s PassiveLobbyLightFlickerTimer matches 59 run execute as @e[tag=LobbyMainElevatorDummyMessage3, limit=1] run data merge entity @s {CustomNameVisible:1b} 





/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer < @s AuxNumber50 run execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomNameVisible:0b}
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer >= @s AuxNumber50 run execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomNameVisible:1b}


/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer < @s AuxNumber50 if score @s PassiveLobbyLightFlickerTimer matches 30 run execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomNameVisible:0b}
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer < @s AuxNumber50 if score @s PassiveLobbyLightFlickerTimer <= @s AuxNumber30 run execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer >= @s AuxNumber50 if score @s PassiveLobbyLightFlickerTimer matches 59 run execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomNameVisible:1b}
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer >= @s AuxNumber50 if score @s PassiveLobbyLightFlickerTimer > @s AuxNumber30 run execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomNameVisible:1b}

/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer >= @s AuxNumber50 run execute as @e[tag=LobbyMainElevatorDummyMessage1] run data merge entity @s {CustomNameVisible:1b}
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer >= @s AuxNumber50 run execute as @e[tag=LobbyMainElevatorDummyMessage2] run data merge entity @s {CustomNameVisible:1b}
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer >= @s AuxNumber50 if score @s PassiveLobbyLightFlickerTimer < @s AuxNumber30 run execute as @e[tag=LobbyMainElevatorDummyMessage3] run data merge entity @s {CustomNameVisible:1b}
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer >= @s AuxNumber50 if score @s PassiveLobbyLightFlickerTimer >= @s AuxNumber30 run execute as @e[tag=LobbyMainElevatorDummyMessage3] run data merge entity @s {CustomNameVisible:0b}


/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer >= @s AuxNumber50 if score @s PassiveLobbyLightFlickerTimer < @s AuxNumber15 run execute as @e[tag=LobbyMainElevatorDummyMessage3] run data merge entity @s {CustomNameVisible:1b}
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer >= @s AuxNumber50 if score @s PassiveLobbyLightFlickerTimer >= @s AuxNumber15 if score @s PassiveLobbyLightFlickerTimer < @s AuxNumber30 run execute as @e[tag=LobbyMainElevatorDummyMessage3] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer >= @s AuxNumber50 if score @s PassiveLobbyLightFlickerTimer >= @s AuxNumber30  if score @s PassiveLobbyLightFlickerTimer < @s AuxNumber45 run execute as @e[tag=LobbyMainElevatorDummyMessage3] run data merge entity @s {CustomNameVisible:1b}
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer >= @s AuxNumber50 if score @s PassiveLobbyLightFlickerTimer >= @s AuxNumber45 run execute as @e[tag=LobbyMainElevatorDummyMessage3] run data merge entity @s {CustomNameVisible:0b}


# Show the name when conditions are met
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer >= @s AuxNumber50 if score @s PassiveLobbyLightFlickerTimer < @s AuxNumber15 run execute as @e[tag=LobbyMainElevatorDummyMessage3] run data merge entity @s {CustomNameVisible:1b}

# Hide the name when conditions are met
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer >= @s AuxNumber50 if score @s PassiveLobbyLightFlickerTimer >= @s AuxNumber15 if score @s PassiveLobbyLightFlickerTimer < @s AuxNumber30 run execute as @e[tag=LobbyMainElevatorDummyMessage3] run data merge entity @s {CustomNameVisible:0b}

# Show the name again when conditions are met
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer >= @s AuxNumber50 if score @s PassiveLobbyLightFlickerTimer >= @s AuxNumber30 if score @s PassiveLobbyLightFlickerTimer < @s AuxNumber45 run execute as @e[tag=LobbyMainElevatorDummyMessage3] run data merge entity @s {CustomNameVisible:1b}

# Hide the name when conditions are met
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer >= @s AuxNumber50 if score @s PassiveLobbyLightFlickerTimer >= @s AuxNumber45 run execute as @e[tag=LobbyMainElevatorDummyMessage3] run data merge entity @s {CustomNameVisible:0b}


/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer < @s AuxNumber50 run execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomNameVisible:0b}
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer >= @s AuxNumber50 run execute as @e[tag=LobbyMainElevatorDummyMessage1] run data merge entity @s {CustomNameVisible:1b}
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer >= @s AuxNumber50 run execute as @e[tag=LobbyMainElevatorDummyMessage2] run data merge entity @s {CustomNameVisible:1b}
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer >= @s AuxNumber50 if score @s PassiveLobbyLightFlickerTimer < @s AuxNumber30 run execute as @e[tag=LobbyMainElevatorDummyMessage3] run data merge entity @s {CustomNameVisible:1b}
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer >= @s AuxNumber50 if score @s PassiveLobbyLightFlickerTimer >= @s AuxNumber30 run execute as @e[tag=LobbyMainElevatorDummyMessage3] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer2 < @s AuxNumber50 run execute as @e[tag=LobbyMainElevatorMessageGroup2] run data merge entity @s {CustomNameVisible:0b}
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer2 >= @s AuxNumber50 run execute as @e[tag=LobbyMainElevatorDummyMessage4] run data merge entity @s {CustomNameVisible:1b}
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer2 >= @s AuxNumber50 run execute as @e[tag=LobbyMainElevatorDummyMessage5] run data merge entity @s {CustomNameVisible:1b}
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer2 >= @s AuxNumber50 if score @s PassiveLobbyLightFlickerTimer < @s AuxNumber30 run execute as @e[tag=LobbyMainElevatorDummyMessage6] run data merge entity @s {CustomNameVisible:1b}
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer2 >= @s AuxNumber50 if score @s PassiveLobbyLightFlickerTimer >= @s AuxNumber30 run execute as @e[tag=LobbyMainElevatorDummyMessage6] run data merge entity @s {CustomNameVisible:0b}




#-----------------------------

/summon armor_stand -16 -37 7 {NoGravity:1b,Invulnerable:1b,Invisible:0b,CustomName:'{"text":"LobbyLineLightsFloorDummy5a"}',CustomNameVisible:0b,Tags:["LobbyLineLightsFloorDummy5a", "LobbyLineLightsFloorGroup6"]}
/summon armor_stand -14 -37 7 {NoGravity:1b,Invulnerable:1b,Invisible:0b,CustomName:'{"text":"LobbyLineLightsFloorDummy6a"}',CustomNameVisible:0b,Tags:["LobbyLineLightsFloorDummy6a", "LobbyLineLightsFloorGroup6"]}
/summon armor_stand -12 -37 7 {NoGravity:1b,Invulnerable:1b,Invisible:0b,CustomName:'{"text":"LobbyLineLightsFloorDummy5b"}',CustomNameVisible:0b,Tags:["LobbyLineLightsFloorDummy5b", "LobbyLineLightsFloorGroup7"]}
/summon armor_stand -16 -37 12 {NoGravity:1b,Invulnerable:1b,Invisible:0b,CustomName:'{"text":"LobbyLineLightsFloorDummy6b"}',CustomNameVisible:0b,Tags:["LobbyLineLightsFloorDummy6b", "LobbyLineLightsFloorGroup7"]}
/summon armor_stand -14 -37 12 {NoGravity:1b,Invulnerable:1b,Invisible:0b,CustomName:'{"text":"LobbyLineLightsFloorDummy5c"}',CustomNameVisible:0b,Tags:["LobbyLineLightsFloorDummy5c", "LobbyLineLightsFloorGroup8"]}
/summon armor_stand -12 -37 12 {NoGravity:1b,Invulnerable:1b,Invisible:0b,CustomName:'{"text":"LobbyLineLightsFloorDummy6c"}',CustomNameVisible:0b,Tags:["LobbyLineLightsFloorDummy6c", "LobbyLineLightsFloorGroup8"]}

/execute as @e[tag=LobbyLineLightsFloorGroup6] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:light_blue_stained_glass replace minecraft:gray_stained_glass
/execute as @e[tag=LobbyLineLightsFloorGroup7] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:cyan_stained_glass replace minecraft:light_blue_stained_glass
/execute as @e[tag=LobbyLineLightsFloorGroup8] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:gray_stained_glass replace minecraft:light_blue_stained_glass
/execute as @e[tag=LobbyLineLightsFloorGroup8] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:gray_stained_glass replace minecraft:cyan_stained_glass

/execute as @e[tag=LobbyLineLightsFloorGroup6] at @s run tp @s ~-0.2 ~ ~
/execute as @e[tag=LobbyLineLightsFloorGroup7] at @s run tp @s ~-0.2 ~ ~
/execute as @e[tag=LobbyLineLightsFloorGroup8] at @s run tp @s ~-0.2 ~ ~

/execute as @e[tag=LobbyLineLightsFloorSyncDummy] if score @s LobbyLineLightsFloorDummiesSyncTimer1 matches 114 run execute as @e[tag=LobbyLineLightsFloorDummy5a] at @s run tp @s -16 ~ 7
/execute as @e[tag=LobbyLineLightsFloorSyncDummy] if score @s LobbyLineLightsFloorDummiesSyncTimer1 matches 114 run execute as @e[tag=LobbyLineLightsFloorDummy5b] at @s run tp @s -14 ~ 7
/execute as @e[tag=LobbyLineLightsFloorSyncDummy] if score @s LobbyLineLightsFloorDummiesSyncTimer1 matches 114 run execute as @e[tag=LobbyLineLightsFloorDummy5c] at @s run tp @s -12 ~ 7
/execute as @e[tag=LobbyLineLightsFloorSyncDummy] if score @s LobbyLineLightsFloorDummiesSyncTimer1 matches 114 run execute as @e[tag=LobbyLineLightsFloorDummy6a] at @s run tp @s -16 ~ 12
/execute as @e[tag=LobbyLineLightsFloorSyncDummy] if score @s LobbyLineLightsFloorDummiesSyncTimer1 matches 114 run execute as @e[tag=LobbyLineLightsFloorDummy6b] at @s run tp @s -14 ~ 12
/execute as @e[tag=LobbyLineLightsFloorSyncDummy] if score @s LobbyLineLightsFloorDummiesSyncTimer1 matches 114 run execute as @e[tag=LobbyLineLightsFloorDummy6c] at @s run tp @s -12 ~ 12

i want commands to replace all the x blocks with y blocks from -16 -41 3 to -31 -34 16
1stcommand: that but replace all light_blue_stained_glass with gray_stained_glass
1stcommand: that but replace all cyan_stained_glass with gray_stained_glass
 
 /fill -16 -41 3 -31 -34 16 gray_stained_glass replace light_blue_stained_glass
/fill -16 -41 3 -31 -34 16 gray_stained_glass replace cyan_stained_glass

/fill 18 -52 17 -19 -43 3 dustrial_decor:cyan_neon_light replace dustrial_decor:blue_neon_light

#start high graphics
# /setblock 12 -57 18 minecraft:redstone_block
# /setblock 12 -57 18 minecraft:glass
/setblock 21 -60 22 minecraft:redstone_block
/setblock 21 -60 22 minecraft:air
/setblock 18 -60 22 minecraft:redstone_block
/setblock 18 -60 22 minecraft:air
/data merge block 19 -60 21 {auto:0b}
/data merge block 20 -60 21 {auto:0b}
/fill -16 -41 3 -31 -34 16 gray_stained_glass replace light_blue_stained_glass
/fill -16 -41 3 -31 -34 16 gray_stained_glass replace cyan_stained_glass
/fill 18 -52 17 -19 -43 3 dustrial_decor:cyan_neon_light replace dustrial_decor:blue_neon_light
/data merge block 24 -60 21 {auto:0b}

/fill 22 -58 20 22 -56 20 minecraft:redstone_block
/fill 22 -58 20 22 -56 20 minecraft:air
/data merge block 20 -60 21 {auto:1b}
/data merge block 24 -60 21 {auto:1b}




#start high graphics
# /setblock 12 -57 18 minecraft:redstone_block
# /setblock 12 -57 18 minecraft:glass
/setblock 21 -60 22 minecraft:redstone_block
/setblock 21 -60 22 minecraft:air
/setblock 18 -60 22 minecraft:redstone_block
/setblock 18 -60 22 minecraft:air

/fill -16 -41 3 -31 -34 16 gray_stained_glass replace light_blue_stained_glass
/fill -16 -41 3 -31 -34 16 gray_stained_glass replace cyan_stained_glass
/fill 18 -52 17 -19 -43 3 dustrial_decor:cyan_neon_light replace dustrial_decor:blue_neon_light

/fill 22 -58 20 22 -56 20 minecraft:redstone_block
/fill 22 -58 20 22 -56 20 minecraft:air

/data merge block 19 -60 21 {auto:0b}
/data merge block 20 -60 21 {auto:1b}
/data merge block 24 -60 21 {auto:1b}

/execute as @e[tag=LobbyHappiestDummy1] run 



/summon armor_stand -19 -41 4 {NoGravity:1b,Invulnerable:1b,Invisible:0b,CustomName:'{"text":"LobbyLineLightsFloorDummy3a"}',CustomNameVisible:0b,Tags:["LobbyLineLightsFloorDummy3a", "LobbyLineLightsFloorGroup3"]}



/execute at @e[tag=MusicalLobbyDummy1] if @e[type=player, distance=..10] run scoreboard players @e[tag=MusicalLobbyDummy1] set MusicPlaying1Toggle 1

/execute at @e[tag=MusicalLobbyDummy1] if @e[type=player, distance=..10] run setblock -1 -60 -4 minecraft:redstone_block


/execute at @e[tag=MusicalLobbyDummy1] if @e[type=player, distance=..10] run playsound minecraft:music_disc.cat record @a[distance=..10] ~ ~ ~ 1 1

/execute at @e[tag=MusicalLobbyDummy1] if @e[type=player, distance=!..10] run setblock -1 -60 -4 minecraft:air
/execute at @e[tag=MusicalLobbyDummy1] if @e[type=player, distance=!..10] run scoreboard players @e[tag=MusicalLobbyDummy1] set MusicPlaying1Toggle 0

#--------------

/execute at @e[tag=MusicalLobbyDummy1, scores={MusicPlaying1Toggle=0}] if entity @a[distance=..10] run scoreboard players set @e[tag=MusicalLobbyDummy1] MusicPlaying1Toggle 1

/execute at @e[tag=MusicalLobbyDummy1, scores={MusicPlaying1Toggle=1}] if entity @a[distance=..10] run setblock -1 -60 -4 minecraft:redstone_block




/execute at @e[tag=MusicalLobbyDummy1, scores={MusicPlaying1Toggle=1}] unless entity @a[distance=..10] run setblock -1 -60 -4 minecraft:air

/execute at @e[tag=MusicalLobbyDummy1, scores={MusicPlaying1Toggle=1}] unless entity @a[distance=..10] run scoreboard players set @e[tag=MusicalLobbyDummy1] MusicPlaying1Toggle 0
#-----------------















#--------------
/execute at @e[tag=MusicalLobbyDummy1, scores={MusicPlaying1Toggle=0}] if entity @a[distance=..10] run scoreboard players set @e[tag=MusicalLobbyDummy1] MusicPlaying1Toggle 1
/execute at @e[tag=MusicalLobbyDummy1, scores={MusicPlaying1Toggle=1}] if entity @a[distance=..10] run setblock -1 -60 -4 minecraft:redstone_block


/execute at @e[tag=MusicalLobbyDummy1, scores={MusicPlaying1Toggle=1}] unless entity @a[distance=..10] run stopsound @a[distance=..100] record minecraft:music_disc.cat
/execute at @e[tag=MusicalLobbyDummy1, scores={MusicPlaying1Toggle=1}] unless entity @a[distance=..10] run setblock -1 -60 -4 minecraft:air
/execute at @e[tag=MusicalLobbyDummy1, scores={MusicPlaying1Toggle=1}] unless entity @a[distance=..10] run scoreboard players set @e[tag=MusicalLobbyDummy1] MusicPlaying1Toggle 0


/execute at @e[tag=MusicalLobbyDummy1, scores={MusicPlaying1Toggle=1}] if entity @a[distance=..10] run playsound minecraft:music_disc.cat background @a[distance=..10] ~ ~ ~ 1 1

#--------
/playsound minecraft:music.game music Ginnyd
#Detener sunicamente todas las canciones de game vanilla hahah, no detiene custom
/stopsound @a music minecraft:music.game






#---------platform

/summon armor_stand -23 72.85 7 {Tags:["CollectedStarsDummy1"],CustomNameVisible:1b,CustomName:'[{"text":"Estrellas recolectadas :","color":"#f5ed5f"}]',Invisible:1b,Marker:1b,Invulnerable:1b}
/summon armor_stand -23 72.35 7 {Tags:["CollectedStarsDummy2"],CustomNameVisible:1b,CustomName:'[{"text":"0 ✯","color":"#f5ed5f"}]',Invisible:1b,Marker:1b,Invulnerable:1b}

-23 87 7
/summon armor_stand -23 87.85 7 {Tags:["CollectedStarsDummy1"],CustomNameVisible:1b,CustomName:'[{"text":"Estrellas recolectadas :","color":"#f5ed5f"}]',Invisible:1b,Marker:1b,Invulnerable:1b}
/summon armor_stand -23 87.35 7 {Tags:["CollectedStarsDummy2"],CustomNameVisible:1b,CustomName:'[{"text":"0 ✯","color":"#f5ed5f"}]',Invisible:1b,Marker:1b,Invulnerable:1b}

-23 102 7
/summon armor_stand -23 102.85 7 {Tags:["CollectedStarsDummy1"],CustomNameVisible:1b,CustomName:'[{"text":"Estrellas recolectadas :","color":"#f5ed5f"}]',Invisible:1b,Marker:1b,Invulnerable:1b}
/summon armor_stand -23 102.35 7 {Tags:["CollectedStarsDummy2"],CustomNameVisible:1b,CustomName:'[{"text":"0 ✯","color":"#f5ed5f"}]',Invisible:1b,Marker:1b,Invulnerable:1b}

#light dummies 
#World1
/summon armor_stand -15.50 68.00 11.06 {Tags:["World1LightStartingDummy1"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}
/summon armor_stand -15.50 68.00 8.06 {Tags:["World1LightStartingDummy2"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players add @s PlatformActivationCount 1
/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players add @s PlatformActivationCount 1

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount <= @s AuxNumber110 run scoreboard players set @s PlatformActivationCount 0

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s PlatformActivationCount 0

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount > @s AuxNumber0 if score @s PlatformActivationCount < @s AuxNumber100 run execute as @e[tag=World1LightStartingDummy1] at @s run tp @s ~0.5 ~ ~

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches @s AuxNumber100 run execute as @e[tag=World1LightStartingDummy1] at @s run tp @s -23 ~ ~

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 100 run execute as @e[tag=World1LightStartingDummy1] at @s run tp @s -15.50 ~ ~


/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount > @s AuxNumber0 if score @s PlatformActivationCount < @s AuxNumber100 run execute as @e[tag=World1LightStartingDummy1] at @s run tp @s ~0.5 ~ ~
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount > @s AuxNumber0 if score @s PlatformActivationCount < @s AuxNumber100 run execute as @e[tag=World1LightStartingDummy2] at @s run tp @s ~0.5 ~ ~
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 100 run execute as @e[tag=World1LightStartingDummy1] at @s run tp @s -15.50 ~ ~
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 100 run execute as @e[tag=World1LightStartingDummy2] at @s run tp @s -15.50 ~ ~

#.--------
/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players add @s PlatformActivationCount 1
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount >= @s AuxNumber100 run scoreboard players set @s PlatformActivationCount 0

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount > @s AuxNumber0 if score @s PlatformActivationCount < @s AuxNumber100 run execute as @e[tag=World1LightStartingDummy1] at @s run tp @s ~0.25 ~ ~
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount > @s AuxNumber0 if score @s PlatformActivationCount < @s AuxNumber100 run execute as @e[tag=World1LightStartingDummy2] at @s run tp @s ~0.25 ~ ~
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount =  run execute as @e[tag=World1LightStartingDummy1] at @s run tp @s -15.50 ~ ~
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 100 run execute as @e[tag=World1LightStartingDummy2] at @s run tp @s -15.50 ~ ~

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber50 run execute as @e[tag=World1LightStartingDummy1]


#---
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount > @s AuxNumber0 if score @s PlatformActivationCount < @s AuxNumber50 run execute as @e[tag=World1LightStartingDummy1] at @s run tp @s ~0.25 ~ ~
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount > @s AuxNumber0 if score @s PlatformActivationCount < @s AuxNumber50 run execute as @e[tag=World1LightStartingDummy2] at @s run tp @s ~0.25 ~ ~
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber50 run kill @e[tag=World1LightStartingDummy1]

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber50 run setblock -6 -60 22 minecraft:redstone_block

/execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-1 ^-1 ^ ^-1 dustrial_decor:sheet_metal_plating_slab[type=top]
#----


/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 150 run execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-1 ^-1 ^ ^-1 dustrial_decor:sheet_metal_plating_slab[type=top]
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 150 run execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-2 ^-1 ^ ^-2 dustrial_decor:cast_iron_brick_slab[type=top]

/execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s if score @s PlatformActivationCount matches 160 run fill ^0 ^ ^-2 ^-1 ^ ^-2 dustrial_decor:cast_iron_brick_slab[type=top]
/execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s if score @s PlatformActivationCount matches 170 run fill ^0 ^ ^-3 ^-1 ^ ^-3 dustrial_decor:sheet_metal_plating_slab[type=top]
/execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-4 ^-1 ^ ^-4 dustrial_decor:cast_iron_brick_slab[type=top]
/execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-5 ^-1 ^ ^-5 dustrial_decor:sheet_metal_plating_slab[type=top]
/execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-6 ^-1 ^ ^-6 dustrial_decor:cast_iron_brick_slab[type=top]
/execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-7 ^-1 ^ ^-7 dustrial_decor:sheet_metal_plating_slab[type=top]
/execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-8 ^-1 ^ ^-8 dustrial_decor:cast_iron_brick_slab[type=top]
/execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-9 ^-1 ^ ^-9 dustrial_decor:sheet_metal_plating_slab[type=top]
/execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-10 ^-1 ^ ^-10 dustrial_decor:cast_iron_brick_slab[type=top]
/execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-11 ^-1 ^ ^-11 dustrial_decor:sheet_metal_plating_slab[type=top]
/execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-12 ^-1 ^ ^-12 dustrial_decor:cast_iron_brick_slab[type=top]
/execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-13 ^-1 ^ ^-13 dustrial_decor:sheet_metal_plating_slab[type=top]
/execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-14 ^-1 ^ ^-14 dustrial_decor:cast_iron_brick_slab[type=top]
/execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-15 ^-1 ^ ^-15 dustrial_decor:sheet_metal_plating_slab[type=top]
/execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-16 ^-1 ^ ^-16 dustrial_decor:cast_iron_brick_slab[type=top]
/execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-17 ^-1 ^ ^-17 dustrial_decor:sheet_metal_plating_slab[type=top]






/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 150 run execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-1 ^-1 ^ ^-1 dustrial_decor:sheet_metal_plating_slab[type=top]
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 160 run execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-2 ^-1 ^ ^-2 dustrial_decor:cast_iron_brick_slab[type=top]
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 170 run execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-3 ^-1 ^ ^-3 dustrial_decor:sheet_metal_plating_slab[type=top]
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 180 run execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-4 ^-1 ^ ^-4 dustrial_decor:cast_iron_brick_slab[type=top]
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 190 run execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-5 ^-1 ^ ^-5 dustrial_decor:sheet_metal_plating_slab[type=top]
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 200 run execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-6 ^-1 ^ ^-6 dustrial_decor:cast_iron_brick_slab[type=top]
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 210 run execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-7 ^-1 ^ ^-7 dustrial_decor:sheet_metal_plating_slab[type=top]
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 220 run execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-8 ^-1 ^ ^-8 dustrial_decor:cast_iron_brick_slab[type=top]
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 230 run execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-9 ^-1 ^ ^-9 dustrial_decor:sheet_metal_plating_slab[type=top]
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 240 run execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-10 ^-1 ^ ^-10 dustrial_decor:cast_iron_brick_slab[type=top]
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 250 run execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-11 ^-1 ^ ^-11 dustrial_decor:sheet_metal_plating_slab[type=top]
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 260 run execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-12 ^-1 ^ ^-12 dustrial_decor:cast_iron_brick_slab[type=top]
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 270 run execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-13 ^-1 ^ ^-13 dustrial_decor:sheet_metal_plating_slab[type=top]
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 280 run execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-14 ^-1 ^ ^-14 dustrial_decor:cast_iron_brick_slab[type=top]
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 290 run execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-15 ^-1 ^ ^-15 dustrial_decor:sheet_metal_plating_slab[type=top]
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 300 run execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-16 ^-1 ^ ^-16 dustrial_decor:cast_iron_brick_slab[type=top]
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 310 run execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-17 ^-1 ^ ^-17 dustrial_decor:sheet_metal_plating_slab[type=top]
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 320 run execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-18 ^-1 ^ ^-18 dustrial_decor:cast_iron_brick_slab[type=top]





#----
/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 0 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"0 ✯","color":"#f5ed5f"}'}
/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 1 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"1 ✯","color":"#f5ed5f"}'}
/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 2 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"2 ✯","color":"#f5ed5f"}'}
/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 3 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"3 ✯","color":"#f5ed5f"}'}
/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 4 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"4 ✯","color":"#f5ed5f"}'}
/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 5 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"5 ✯","color":"#f5ed5f"}'}
/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 6 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"6 ✯","color":"#f5ed5f"}'}
/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 7 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"7 ✯","color":"#f5ed5f"}'}
/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 8 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"8 ✯","color":"#f5ed5f"}'}
/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 9 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"9 ✯","color":"#f5ed5f"}'}
/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 10 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"10 ✯","color":"#f5ed5f"}'}

/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 11 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"11 ✯","color":"#f5ed5f"}'}
/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 12 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"12 ✯","color":"#f5ed5f"}'}
/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 13 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"13 ✯","color":"#f5ed5f"}'}
/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 14 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"14 ✯","color":"#f5ed5f"}'}
/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 15 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"15 ✯","color":"#f5ed5f"}'}
/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 16 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"16 ✯","color":"#f5ed5f"}'}
/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 17 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"17 ✯","color":"#f5ed5f"}'}
/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 18 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"18 ✯","color":"#f5ed5f"}'}
/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 19 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"19 ✯","color":"#f5ed5f"}'}
/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 20 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"20 ✯","color":"#f5ed5f"}'}

/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 21 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"21 ✯","color":"#f5ed5f"}'}
/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 22 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"22 ✯","color":"#f5ed5f"}'}
/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 23 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"23 ✯","color":"#f5ed5f"}'}
/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 24 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"24 ✯","color":"#f5ed5f"}'}
/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 25 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"25 ✯","color":"#f5ed5f"}'}
/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 26 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"26 ✯","color":"#f5ed5f"}'}
/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 27 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"27 ✯","color":"#f5ed5f"}'}
/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 28 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"28 ✯","color":"#f5ed5f"}'}
/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 29 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"29 ✯","color":"#f5ed5f"}'}
/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 30 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"30 ✯","color":"#f5ed5f"}'}

/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 31 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"31 ✯","color":"#f5ed5f"}'}
/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 32 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"32 ✯","color":"#f5ed5f"}'}
/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 33 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"33 ✯","color":"#f5ed5f"}'}
/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 34 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"34 ✯","color":"#f5ed5f"}'}
/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 35 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"35 ✯","color":"#f5ed5f"}'}
/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 36 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"36 ✯","color":"#f5ed5f"}'}
/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 37 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"37 ✯","color":"#f5ed5f"}'}
/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 38 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"38 ✯","color":"#f5ed5f"}'}
/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 39 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"39 ✯","color":"#f5ed5f"}'}
/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 40 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"40 ✯","color":"#f5ed5f"}'}

/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 41 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"41 ✯","color":"#f5ed5f"}'}
/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 42 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"42 ✯","color":"#f5ed5f"}'}
/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 43 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"43 ✯","color":"#f5ed5f"}'}
/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 44 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"44 ✯","color":"#f5ed5f"}'}
/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 45 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"45 ✯","color":"#f5ed5f"}'}
/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 46 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"46 ✯","color":"#f5ed5f"}'}
/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 47 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"47 ✯","color":"#f5ed5f"}'}
/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 48 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"48 ✯","color":"#f5ed5f"}'}
/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 49 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"49 ✯","color":"#f5ed5f"}'}
/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 50 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"50 ✯","color":"#f5ed5f"}'}



#---------
/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 0 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"0 ✯","color":"#f5ed5f"}'}

/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 1 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"1 ✯","color":"#f5ed5f"}'}

/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 2 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"2 ✯","color":"#f5ed5f"}'}

/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 3 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"3 ✯","color":"#f5ed5f"}'}

/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 4 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"4 ✯","color":"#f5ed5f"}'}

/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 5 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"5 ✯","color":"#f5ed5f"}'}

/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 6 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"6 ✯","color":"#f5ed5f"}'}

/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 7 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"7 ✯","color":"#f5ed5f"}'}

/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 8 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"8 ✯","color":"#f5ed5f"}'}

/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 9 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"9 ✯","color":"#f5ed5f"}'}

/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 10 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"10 ✯","color":"#f5ed5f"}'}

/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 11 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"11 ✯","color":"#f5ed5f"}'}

/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 12 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"12 ✯","color":"#f5ed5f"}'}

/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 13 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"13 ✯","color":"#f5ed5f"}'}

/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 14 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"14 ✯","color":"#f5ed5f"}'}

/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 15 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"15 ✯","color":"#f5ed5f"}'}

/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 16 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"16 ✯","color":"#f5ed5f"}'}

/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 17 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"17 ✯","color":"#f5ed5f"}'}

/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 18 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"18 ✯","color":"#f5ed5f"}'}

/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 19 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"19 ✯","color":"#f5ed5f"}'}

/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 20 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"20 ✯","color":"#f5ed5f"}'}

/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 21 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"21 ✯","color":"#f5ed5f"}'}

/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 22 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"22 ✯","color":"#f5ed5f"}'}

/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 23 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"23 ✯","color":"#f5ed5f"}'}

/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 24 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"24 ✯","color":"#f5ed5f"}'}

/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 25 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"25 ✯","color":"#f5ed5f"}'}

/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 26 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"26 ✯","color":"#f5ed5f"}'}

/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 27 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"27 ✯","color":"#f5ed5f"}'}

/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 28 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"28 ✯","color":"#f5ed5f"}'}

/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 29 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"29 ✯","color":"#f5ed5f"}'}

/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 30 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"30 ✯","color":"#f5ed5f"}'}

/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 31 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"31 ✯","color":"#f5ed5f"}'}

/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 32 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"32 ✯","color":"#f5ed5f"}'}

/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 33 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"33 ✯","color":"#f5ed5f"}'}

/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 34 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"34 ✯","color":"#f5ed5f"}'}

/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 35 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"35 ✯","color":"#f5ed5f"}'}

/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 36 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"36 ✯","color":"#f5ed5f"}'}

/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 37 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"37 ✯","color":"#f5ed5f"}'}

/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 38 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"38 ✯","color":"#f5ed5f"}'}

/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 46 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"46 ✯","color":"#f5ed5f"}'}

/execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected matches 56 run data merge entity @e[tag=CollectedStarsDummy2,limit=1] {CustomName:'{"text":"56 ✯","color":"#f5ed5f"}'}


#---------
/summon armor_stand -17.50 70.00 10.00 {Tags:["World1ProximitytriggerDummy","WorldGeneralProximityTriggerDummy"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"World 1 Proximity Trigger"}',CustomNameVisible:0b}


/summon armor_stand -17.30 73.75 10.00 {Tags:["World1DoorInfoDummy1","World1DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Mundo 1","color":"#ffffff"}',CustomNameVisible:1b,Rotation:[0f,0f]}
/summon armor_stand -17.30 73.20 10.00 {Tags:["World1DoorInfoDummy2","World1DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"JUNGLA ETÉREA","color":"#7bbe3c"}',CustomNameVisible:1b,Rotation:[0f,0f]}
/summon armor_stand -17.30 72.75 10.00 {Tags:["World1DoorInfoDummy3","World1DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Dificultad: 1✯","color":"#ffffff","italic":true}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -17.30 71.60 10.00 {Tags:["World1DoorInfoDummy4","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Mín. Req. para desbloqueo: 0✯","color":"#ffffff"}',CustomNameVisible:1b,Rotation:[0f,0f]}

#the first line must flicker at proximity
/summon armor_stand -17.30 71.10 10.00 {Tags:["World1DoorInfoDummy5","World1DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Recursos insuficientes...","color":"#cf3b3b"}',CustomNameVisible:1b,Rotation:[0f,0f]}

#the first line must flicker at proximity
/summon armor_stand -17.30 71.10 10.00 {Tags:["World1DoorInfoDummy6","World1DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Requisitos cumplidos!","color":"#6ee524"}',CustomNameVisible:1b,Rotation:[0f,0f]}
/summon armor_stand -17.30 70.75 10.00 {Tags:["World1DoorInfoDummy7","World1DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Haz click en la opción para","color":"#6ee524"}',CustomNameVisible:1b,Rotation:[0f,0f]}
/summon armor_stand -17.30 70.50 10.00 {Tags:["World1DoorInfoDummy8","World1DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"abrir esta puerta...","color":"#6ee524"}',CustomNameVisible:1b,Rotation:[0f,0f]}

#-------------------------------------------------------

/execute as @e[tag=World1ProximitytriggerDummy] at @s if entity @p[distance=..8] run execute as @e[tag=LobbyHappiestDummy2] if score @s WorldDoorTextTimer >= @s AuxNumber30 run scoreboard players set @s WorldDoorTextTimer 0

/execute as @e[tag=World1ProximitytriggerDummy] at @s if entity @p[distance=..8] unless entity @e[tag=World1DoorInfoDummy5, distance=..3] run execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected < @s AuxNumber0 run setblock 7 -52 18 minecraft:redstone_block
/setblock 7 -52 18 air

/execute as @e[tag=World1ProximitytriggerDummy] at @s if entity @p[distance=..8] unless entity @e[tag=World1DoorInfoDummy8, distance=..3] run execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected >= @s AuxNumber0 run setblock 7 -60 18 minecraft:redstone_block
/setblock 7 -60 18 air

/execute as @e[tag=World1ProximitytriggerDummy] at @s if entity @p[distance=..8] run execute as @e[tag=LobbyHappiestDummy2] if score @s World1ProximityDoorStatus matches 0 run scoreboard players add @s WorldDoorTextTimer 1


/execute as @e[tag= LobbyHappiestDummy2] if score @s World1ProximityDoorStatus matches 0 if score @s WorldDoorTextTimer < @s AuxNumber15 run execute as @e[tag=World1DoorInfoGroup2] run data merge entity @s {CustomNameVisible:0b}
/execute as @e[tag= LobbyHappiestDummy2] if score @s World1ProximityDoorStatus matches 0 if score @s WorldDoorTextTimer > @s AuxNumber15 run execute as @e[tag=World1DoorInfoGroup2] run data merge entity @s {CustomNameVisible:1b}
/execute as @e[tag= LobbyHappiestDummy2] if score @s World1ProximityDoorStatus matches 0 if score @s WorldDoorTextTimer = @s AuxNumber15 run execute at @e[tag=World1ProximitytriggerDummy] if entity @e[tag=World1DoorInfoDummy5, distance=..3] run playsound alexsmobs:enderiophage_squish master @a[distance=..5] ~ ~ ~ 0.8 1
/execute as @e[tag= LobbyHappiestDummy2] if score @s World1ProximityDoorStatus matches 0 if score @s WorldDoorTextTimer = @s AuxNumber15 run execute at @e[tag=World1ProximitytriggerDummy] if entity @e[tag=World1DoorInfoDummy8, distance=..3] run playsound spartanweaponry:throwing_weapon_loyalty_return master @a[distance=..5] ~ ~ ~ 0.8 2
/execute as @e[tag=LobbyHappiestDummy2] if score @s World1ProximityDoorStatus matches 1 run execute as @e[tag=World1DoorInfoGroup2] run data merge entity @s {CustomNameVisible:0b}
/execute as @e[tag=LobbyHappiestDummy2] if score @s World1ProximityDoorStatus matches 1 run execute as @e[tag=World1DoorInfoDummy4] run data merge entity @s {CustomNameVisible:0b}
/execute as @e[tag=World1ProximitytriggerDummy] at @s if entity @p[distance=..8] run execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected >= @s AuxNumber0 if score @s World1ProximityDoorStatus matches 0 if score @s WorldDoorTextTimer matches 15 run setblock 8 -60 18 minecraft:redstone_block
/execute as @e[tag=LobbyHappiestDummy2] if score @s World1ProximityDoorStatus matches 1 run setblock 8 -60 18 air
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 320 run execute at @e[tag=World1ProximitytriggerDummy] run playsound scalinghealth:heart_crystal_use master @a[distance=..8] ~ ~ ~ 1 0.5


/execute as @e[tag=WorldGeneralProximityTriggerDummy] at @s if entity @p[distance=8..] run execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s WorldDoorTextTimer 0
/execute as @e[tag=WorldGeneralProximityTriggerDummy] at @s if entity @p[distance=14..] run execute as @e[tag=World1DoorInfoGroup1] run data merge entity @s {CustomNameVisible:0b}
/execute as @e[tag=WorldGeneralProximityTriggerDummy] at @s if entity @p[distance=14..] run execute as @e[tag=World1DoorInfoDummy4] run data merge entity @s {CustomNameVisible:0b}
/execute as @e[tag=WorldGeneralProximityTriggerDummy] at @s if entity @p[distance=..14] run execute as @e[tag=World1DoorInfoGroup1] run data merge entity @s {CustomNameVisible:1b}
/execute as @e[tag=LobbyHappiestDummy2] if score @s World1ProximityDoorStatus matches 0 run execute as @e[tag=WorldGeneralProximityTriggerDummy] at @s if entity @p[distance=..14] run execute as @e[tag=World1DoorInfoDummy4] run data merge entity @s {CustomNameVisible:1b}

#single command block
/tellraw @p {"text":"[DESBLOQUEAR]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World1ProximityDoorStatus 1"}}


/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount > @s AuxNumber0 if score @s PlatformActivationCount < @s AuxNumber150 run execute as @e[tag=World1LightStartingDummy1] at @s run tp @s ~0.25 ~ ~
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount > @s AuxNumber0 if score @s PlatformActivationCount < @s AuxNumber150 run execute as @e[tag=World1LightStartingDummy2] at @s run tp @s ~0.25 ~ ~
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run kill @e[tag=World1LightStartingDummy1]
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run kill @e[tag=World1LightStartingDummy2]
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber0 run setblock -6 -60 22 minecraft:redstone_block
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber0 run setblock -6 -60 22 minecraft:air
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber50 run setblock -6 -60 22 minecraft:redstone_block
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber50 run setblock -6 -60 22 minecraft:air
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 140 run setblock -4 -60 22 minecraft:redstone_block
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 140 run setblock -4 -60 22 minecraft:air
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 140 run 
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 330 run data merge block -8 -60 22 {auto:0b}
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 330 run execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s PlatformActivationCount 0

/execute as @e[tag=LobbyHappiestDummy2] if score @s World1ProximityDoorStatus matches 0 run scoreboard players add @s World1AuxToggle 1
/execute as @e[tag=LobbyHappiestDummy2] if score @s World1ProximityDoorStatus matches 0 if score @s World1AuxToggle >= @s AuxNumber90 run scoreboard players set @s World1AuxToggle 1
/execute as @e[tag=LobbyHappiestDummy2] if score @s World1AuxToggle >= @s AuxNumber1 if score @s World1ProximityDoorStatus matches 1 run setblock -6 -60 22 minecraft:redstone_block
/execute as @e[tag=LobbyHappiestDummy2] if score @s World1AuxToggle >= @s AuxNumber1 if score @s World1ProximityDoorStatus matches 1 run setblock -6 -60 22 minecraft:air
/execute as @e[tag=LobbyHappiestDummy2] if score @s World1AuxToggle >= @s AuxNumber1 if score @s World1ProximityDoorStatus matches 1 run data merge block -8 -60 22 {auto:1b}
/execute as @e[tag=LobbyHappiestDummy2] if score @s World1AuxToggle >= @s AuxNumber1 if score @s World1ProximityDoorStatus matches 1 run data merge block -6 -60 20 {auto:1b}
/execute as @e[tag=LobbyHappiestDummy2] if score @s World1AuxToggle >= @s AuxNumber1 if score @s World1ProximityDoorStatus matches 1 run scoreboard players set @s World1AuxToggle 0
/execute as @e[tag=WorldGeneralProximityTriggerDummy] at @s if entity @p[distance=8..] run setblock 8 -60 18 minecraft:air



#for something big achieved
/execute at @e[tag=World1ProximitytriggerDummy] run playsound minecraft:ui.toast.challenge_complete master @a[distance=..8] ~ ~ ~ 1 0.1

#for each of the bridge slabs beign generated
/execute at @e[tag=World1ProximitytriggerDummy] run playsound minecraft:ui.toast.in master @a[distance=..8] ~ ~ ~ 1 0.1
#for the world module being lit
/execute at @e[tag=World1ProximitytriggerDummy] run playsound minecraft:block.end_portal.spawn master @a[distance=..8] ~ ~ ~ 0.7 0.1 
#power outage
/playsound alexsmobs:april_fools_power_outage master Ginnyd ~ ~ ~ 1 2
#dummylightbridge creation
/execute at @e[tag=World1ProximitytriggerDummy] run playsound alexsmobs:void_portal_open master @a[distance=..8] ~ ~ ~ 0.23 2
#worlddoor open
/execute at @e[tag=World1ProximitytriggerDummy] run playsound scalinghealth:heart_crystal_use master @a[distance=..8] ~ ~ ~ 1 0.5

#forest ambience
/playsound nmcmobs:fairy_ambient master Ginnyd ~ ~ ~ 1 1
/playsound nmcmobs:mystical_1 master Ginnyd ~ ~ ~ 1 1
/playsound nmcmobs:mystical_1 master Ginnyd ~ ~ ~ 1 0.1
/playsound nmcmobs:mystical_2 master Ginnyd ~ ~ ~ 1 1
/playsound nmcmobs:mystical_2 master Ginnyd ~ ~ ~ 1 0.1
/playsound nmcmobs:mystical_3 master Ginnyd ~ ~ ~ 1 1
/playsound nmcmobs:mystical_3 master Ginnyd ~ ~ ~ 1 0.1
/playsound nmcmobs:mystical_4 master Ginnyd ~ ~ ~ 1 1
/playsound nmcmobs:mystical_4 master Ginnyd ~ ~ ~ 1 0.1
/playsound nmcmobs:mystical_5 master Ginnyd ~ ~ ~ 1 1
/playsound nmcmobs:mystical_5 master Ginnyd ~ ~ ~ 1 0.1


#generate bridge

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 150 run execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-1 ^-1 ^ ^-1 dustrial_decor:sheet_metal_plating_slab[type=top]


/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 160 run execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-2 ^-1 ^ ^-2 dustrial_decor:cast_iron_brick_slab[type=top]
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 170 run execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-3 ^-1 ^ ^-3 dustrial_decor:sheet_metal_plating_slab[type=top]
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 180 run execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-4 ^-1 ^ ^-4 dustrial_decor:cast_iron_brick_slab[type=top]
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 190 run execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-5 ^-1 ^ ^-5 dustrial_decor:sheet_metal_plating_slab[type=top]
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 200 run execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-6 ^-1 ^ ^-6 dustrial_decor:cast_iron_brick_slab[type=top]
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 210 run execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-7 ^-1 ^ ^-7 dustrial_decor:sheet_metal_plating_slab[type=top]
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 220 run execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-8 ^-1 ^ ^-8 dustrial_decor:cast_iron_brick_slab[type=top]
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 230 run execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-9 ^-1 ^ ^-9 dustrial_decor:sheet_metal_plating_slab[type=top]
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 240 run execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-10 ^-1 ^ ^-10 dustrial_decor:cast_iron_brick_slab[type=top]
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 250 run execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-11 ^-1 ^ ^-11 dustrial_decor:sheet_metal_plating_slab[type=top]
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 260 run execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-12 ^-1 ^ ^-12 dustrial_decor:cast_iron_brick_slab[type=top]
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 270 run execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-13 ^-1 ^ ^-13 dustrial_decor:sheet_metal_plating_slab[type=top]
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 280 run execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-14 ^-1 ^ ^-14 dustrial_decor:cast_iron_brick_slab[type=top]
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 290 run execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-15 ^-1 ^ ^-15 dustrial_decor:sheet_metal_plating_slab[type=top]
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 300 run execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-16 ^-1 ^ ^-16 dustrial_decor:cast_iron_brick_slab[type=top]
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 310 run execute as @e[tag=WorldModulePassingBridgeGenerator1] at @s run fill ^0 ^ ^-17 ^-1 ^ ^-17 dustrial_decor:sheet_metal_plating_slab[type=top]
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 320 run kill @e[tag=WorldModulePassingBridgeGenerator1]

#generate and move worldDoor after world is activated
/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s WorldDoorGeneralTimer 0














#FINALLY DOOR CODE DONE
#-----------
# WORLD1 1
#-----------
#SETUP CODE FOR WORLD1
#-----------
/scoreboard objectives add World1AuxToggle dummy

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World1AuxToggle 1

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World1ProximityDoorStatus 0
/scoreboard objectives add  dummy

/summon armor_stand -17.50 70.00 10.00 {Tags:["World1ProximitytriggerDummy","WorldGeneralProximityTriggerDummy"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"World 1 Proximity Trigger"}',CustomNameVisible:0b}

/summon armor_stand -17.30 73.75 10.00 {Tags:["World1DoorInfoDummy1","World1DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Mundo 1","color":"#ffffff"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -17.30 73.20 10.00 {Tags:["World1DoorInfoDummy2","World1DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"JUNGLA ETÉREA","color":"#7bbe3c"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -17.30 72.75 10.00 {Tags:["World1DoorInfoDummy3","World1DoorInfoGroup1","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Dificultad: 1✯","color":"#ffffff","italic":true}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -17.30 71.60 10.00 {Tags:["World1DoorInfoDummy4","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Mín. Req. para desbloqueo: 0✯","color":"#ffffff"}',CustomNameVisible:1b,Rotation:[0f,0f]}


#-----------

#--
#CodeBlock 1
#--
/execute as @e[tag=World1ProximitytriggerDummy] at @s if entity @p[distance=..8] run execute as @e[tag=LobbyHappiestDummy2] if score @s WorldDoorTextTimer >= @s AuxNumber30 run scoreboard players set @s WorldDoorTextTimer 0

/execute as @e[tag=World1ProximitytriggerDummy] at @s if entity @p[distance=..8] unless entity @e[tag=World1DoorInfoDummy5, distance=..3] run execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected < @s AuxNumber0 run setblock 7 -52 18 minecraft:redstone_block

/setblock 7 -52 18 air

/execute as @e[tag=World1ProximitytriggerDummy] at @s if entity @p[distance=..8] unless entity @e[tag=World1DoorInfoDummy8, distance=..3] run execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected >= @s AuxNumber0 run setblock 7 -60 18 minecraft:redstone_block

/setblock 7 -60 18 air

/execute as @e[tag=World1ProximitytriggerDummy] at @s if entity @p[distance=..8] run execute as @e[tag=LobbyHappiestDummy2] if score @s World1ProximityDoorStatus matches 0 run scoreboard players add @s WorldDoorTextTimer 1

/execute as @e[tag= LobbyHappiestDummy2] if score @s World1ProximityDoorStatus matches 0 if score @s WorldDoorTextTimer < @s AuxNumber15 run execute as @e[tag=World1DoorInfoGroup2] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag= LobbyHappiestDummy2] if score @s World1ProximityDoorStatus matches 0 if score @s WorldDoorTextTimer > @s AuxNumber15 run execute as @e[tag=World1DoorInfoGroup2] run data merge entity @s {CustomNameVisible:1b}

/execute as @e[tag= LobbyHappiestDummy2] if score @s World1ProximityDoorStatus matches 0 if score @s WorldDoorTextTimer = @s AuxNumber15 run execute at @e[tag=World1ProximitytriggerDummy] if entity @e[tag=World1DoorInfoDummy5, distance=..3] run playsound alexsmobs:enderiophage_squish master @a[distance=..5] ~ ~ ~ 0.8 1

/execute as @e[tag= LobbyHappiestDummy2] if score @s World1ProximityDoorStatus matches 0 if score @s WorldDoorTextTimer = @s AuxNumber15 run execute at @e[tag=World1ProximitytriggerDummy] if entity @e[tag=World1DoorInfoDummy8, distance=..3] run playsound spartanweaponry:throwing_weapon_loyalty_return master @a[distance=..5] ~ ~ ~ 0.8 2

/execute as @e[tag=LobbyHappiestDummy2] if score @s World1ProximityDoorStatus matches 1 run execute as @e[tag=World1DoorInfoGroup2] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World1ProximityDoorStatus matches 1 run execute as @e[tag=World1DoorInfoDummy4] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=World1ProximitytriggerDummy] at @s if entity @p[distance=..8] run execute as @e[tag=LobbyHappiestDummy2] if score @s StarsCollected >= @s AuxNumber0 if score @s World1ProximityDoorStatus matches 0 if score @s WorldDoorTextTimer matches 15 run setblock 8 -60 18 minecraft:redstone_block

/execute as @e[tag=LobbyHappiestDummy2] if score @s World1ProximityDoorStatus matches 1 run setblock 8 -60 18 air

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 320 run execute at @e[tag=World1ProximitytriggerDummy] run playsound scalinghealth:heart_crystal_use master @a[distance=..8] ~ ~ ~ 1 0.5

/fill -17 70 8 -17 74 11 air replace minecraft:light_gray_stained_glass

/particle alexsmobs:worm_portal -16.50 72.00 10.00 0 0 0 0.5 15

#--
#CodeBlock 2
#--
/kill @e[tag=World1DoorInfoGroup2]

/summon armor_stand -17.30 71.10 10.00 {Tags:["World1DoorInfoDummy6","World1DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Requisitos cumplidos!","color":"#6ee524"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -17.30 70.75 10.00 {Tags:["World1DoorInfoDummy7","World1DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Haz click en la opción para","color":"#6ee524"}',CustomNameVisible:1b,Rotation:[0f,0f]}

/summon armor_stand -17.30 70.50 10.00 {Tags:["World1DoorInfoDummy8","World1DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"abrir esta puerta...","color":"#6ee524"}',CustomNameVisible:1b,Rotation:[0f,0f]}

#--
#CodeBlock 2.5
#--
/kill @e[tag=World1DoorInfoGroup2]

/summon armor_stand -17.30 71.10 10.00 {Tags:["World1DoorInfoDummy5","World1DoorInfoGroup2","WorldDoorAllInfo"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomName:'{"text":"Recursos insuficientes...","color":"#cf3b3b"}',CustomNameVisible:1b,Rotation:[0f,0f]}

#--
#CodeBlock 2.5.5
#--
/tellraw @p {"text":"[DESBLOQUEAR MUNDO 1]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World1ProximityDoorStatus 1"}}

#--
#CodeBlock 3
#--
/execute as @e[tag=WorldGeneralProximityTriggerDummy] at @s if entity @p[distance=8..] run execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s WorldDoorTextTimer 0

/execute as @e[tag=WorldGeneralProximityTriggerDummy] at @s if entity @p[distance=14..] run execute as @e[tag=World1DoorInfoGroup1] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=WorldGeneralProximityTriggerDummy] at @s if entity @p[distance=14..] run execute as @e[tag=World1DoorInfoDummy4] run data merge entity @s {CustomNameVisible:0b}

/execute as @e[tag=WorldGeneralProximityTriggerDummy] at @s if entity @p[distance=..14] run execute as @e[tag=World1DoorInfoGroup1] run data merge entity @s {CustomNameVisible:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World1ProximityDoorStatus matches 0 run execute as @e[tag=WorldGeneralProximityTriggerDummy] at @s if entity @p[distance=..14] run execute as @e[tag=World1DoorInfoDummy4] run data merge entity @s {CustomNameVisible:1b}

#--
#CodeBlock 4
#--
/execute as @e[tag=LobbyHappiestDummy2] if score @s World1ProximityDoorStatus matches 0 run scoreboard players add @s World1AuxToggle 1

/execute as @e[tag=LobbyHappiestDummy2] if score @s World1ProximityDoorStatus matches 0 if score @s World1AuxToggle >= @s AuxNumber90 run scoreboard players set @s World1AuxToggle 1

/execute as @e[tag=LobbyHappiestDummy2] if score @s World1AuxToggle >= @s AuxNumber1 if score @s World1ProximityDoorStatus matches 1 run setblock -6 -60 22 minecraft:redstone_block

/execute as @e[tag=LobbyHappiestDummy2] if score @s World1AuxToggle >= @s AuxNumber1 if score @s World1ProximityDoorStatus matches 1 run setblock -6 -60 22 minecraft:air

/execute as @e[tag=LobbyHappiestDummy2] if score @s World1AuxToggle >= @s AuxNumber1 if score @s World1ProximityDoorStatus matches 1 run data merge block -8 -60 22 {auto:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World1AuxToggle >= @s AuxNumber1 if score @s World1ProximityDoorStatus matches 1 run data merge block -6 -60 20 {auto:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s World1AuxToggle >= @s AuxNumber1 if score @s World1ProximityDoorStatus matches 1 run scoreboard players set @s World1AuxToggle 0

/execute as @e[tag=WorldGeneralProximityTriggerDummy] at @s if entity @p[distance=8..] run setblock 8 -60 18 minecraft:air

#--
#CodeBlock 5
#--
/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount > @s AuxNumber0 if score @s PlatformActivationCount < @s AuxNumber150 run execute as @e[tag=World1LightStartingDummy1] at @s run tp @s ~0.25 ~ ~

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount > @s AuxNumber0 if score @s PlatformActivationCount < @s AuxNumber150 run execute as @e[tag=World1LightStartingDummy2] at @s run tp @s ~0.25 ~ ~

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run kill @e[tag=World1LightStartingDummy1]

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run kill @e[tag=World1LightStartingDummy2]

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber0 run setblock -6 -60 22 minecraft:redstone_block

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber0 run setblock -6 -60 22 minecraft:air

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber50 run setblock -6 -60 22 minecraft:redstone_block

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber50 run setblock -6 -60 22 minecraft:air

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 140 run setblock -4 -60 22 minecraft:redstone_block

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 140 run setblock -4 -60 22 minecraft:air

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run execute at @e[tag=World1ProximitytriggerDummy] run playsound minecraft:block.end_portal.spawn master @a[distance=..8] ~ ~ ~ 0.3 0.1

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 145 run data merge block -8 -60 18 {auto:1b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 350 run data merge block -6 -60 20 {auto:0b}

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount matches 350 run data merge block -8 -60 22 {auto:0b}

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s PlatformActivationCount 0

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players remove @s PlatformActivationCount 1

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run execute at @e[tag=World1ProximitytriggerDummy] run setblock -8 -60 -3 minecraft:redstone_block

/execute as @e[tag=LobbyHappiestDummy2] if score @s PlatformActivationCount = @s AuxNumber120 run execute at @e[tag=World1ProximitytriggerDummy] run setblock -8 -60 -3 minecraft:air

#--
#CodeBlock 6
#--
/summon armor_stand -15.50 67.75 8.05 {Tags:["World1LightStartingDummy2"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}

/summon armor_stand -15.50 67.75 11.06 {Tags:["World1LightStartingDummy1"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,Marker:1b,HandItems:[{id:"dustrial_decor:cyan_neon_light",Count:1b},{}]}

/execute at @e[tag=World1ProximitytriggerDummy] run playsound alexsmobs:void_portal_open master @a[distance=..8] ~ ~ ~ 0.23 2

#--
#CodeBlock 7
#--
/summon armor_stand -18 69 10  {Tags:["WorldModulePassingBridgeGenerator1"],Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,NoGravity:1b,Rotation:[90f,0f]}

#--
#CodeBlock 8
#--
/fill 28 73 -3 -4 67 22 dustrial_decor:cyan_neon_light replace minecraft:cyan_wool

/fill 28 73 -3 -4 67 22 dustrial_decor:green_neon_light replace minecraft:green_wool

#--
#CodeBlock 8.5
#--
/fill 28 73 -3 -4 67 22 minecraft:cyan_wool replace dustrial_decor:cyan_neon_light

/fill 28 73 -3 -4 67 22 minecraft:green_wool replace dustrial_decor:green_neon_light

#--
#CodeBlock 9
#--
/execute as @e[tag=LobbyHappiestDummy2] run data merge block -8 -60 22 {auto:0b}

/execute as @e[tag=LobbyHappiestDummy2] run data merge block -6 -60 20 {auto:0b}

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s PlatformActivationCount 0

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World1ProximityDoorStatus 0

/execute as @e[tag=LobbyHappiestDummy2] run scoreboard players set @s World1AuxToggle 1

/fill -17 69 10 -1 69 9 air

/setblock -7 -60 -3 minecraft:redstone_block

/setblock -7 -60 -3 minecraft:air

/clone 9 -59 17 9 -55 20 -17 70 8