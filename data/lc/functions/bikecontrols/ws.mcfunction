##Get player motion
execute store result score X playermotion run data get entity @s Motion[0] 100
execute store result score Z playermotion run data get entity @s Motion[2] 100

##Detect if going forward or back
execute if entity @s[y_rotation=-135..-45] if score X playermotion matches 1.. run tag @s add accelerating
execute if entity @s[y_rotation=-45..45] if score Z playermotion matches 1.. run tag @s add accelerating
execute if entity @s[y_rotation=45..135] if score X playermotion matches ..-1 run tag @s add accelerating
execute if entity @s[y_rotation=135..-135] if score Z playermotion matches ..-1 run tag @s add accelerating

execute if entity @s[y_rotation=-135..-45] if score X playermotion matches ..-1 run tag @s add braking
execute if entity @s[y_rotation=-45..45] if score Z playermotion matches ..-1 run tag @s add braking
execute if entity @s[y_rotation=45..135] if score X playermotion matches 1.. run tag @s add braking
execute if entity @s[y_rotation=135..-135] if score Z playermotion matches 1.. run tag @s add braking
