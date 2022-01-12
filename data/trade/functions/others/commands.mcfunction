scoreboard players enable @a villager_professionmenu
scoreboard players enable @a villager_typemenu
scoreboard players enable @a villager_tradeproperties
scoreboard players enable @a villager_getselector


execute as @a[scores={villager_professionmenu=1..}] run function trade:others/professionmenu

execute as @a[scores={villager_typemenu=1..}] run function trade:others/typemenu

execute as @a[scores={villager_tradeproperties=1..}] run function trade:others/valuemenu/valuemenu
execute as @a[scores={villager_getselector=1..}] run function trade:getselector

scoreboard players set @a villager_professionmenu 0
scoreboard players set @a villager_typemenu 0
scoreboard players set @a villager_tradeproperties 0
scoreboard players set @a villager_getselector 0

