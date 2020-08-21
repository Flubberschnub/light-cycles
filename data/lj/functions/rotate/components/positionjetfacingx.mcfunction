execute at @e[tag=jetstand,tag=matchedid] rotated ~90 0 run tp @s ^ ^ ^4.5 ~ ~
#execute at @e[tag=jetstand,tag=matchedid,tag=moveup] rotated ~90 -30 run tp @s ^ ^ ^3 ~ ~
execute at @s if score @e[tag=jetstand,tag=matchedid,limit=1] speed matches 1.. facing entity @e[tag=playerfacingx,tag=matchedid,limit=1] eyes run tp @s ^ ^ ^.4
