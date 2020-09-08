##scoreboards
scoreboard objectives add derezzes dummy
scoreboard objectives add value dummy

scoreboard players set MILLION Constant 1000000

##team setup
team modify nocollide seeFriendlyInvisibles false

##forceload for tp animation
execute in lc:the_grid run forceload add 0 0
