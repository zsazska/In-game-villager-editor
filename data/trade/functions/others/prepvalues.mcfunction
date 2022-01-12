execute store result storage minecraft:trademod SelectedTrades[0].maxUses int 1 run scoreboard players get maxUses trademodify

execute store result storage minecraft:trademod SelectedTrades[0].uses int 1 run scoreboard players get uses trademodify

execute store result storage minecraft:trademod SelectedTrades[0].xp int 1 run scoreboard players get xp trademodify

execute store result storage minecraft:trademod SelectedTrades[0].demand int 1 run scoreboard players get demand trademodify

execute store result storage minecraft:trademod SelectedTrades[0].priceMultiplier float 0.1 run scoreboard players get priceMultiplier trademodify

execute store result storage minecraft:trademod SelectedTrades[0].specialPrice int 1 run scoreboard players get specialPrice trademodify

execute store result score rewardExp trademodify run data get storage trademod SelectedTrades[0].rewardExp