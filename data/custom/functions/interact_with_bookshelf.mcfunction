execute at @s[scores={search_level=1}] if entity @e[tag=search_bookshelf,distance=..4] run schedule function custom:loot/bookshelf 40t

execute at @s if entity @e[tag=search_bookshelf,distance=..4] run scoreboard players reset @s search_timer

execute at @s if entity @e[tag=search_bookshelf,distance=..4] run tag @s add searching_bookshelf

execute at @s if entity @e[tag=search_bookshelf,distance=..4] run effect give @s minecraft:slowness 2 255 true

execute at @s if entity @e[tag=search_bookshelf,distance=..4] run effect give @s minecraft:resistance 1 255 true


execute at @s if entity @e[tag=search_bookshelf,distance=..4] run tellraw @s {"text":"You feel a magical force push you down from above...","color":"yellow"}

execute at @s if entity @e[tag=search_bookshelf,distance=..4] run fill ~ ~2 ~ ~ ~2 ~ piston[facing=down] replace air
execute at @s if entity @e[tag=search_bookshelf,distance=..4] run fill ~ ~3 ~ ~ ~3 ~ redstone_block replace air

execute at @s if entity @e[tag=search_bookshelf,distance=..4] run playsound minecraft:entity.player.hurt player @s
execute at @s if entity @e[tag=search_bookshelf,distance=..4] run stopsound @s player minecraft:entity.player.hurt

execute at @s if entity @e[tag=search_bookshelf,distance=..4] run playsound minecraft:item.book.put player @s ~ ~ ~ 1 1

execute at @s if entity @e[tag=search_bookshelf,distance=..4] run tellraw @s {"text":"You begin to search through the bookshelf...","color":"yellow"}


execute at @s if entity @e[tag=search_bookshelf,distance=..4] run fill ~ ~1 ~ ~ ~1 ~ barrier replace acacia_trapdoor

execute at @s unless entity @e[tag=search_bookshelf,distance=..4] if entity @e[tag=search_bookshelf,distance=5..] run tellraw @s {"text":"You are to far away!","color":"yellow"}

execute at @s unless entity @e[tag=search_bookshelf,distance=..4] if entity @e[tag=search_bookshelf,distance=5..] run advancement revoke @s only custom:search_bookshelf


