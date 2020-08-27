##shoot

##range
scoreboard players add @s shootRange 1

##actual shooty part

##hitshot tag
execute unless block ~ ~ ~ #lj:passthrough run tag @s add hitshot
execute if entity @e[type=#lj:livingthings,distance=..5,tag=!matchedid] run tag @s add hitshot
execute if score @s shootRange matches 160.. run tag @s add hitshot

##break blocks
execute if score BreakBlocks Constant matches 1 if block ~ ~ ~ #lj:shootable run fill ~ ~ ~ ~ ~ ~ air destroy

##particles
execute if score @s shootRange matches 10 run function lj:guns/summonbullet
#execute if score @s shootRange matches 30 run function lj:guns/summonbullet
#execute if score @s shootRange matches 50 run function lj:guns/summonbullet
#execute if score @s shootRange matches 70 run function lj:guns/summonbullet
#execute if score @s shootRange matches 90 run function lj:guns/summonbullet
#execute if score @s shootRange matches 110 run function lj:guns/summonbullet
#execute if score @s shootRange matches 130 run function lj:guns/summonbullet
#execute if score @s shootRange matches 150 run function lj:guns/summonbullet

##sounds
playsound lightjet.guns.whizby master @a[distance=..10,tag=!matchedid,tag=!whizsound] ~ ~ ~
tag @a[distance=..10,tag=!matchedid,tag=!whizsound] add whizsound

##recurse
execute positioned ^ ^ ^0.5 as @s[tag=!hitshot] run function lj:guns/shoot

execute as @s[tag=hitshot] run function lj:guns/hitshot
