

#start low grafics mode
#run once
/data merge block 36 -60 0 {auto:0b}

/execute as @e[type=armor_stand,tag=AutoDoorRustTriggerDummy1] run setblock 27 -61 -2 minecraft:redstone_block

/execute as @e[type=armor_stand,tag=AutoDoorRustTriggerDummy1] run setblock 27 -61 -2 minecraft:air

/execute as @e[tag=AutoDoorRustReferentialDummy1] run scoreboard players set @s MainForgeDoorExistance1 0

/execute as @e[tag=AutoDoorRustTriggerDummy1] run scoreboard players set @s ForgeDoorOpenessStatusAux 0

/data merge block 21 -60 -2 {auto:1b}
#



/execute as @e[type=armor_stand,tag=AutoDoorRustTriggerDummy1] at @s if entity @p[distance=6..] run clone 36 -59 4 36 -54 11 0 10 6

/execute as @e[type=armor_stand,tag=AutoDoorRustTriggerDummy1] at @s if entity @p[distance=4..5] run clone 35 -59 4 35 -54 11 0 10 6

/execute as @e[type=armor_stand,tag=AutoDoorRustTriggerDummy1] at @s if entity @p[distance=2..3] run clone 34 -59 4 34 -54 11 0 10 6

/execute as @e[type=armor_stand,tag=AutoDoorRustTriggerDummy1] at @s if entity @p[distance=..1] run clone 33 -59 4 33 -54 11 0 10 6

#stop low graphics module
/data merge block 19 -60 -2 {auto:0b}

/execute as @e[type=armor_stand,tag=AutoDoorRustTriggerDummy1] run setblock 27 -61 -2 minecraft:redstone_block

/execute as @e[type=armor_stand,tag=AutoDoorRustTriggerDummy1] run setblock 27 -61 -2 minecraft:air

/execute as @e[tag=AutoDoorRustReferentialDummy1] run scoreboard players set @s MainForgeDoorExistance1 0

/execute as @e[tag=AutoDoorRustTriggerDummy1] run scoreboard players set @s ForgeDoorOpenessStatusAux 0




#start high graphics mode

/data merge block 19 -60 -2 {auto:0b}

/execute as @e[tag=AutoDoorRustReferentialDummy1] run scoreboard players set @s MainForgeDoorExistance1 0

/execute as @e[tag=AutoDoorRustTriggerDummy1] run scoreboard players set @s ForgeDoorOpenessStatusAux 0

/execute as @e[type=armor_stand,tag=AutoDoorRustTriggerDummy1] run setblock 27 -61 -2 minecraft:redstone_block

/execute as @e[type=armor_stand,tag=AutoDoorRustTriggerDummy1] run setblock 27 -61 -2 minecraft:air

/data merge block 36 -60 0 {auto:1b}

#stop high graphics module
/data merge block 36 -60 0 {auto:0b}

/execute as @e[type=armor_stand,tag=AutoDoorRustTriggerDummy1] run setblock 27 -61 -2 minecraft:redstone_block

/execute as @e[type=armor_stand,tag=AutoDoorRustTriggerDummy1] run setblock 27 -61 -2 minecraft:air

/execute as @e[tag=AutoDoorRustReferentialDummy1] run scoreboard players set @s MainForgeDoorExistance1 0

/execute as @e[tag=AutoDoorRustTriggerDummy1] run scoreboard players set @s ForgeDoorOpenessStatusAux 0



/execute as @p run /pos1 17,-51,19
/execute as @p run /pos2 37,-45,-1
/execute as @p run /replace dustrial_decor:blue_neon_light dustrial_decor:cyan_neon_light


/execute as @e[type=armor_stand,tag=LobbyMainLightNucleusDumy1,limit=1] run scoreboard players set @s NucleusJumpSpinTimer 0

/execute as @e[tag=LobbyMainLightNucleusDumy1,limit=1] at @s tp @s ~ -50 ~

#----------------

#player must execute this once herself
/scoreboard objectives add LobbyLineLightsFloorDummiesSyncTimer1 dummy
#--

