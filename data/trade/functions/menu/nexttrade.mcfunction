data modify storage minecraft:trademod SelectedTrades[0].buy set from block ~ ~ ~ Items[{Slot:2b}]
execute unless data block ~ ~ ~ Items[{Slot:2b}] run data modify storage minecraft:trademod SelectedTrades[0].buy set value {id:"minecraft:air",Count:1b}
data modify storage minecraft:trademod SelectedTrades[0].sell set from block ~ ~ ~ Items[{Slot:15b}]
execute unless data block ~ ~ ~ Items[{Slot:15b}] run data modify storage minecraft:trademod SelectedTrades[0].sell set value {id:"minecraft:air",Count:1b}
data modify storage minecraft:trademod SelectedTrades[0].buyB set from block ~ ~ ~ Items[{Slot:20b}]
execute unless data block ~ ~ ~ Items[{Slot:20b}] run data modify storage minecraft:trademod SelectedTrades[0].buyB set value {id:"minecraft:air",Count:1b}



data modify storage minecraft:trademod SelectedTrades append from storage minecraft:trademod SelectedTrades[0]

data remove storage minecraft:trademod SelectedTrades[0]

scoreboard players add selected trademodify 1

function trade:menu/displaytradenum

execute at @e[tag=menumarker] run function trade:menu/showitems

function trade:others/getstats

