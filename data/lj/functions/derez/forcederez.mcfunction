##forcederez (run as cyclestand within matchedid)
scoreboard players set @s[tag=!derezzing] rezanimate 16
execute at @s[tag=!derezzing] run playsound lightjet.derez master @a[distance=..30] ~ ~ ~ 1 1
kill @e[tag=matchedid,tag=jetcart]
tag @s add derezzing
