scoreboard players add @s soundtimer 1
execute at @s if score @s soundtimer matches 5.. run playsound minecraft:lightcycle.engine.idle2 master @a[distance=..10] ~ ~ ~ 0.28 0.70
execute at @s if score @s soundtimer matches 5.. run playsound minecraft:lightcycle.engine.accelerate master @a[distance=..10] ~ ~ ~ 0.28 0.68
execute if score @s soundtimer matches 5.. run scoreboard players reset @s soundtimer
