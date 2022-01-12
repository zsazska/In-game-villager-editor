data modify storage minecraft:trademod SelectedTrades[0].buy set from block ~ ~ ~ Items[{Slot:2b}]
execute unless data block ~ ~ ~ Items[{Slot:2b}] run data modify storage minecraft:trademod SelectedTrades[0].buy set value {id:"minecraft:air",Count:1b}
data modify storage minecraft:trademod SelectedTrades[0].sell set from block ~ ~ ~ Items[{Slot:15b}]
execute unless data block ~ ~ ~ Items[{Slot:15b}] run data modify storage minecraft:trademod SelectedTrades[0].sell set value {id:"minecraft:air",Count:1b}
data modify storage minecraft:trademod SelectedTrades[0].buyB set from block ~ ~ ~ Items[{Slot:20b}]
execute unless data block ~ ~ ~ Items[{Slot:20b}] run data modify storage minecraft:trademod SelectedTrades[0].buyB set value {id:"minecraft:air",Count:1b}




execute unless score selected trademodify matches ..1 run function trade:menu/sortitems

data modify entity @e[tag=villagerselected,limit=1] Offers.Recipes set from storage minecraft:trademod SelectedTrades

execute if data entity @e[tag=villagerselected,limit=1] {VillagerData:{profession:"minecraft:none"}} if data entity @e[tag=villagerselected,limit=1] Offers.Recipes run function trade:others/fixvillager

function trade:unselect