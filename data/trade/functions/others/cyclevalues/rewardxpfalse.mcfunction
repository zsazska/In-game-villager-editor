data modify storage minecraft:trademod SelectedTrades[0].rewardExp set value 0b

execute store result score rewardExp trademodify run data get storage trademod SelectedTrades[0].rewardExp

function trade:others/valuemenu/valuemenu