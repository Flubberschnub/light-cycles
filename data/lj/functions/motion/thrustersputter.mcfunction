##thrustersputter
execute store result score @s YPos run data get entity @s Pos[1] 1
execute unless score @s sputtertimer matches 1.. run scoreboard players set @s[scores={YPos=230..}] sputtertimer 60
scoreboard players remove @s[scores={sputtertimer=1..}] sputtertimer 1
scoreboard players set @s[scores={sputtertimer=1..}] speed 50
execute if score @s sputtertimer matches ..0 run scoreboard players reset @s sputtertimer