#Dummy generators, on separate impulse comand blocks
/summon armor_stand 14 -52 13 {NoGravity:1b,Invulnerable:1b,Invisible:0b,CustomName:'{"text":"LobbyLineLightsFloorDummy1a"}',CustomNameVisible:0b,Tags:["LobbyLineLightsFloorDummy1a", "LobbyLineLightsFloorGroup1"]}
/summon armor_stand 14 -52 13 {NoGravity:1b,Invulnerable:1b,Invisible:0b,CustomName:'{"text":"LobbyLineLightsFloorDummy1b"}',CustomNameVisible:0b,Tags:["LobbyLineLightsFloorDummy1b", "LobbyLineLightsFloorGroup1"]}

/summon armor_stand 14 -52 6 {NoGravity:1b,Invulnerable:1b,Invisible:0b,CustomName:'{"text":"LobbyLineLightsFloorDummy2a"}',CustomNameVisible:0b,Tags:["LobbyLineLightsFloorDummy2a", "LobbyLineLightsFloorGroup1"]}
/summon armor_stand 14 -52 6 {NoGravity:1b,Invulnerable:1b,Invisible:0b,CustomName:'{"text":"LobbyLineLightsFloorDummy2b"}',CustomNameVisible:0b,Tags:["LobbyLineLightsFloorDummy2b", "LobbyLineLightsFloorGroup1"]}

/summon armor_stand 15 -53 10.00 {NoGravity:1b,Invulnerable:1b,Invisible:0b,CustomName:'{"text":"LobbyLineLightsFloorSyncDummy"}',CustomNameVisible:0b,Tags:["LobbyLineLightsFloorSyncDummy"]}
#--

#After summonin the stands, run these on a chain line
/execute as @e[tag=LobbyLineLightsFloorDummy1a] run scoreboard players set @s LobbyLineLightsFloorDummiesSyncTimer1 0
/execute as @e[tag=LobbyLineLightsFloorDummy1b] run scoreboard players set @s LobbyLineLightsFloorDummiesSyncTimer1 0
/execute as @e[tag=LobbyLineLightsFloorDummy2a] run scoreboard players set @s LobbyLineLightsFloorDummiesSyncTimer1 0
/execute as @e[tag=LobbyLineLightsFloorDummy2b] run scoreboard players set @s LobbyLineLightsFloorDummiesSyncTimer1 0

#place thse with a repetitive line
/scoreboard players add @e[type=armor_stand,tag=LobbyLineLightsFloorGroup1] LobbyLineLightsFloorDummiesSyncTimer1 1
/execute as @e[tag=LobbyLineLightsFloorGroup1] if score @s LobbyLineLightsFloorDummiesSyncTimer1 matches 100 run scoreboard players set @s LobbyLineLightsFloorDummiesSyncTimer1 0


/execute as @e[tag=LobbyLineLightsFloorDummy1a] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 dustrial_decor:cyan_neon_light replace dustrial_decor:blue_neon_light
/execute as @e[tag=LobbyLineLightsFloorDummy2a] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 dustrial_decor:cyan_neon_light replace dustrial_decor:blue_neon_light
/execute as @e[tag=LobbyLineLightsFloorDummy1b] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 dustrial_decor:blue_neon_light replace dustrial_decor:cyan_neon_light
/execute as @e[tag=LobbyLineLightsFloorDummy2b] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 dustrial_decor:blue_neon_light replace dustrial_decor:cyan_neon_light

/execute as @e[tag=LobbyLineLightsFloorSyncDummy] if score @s LobbyLineLightsFloorDummiesSyncTimer1 matches 99 run execute as @e[tag=LobbyLineLightsFloorGroup1] at @s run tp @s ~ ~ ~


/execute as @e[tag=LobbyLineLightsFloorSyncDummy] run scoreboard players add @s LobbyLineLightsFloorDummiesSyncTimer1 1
/execute as @e[tag=LobbyLineLightsFloorSyncDummy] if score @s LobbyLineLightsFloorDummiesSyncTimer1 matches 100 run scoreboard players set @s LobbyLineLightsFloorDummiesSyncTimer1 0
/execute as @e[tag=LobbyLineLightsFloorDummy1a] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 dustrial_decor:cyan_neon_light replace dustrial_decor:blue_neon_light
/execute as @e[tag=LobbyLineLightsFloorDummy2a] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 dustrial_decor:cyan_neon_light replace dustrial_decor:blue_neon_light
/execute as @e[tag=LobbyLineLightsFloorDummy1b] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 dustrial_decor:blue_neon_light replace dustrial_decor:cyan_neon_light
/execute as @e[tag=LobbyLineLightsFloorDummy2b] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 dustrial_decor:blue_neon_light replace dustrial_decor:cyan_neon_light

