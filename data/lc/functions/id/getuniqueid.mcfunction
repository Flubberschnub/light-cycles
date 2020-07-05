tag @e remove testid
scoreboard players reset @s CycleID
scoreboard players add IDTester CycleID 1
execute as @e if score @s CycleID = IDTester CycleID run tag @s add testid
execute if entity @e[tag=testid] run function lc:id/getuniqueid
execute unless entity @e[tag=testid] if score IDTester CycleID matches 1.. run function lc:id/setbatonid
