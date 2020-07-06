scoreboard players add @s soundtimer 1
execute at @s if score @s soundtimer matches 2.. run playsound minecraft:lightcycle.engine.idle2 master @a[distance=..10] ~ ~ ~ 0.1 0.9
execute if score @s soundtimer matches 2.. run scoreboard players reset @s soundtimer
