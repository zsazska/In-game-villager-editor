effect clear @e[tag=villagerselected] minecraft:glowing

tag @e remove villagerselected
execute as @e[tag=menumarker] at @s run setblock ~ ~ ~ air
scoreboard players set max trademodify 0
scoreboard players set selected trademodify 0
tp @e[tag=rightclickdetect] 0 -100 0
kill @e[tag=rightclickdetect]
kill @e[tag=trademenuname]
kill @e[tag=villagerarmor]

data remove storage minecraft:trademod SelectedTrades
data remove storage minecraft:trademod TradeCount

execute as @a[nbt={Inventory:[{tag:{Selector:2b}}]}] run function trade:others/valuemenu/clearchat

execute as @a[nbt={Inventory:[{tag:{Selector:2b}}]}] run function trade:getselector
clear @a feather{Selector:2b}

