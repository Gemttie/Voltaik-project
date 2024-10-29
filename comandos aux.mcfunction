
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
