
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
/execute as @e[tag=LobbyHappiestDummy1] if score @s LobbyElevatorMessageTimer >= @s AuxNumber50 if score @s PassiveLobbyLightFlickerTimer > run execute as @e[tag=LobbyMainElevatorMessageGroup1] run data merge entity @s {CustomNameVisible:1b}