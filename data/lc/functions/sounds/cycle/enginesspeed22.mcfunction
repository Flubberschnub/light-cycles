scoreboard players add @s soundtimer 1
execute at @s if score @s soundtimer matches 3.. run playsound minecraft:lightcycle.engine.idle2 master @a[distance=..10] ~ ~ ~ 0.52 0.94
execute at @s if score @s soundtimer matches 3.. run playsound minecraft:lightcycle.engine.rev master @a[distance=..30] ~ ~ ~ 0.52 0.92
execute if score @s soundtimer matches 3.. run scoreboard players reset @s soundtimer
