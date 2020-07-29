##g5 motion tick
execute if entity @a[predicate=lc:lc/accelerating,tag=matchedid] run function lc:motion/4/accelerate
execute if entity @a[predicate=lc:lc/braking,tag=matchedid] run function lc:motion/4/brake
