##match color
execute unless score @s circuitcolor matches 2.. run function lc:color/batoncolor/5/blue
execute if score @s circuitcolor matches 2 run function lc:color/batoncolor/5/orange
execute if score @s circuitcolor matches 3 run function lc:color/batoncolor/5/green
