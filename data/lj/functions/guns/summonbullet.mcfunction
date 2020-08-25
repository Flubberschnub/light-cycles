##summon bullet
forceload add ~600 ~600
execute unless score @s circuitcolor matches 2.. run summon minecraft:armor_stand ~600 0 ~600 {NoGravity:1b,Invulnerable:1b,Fire:400,Marker:1b,Invisible:1b,PersistenceRequired:1b,Pose:{Head:[0.001f,0.001f,0.001f]},Tags:["lightjet","bullet","newbullet"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:light_blue_dye",Count:1b,tag:{CustomModelData:3}}],CustomName:'{"text":"bullet"}'}
execute if score @s circuitcolor matches 2 in lc:the_grid run summon minecraft:armor_stand ~100 0 ~100 {NoGravity:1b,Invulnerable:1b,Fire:400,Marker:1b,Invisible:1b,PersistenceRequired:1b,Pose:{Head:[0.001f,0.001f,0.001f]},Tags:["lightjet","bullet","newbullet"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:3}}],CustomName:'{"text":"bullet"}'}
scoreboard players operation @e[tag=newbullet] JetID = @s JetID
scoreboard players operation @e[tag=newbullet] circuitcolor = @s circuitcolor
execute as @e[tag=newbullet] store result entity @s Pose.Head.[0] float -1 run data get entity @e[tag=jetstand,limit=1,tag=matchedid] Pose.Head.[2]
tp @e[tag=newbullet] ~ ~-0.5 ~ ~ ~
#execute as @s[tag=!moveup] as @e[tag=newribbon] store result entity @s Pose.Head.[2] float -1.8 run data get entity @e[tag=cyclestand,limit=1,tag=matchedid] Pose.Head.[2]
#execute as @s[tag=moveup] as @e[tag=newribbon] store result entity @s Pose.Head.[2] float 1.2 run data get entity @e[tag=cyclestand,limit=1,tag=matchedid] Pose.Head.[2]
tag @e[tag=newbullet] remove newbullet
forceload remove ~600 ~600
