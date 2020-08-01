scoreboard players add @s soundtimer 1
execute at @s if score @s soundtimer matches 1.. run playsound minecraft:lightcycle.engine.idle2 master @a[distance=..10] ~ ~ ~ 0.62 1.48
execute at @s if score @s soundtimer matches 1.. run playsound minecraft:lightcycle.engine.rev master @a[distance=..10] ~ ~ ~ 0.62 1.46
execute if score @s soundtimer matches 1.. run scoreboard players reset @s soundtimer
