data merge entity @e[type=villager,limit=1,tag=villagerselected] {VillagerData:{profession:"minecraft:nitwit",level:2}}

data merge entity @e[type=villager,limit=1,tag=villagerselected] {Brain:{memories:{"minecraft:meeting_point":{value:{pos:[I;0,0,0],dimension:"minecraft:overworld"}},"minecraft:home":{value:{pos:[I;0,0,0],dimension:"minecraft:overworld"}},"minecraft:job_site":{value:{pos:[I;0,0,0],dimension:"minecraft:overworld"}}}}}

data modify entity @e[limit=1,tag=villagerselected] Offers.Recipes[0].maxUses set value 5

