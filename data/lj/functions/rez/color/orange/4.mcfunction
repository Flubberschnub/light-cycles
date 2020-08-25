##rez
##summon jet

##jetstand
execute at @s if block ~ ~-1 ~ #lj:passthrough run summon minecraft:armor_stand ~ ~-50 ~ {CustomNameVisible:0b,Invulnerable:1b,NoGravity:0b,Silent:1b,PersistenceRequired:1b,DisabledSlots:4144959,Tags:["lightjet","jetstand","justrezzed","rezzing","airrez"],ArmorItems:[{},{},{},{id:"minecraft:feather",Count:1b,tag:{CustomModelData:241}}],Invisible:1b,Passengers:[{id:"minecraft:minecart",Invulnerable:1b,Tags:["lightjet","jetcart","invisible_minecart","justrezzed"]}],CustomName:'{"text":"lightjet"}'}
execute at @s unless block ~ ~-1 ~ #lj:passthrough run summon minecraft:armor_stand ~ ~-50 ~ {CustomNameVisible:0b,Invulnerable:1b,NoGravity:0b,Silent:1b,PersistenceRequired:1b,DisabledSlots:4144959,Tags:["lightjet","jetstand","justrezzed","rezzing"],ArmorItems:[{},{},{},{id:"minecraft:feather",Count:1b,tag:{CustomModelData:41}}],Invisible:1b,Passengers:[{id:"minecraft:minecart",Invulnerable:1b,Tags:["lightjet","jetcart","invisible_minecart","justrezzed"]}],CustomName:'{"text":"lightjet"}'}
execute run tp @e[tag=jetstand,tag=justrezzed] ~ ~ ~ ~-90 ~
##jetfacingx
execute at @e[tag=jetstand,tag=justrezzed] rotated ~90 ~ run summon minecraft:area_effect_cloud ^ ^ ^3 {CustomNameVisible:0b,Duration:199980,Tags:["lightjet","jetfacingx","justrezzed"],CustomName:'{"text":"lightjet"}'}
##jetfacing2d
execute at @e[tag=jetstand,tag=justrezzed] rotated ~90 ~ run summon minecraft:area_effect_cloud ^ ^ ^3 {CustomNameVisible:0b,Duration:199980,Tags:["lightjet","jetfacing2d","justrezzed"],CustomName:'{"text":"lightjet"}'}
##playerfacingx
execute at @e[tag=jetstand,limit=1,tag=justrezzed] rotated as @s rotated ~ 0 run summon minecraft:area_effect_cloud ^ ^ ^3 {CustomNameVisible:0b,Duration:199980,Radius:0,Tags:["lightjet","playerfacingx","justrezzed"],CustomName:'{"text":"lightjet"}'}
##playerfacing2d
execute at @e[tag=jetstand,limit=1,tag=justrezzed] rotated as @s rotated ~ 0 run summon minecraft:area_effect_cloud ^ ^ ^3 {CustomNameVisible:0b,Duration:199980,Radius:0,Tags:["lightjet","playerfacing2d","justrezzed"],CustomName:'{"text":"lightjet"}'}
##jetcollider
execute at @e[tag=jetfacing2d,tag=justrezzed,limit=1] run summon minecraft:pig ~ ~-50 ~ {NoGravity:1b,Silent:1b,DeathLootTable:"lc:jetcollider",PersistenceRequired:1b,NoAI:1b,Tags:["lightjet","justrezzed","jetcollider"],CustomName:'{"text":"lightjet"}',ActiveEffects:[{Id:14b,Amplifier:1b,Duration:20000000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:9000000}]}
execute at @e[tag=jetfacing2d,tag=justrezzed] run tp @e[tag=jetcollider,tag=justrezzed] ~ ~ ~

##other stuff
#execute as @e[tag=jetstand,tag=justrezzed] run data merge entity @s {NoGravity:0b}
execute store result score @e[tag=justrezzed] JetID run scoreboard players get @s JetID
scoreboard players set @e[tag=justrezzed,tag=lightjet] JetType 4
scoreboard players operation @e[tag=justrezzed,tag=lightjet] circuitcolor = @s circuitcolor
scoreboard players set @e[tag=justrezzed,tag=jetstand] speed 0
scoreboard players set @e[tag=justrezzed,tag=jetstand,tag=airrez] speed 1000
data merge entity @e[tag=jetstand,tag=justrezzed,limit=1] {Pose:{Head:[0.001f,0.001f,0.001f]}}
execute store result entity @e[tag=jetstand,tag=justrezzed,limit=1] Pose.Head.[2] float 0.001 run data get entity @s Rotation.[1] -1000
execute store result entity @e[tag=jetstand,tag=justrezzed,limit=1] Rotation[1] float 0.001 run data get entity @s Rotation.[1] 1000

##positioning
execute as @e[tag=jetstand,tag=justrezzed] facing entity @e[tag=jetfacing2d,tag=justrezzed,limit=1] feet rotated ~-90 ~ run tp @s ~ ~ ~ ~ ~

tag @e[tag=justrezzed] remove justrezzed

execute at @s run playsound lightjet.rez master @a[distance=..30] ~ ~ ~ 5 1
