##thresholdangleget
scoreboard players set 360 Constant 360

##360 Constant now has player angle from 0
scoreboard players operation playerYRot y_rot = @a[tag=matchedid,limit=1] y_rot
scoreboard players operation 360 Constant -= playerYRot y_rot

##tiltangle is now jetfacing rotation
scoreboard players operation @s tiltangle = @e[tag=jetfacing2d,limit=1,tag=matchedid] y_rot

##add them together to get the angle
scoreboard players operation @s tiltangle += 360 Constant

##cleanup
scoreboard players reset 360 Constant
scoreboard players reset playerYRot y_rot
