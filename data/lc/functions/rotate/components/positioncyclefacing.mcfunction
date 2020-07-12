execute at @e[tag=cyclestand,tag=matchedid] rotated ~90 0 run tp @s ^ ^ ^3 ~ ~
#execute at @e[tag=cyclestand,tag=matchedid,tag=moveup] rotated ~90 -30 run tp @s ^ ^ ^3 ~ ~
execute at @s facing entity @e[tag=playerfacing,tag=matchedid,limit=1] eyes run tp @s ^ ^ ^.5
