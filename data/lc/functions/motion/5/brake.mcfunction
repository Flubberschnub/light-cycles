execute unless score @s speed matches ..0 run scoreboard players operation @s speed -= 5 braketorque
execute if score @s speed matches ..0 run scoreboard players set @s speed 0
replaceitem entity @s armor.head diamond{CustomModelData:5002}
replaceitem entity @s[scores={circuitcolor=2}] armor.head diamond{CustomModelData:25002}
replaceitem entity @s[scores={circuitcolor=3}] armor.head diamond{CustomModelData:35002}
