

#execute at @a[predicate=lj:lj/riding_jet] run particle barrier ~ ~ ~ 0 0 0 0 1

##invisible minecart
#execute as @e[type=#minecraft:minecarts,tag=!invisible_minecart] run function lj:invisicarts

##thruster sputter
execute as @e[tag=jetstand] run function lj:motion/thrustersputter

##nocollide for collider
team join nocollide @e[tag=jetcollider]

##jetcontrols for rider
execute as @a[predicate=!lj:lj/riding_jet] run clear @s carrot_on_a_stick{JetControl:1}
execute as @a[predicate=!lj:lj/holdingcontrols] run clear @s carrot_on_a_stick{JetControl:1}
execute as @a[predicate=lj:lj/riding_jet,predicate=!lj:lj/holdingcontrols,tag=rezzedvehicle] at @s run function lj:jetcontrols/give

##motion
execute as @a at @s run function lj:match/player/move

##guns
execute as @e[tag=jetstand] run function lj:match/jetstand/guns

##de-rez
execute as @e[tag=jetcollider,nbt={HurtTime:10s}] at @s run function lj:match/jetcollider/derez

##de-rez in water
execute as @e[tag=jetcollider,tag=!derezzing] at @s if block ~ ~ ~ minecraft:water run function lj:match/jetcollider/forcederez
execute as @e[tag=jetcollider,tag=!derezzing] at @s if block ~ ~ ~ minecraft:lava run function lj:match/jetcollider/forcederez

execute as @e[tag=jetstand,tag=derezzing] at @s run function lj:derez/animate/tick

##de-rez on get off jet
execute as @a[predicate=lj:lj/riding_jet,tag=derezjet] run tag @s remove derezjet
execute as @a[predicate=lj:lj/riding_jet,x_rotation=60..90] run tag @s add derezjet
execute as @a[tag=derezjet,predicate=!lj:lj/riding_jet] at @s run function lj:match/player/derez

##de-rez when speed is 0
execute as @e[tag=jetstand,tag=!derezzing,tag=!rezzing,scores={speed=..0}] at @s run function lj:match/jetstand/forcederez

##fall distance
execute as @e[tag=jetstand] run data merge entity @s {FallDistance:0}

##sounds
execute as @e[tag=jetstand] at @s run function lj:sounds/jet
