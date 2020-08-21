##tiltright
execute as @e[tag=jetfacingx,tag=matchedid] at @e[tag=playerfacing,tag=matchedid] run function aestd1:entity/get_distance
execute as @e[tag=jetfacingx,tag=matchedid] run scoreboard players operation @s tiltangle = @s aestd.math.out
execute as @e[tag=jetfacingx,tag=matchedid] run function lj:rotate/tilt/getangleright
execute if score @e[tag=jetfacingx,tag=matchedid,limit=1] tiltangle matches ..-2 store result entity @e[tag=jetstand,tag=matchedid,limit=1] Pose.Head.[0] float 1 run scoreboard players get @e[tag=jetfacingx,tag=matchedid,limit=1] tiltangle
