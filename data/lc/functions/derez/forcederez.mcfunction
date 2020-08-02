##forcederez (run as cyclestand within matchedid)
scoreboard players set @s[tag=!derezzing] rezanimate 16
execute at @s[tag=!derezzing] run playsound lightcycle.derez master @a[distance=..10] ~ ~ ~ 1 1
kill @e[tag=matchedid,tag=cyclecart]
tag @s add derezzing
