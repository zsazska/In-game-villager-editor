function trade:unselect

tag @s add villagerselected

data modify storage trademod SelectedTrades set from entity @s Offers.Recipes

data modify storage trademod TradeCount set from entity @s Offers.Recipes

scoreboard players set max trademodify 0

function trade:gettradecount

execute at @a[sort=nearest,limit=1,tag=selector] run function trade:placemenu

scoreboard players set selected trademodify 0
execute if data storage trademod SelectedTrades run scoreboard players set selected trademodify 1

function trade:menu/displaytradenum

title @a[tag=selector] actionbar [{"text":"Press \"","color":"red"},{"keybind":"key.swapOffhand"},{"text":"\" to discard all unsaved changes"}]
tellraw @a[tag=selector] [{"text":"\nVillager selected. ","color":"green"},{"text":"[Kill villager]","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/kill @e[tag=villagerselected]"}},{"text":" [Tp villager here]","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/tp @e[tag=villagerselected] ~ ~ ~"}}]

summon armor_stand ~ ~ ~ {Marker:1b,NoBasePlate:1b,Tags:["switch"]}
item replace entity @e[tag=switch] weapon.mainhand from entity @a[tag=selector,limit=1] weapon.offhand
execute as @a[tag=selector] run item replace entity @s weapon.offhand from entity @s weapon.mainhand
execute as @a[tag=selector] run item modify entity @s weapon.offhand trade:2
item replace entity @a[tag=selector] weapon.mainhand from entity @e[tag=switch,limit=1] weapon.mainhand
kill @e[tag=switch]


function trade:others/getstats






