execute unless score @s speed matches ..0 run scoreboard players operation @s speed -= 5 braketorque
execute if score @s speed matches ..0 run scoreboard players set @s speed 0
replaceitem entity @s armor.head diamond{CustomModelData:5002}
execute if score @s circuitcolor matches 2 run replaceitem entity @s armor.head diamond{CustomModelData:25002}
