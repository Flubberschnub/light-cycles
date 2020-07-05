##drag
execute unless score @s speed matches ..0 run scoreboard players remove @s speed 5
execute if score @s speed matches ..0 run scoreboard players set @s speed 0
