data remove storage minecraft:trademod SelectedTrades[0]


execute if score selected trademodify = max trademodify run scoreboard players remove selected trademodify 1
scoreboard players remove max trademodify 1



function trade:menu/displaytradenum

execute at @e[tag=menumarker] run function trade:menu/showitems