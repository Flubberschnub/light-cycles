##setallids
execute as @a[predicate=lc:lc/holdingclosedbaton,limit=1] unless score AllUnique CycleID matches 1 run function lc:id/testuniqueid
