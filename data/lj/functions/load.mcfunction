##load

##scoreboards
scoreboard objectives add JetID dummy
scoreboard objectives add JetType dummy
scoreboard objectives add x_rot dummy
scoreboard objectives add x_rot_zone dummy
scoreboard objectives add sputtertimer dummy
scoreboard objectives add prevtiltangle dummy
scoreboard objectives add tiltanglediff dummy
scoreboard objectives add gunalternate dummy
scoreboard objectives add shootRange dummy
scoreboard objectives add shoottimer dummy

##jet stats
scoreboard players set jet4 topSpeed 4500
scoreboard players set jet4 acceleration 55
scoreboard players set jet4 accelrate 10
scoreboard players set jet4 braketorque 60

##forceload for tp animation
execute in lc:the_grid run forceload add 0 0
