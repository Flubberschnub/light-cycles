##activate lightribbon
tag @s add ribboning
replaceitem entity @s[scores={CycleType=786}] armor.head emerald{CustomModelData:787}
replaceitem entity @s[scores={CycleType=5}] armor.head diamond{CustomModelData:5001}
data merge entity @e[tag=matchedid,tag=cyclecollider,limit=1] {HurtTime:0s}
