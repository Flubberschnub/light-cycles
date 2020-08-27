##drag
execute as @s[tag=ribboning] if score @s speed > ribboning topSpeed run scoreboard players operation @s speed = ribboning topSpeed
execute unless score @s speed matches ..0 unless entity @a[tag=matchedid,predicate=lj:lj/riding_jet] run scoreboard players remove @s speed 15
#execute unless score @s speed matches ..0 if entity @s[tag=inAir] run scoreboard players remove @s speed 15
execute if score @s speed matches ..0 run scoreboard players set @s speed 0
