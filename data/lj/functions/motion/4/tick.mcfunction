##g5 motion tick
execute if entity @a[tag=matchedid,tag=accelerating] run function lj:motion/4/accelerate
execute if entity @a[tag=matchedid,tag=braking] run function lj:motion/4/brake
