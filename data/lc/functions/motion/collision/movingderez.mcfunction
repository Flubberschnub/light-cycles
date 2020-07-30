##movingderez
scoreboard players set @s[tag=!derezzing] rezanimate 16
execute at @s[tag=!derezzing] run playsound lightcycle.crash master @a[distance=..100] ~ ~ ~ 3 1 0.1
data merge entity @s[tag=!derezzing] {Motion:[0.0,0.0,0.0]}
scoreboard players set @s speed 0
execute at @s rotated ~90 ~ run particle flash ^ ^ ^2 0 0 0 0 1 force
execute at @s rotated ~90 ~ run particle smoke ^ ^1 ^2 0 0 0 0.1 100 force
execute at @s rotated ~90 ~ run particle firework ^ ^1 ^2 0 0 0 0.5 200 force
execute at @s rotated ~90 ~ run particle explosion_emitter ^ ^1 ^2 0 0 0 0.1 1 force
kill @e[tag=matchedid,tag=cyclecart]
tag @s add derezzing
