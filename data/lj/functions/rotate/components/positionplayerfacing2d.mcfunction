execute if entity @s[predicate=lj:lj/riding_jet] at @e[tag=jetstand,tag=matchedid] rotated as @s run tp @e[tag=playerfacing2d,tag=matchedid] ^ ^ ^4.5
execute if entity @s[predicate=!lj:lj/riding_jet] as @e[tag=jetstand,tag=matchedid] at @s if score @s speed matches 1.. rotated ~90 ~ run tp @e[tag=playerfacing2d,tag=matchedid] ^ ^ ^4.5
