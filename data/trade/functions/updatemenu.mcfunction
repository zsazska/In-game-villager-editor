function trade:menu/fillemptyspace
function trade:menu/getcurrentselectedtrade
function trade:menu/buttons




execute as @a store result score nexttrade trademodify run clear @s white_dye{NextTrade:1b}
execute as @a store result score prevtrade trademodify run clear @s black_dye{PrevTrade:1b}
execute as @a store result score savetrades trademodify run clear @s lime_dye{SaveTrades:1b}
execute as @a store result score newtrade trademodify run clear @s emerald{NewTrade:1b}
execute as @a store result score removetrade trademodify run clear @s red_dye{RemoveTrade:1b}

execute as @a[nbt={Inventory:[{tag:{Selector:2b}}]}] if score nexttrade trademodify matches 1.. if score selected trademodify < max trademodify run function trade:menu/nexttrade

execute as @a[nbt={Inventory:[{tag:{Selector:2b}}]}] if score prevtrade trademodify matches 1.. unless score selected trademodify matches ..1 run function trade:menu/prevtrade

execute as @a[nbt={Inventory:[{tag:{Selector:2b}}]}] if score savetrades trademodify matches 1.. run function trade:menu/savetrades

execute as @a[nbt={Inventory:[{tag:{Selector:2b}}]}] if score newtrade trademodify matches 1.. run function trade:menu/newtrade

execute as @a[nbt={Inventory:[{tag:{Selector:2b}}]}] if score removetrade trademodify matches 1.. run function trade:menu/removetrade

scoreboard players set nexttrade trademodify 0
scoreboard players set prevtrade trademodify 0
scoreboard players set savetrades trademodify 0
scoreboard players set newtrade trademodify 0
scoreboard players set removetrade trademodify 0