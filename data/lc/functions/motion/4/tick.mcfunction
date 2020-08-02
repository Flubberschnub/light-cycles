##g5 motion tick
execute if entity @a[tag=matchedid,tag=accelerating] run function lc:motion/4/accelerate
execute if entity @a[tag=matchedid,tag=braking] run function lc:motion/4/brake
