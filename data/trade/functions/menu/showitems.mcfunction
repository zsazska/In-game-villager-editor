item replace block ~ ~ ~ container.2 with barrier{display:{Name:'{"text":"No Trades!","italic":false}',Lore:['{"text":"This villager doesn\'t have any trades. Click the emerald to create a new trade","color":"red"}']}}
item replace block ~ ~ ~ container.15 with barrier{display:{Name:'{"text":"No Trades!","italic":false}',Lore:['{"text":"This villager doesn\'t have any trades. Click the emerald to create a new trade","color":"red"}']}}
item replace block ~ ~ ~ container.20 with barrier{display:{Name:'{"text":"No Trades!","italic":false}',Lore:['{"text":"This villager doesn\'t have any trades. Click the emerald to create a new trade","color":"red"}']}}

execute if data storage trademod SelectedTrades[0] run item replace block ~ ~ ~ container.2 with barrier
execute if data storage trademod SelectedTrades[0] run item replace block ~ ~ ~ container.15 with barrier
execute if data storage trademod SelectedTrades[0] run item replace block ~ ~ ~ container.20 with barrier




data modify block ~ ~ ~ Items[{Slot:2b}] merge from storage trademod SelectedTrades[0].buy




data modify block ~ ~ ~ Items[{Slot:15b}] merge from storage trademod SelectedTrades[0].sell




data modify block ~ ~ ~ Items[{Slot:20b}] merge from storage trademod SelectedTrades[0].buyB
