##derez self
execute as @e[tag=cyclestand,tag=matchedid] run tag @s add derezzing
effect clear @a[tag=matchedid] jump_boost
effect clear @a[tag=matchedid] invisibility
tag @a[tag=rezzedvehicle,tag=matchedid] remove rezzedvehicle
tag @a[tag=matchedid] remove uniqueid
execute at @s as @s run function lc:rez/batons/derez
tp @e[tag=matchedid,tag=cyclecollider] ~ -1 ~
data merge entity @e[tag=matchedid,tag=cyclecollider,limit=1] {DeathTime:0}
kill @e[tag=matchedid,tag=lightcycle]
