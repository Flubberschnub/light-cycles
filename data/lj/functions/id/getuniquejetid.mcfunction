tag @e remove testid
scoreboard players reset @s JetID
scoreboard players reset IDTester JetID
function lj:id/findunusedid
scoreboard players operation @s JetID = IDTester JetID
execute as @s[tag=!uniquejetid] unless entity @e[tag=testid] if score IDTester JetID matches 1.. run function lj:id/setbatonid
