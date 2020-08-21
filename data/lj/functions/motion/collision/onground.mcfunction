##onground
tag @e[tag=matchedid,tag=jetstand,tag=onground] remove onground

execute at @s rotated ~ 0 if block ~ ~ ~ #lj:passthrough unless block ~ ~-.1 ~ #lj:passthrough run tag @e[tag=jetstand,tag=matchedid] add onground
execute at @s rotated ~ 0 if block ^ ^ ^1 #lj:passthrough unless block ^ ^-.1 ^1 #lj:passthrough run tag @e[tag=jetstand,tag=matchedid] add onground
execute at @s rotated ~ 0 if block ^ ^ ^-1 #lj:passthrough unless block ^ ^-.1 ^-1 #lj:passthrough run tag @e[tag=jetstand,tag=matchedid] add onground
#execute at @s rotated ~ 0 if block ^ ^ ^-2 #lj:passthrough unless block ^ ^-.1 ^-2 #lj:passthrough run tag @e[tag=jetstand,tag=matchedid] add onground
execute at @e[tag=matchedid,tag=jetstand] if block ~ ~ ~ #lj:passthrough unless block ~ ~-.1 ~ #lj:passthrough run tag @s add onground
