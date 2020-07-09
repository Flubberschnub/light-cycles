##deactivate lightribbon
tag @s remove ribboning
replaceitem entity @s armor.head emerald{CustomModelData:786}
data merge entity @e[tag=matchedid,tag=cyclecollider,limit=1] {HurtTime:0s}
