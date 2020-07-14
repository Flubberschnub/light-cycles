##786 motion tick
execute if entity @a[predicate=lc:lc/accelerating,tag=matchedid] run function lc:motion/5/accelerate
execute if entity @a[predicate=lc:lc/braking,tag=matchedid] run function lc:motion/5/brake
execute if entity @a[predicate=!lc:lc/braking,tag=matchedid] if entity @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{id:"minecraft:diamond",Count:1b,tag:{CustomModelData:5002}}]}] run replaceitem entity @s armor.head diamond{CustomModelData:5}
