##batoncolor tick
execute as @s[predicate=lc:lc/holdingclosedbaton,tag=!batoncolormatch,predicate=!lc:lc/riding_cycle] run function lc:color/batoncolor/match
tag @s[predicate=!lc:lc/holdingclosedbaton,tag=batoncolormatch,predicate=!lc:lc/riding_cycle] remove batoncolormatch
