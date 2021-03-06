# Author: Aeldrion
# Version: 19w42a
# Project: AESTD

function aestd1:item/save
execute unless data storage aestd:data Item.tag.Enchantments run data modify storage aestd:data Item.tag merge value {Enchantments:[]}

execute if score @s aestd.item.ench matches 0 run data modify storage aestd:data Item.tag.Enchantments append value {id:"minecraft:protection",lvl:1s}
execute if score @s aestd.item.ench matches 1 run data modify storage aestd:data Item.tag.Enchantments append value {id:"minecraft:fire_protection",lvl:1s}
execute if score @s aestd.item.ench matches 2 run data modify storage aestd:data Item.tag.Enchantments append value {id:"minecraft:feather_falling",lvl:1s}
execute if score @s aestd.item.ench matches 3 run data modify storage aestd:data Item.tag.Enchantments append value {id:"minecraft:blast_protection",lvl:1s}
execute if score @s aestd.item.ench matches 4 run data modify storage aestd:data Item.tag.Enchantments append value {id:"minecraft:projectile_protection",lvl:1s}
execute if score @s aestd.item.ench matches 5 run data modify storage aestd:data Item.tag.Enchantments append value {id:"minecraft:respiration",lvl:1s}
execute if score @s aestd.item.ench matches 6 run data modify storage aestd:data Item.tag.Enchantments append value {id:"minecraft:aqua_affinity",lvl:1s}
execute if score @s aestd.item.ench matches 7 run data modify storage aestd:data Item.tag.Enchantments append value {id:"minecraft:thorns",lvl:1s}
execute if score @s aestd.item.ench matches 8 run data modify storage aestd:data Item.tag.Enchantments append value {id:"minecraft:depth_strider",lvl:1s}
execute if score @s aestd.item.ench matches 9 run data modify storage aestd:data Item.tag.Enchantments append value {id:"minecraft:frost_walker",lvl:1s}
execute if score @s aestd.item.ench matches 10 run data modify storage aestd:data Item.tag.Enchantments append value {id:"minecraft:binding_curse",lvl:1s}
execute if score @s aestd.item.ench matches 11 run data modify storage aestd:data Item.tag.Enchantments append value {id:"minecraft:sharpness",lvl:1s}
execute if score @s aestd.item.ench matches 12 run data modify storage aestd:data Item.tag.Enchantments append value {id:"minecraft:smite",lvl:1s}
execute if score @s aestd.item.ench matches 13 run data modify storage aestd:data Item.tag.Enchantments append value {id:"minecraft:bane_of_arthropods",lvl:1s}
execute if score @s aestd.item.ench matches 14 run data modify storage aestd:data Item.tag.Enchantments append value {id:"minecraft:knockback",lvl:1s}
execute if score @s aestd.item.ench matches 15 run data modify storage aestd:data Item.tag.Enchantments append value {id:"minecraft:fire_aspect",lvl:1s}
execute if score @s aestd.item.ench matches 16 run data modify storage aestd:data Item.tag.Enchantments append value {id:"minecraft:looting",lvl:1s}
execute if score @s aestd.item.ench matches 17 run data modify storage aestd:data Item.tag.Enchantments append value {id:"minecraft:sweeping",lvl:1s}
execute if score @s aestd.item.ench matches 18 run data modify storage aestd:data Item.tag.Enchantments append value {id:"minecraft:efficiency",lvl:1s}
execute if score @s aestd.item.ench matches 19 run data modify storage aestd:data Item.tag.Enchantments append value {id:"minecraft:silk_touch",lvl:1s}
execute if score @s aestd.item.ench matches 20 run data modify storage aestd:data Item.tag.Enchantments append value {id:"minecraft:unbreaking",lvl:1s}
execute if score @s aestd.item.ench matches 21 run data modify storage aestd:data Item.tag.Enchantments append value {id:"minecraft:fortune",lvl:1s}
execute if score @s aestd.item.ench matches 22 run data modify storage aestd:data Item.tag.Enchantments append value {id:"minecraft:power",lvl:1s}
execute if score @s aestd.item.ench matches 23 run data modify storage aestd:data Item.tag.Enchantments append value {id:"minecraft:punch",lvl:1s}
execute if score @s aestd.item.ench matches 24 run data modify storage aestd:data Item.tag.Enchantments append value {id:"minecraft:flame",lvl:1s}
execute if score @s aestd.item.ench matches 25 run data modify storage aestd:data Item.tag.Enchantments append value {id:"minecraft:infinity",lvl:1s}
execute if score @s aestd.item.ench matches 26 run data modify storage aestd:data Item.tag.Enchantments append value {id:"minecraft:luck_of_the_sea",lvl:1s}
execute if score @s aestd.item.ench matches 27 run data modify storage aestd:data Item.tag.Enchantments append value {id:"minecraft:lure",lvl:1s}
execute if score @s aestd.item.ench matches 28 run data modify storage aestd:data Item.tag.Enchantments append value {id:"minecraft:loyalty",lvl:1s}
execute if score @s aestd.item.ench matches 29 run data modify storage aestd:data Item.tag.Enchantments append value {id:"minecraft:impaling",lvl:1s}
execute if score @s aestd.item.ench matches 30 run data modify storage aestd:data Item.tag.Enchantments append value {id:"minecraft:riptide",lvl:1s}
execute if score @s aestd.item.ench matches 31 run data modify storage aestd:data Item.tag.Enchantments append value {id:"minecraft:channeling",lvl:1s}
execute if score @s aestd.item.ench matches 32 run data modify storage aestd:data Item.tag.Enchantments append value {id:"minecraft:multishot",lvl:1s}
execute if score @s aestd.item.ench matches 33 run data modify storage aestd:data Item.tag.Enchantments append value {id:"minecraft:quick_charge",lvl:1s}
execute if score @s aestd.item.ench matches 34 run data modify storage aestd:data Item.tag.Enchantments append value {id:"minecraft:piercing",lvl:1s}
execute if score @s aestd.item.ench matches 35 run data modify storage aestd:data Item.tag.Enchantments append value {id:"minecraft:mending",lvl:1s}
execute if score @s aestd.item.ench matches 36 run data modify storage aestd:data Item.tag.Enchantments append value {id:"minecraft:vanishing_curse",lvl:1s}

execute if score @s aestd.item.lvl matches 2..32767 store result storage aestd:data Item.tag.Enchantments[-1].lvl short 1 run scoreboard players get @s aestd.item.lvl

function aestd1:item/load
