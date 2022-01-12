execute as @e[tag=menumarker] at @s run item replace block ~ ~ ~ container.4 with dirt


data modify storage minecraft:trademod Tradenum set value {id:"minecraft:emerald",Count:1b,tag:{NewTrade:1b,display:{Lore:['{"text":"Click here to create a new trade"}'],Name:'{"text":"temp"}'}}}

setblock ~ ~1 ~ oak_wall_sign{Text1:'[{"text":"Trade #"},{"score":{"name":"selected","objective":"trademodify"}}]'}




data modify storage minecraft:trademod Tradenum.tag.display.Name set from block ~ ~1 ~ Text1

setblock ~ ~1 ~ air