##motion tick

##onground tag
execute at @e[tag=cyclestand,tag=matchedid] run function lc:motion/collision/onground

scoreboard players reset X playermotion
scoreboard players reset Z playermotion
execute as @a[predicate=lc:lc/riding_cycle,tag=matchedid] run function lc:bikecontrols/ws

function lc:motion/drag
execute if score @s CycleType matches 786 run function lc:motion/786/tick
execute if score @s CycleType matches 5 run function lc:motion/5/tick
execute if score @s CycleType matches 4 run function lc:motion/4/tick

tag @a[tag=matchedid] remove accelerating
tag @a[tag=matchedid] remove braking

execute at @e[tag=cyclecollider,tag=matchedid] unless block ^ ^ ^1 #lc:passthrough positioned ^ ^ ^1 run function lc:motion/collision/oncollide
execute at @e[tag=cyclecollider,tag=matchedid] unless block ~ ~ ~ #lc:passthrough positioned ~ ~ ~ run function lc:motion/collision/oncollide
execute at @e[tag=cyclecollider,tag=matchedid] unless block ^ ^ ^-1 #lc:passthrough positioned ^ ^ ^-1 run function lc:motion/collision/oncollide
execute at @e[tag=cyclecollider,tag=matchedid] unless block ^ ^ ^-2 #lc:passthrough positioned ^ ^ ^-2 run function lc:motion/collision/oncollide
execute at @e[tag=cyclecollider,tag=matchedid] if entity @e[tag=lightribbon,type=armor_stand,distance=..2,tag=!newribbon] run function lc:motion/collision/oncollide
execute at @e[tag=cyclestand,tag=matchedid] if entity @e[tag=lightribbon,type=armor_stand,distance=..0.1,tag=!newribbon] run function lc:motion/collision/oncollide

##in air tilt
execute as @e[tag=cyclestand,tag=matchedid] at @s if block ~ ~-0.1 ~ #lc:passthrough run data merge entity @s {Pose:{Head:[0.0f,0.0f,25.0f]}}
execute as @e[tag=cyclestand,tag=matchedid] unless entity @a[tag=matchedid,predicate=lc:lc/riding_cycle] at @s unless block ~ ~-0.1 ~ #lc:passthrough run data merge entity @s {Pose:{Head:[0.0f,0.0f,0.0001f]}}

##fall discance derez

execute as @e[tag=cyclestand,tag=matchedid] if score FallDistance Constant matches 50.. run function lc:derez/forcederez
