scoreboard players add @s soundtimer 1
execute at @s if score @s soundtimer matches 6.. run playsound minecraft:lightcycle.engine.idle2 master @a[distance=..10] ~ ~ ~ 0.22 0.64
execute at @s if score @s soundtimer matches 6.. run playsound minecraft:lightcycle.engine.rev master @a[distance=..10] ~ ~ ~ 0.22 0.62
execute if score @s soundtimer matches 6.. run scoreboard players reset @s soundtimer
