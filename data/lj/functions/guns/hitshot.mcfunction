##hitshot

##shoot jetcollider or jetstand
tag @e[tag=jetcollider,tag=!matchedid,distance=..4] add gunhit
tag @e[tag=cyclecollider,tag=!matchedid,distance=..4] add gunhit
effect give @e[type=#lj:livingthings,distance=..4] minecraft:instant_damage 1 0 true

##break blocks
execute if block ~ ~ ~ cactus run fill ~ ~ ~ ~ ~ ~ air destroy
execute if block ~ ~ ~ #minecraft:leaves run fill ~ ~ ~ ~ ~ ~ air destroy
execute if block ~ ~ ~ sugar_cane run fill ~ ~ ~ ~ ~ ~ air destroy

##sounds
execute unless block ~ ~ ~ #lj:passthrough run playsound lightjet.guns.hit master @a[distance=..10] ~ ~ ~

##kill counter
execute as @a[tag=jetcollider,tag=!matchedid,distance=..4] run scoreboard players add @a[tag=matchedid] derezzes 1
execute as @a[tag=cyclecollider,tag=!matchedid,distance=..4] run scoreboard players add @a[tag=matchedid] derezzes 1

tag @s remove hitshot
scoreboard players reset @s shootRange
