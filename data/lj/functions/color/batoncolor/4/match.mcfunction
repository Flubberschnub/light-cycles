##match color
execute unless score @s circuitcolor matches 2.. run function lj:color/batoncolor/4/blue
execute if score @s circuitcolor matches 2 run function lj:color/batoncolor/4/orange
execute if score @s circuitcolor matches 3 run function lj:color/batoncolor/4/green
