
execute unless score selected trademodify = max trademodify run function trade:menu/gotoend

data modify storage minecraft:trademod SelectedTrades prepend value {buyB:{id:"minecraft:air",Count:1b},buy:{id:"minecraft:air",Count:1b},sell:{id:"minecraft:air",Count:1b}}


scoreboard players add max trademodify 1

function trade:menu/nexttrade

item replace block ~ ~ ~ container.2 with air
item replace block ~ ~ ~ container.15 with air
item replace block ~ ~ ~ container.20 with air
