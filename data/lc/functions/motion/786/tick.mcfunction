##786 motion tick
execute if entity @a[tag=matchedid,tag=accelerating] run function lc:motion/786/accelerate
execute if entity @a[tag=matchedid,tag=braking] run function lc:motion/786/brake
