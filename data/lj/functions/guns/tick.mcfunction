##tick guns
scoreboard players add @e[tag=bullet,tag=matchedid] ribbontimer 1
kill @e[tag=bullet,type=armor_stand,tag=matchedid,scores={ribbontimer=2..}]
execute if entity @a[tag=matchedid,predicate=lj:lj/shooting] run scoreboard players set @s shoottimer 4
execute if entity @s[scores={shoottimer=1}] at @s anchored eyes positioned ^ ^-0.2 ^ run function lj:guns/raycast
execute if entity @s[scores={shoottimer=4}] at @s anchored eyes positioned ^ ^-0.2 ^ run function lj:guns/raycast
scoreboard players remove @s shoottimer 1
execute if score @s shoottimer matches 3 run playsound lightjet.guns.shoot master @a[distance=..40] ~ ~ ~ 3
scoreboard players reset @s[scores={shoottimer=..0}] shoottimer
