##main
function lc:main
function lj:main

##rider effects
effect give @a[predicate=lv:lv/riding_vehicle] invisibility 1 0 true
effect give @a[predicate=lv:lv/riding_vehicle] jump_boost 1 20 true
effect clear @a[tag=rezzedvehicle,predicate=!lv:lv/riding_vehicle] invisibility
effect clear @a[tag=rezzedvehicle,predicate=!lv:lv/riding_vehicle] jump_boost

##remove rezzedvehicle tag
execute as @a[tag=rezzedvehicle] at @s run function lv:match/player/removerezzedtag


##boost reset
execute as @a[scores={clickbaton=1..}] run scoreboard players reset @s clickbaton
