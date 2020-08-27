##setbatonid
data remove storage aestd:input nbt
execute store result storage aestd:input nbt.JetID int 1 run scoreboard players get IDTester JetID
scoreboard players set @s aestd.item.slot -1
function aestd1:item/merge_nbt
tag @s add uniquejetid
scoreboard players reset IDTester JetID