/execute as @e[tag=LobbyLineLightsFloorGroup1] at @s run tp @s ~-0.01 ~ ~
/execute as @e[tag=LobbyLineLightsFloorSyncDummy] if score @s LobbyLineLightsFloorDummiesSyncTimer1 matches 99
/execute as @e[tag=LobbyLineLightsFloorSyncDummy] if score @s LobbyLineLightsFloorDummiesSyncTimer1 matches 99

/execute as @e[tag=LobbyLineLightsFloorSyncDummy] if score @s LobbyLineLightsFloorDummiesSyncTimer1 matches 99 run <your_command_here>
/execute as @e[tag=LobbyLineLightsFloorSyncDummy] if score @s LobbyLineLightsFloorDummiesSyncTimer1 matches 99 run execute as @e[tag=LobbyLineLightsFloorGroup1] at @s run tp @s 14 ~ ~





/summon armor_stand 14 -52 13 {NoGravity:1b,Invulnerable:1b,Invisible:0b,CustomName:'{"text":"LobbyLineLightsFloorDummy1a"}',CustomNameVisible:0b,Tags:["LobbyLineLightsFloorDummy1a", "LobbyLineLightsFloorGroup1"]}
/summon armor_stand 14 -52 6 {NoGravity:1b,Invulnerable:1b,Invisible:0b,CustomName:'{"text":"LobbyLineLightsFloorDummy2a"}',CustomNameVisible:0b,Tags:["LobbyLineLightsFloorDummy2a", "LobbyLineLightsFloorGroup1"]}
/summon armor_stand 14 -52 13 {NoGravity:1b,Invulnerable:1b,Invisible:0b,CustomName:'{"text":"LobbyLineLightsFloorDummy1b"}',CustomNameVisible:0b,Tags:["LobbyLineLightsFloorDummy1b", "LobbyLineLightsFloorGroup2"]}
/summon armor_stand 14 -52 6 {NoGravity:1b,Invulnerable:1b,Invisible:0b,CustomName:'{"text":"LobbyLineLightsFloorDummy2b"}',CustomNameVisible:0b,Tags:["LobbyLineLightsFloorDummy2b", "LobbyLineLightsFloorGroup2"]}

/execute as @e[tag=LobbyLineLightsFloorSyncDummy] run scoreboard players add @s LobbyLineLightsFloorDummiesSyncTimer1 1
/execute as @e[tag=LobbyLineLightsFloorSyncDummy] if score @s LobbyLineLightsFloorDummiesSyncTimer1 matches 105 run scoreboard players set @s LobbyLineLightsFloorDummiesSyncTimer1 0
/execute as @e[tag=LobbyLineLightsFloorGroup2] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 dustrial_decor:cyan_neon_light replace dustrial_decor:blue_neon_light
/execute as @e[tag=LobbyLineLightsFloorGroup1] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 dustrial_decor:blue_neon_light replace dustrial_decor:cyan_neon_light

/execute as @e[tag=LobbyLineLightsFloorGroup1] at @s run tp @s ~-0.3 ~ ~
/execute as @e[tag=LobbyLineLightsFloorSyncDummy] if score @s LobbyLineLightsFloorDummiesSyncTimer1 matches 104 run execute as @e[tag=LobbyLineLightsFloorGroup1] at @s run tp @s 11 ~ ~

/execute as @e[tag=LobbyLineLightsFloorSyncDummy] if score @s LobbyLineLightsFloorDummiesSyncTimer1 >= @s LobbyLineLightsFloorDummiesSyncTimer1 run execute as @e[tag=LobbyLineLightsFloorGroup2] at @s run tp @s ~-0.3 ~ ~
/execute as @e[tag=LobbyLineLightsFloorSyncDummy] if score @s LobbyLineLightsFloorDummiesSyncTimer1 matches 104 run execute as @e[tag=LobbyLineLightsFloorGroup2] at @s run tp @s 14 ~ ~

