##speedometer
execute unless score @s circuitcolor matches 2.. if score @s CycleType matches 786 run function lc:gauges/speedometer/blue/73
execute unless score @s circuitcolor matches 2.. if score @s CycleType matches 5 run function lc:gauges/speedometer/blue/73
execute unless score @s circuitcolor matches 2.. if score @s CycleType matches 4 run function lc:gauges/speedometer/blue/73
execute unless score @s circuitcolor matches 2.. if score @s CycleType matches 73 run function lc:gauges/speedometer/blue/73

##colors
execute if score @s CycleType matches 786 if score @s circuitcolor matches 2 run function lc:gauges/speedometer/red/73
execute if score @s CycleType matches 5 if score @s circuitcolor matches 2 run function lc:gauges/speedometer/red/73
execute if score @s CycleType matches 4 if score @s circuitcolor matches 2 run function lc:gauges/speedometer/red/73
execute if score @s CycleType matches 73 if score @s circuitcolor matches 2 run function lc:gauges/speedometer/red/73
