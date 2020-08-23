##tiltleft
#execute as @e[tag=jetfacingx,tag=matchedid] at @e[tag=playerfacingx,tag=matchedid,limit=1] run function aestd1:entity/get_distance
#execute as @e[tag=jetfacingx,tag=matchedid] run scoreboard players operation @s tiltangle = @s aestd.math.out
##set up -1 value
scoreboard players set -1 Constant -1
scoreboard players operation @s tiltangle = @e[tag=jetfacing2d,limit=1,tag=matchedid] y_rot
scoreboard players operation @s tiltangle -= @a[tag=matchedid,limit=1] y_rot
execute if score @s tiltangle matches ..-1 run scoreboard players operation @s tiltangle *= -1 Constant

##cross 360 line
scoreboard players operation tempAngle tiltangle = @s tiltangle
execute store result score @s tiltanglediff run scoreboard players operation tempAngle tiltangle -= @s prevtiltangle
scoreboard players operation @s[scores={tiltanglediff=..-1}] tiltanglediff *= -1 Constant
execute if score @s tiltanglediff matches 100.. run function lj:rotate/tilt/thresholdanglegetright

#execute as @s run function lj:rotate/tilt/getangleleft
execute if score @s tiltangle matches 2.. store result entity @e[tag=jetstand,tag=matchedid,limit=1] Pose.Head.[0] float -1 run scoreboard players get @s tiltangle
scoreboard players reset -1 Constant
scoreboard players operation @s prevtiltangle = @s tiltangle

scoreboard players reset tempAngle tiltangle
