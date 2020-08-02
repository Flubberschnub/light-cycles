scoreboard players add IDTester CycleID 1
execute as @a[scores={CycleID=1..}] if score @s CycleID = IDTester CycleID run function lc:id/findunusedid
