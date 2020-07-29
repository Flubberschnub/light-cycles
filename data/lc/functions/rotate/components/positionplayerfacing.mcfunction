execute if entity @s[predicate=lc:lc/riding_cycle] at @e[tag=cyclestand,tag=matchedid] rotated as @s rotated ~ 0 run tp @e[tag=playerfacing,tag=matchedid] ^ ^ ^3
execute if entity @s[predicate=!lc:lc/riding_cycle] as @e[tag=cyclestand,tag=matchedid] at @s if score @s speed matches 1.. rotated ~90 0 run tp @e[tag=playerfacing,tag=matchedid] ^ ^ ^3
