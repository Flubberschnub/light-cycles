##rider effects
effect give @a[predicate=lc:lc/riding_cycle] invisibility 1 0 true
#execute at @a[predicate=lc:lc/riding_cycle] run particle barrier ~ ~ ~ 0 0 0 0 1

##invisible minecart
execute as @e[type=#minecraft:minecarts,tag=!invisible_minecart] run function lc:invisicarts

##cyclecontrols for rider
execute as @a[predicate=!lc:lc/riding_cycle,predicate=lc:lc/holdingcontrols] run clear @s carrot_on_a_stick{BikeControl:1}
execute as @a[predicate=lc:lc/riding_cycle,predicate=!lc:lc/holdingcontrols,tag=rezzedvehicle] run function lc:bikecontrols/give

##motion
execute as @a run function lc:match/player/move

##de-rez
execute as @e[tag=cyclecollider,nbt={HurtTime:10s}] run function lc:match/cyclecollider/derez
execute as @e[tag=cyclestand,tag=derezzing] run function lc:derez/animate/tick

##sounds
execute as @e[tag=cyclestand] run function lc:sounds/cycle
