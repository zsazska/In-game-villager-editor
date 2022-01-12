scoreboard players set @s traderc 0

execute if entity @e[type=villager,tag=!rightclickdetect,distance=..2] as @e[type=villager,sort=nearest,limit=1] run function trade:selectvillager

execute unless entity @e[type=villager,tag=!rightclickdetect,distance=..2] positioned ^ ^ ^0.1 run function trade:raycast