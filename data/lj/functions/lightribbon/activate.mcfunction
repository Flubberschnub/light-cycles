##activate lightribbon
tag @s add ribboning
scoreboard players reset @a[tag=matchedid,predicate=lj:lj/controllingjet] clickbaton
data merge entity @e[tag=matchedid,tag=jetcollider,limit=1] {HurtTime:0s}
execute at @s run playsound lightcycle.lightribbon.activate master @a[distance=..10]
