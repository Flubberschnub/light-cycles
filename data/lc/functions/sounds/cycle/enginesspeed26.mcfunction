scoreboard players add @s soundtimer 1
execute at @s if score @s soundtimer matches 3.. run playsound minecraft:lightcycle.engine.idle2 master @a[distance=..10] ~ ~ ~ 0.6 1.02
execute at @s if score @s soundtimer matches 3.. run playsound minecraft:lightcycle.engine.accelerate master @a[distance=..10] ~ ~ ~ 0.6 1
execute if score @s soundtimer matches 3.. run scoreboard players reset @s soundtimer
