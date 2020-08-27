##storerotation

##value setup x zones
execute store result score @s y_rot run data get entity @s Rotation.[0]
scoreboard players set 360 y_rot 360
scoreboard players set 0 y_rot 0
execute if score @s y_rot < 0 y_rot store result score @s y_rot run scoreboard players operation 360 y_rot += @s y_rot
scoreboard players reset 360 y_rot
scoreboard players reset 0 y_rot

##value setup y rotation
execute store result score @s x_rot run data get entity @s Rotation.[1]

##x-axis zones
execute if score @s y_rot matches 0..44 run scoreboard players set @s y_rot_zone 1
execute if score @s y_rot matches 45..89 run scoreboard players set @s y_rot_zone 2
execute if score @s y_rot matches 90..134 run scoreboard players set @s y_rot_zone 3
execute if score @s y_rot matches 135..179 run scoreboard players set @s y_rot_zone 4
execute if score @s y_rot matches 180..224 run scoreboard players set @s y_rot_zone 5
execute if score @s y_rot matches 225..269 run scoreboard players set @s y_rot_zone 6
execute if score @s y_rot matches 270..314 run scoreboard players set @s y_rot_zone 7
execute if score @s y_rot matches 315..360 run scoreboard players set @s y_rot_zone 8
