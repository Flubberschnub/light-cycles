##batoncolor tick
execute as @s[predicate=lj:lj/holdingclosedbaton,tag=!batoncolormatch,predicate=!lj:lj/riding_jet] run function lj:color/batoncolor/match
tag @s[predicate=!lj:lj/holdingclosedbaton,tag=batoncolormatch,predicate=!lj:lj/riding_jet] remove batoncolormatch
