scoreboard players add @s soundtimer 1
execute at @s if score @s soundtimer matches 6.. run playsound minecraft:lightcycle.engine.idle2 master @a[distance=..10] ~ ~ ~ 0.26 0.68
execute at @s if score @s soundtimer matches 6.. run playsound minecraft:lightcycle.engine.rev master @a[distance=..30] ~ ~ ~ 0.26 0.66
execute if score @s soundtimer matches 6.. run scoreboard players reset @s soundtimer
