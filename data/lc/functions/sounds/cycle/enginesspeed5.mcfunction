scoreboard players add @s soundtimer 1
execute at @s if score @s soundtimer matches 6.. run playsound minecraft:lightcycle.engine.idle2 master @a[distance=..10] ~ ~ ~ 0.18 0.6
execute at @s if score @s soundtimer matches 6.. run playsound minecraft:lightcycle.engine.rev master @a[distance=..30] ~ ~ ~ 0.18 0.58
execute if score @s soundtimer matches 6.. run scoreboard players reset @s soundtimer
