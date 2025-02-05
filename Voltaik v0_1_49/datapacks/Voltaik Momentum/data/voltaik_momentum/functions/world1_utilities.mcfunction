#Make a one time run zone, but it must work by adding tags for each dialogue (for example, LobbyHappiestDummy2 would play dialogue 50 and give itself the tag "Dialogue50Played", and it wont play that dialogue again if it has that tag)

#Welcoming dialogue
# execute if score @e[tag=LobbyHappiestDummy2,limit=1] LoadingScreenTimer1 matches 400 as @e[tag=WorldAllGeneralLocationDummy1,limit=1] run (DIALOGUE FUNCTION GOES HERE)

#Repeat this function
schedule function voltaik_momentum:world1_utilities 1t