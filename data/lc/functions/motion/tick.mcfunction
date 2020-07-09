##motion tick

##onground tag
#execute at @e[tag=cyclecollider,tag=matchedid] run function lc:motion/collision/onground

function lc:motion/drag
execute if score @s CycleType matches 786 run function lc:motion/786/tick

execute at @e[tag=cyclecollider,tag=matchedid] unless block ^ ^ ^1 #lc:passthrough positioned ^ ^ ^1 run function lc:motion/collision/oncollide
execute at @e[tag=cyclecollider,tag=matchedid] unless block ~ ~ ~ #lc:passthrough positioned ~ ~ ~ run function lc:motion/collision/oncollide
execute at @e[tag=cyclecollider,tag=matchedid] unless block ^ ^ ^-1 #lc:passthrough positioned ^ ^ ^-1 run function lc:motion/collision/oncollide
execute at @e[tag=cyclecollider,tag=matchedid] unless block ^ ^ ^-2 #lc:passthrough positioned ^ ^ ^-2 run function lc:motion/collision/oncollide
execute at @e[tag=cyclecollider,tag=matchedid] if entity @e[tag=lightribbon,type=armor_stand,distance=..2,tag=!newribbon] run function lc:motion/collision/oncollide
execute at @e[tag=cyclestand,tag=matchedid] if entity @e[tag=lightribbon,type=armor_stand,distance=..0.1,tag=!newribbon] run function lc:motion/collision/oncollide
