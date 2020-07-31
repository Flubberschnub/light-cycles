scoreboard players add @s soundtimer 1
execute at @s if score @s soundtimer matches 4.. run playsound minecraft:lightcycle.engine.idle2 master @a[distance=..10] ~ ~ ~ 0.38 0.80
execute at @s if score @s soundtimer matches 4.. run playsound minecraft:lightcycle.engine.accelerate master @a[distance=..50] ~ ~ ~ 0.38 0.78
execute if score @s soundtimer matches 4.. run scoreboard players reset @s soundtimer
