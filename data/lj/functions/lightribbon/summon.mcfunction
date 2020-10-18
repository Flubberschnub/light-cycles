##summon lightribbon (run as cyclestand, from lj:lightribbon/tick)
execute unless score @s circuitcolor matches 2.. run summon minecraft:armor_stand ~ ~1000 ~ {NoGravity:1b,Invulnerable:1b,Fire:400,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Pose:{Head:[0.0f,0.001f,0.0f]},Tags:["lightjet","lightribbon","newribbon"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:light_blue_dye",Count:1b,tag:{CustomModelData:2}}],CustomName:'{"text":"lightribbon"}'}
execute if score @s circuitcolor matches 2 run summon minecraft:armor_stand ~ ~1000 ~ {NoGravity:1b,Invulnerable:1b,Fire:400,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Pose:{Head:[0.0f,0.001f,0.0f]},Tags:["lightjet","lightribbon","newribbon"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:orange_dye",Count:1b,tag:{CustomModelData:2}}],CustomName:'{"text":"lightribbon"}'}
execute if score @s circuitcolor matches 3 run summon minecraft:armor_stand ~ ~1000 ~ {NoGravity:1b,Invulnerable:1b,Fire:400,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Pose:{Head:[0.0f,0.001f,0.0f]},Tags:["lightjet","lightribbon","newribbon"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:green_dye",Count:1b,tag:{CustomModelData:2}}],CustomName:'{"text":"lightribbon"}'}
execute anchored eyes run tp @e[tag=newribbon] ~ ~0.95 ~ ~ ~
scoreboard players operation @e[tag=newribbon] JetID = @s JetID
scoreboard players operation @e[tag=newribbon] circuitcolor = @s circuitcolor
execute as @e[tag=newribbon] store result entity @s Pose.Head.[0] float 1 run data get entity @e[tag=jetstand,limit=1,tag=matchedid] Pose.Head.[0]
execute as @e[tag=newribbon] store result entity @s Pose.Head.[2] float 1 run data get entity @e[tag=jetstand,limit=1,tag=matchedid] Pose.Head.[2]
#execute as @s[tag=!moveup] as @e[tag=newribbon] store result entity @s Pose.Head.[2] float -1.8 run data get entity @e[tag=cyclestand,limit=1,tag=matchedid] Pose.Head.[2]
#execute as @s[tag=moveup] as @e[tag=newribbon] store result entity @s Pose.Head.[2] float 1.2 run data get entity @e[tag=cyclestand,limit=1,tag=matchedid] Pose.Head.[2]
tag @e[tag=newribbon] remove newribbon
