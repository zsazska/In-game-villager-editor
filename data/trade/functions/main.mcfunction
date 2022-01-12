function trade:others/commands

execute as @a[nbt={SelectedItem:{tag:{Selector:1b}}}] run tag @s add selector

execute as @a unless entity @s[nbt={SelectedItem:{tag:{Selector:1b}}}] run tag @s remove selector

execute as @a[tag=selector] at @s run function trade:rightclickdetection


effect give @e[tag=rightclickdetect] invisibility 1 1 true
execute unless entity @a[tag=selector] unless entity @a[nbt={Inventory:[{Slot:-106b,tag:{Selector:2b}}]}] run function trade:unselect

execute unless entity @e[tag=villagerselected] if entity @a[nbt={Inventory:[{tag:{Selector:2b}}]}] run function trade:unselect


execute as @a[tag=selector] if score @s traderc matches 1.. at @s rotated as @s anchored eyes run function trade:raycast

scoreboard players set @a traderc 0

effect give @e[tag=villagerselected] glowing 1 1 true

execute as @e[tag=villagerselected] run function trade:others/updatearmor

execute as @e[tag=menumarker] at @s unless block ~ ~ ~ chest run kill @s
execute as @e[tag=menumarker] at @s run function trade:updatemenu
execute as @e[tag=trademenuname] at @s unless block ~ ~ ~ chest run kill @s

clear @a red_stained_glass_pane{TradeGUI:1b}

function trade:others/prepvalues
