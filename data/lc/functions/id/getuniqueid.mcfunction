tag @e remove testid
scoreboard players reset @s CycleID
scoreboard players reset IDTester CycleID
function lc:id/findunusedid
scoreboard players operation @s CycleID = IDTester CycleID
execute as @s[tag=!uniqueid] unless entity @e[tag=testid] if score IDTester CycleID matches 1.. run function lc:id/setbatonid
