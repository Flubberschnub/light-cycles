##motion tick
function lc:motion/drag
execute if score @s CycleType matches 786 run function lc:motion/786/tick
execute at @e[tag=cyclecollider,tag=matchedid] unless block ^ ^ ^1 #lc:passthrough run function lc:motion/collision/oncollide
execute at @e[tag=cyclecollider,tag=matchedid] unless block ~ ~ ~ #lc:passthrough run function lc:motion/collision/oncollide
execute at @e[tag=cyclecollider,tag=matchedid] unless block ^ ^ ^-1 #lc:passthrough run function lc:motion/collision/oncollide
execute at @e[tag=cyclecollider,tag=matchedid] unless block ^ ^ ^-2 #lc:passthrough run function lc:motion/collision/oncollide