#--------------------
#repetitive line 1
/execute as @e[tag=LobbyLineLightsFloorSyncDummy] run scoreboard players add @s LobbyLineLightsFloorDummiesSyncTimer1 1
/execute as @e[tag=LobbyLineLightsFloorSyncDummy] if score @s LobbyLineLightsFloorDummiesSyncTimer1 matches 115 run scoreboard players set @s LobbyLineLightsFloorDummiesSyncTimer1 0
/execute as @e[tag=LobbyLineLightsFloorGroup2] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 dustrial_decor:cyan_neon_light replace dustrial_decor:blue_neon_light
/execute as @e[tag=LobbyLineLightsFloorGroup1] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 dustrial_decor:blue_neon_light replace dustrial_decor:cyan_neon_light

#repetitive line 2
/execute as @e[tag=LobbyLineLightsFloorGroup1] at @s run tp @s ~-0.3 ~ ~    
/execute as @e[tag=LobbyLineLightsFloorSyncDummy] if score @s LobbyLineLightsFloorDummiesSyncTimer1 matches 114 run execute as @e[tag=LobbyLineLightsFloorGroup1] at @s run tp @s 11 -52 ~
/execute as @e[tag=LobbyLineLightsFloorSyncDummy] if score @s LobbyLineLightsFloorDummiesSyncTimer1 >= @s LobbyLineLightsFloorDummiesSyncTimer1 run execute as @e[tag=LobbyLineLightsFloorGroup2] at @s run tp @s ~-0.3 ~ ~
/execute as @e[tag=LobbyLineLightsFloorSyncDummy] if score @s LobbyLineLightsFloorDummiesSyncTimer1 matches 114 run execute as @e[tag=LobbyLineLightsFloorGroup2] at @s run tp @s 14 -52 ~

#repetitive line 3
/execute as @e[tag=LobbyLineLightsFloorSyncDummy] if score @s LobbyLineLightsFloorDummiesSyncTimer1 >= @s AuxNumber40 if score @s LobbyLineLightsFloorDummiesSyncTimer1 <= @s AuxNumber60 run execute as @e[tag=LobbyLineLightsFloorGroup1] at @s run tp ~ ~0.3 ~
/execute as @e[tag=LobbyLineLightsFloorSyncDummy] if score @s LobbyLineLightsFloorDummiesSyncTimer1 >= @s AuxNumber50 if score @s LobbyLineLightsFloorDummiesSyncTimer1 <= @s AuxNumber70 run execute as @e[tag=LobbyLineLightsFloorGroup2] at @s run tp ~ ~0.3 ~

#execute once on comand block pulse
/scoreboard objectives add AuxNumber50 dummy
/execute as @e[tag=LobbyLineLightsFloorSyncDummy] run scoreboard players set @s AuxNumber50 50

/scoreboard objectives add AuxNumber40 dummy
/execute as @e[tag=LobbyLineLightsFloorSyncDummy] run scoreboard players set @s AuxNumber40 40

/scoreboard objectives add AuxNumber60 dummy
/execute as @e[tag=LobbyLineLightsFloorSyncDummy] run scoreboard players set @s AuxNumber60 60

/scoreboard objectives add AuxNumber70 dummy
/execute as @e[tag=LobbyLineLightsFloorSyncDummy] run scoreboard players set @s AuxNumber70 70

#light flicker sb creation
/scoreboard objectives add PassiveLobbyLightFlickerTimer dummy
#light sb flicker to happydumy1
/execute as @e[tag=LobbyHappiestDummy1] run scoreboard players set @s PassiveLobbyLightFlickerTimer 0

#these repetitive lones must be moved near happy and reused for many happy dummy realted stuff
/execute as @e[tag=LobbyHappiestDummy1] run scoreboard players add @s PassiveLobbyLightFlickerTimer 1
/execute as @e[tag=LobbyHappiestDummy1] if score @s PassiveLobbyLightFlickerTimer matches 60 run scoreboard players set @s PassiveLobbyLightFlickerTimer 0


/execute as @e[tag=LobbyHappiestDummy1] if score @s PassiveLobbyLightFlickerTimer matches 0 run setblock 5 -60 -3 minecraft:redstone_block
/setblock 8 -51 -7 dustrial_decor:cyan_neon_light
/setblock 10 -51 -7 dustrial_decor:blue_neon_light
/setblock 12 -51 -7 dustrial_decor:cyan_neon_light

