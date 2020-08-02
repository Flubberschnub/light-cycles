##onground
tag @e[tag=matchedid,tag=cyclestand,tag=onground] remove onground

execute at @s rotated ~ 0 if block ~ ~ ~ #lc:passthrough unless block ~ ~-.1 ~ #lc:passthrough run tag @e[tag=cyclestand,tag=matchedid] add onground
execute at @s rotated ~ 0 if block ^ ^ ^1 #lc:passthrough unless block ^ ^-.1 ^1 #lc:passthrough run tag @e[tag=cyclestand,tag=matchedid] add onground
execute at @s rotated ~ 0 if block ^ ^ ^-1 #lc:passthrough unless block ^ ^-.1 ^-1 #lc:passthrough run tag @e[tag=cyclestand,tag=matchedid] add onground
#execute at @s rotated ~ 0 if block ^ ^ ^-2 #lc:passthrough unless block ^ ^-.1 ^-2 #lc:passthrough run tag @e[tag=cyclestand,tag=matchedid] add onground
execute at @e[tag=matchedid,tag=cyclestand] if block ~ ~ ~ #lc:passthrough unless block ~ ~-.1 ~ #lc:passthrough run tag @s add onground
