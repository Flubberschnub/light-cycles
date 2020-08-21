##setallids
execute as @a[predicate=lj:lj/holdingclosedbaton,limit=1] unless score AllUnique JetID matches 1 run function lj:id/testuniquejetid
