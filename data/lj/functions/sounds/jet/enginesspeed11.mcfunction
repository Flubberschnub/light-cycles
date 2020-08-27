scoreboard players add @s soundtimer 1
execute at @s if score @s soundtimer matches 5.. run playsound minecraft:lightjet.engine.idle2 master @a[distance=..10] ~ ~ ~ 0.3 0.72
execute at @s if score @s soundtimer matches 5.. run playsound minecraft:lightjet.engine.rev master @a[distance=..30] ~ ~ ~ 0.3 0.7
execute if score @s soundtimer matches 5.. run scoreboard players reset @s soundtimer
