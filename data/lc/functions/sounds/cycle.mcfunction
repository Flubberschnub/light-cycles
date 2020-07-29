##cycle sounds
scoreboard players operation IDMatcher CycleID = @s CycleID
execute as @e if score @s CycleID = IDMatcher CycleID run tag @s add matchedid
execute as @s if entity @a[tag=matchedid,predicate=lc:lc/riding_cycle] if score @e[tag=cyclestand,tag=matchedid,limit=1] speed matches 0 run function lc:sounds/cycle/enginesidle
execute as @s if entity @a[tag=matchedid,predicate=lc:lc/riding_cycle] if score @e[tag=cyclestand,tag=matchedid,limit=1] speed matches 1..100 run function lc:sounds/cycle/enginesspeed1
execute as @s if entity @a[tag=matchedid,predicate=lc:lc/riding_cycle] if score @e[tag=cyclestand,tag=matchedid,limit=1] speed matches 101..200 run function lc:sounds/cycle/enginesspeed2
execute as @s if entity @a[tag=matchedid,predicate=lc:lc/riding_cycle] if score @e[tag=cyclestand,tag=matchedid,limit=1] speed matches 201..300 run function lc:sounds/cycle/enginesspeed3
execute as @s if entity @a[tag=matchedid,predicate=lc:lc/riding_cycle] if score @e[tag=cyclestand,tag=matchedid,limit=1] speed matches 301..400 run function lc:sounds/cycle/enginesspeed4
execute as @s if entity @a[tag=matchedid,predicate=lc:lc/riding_cycle] if score @e[tag=cyclestand,tag=matchedid,limit=1] speed matches 401..500 run function lc:sounds/cycle/enginesspeed5
execute as @s if entity @a[tag=matchedid,predicate=lc:lc/riding_cycle] if score @e[tag=cyclestand,tag=matchedid,limit=1] speed matches 501..600 run function lc:sounds/cycle/enginesspeed6
execute as @s if entity @a[tag=matchedid,predicate=lc:lc/riding_cycle] if score @e[tag=cyclestand,tag=matchedid,limit=1] speed matches 601..700 run function lc:sounds/cycle/enginesspeed7
execute as @s if entity @a[tag=matchedid,predicate=lc:lc/riding_cycle] if score @e[tag=cyclestand,tag=matchedid,limit=1] speed matches 701..800 run function lc:sounds/cycle/enginesspeed8
execute as @s if entity @a[tag=matchedid,predicate=lc:lc/riding_cycle] if score @e[tag=cyclestand,tag=matchedid,limit=1] speed matches 801..900 run function lc:sounds/cycle/enginesspeed9
execute as @s if entity @a[tag=matchedid,predicate=lc:lc/riding_cycle] if score @e[tag=cyclestand,tag=matchedid,limit=1] speed matches 901..1000 run function lc:sounds/cycle/enginesspeed10
execute as @s if entity @a[tag=matchedid,predicate=lc:lc/riding_cycle] if score @e[tag=cyclestand,tag=matchedid,limit=1] speed matches 1001..1100 run function lc:sounds/cycle/enginesspeed11
execute as @s if entity @a[tag=matchedid,predicate=lc:lc/riding_cycle] if score @e[tag=cyclestand,tag=matchedid,limit=1] speed matches 1101..1200 run function lc:sounds/cycle/enginesspeed12
execute as @s if entity @a[tag=matchedid,predicate=lc:lc/riding_cycle] if score @e[tag=cyclestand,tag=matchedid,limit=1] speed matches 1201..1300 run function lc:sounds/cycle/enginesspeed13
execute as @s if entity @a[tag=matchedid,predicate=lc:lc/riding_cycle] if score @e[tag=cyclestand,tag=matchedid,limit=1] speed matches 1301..1400 run function lc:sounds/cycle/enginesspeed14
execute as @s if entity @a[tag=matchedid,predicate=lc:lc/riding_cycle] if score @e[tag=cyclestand,tag=matchedid,limit=1] speed matches 1401..1500 run function lc:sounds/cycle/enginesspeed15
execute as @s if entity @a[tag=matchedid,predicate=lc:lc/riding_cycle] if score @e[tag=cyclestand,tag=matchedid,limit=1] speed matches 1501..1600 run function lc:sounds/cycle/enginesspeed16
execute as @s if entity @a[tag=matchedid,predicate=lc:lc/riding_cycle] if score @e[tag=cyclestand,tag=matchedid,limit=1] speed matches 1601..1700 run function lc:sounds/cycle/enginesspeed17
execute as @s if entity @a[tag=matchedid,predicate=lc:lc/riding_cycle] if score @e[tag=cyclestand,tag=matchedid,limit=1] speed matches 1701..1800 run function lc:sounds/cycle/enginesspeed18
execute as @s if entity @a[tag=matchedid,predicate=lc:lc/riding_cycle] if score @e[tag=cyclestand,tag=matchedid,limit=1] speed matches 1801..1900 run function lc:sounds/cycle/enginesspeed19
execute as @s if entity @a[tag=matchedid,predicate=lc:lc/riding_cycle] if score @e[tag=cyclestand,tag=matchedid,limit=1] speed matches 1901..2000 run function lc:sounds/cycle/enginesspeed20
execute as @s if entity @a[tag=matchedid,predicate=lc:lc/riding_cycle] if score @e[tag=cyclestand,tag=matchedid,limit=1] speed matches 2001..2100 run function lc:sounds/cycle/enginesspeed21
execute as @s if entity @a[tag=matchedid,predicate=lc:lc/riding_cycle] if score @e[tag=cyclestand,tag=matchedid,limit=1] speed matches 2101..2200 run function lc:sounds/cycle/enginesspeed22
execute as @s if entity @a[tag=matchedid,predicate=lc:lc/riding_cycle] if score @e[tag=cyclestand,tag=matchedid,limit=1] speed matches 2201..2300 run function lc:sounds/cycle/enginesspeed23
execute as @s if entity @a[tag=matchedid,predicate=lc:lc/riding_cycle] if score @e[tag=cyclestand,tag=matchedid,limit=1] speed matches 2301..2400 run function lc:sounds/cycle/enginesspeed24
execute as @s if entity @a[tag=matchedid,predicate=lc:lc/riding_cycle] if score @e[tag=cyclestand,tag=matchedid,limit=1] speed matches 2401..2500 run function lc:sounds/cycle/enginesspeed25
execute as @s if entity @a[tag=matchedid,predicate=lc:lc/riding_cycle] if score @e[tag=cyclestand,tag=matchedid,limit=1] speed matches 2501..2600 run function lc:sounds/cycle/enginesspeed26
execute as @s if entity @a[tag=matchedid,predicate=lc:lc/riding_cycle] if score @e[tag=cyclestand,tag=matchedid,limit=1] speed matches 2601..2700 run function lc:sounds/cycle/enginesspeed27
execute as @s if entity @a[tag=matchedid,predicate=lc:lc/riding_cycle] if score @e[tag=cyclestand,tag=matchedid,limit=1] speed matches 2701..2800 run function lc:sounds/cycle/enginesspeed28
execute as @s if entity @a[tag=matchedid,predicate=lc:lc/riding_cycle] if score @e[tag=cyclestand,tag=matchedid,limit=1] speed matches 2801..2900 run function lc:sounds/cycle/enginesspeed29
execute as @s if entity @a[tag=matchedid,predicate=lc:lc/riding_cycle] if score @e[tag=cyclestand,tag=matchedid,limit=1] speed matches 2901..3000 run function lc:sounds/cycle/enginesspeed30
tag @e[tag=matchedid] remove matchedid
