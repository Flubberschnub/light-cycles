##lightribbon tick (run as cyclestand, from lc:move)

##timer
scoreboard players add @s ribbontimer 1
execute if score @s ribbontimer matches 2.. run function lc:lightribbon/main
#function lc:lightribbon/main
execute if score @s ribbontimer matches 2.. run scoreboard players reset @s ribbontimer

##particles
#execute at @e[tag=lightribbon,type=armor_stand,scores={circuitcolor=2}] run 
