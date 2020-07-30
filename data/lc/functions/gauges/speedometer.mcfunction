##speedometer
execute unless score @s circuitcolor matches 2.. if score @s CycleType matches 786 run function lc:gauges/speedometer/blue/786
execute unless score @s circuitcolor matches 2.. if score @s CycleType matches 5 run function lc:gauges/speedometer/blue/5
execute unless score @s circuitcolor matches 2.. if score @s CycleType matches 4 run function lc:gauges/speedometer/blue/4

##colors
execute if score @s CycleType matches 786 if score @s circuitcolor matches 2 run function lc:gauges/speedometer/red/786
execute if score @s CycleType matches 5 if score @s circuitcolor matches 2 run function lc:gauges/speedometer/red/5
execute if score @s CycleType matches 4 if score @s circuitcolor matches 2 run function lc:gauges/speedometer/red/4
