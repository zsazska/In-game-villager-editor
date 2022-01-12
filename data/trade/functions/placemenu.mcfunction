setblock ~ ~ ~ chest

summon marker ~ ~ ~ {Tags:["menumarker"]}
execute align xyz run summon armor_stand ~0.5 ~0.9 ~0.5 {CustomNameVisible:1b,NoGravity:1b,Marker:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["trademenuname"],CustomName:'{"text":"Villager\'s trades"}'}

execute as @e[tag=menumarker] at @s run function trade:menu/showitems

function trade:others/summonarmorchanger