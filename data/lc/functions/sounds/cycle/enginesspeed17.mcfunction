scoreboard players add @s soundtimer 1
execute at @s if score @s soundtimer matches 4.. run playsound minecraft:lightcycle.engine.idle2 master @a[distance=..10] ~ ~ ~ 0.42 0.84
execute at @s if score @s soundtimer matches 4.. run playsound minecraft:lightcycle.engine.rev master @a[distance=..30] ~ ~ ~ 0.42 0.82
execute if score @s soundtimer matches 4.. run scoreboard players reset @s soundtimer
