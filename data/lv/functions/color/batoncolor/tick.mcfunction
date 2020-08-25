##batoncolor tick
execute as @s[predicate=lv:lv/holdingclosedbaton,tag=!batoncolormatch,predicate=!lv:lv/riding_vehicle] run function lv:color/batoncolor/match
tag @s[predicate=!lv:lv/holdingclosedbaton,tag=batoncolormatch,predicate=!lv:lv/riding_vehicle] remove batoncolormatch
