##activate lightribbon
tag @s add ribboning
replaceitem entity @s armor.head emerald{CustomModelData:787}
data merge entity @e[tag=matchedid,tag=cyclecollider,limit=1] {HurtTime:0s}
