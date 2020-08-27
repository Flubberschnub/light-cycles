##raycast
scoreboard players add @s gunalternate 1
scoreboard players set @s[scores={gunalternate=3..}] gunalternate 1
execute if score @s gunalternate matches 1 rotated ~90 ~ positioned ^-1 ^ ^ run function lj:guns/shoot
execute if score @s gunalternate matches 2 rotated ~90 ~ positioned ^1 ^ ^ run function lj:guns/shoot
