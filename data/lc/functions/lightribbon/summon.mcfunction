##summon lightribbon (run as cyclestand, from lc:lightribbon/tick)
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Fire:400,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["lightcycle","lightribbon","newribbon"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:1}}],CustomName:'{"text":"lightribbon"}'}
execute at @s run tp @e[tag=newribbon] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=newribbon] CycleID = @s CycleID
execute as @e[tag=newribbon] store result entity @s Pose.Head.[0] float 1 run scoreboard players get @e[tag=cyclefacing,tag=matchedid,limit=1] tiltangle
tag @e[tag=newribbon] remove newribbon
