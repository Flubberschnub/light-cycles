execute at @e[tag=jetstand,tag=matchedid] rotated ~90 ~ run tp @s ^ ^ ^3 ~ ~
#execute at @e[tag=jetstand,tag=matchedid,tag=moveup] rotated ~90 -30 run tp @s ^ ^ ^3 ~ ~
execute at @s if score @e[tag=jetstand,tag=matchedid,limit=1] speed matches 1.. facing entity @e[tag=playerfacing2d,tag=matchedid,limit=1] feet run tp @s ^ ^ ^.3
