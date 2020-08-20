scoreboard players add @s soundtimer 1
execute at @s if score @s soundtimer matches 2.. run playsound minecraft:lightcycle.engine.idle2 master @a[distance=..10] ~ ~ ~ 0.62 1.22
execute at @s if score @s soundtimer matches 2.. run playsound minecraft:lightcycle.engine.rev master @a[distance=..30] ~ ~ ~ 0.62 1.2
execute if score @s soundtimer matches 2.. run scoreboard players reset @s soundtimer