/execute as @e[tag=LobbyHappiestDummy1] if score @s PassiveLobbyLightFlickerTimer matches 29 run setblock 3 -60 -3 minecraft:redstone_block
/setblock 8 -51 -7 dustrial_decor:blue_neon_light
/setblock 10 -51 -7 dustrial_decor:cyan_neon_light
/setblock 12 -51 -7 dustrial_decor:blue_neon_light


#-----------------------



/summon minecraft:armor_stand -23 -41 4 {NoGravity:1b,Invulnerable:1b,Invisible:0b,CustomName:'{"text":"LobbyLineLightsFloorDummyYAY"}',CustomNameVisible:0b,Tags:["LobbyLineLightsFloorDummyYAY"]}

can you replace the surrounding minecraft:black_stained_glass with minecraft:light_blue_stained_glass at the blocks that are 1 block away, but with minecraft:cyan_stained_glass at the blocks that are 2 blocks away. idk maybe this helps:
/execute as @e[tag=LobbyMainLightNucleusDumy2] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 dustrial_decor:blue_neon_light replace dustrial_decor:cyan_neon_light

# Replace blocks 1 block away with light blue stained glass
/execute as @e[tag=LobbyLineLightsFloorDummyYAY] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:light_blue_stained_glass replace minecraft:black_stained_glass

# Replace blocks 2 blocks away with cyan stained glass
/execute as @e[tag=LobbyLineLightsFloorDummyYAY] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:cyan_stained_glass replace minecraft:black_stained_glass

# Reset the inner 1-block layer to light blue stained glass (if any cyan replaced it accidentally)
/execute as @e[tag=LobbyLineLightsFloorDummyYAY] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:light_blue_stained_glass replace minecraft:cyan_stained_glass






/summon armor_stand -19 -41 4 {NoGravity:1b,Invulnerable:1b,Invisible:0b,CustomName:'{"text":"LobbyLineLightsFloorDummy3a"}',CustomNameVisible:0b,Tags:["LobbyLineLightsFloorDummy3a", "LobbyLineLightsFloorGroup3"]}
/summon armor_stand -17 -41 4 {NoGravity:1b,Invulnerable:1b,Invisible:0b,CustomName:'{"text":"LobbyLineLightsFloorDummy3b"}',CustomNameVisible:0b,Tags:["LobbyLineLightsFloorDummy3b", "LobbyLineLightsFloorGroup4"]}
/summon armor_stand -14 -41 4 {NoGravity:1b,Invulnerable:1b,Invisible:0b,CustomName:'{"text":"LobbyLineLightsFloorDummy3c"}',CustomNameVisible:0b,Tags:["LobbyLineLightsFloorDummy3c", "LobbyLineLightsFloorGroup5"]}

/summon armor_stand -19 -41 15 {NoGravity:1b,Invulnerable:1b,Invisible:0b,CustomName:'{"text":"LobbyLineLightsFloorDummy4a"}',CustomNameVisible:0b,Tags:["LobbyLineLightsFloorDummy4a", "LobbyLineLightsFloorGroup3"]}
/summon armor_stand -17 -41 15 {NoGravity:1b,Invulnerable:1b,Invisible:0b,CustomName:'{"text":"LobbyLineLightsFloorDummy4b"}',CustomNameVisible:0b,Tags:["LobbyLineLightsFloorDummy4b", "LobbyLineLightsFloorGroup4"]}
/summon armor_stand -14 -41 15 {NoGravity:1b,Invulnerable:1b,Invisible:0b,CustomName:'{"text":"LobbyLineLightsFloorDummy4c"}',CustomNameVisible:0b,Tags:["LobbyLineLightsFloorDummy4c", "LobbyLineLightsFloorGroup5"]}

/execute as @e[tag=LobbyLineLightsFloorGroup3] at @s run setblock ~ ~ ~ minecraft:gray_stained_glass replace minecraft:light_blue_stained_glass
/execute as @e[tag=LobbyLineLightsFloorGroup4] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:gray_stained_glass replace minecraft:cyan_stained_glass
/execute as @e[tag=LobbyLineLightsFloorGroup4] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:light_blue_stained_glass replace minecraft:cyan_stained_glass
/execute as @e[tag=LobbyLineLightsFloorGroup5] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:cyan_stained_glass replace minecraft:gray_stained_glass

