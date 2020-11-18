##speedometer
execute unless score @s circuitcolor matches 2.. if score @s JetType matches 4 run function lj:gauges/speedometer/blue/73
execute unless score @s circuitcolor matches 2.. if score @s JetType matches 5 run function lj:gauges/speedometer/blue/73

##colors
execute if score @s JetType matches 4 if score @s circuitcolor matches 2 run function lj:gauges/speedometer/orange/73
execute if score @s JetType matches 4 if score @s circuitcolor matches 3 run function lj:gauges/speedometer/green/73

execute if score @s JetType matches 5 if score @s circuitcolor matches 2 run function lj:gauges/speedometer/orange/73
execute if score @s JetType matches 5 if score @s circuitcolor matches 3 run function lj:gauges/speedometer/green/73
