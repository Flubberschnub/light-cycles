##moveup
tag @s add moveup
execute if block ~ ~-1 ~ #lc:passthrough run scoreboard players set @s movinguptick 7
execute unless block ~ ~-1 ~ #lc:passthrough run scoreboard players set @s movinguptick 2
scoreboard players operation @s aestd.math.in = @s speed
