##derez self
execute as @e[tag=cyclestand,tag=matchedid] run tag @s add derezzing
effect clear @a[tag=matchedid] jump_boost
effect clear @a[tag=matchedid] invisibility
execute at @s as @s run function lc:rez/batons/derez
tp @e[tag=matchedid,tag=cyclecollider] ~ -1 ~
kill @e[tag=matchedid,tag=lightcycle]
