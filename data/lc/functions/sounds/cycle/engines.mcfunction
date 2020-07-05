scoreboard players add @s soundtimer 1
execute at @s if score @s soundtimer matches 7.. run playsound minecraft:lightcycle.engine.idle master @a[distance=..10] ~ ~ ~ 0.05 1
execute if score @s soundtimer matches 7.. run scoreboard players reset @s soundtimer
