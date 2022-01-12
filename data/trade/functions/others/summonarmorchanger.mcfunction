summon armor_stand ~2 ~ ~ {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,NoBasePlate:1b,Tags:["villagerarmor"],CustomName:'{"text":"Villager\'s armor"}'}

execute as @e[tag=villagerarmor] run item replace entity @s armor.head from entity @e[tag=villagerselected,limit=1] armor.head
execute as @e[tag=villagerarmor] run item replace entity @s armor.chest from entity @e[tag=villagerselected,limit=1] armor.chest
execute as @e[tag=villagerarmor] run item replace entity @s armor.legs from entity @e[tag=villagerselected,limit=1] armor.legs
execute as @e[tag=villagerarmor] run item replace entity @s armor.feet from entity @e[tag=villagerselected,limit=1] armor.feet