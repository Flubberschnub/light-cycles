##activate lightribbon
tag @s add ribboning
scoreboard players reset @a[tag=matchedid,predicate=lc:lc/controllingbike] clickbaton
replaceitem entity @s[scores={CycleType=786}] armor.head emerald{CustomModelData:787}
data merge entity @e[tag=matchedid,tag=cyclecollider,limit=1] {HurtTime:0s}
execute at @s run playsound lightcycle.lightribbon.activate master @a[distance=..10]
