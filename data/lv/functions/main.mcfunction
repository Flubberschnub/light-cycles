##main
function lj:main
function lc:main

##rider effects
effect give @a[predicate=lv:lv/riding_vehicle] invisibility 1 0 true
effect give @a[predicate=lv:lv/riding_vehicle] jump_boost 1 20 true
effect clear @a[tag=rezzedvehicle,predicate=!lv:lv/riding_vehicle] invisibility
effect clear @a[tag=rezzedvehicle,predicate=!lv:lv/riding_vehicle] jump_boost

##ribbon lifetimer
execute as @e[tag=lightribbon] run scoreboard players add @s ribbontimer 1
execute as @e[tag=lightribbon] if score @s ribbontimer >= maxtimer ribbontimer run kill @s

##remove rezzedvehicle tag
execute as @a[tag=rezzedvehicle] at @s run function lv:match/player/removerezzedtag


##boost reset
execute as @a[scores={clickbaton=1..}] run scoreboard players reset @s clickbaton
