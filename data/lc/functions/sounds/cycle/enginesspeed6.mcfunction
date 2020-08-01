scoreboard players add @s soundtimer 1
execute at @s if score @s soundtimer matches 6.. run playsound minecraft:lightcycle.engine.idle2 master @a[distance=..10] ~ ~ ~ 0.2 0.62
execute at @s if score @s soundtimer matches 6.. run playsound minecraft:lightcycle.engine.rev master @a[distance=..10] ~ ~ ~ 0.2 0.6
execute if score @s soundtimer matches 6.. run scoreboard players reset @s soundtimer
