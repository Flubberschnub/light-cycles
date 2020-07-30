##batoncolor tick
execute as @s[predicate=lc:lc/holdingclosedbaton,tag=!batoncolormatch] run function lc:color/batoncolor/match
tag @s[predicate=!lc:lc/holdingclosedbaton,tag=batoncolormatch] remove batoncolormatch
