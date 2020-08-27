scoreboard players add IDTester JetID 1
execute as @a[scores={JetID=1..}] if score @s JetID = IDTester JetID run function lj:id/findunusedid
