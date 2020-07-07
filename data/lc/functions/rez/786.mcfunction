##rez
##summon cycle

##cyclestand
summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:0b,Invulnerable:1b,Small:1b,NoGravity:1b,Silent:1b,PersistenceRequired:1b,DisabledSlots:4144959,Tags:["lightcycle","cyclestand","justrezzed","rezzing"],ArmorItems:[{},{},{},{id:"minecraft:emerald",Count:1b,tag:{CustomModelData:7861}}],Invisible:1b,Passengers:[{id:"minecraft:minecart",Invulnerable:1b,Tags:["lightcycle","cyclecart","invisible_minecart","justrezzed"]}],CustomName:'{"text":"lightcycle"}'}
execute run tp @e[tag=cyclestand,tag=justrezzed] ~ ~ ~ ~-90 ~
##cyclefacing
execute at @e[tag=cyclestand,tag=justrezzed] rotated ~90 ~ run summon minecraft:area_effect_cloud ^ ^ ^3 {CustomNameVisible:0b,Duration:199980,Tags:["lightcycle","cyclefacing","justrezzed"],CustomName:'{"text":"lightcycle"}'}
##playerfacing
execute at @e[tag=cyclestand,limit=1,tag=justrezzed] rotated as @s rotated ~ 0 run summon minecraft:area_effect_cloud ^ ^ ^3 {CustomNameVisible:0b,Duration:199980,Radius:0,Tags:["lightcycle","playerfacing","justrezzed"],CustomName:'{"text":"lightcycle"}'}
##cyclecollider
execute at @e[tag=cyclefacing,tag=justrezzed,limit=1] run summon minecraft:pig ~ ~-50 ~ {NoGravity:1b,Silent:1b,DeathLootTable:"lc:cyclecollider",PersistenceRequired:1b,NoAI:1b,Tags:["lightcycle","justrezzed","cyclecollider"],CustomName:'{"text":"lightcycle"}',ActiveEffects:[{Id:14b,Amplifier:1b,Duration:20000000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:9000000}]}
execute at @e[tag=cyclefacing,tag=justrezzed] run tp @e[tag=cyclecollider,tag=justrezzed] ~ ~ ~

##other stuff
#execute as @e[tag=cyclestand,tag=justrezzed] run data merge entity @s {NoGravity:0b}
execute store result score @e[tag=justrezzed] CycleID run scoreboard players get @s CycleID
scoreboard players set @e[tag=justrezzed,tag=lightcycle] CycleType 786
scoreboard players set @e[tag=justrezzed,tag=cyclestand] topSpeed 1500
scoreboard players set @e[tag=justrezzed,tag=cyclestand] speed 0
execute as @s[predicate=lc:flags/is_sprinting] run scoreboard players set @e[tag=justrezzed,tag=cyclestand] speed 500

##positioning
execute as @e[tag=cyclestand,tag=justrezzed] facing entity @e[tag=cyclefacing,tag=justrezzed,limit=1] feet rotated ~-90 ~ run tp @s ~ ~ ~ ~ ~

tag @e[tag=justrezzed] remove justrezzed
