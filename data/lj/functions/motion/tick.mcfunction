##motion tick

##onground tag
execute at @e[tag=jetstand,tag=matchedid] run function lj:motion/collision/onground

scoreboard players reset X playermotion
scoreboard players reset Z playermotion
execute as @a[predicate=lj:lj/riding_jet,tag=matchedid] run function lj:jetcontrols/ws

function lj:motion/drag
execute at @s unless block ~ ~-0.2 ~ #lj:passthrough if score @s JetType matches 4 run function lj:motion/4/tick

tag @a[tag=matchedid] remove accelerating
tag @a[tag=matchedid] remove braking

execute at @e[tag=jetcollider,tag=matchedid] unless block ^ ^ ^1 #lj:passthrough positioned ^ ^ ^1 run function lj:motion/collision/oncollide
execute at @e[tag=jetcollider,tag=matchedid] unless block ~ ~ ~ #lj:passthrough positioned ~ ~ ~ run function lj:motion/collision/oncollide
execute at @e[tag=jetcollider,tag=matchedid] unless block ^ ^ ^-1 #lj:passthrough positioned ^ ^ ^-1 run function lj:motion/collision/oncollide
execute at @e[tag=jetcollider,tag=matchedid] unless block ^ ^ ^-2 #lj:passthrough positioned ^ ^ ^-2 run function lj:motion/collision/oncollide
execute at @e[tag=jetcollider,tag=matchedid] if entity @e[tag=lightjet,tag=!matchedid,distance=..1.2] run function lj:motion/collision/oncollide
execute at @e[tag=jetcollider,tag=matchedid] if entity @e[tag=lightribbon,type=armor_stand,distance=..2,tag=!newribbon] run function lj:motion/collision/oncollide
execute at @e[tag=jetstand,tag=matchedid] if entity @e[tag=lightribbon,type=armor_stand,distance=..0.1,tag=!newribbon] run function lj:motion/collision/oncollide