/execute as @e[tag=LobbyLineLightsFloorGroup3] at @s run tp @s ~-0.3 ~ ~
/execute as @e[tag=LobbyLineLightsFloorGroup4] at @s run tp @s ~-0.3 ~ ~
/execute as @e[tag=LobbyLineLightsFloorGroup5] at @s run tp @s ~-0.3 ~ ~

/execute as @e[tag=LobbyLineLightsFloorSyncDummy] if score @s LobbyLineLightsFloorDummiesSyncTimer1 matches 114 run execute as @e[tag=LobbyLineLightsFloorDummy3a] at @s run tp @s -19 ~ 4
/execute as @e[tag=LobbyLineLightsFloorSyncDummy] if score @s LobbyLineLightsFloorDummiesSyncTimer1 matches 114 run execute as @e[tag=LobbyLineLightsFloorDummy3b] at @s run tp @s -17 ~ 4
/execute as @e[tag=LobbyLineLightsFloorSyncDummy] if score @s LobbyLineLightsFloorDummiesSyncTimer1 matches 114 run execute as @e[tag=LobbyLineLightsFloorDummy3c] at @s run tp @s -14 ~ 4

/execute as @e[tag=LobbyLineLightsFloorSyncDummy] if score @s LobbyLineLightsFloorDummiesSyncTimer1 matches 114 run execute as @e[tag=LobbyLineLightsFloorDummy4a] at @s run tp @s -19 ~ 15
/execute as @e[tag=LobbyLineLightsFloorSyncDummy] if score @s LobbyLineLightsFloorDummiesSyncTimer1 matches 114 run execute as @e[tag=LobbyLineLightsFloorDummy4b] at @s run tp @s -17 ~ 15
/execute as @e[tag=LobbyLineLightsFloorSyncDummy] if score @s LobbyLineLightsFloorDummiesSyncTimer1 matches 114 run execute as @e[tag=LobbyLineLightsFloorDummy4c] at @s run tp @s -14 ~ 15








/execute as @e[tag=LobbyLineLightsFloorGroup3] at @s run setblock ~ ~ ~ minecraft:light_blue_stained_glass
/execute as @e[tag=LobbyLineLightsFloorGroup4] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:cyan_stained_glass replace minecraft:light_blue_stained_glass
/execute as @e[tag=LobbyLineLightsFloorGroup5] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:gray_stained_glass replace minecraft:light_blue_stained_glass
/execute as @e[tag=LobbyLineLightsFloorGroup5] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:gray_stained_glass replace minecraft:cyan_stained_glass

/execute as @e[tag=LobbyLineLightsFloorGroup3] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:lightblue_stained_glass replace minecraft:gray_stained_glass
/execute as @e[tag=LobbyLineLightsFloorGroup3] at @s run setblock ~ ~ ~ minecraft:light_blue_stained_glass
/execute as @e[tag=LobbyLineLightsFloorGroup4] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:cyan_stained_glass replace minecraft:light_blue_stained_glass



/execute as @e[tag=LobbyLineLightsFloorSyncDummy] if score @s LobbyLineLightsFloorDummiesSyncTimer1 >= @s AuxNumber40 if score @s LobbyLineLightsFloorDummiesSyncTimer1 <= @s AuxNumber70 run execute as @e[tag=LobbyLineLightsFloorDummy3a] at @s run tp ~ ~ ~0.5
/execute as @e[tag=LobbyLineLightsFloorSyncDummy] if score @s LobbyLineLightsFloorDummiesSyncTimer1 >= @s AuxNumber50 if score @s LobbyLineLightsFloorDummiesSyncTimer1 <= @s AuxNumber80 run execute as @e[tag=LobbyLineLightsFloorDummy3b] at @s run tp ~ ~ ~0.5
/execute as @e[tag=LobbyLineLightsFloorSyncDummy] if score @s LobbyLineLightsFloorDummiesSyncTimer1 >= @s AuxNumber60 if score @s LobbyLineLightsFloorDummiesSyncTimer1 <= @s AuxNumber90 run execute as @e[tag=LobbyLineLightsFloorDummy3c] at @s run tp ~ ~ ~0.5