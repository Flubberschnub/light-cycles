##tiltright
execute as @e[tag=jetfacingy,tag=matchedid] at @e[tag=playerfacingy,tag=matchedid] run function aestd1:entity/get_distance
execute as @e[tag=jetfacingy,tag=matchedid] run scoreboard players operation @s tiltangle = @s aestd.math.out
execute as @e[tag=jetfacingy,tag=matchedid] run function lj:rotate/tilt/getangledown
execute if score @e[tag=jetfacingy,tag=matchedid,limit=1] tiltangle matches 2.. store result entity @e[tag=jetstand,tag=matchedid,limit=1] Pose.Head.[1] float 1 run scoreboard players get @e[tag=jetfacingy,tag=matchedid,limit=1] tiltangle
