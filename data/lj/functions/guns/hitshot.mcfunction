##hitshot

##shoot jetcollider or jetstand
tag @e[tag=jetcollider,tag=!matchedid,distance=..5] add gunhit
tag @e[tag=cyclecollider,tag=!matchedid,distance=..5] add gunhit
effect give @e[type=#lj:livingthings,distance=..5,tag=!matchedid] minecraft:instant_damage 1 0 true

##sounds
execute unless block ~ ~ ~ #lj:passthrough run playsound lightjet.guns.hit master @a[distance=..10] ~ ~ ~

##kill counter
execute as @a[tag=jetcollider,tag=!matchedid,distance=..5] run scoreboard players add @a[tag=matchedid] derezzes 1
execute as @a[tag=cyclecollider,tag=!matchedid,distance=..5] run scoreboard players add @a[tag=matchedid] derezzes 1

##block hit particle
execute if block ~ ~ ~ grass_block run particle minecraft:block grass_block ^ ^ ^-0.5 0.1 0.1 0.1 0.1 10
execute if block ~ ~ ~ dirt run particle minecraft:block grass_block ^ ^ ^-0.5 0.1 0.1 0.1 0.1 10
execute if block ~ ~ ~ #lj:sandic run particle minecraft:block sand ^ ^ ^-0.5 0.1 0.1 0.1 0.1 10
execute if block ~ ~ ~ #lj:stonic run particle minecraft:block stone ^ ^ ^-0.5 0.1 0.1 0.1 0.1 10

tag @s remove hitshot
scoreboard players reset @s shootRange
tag @a[tag=whizsound] remove whizsound
