execute at @s[scores={search_level=1}] if entity @e[tag=search_hay_stack,distance=..2] run schedule function custom:loot 40t
execute at @s[scores={search_level=2}] if entity @e[tag=search_hay_stack,distance=..2] run schedule function custom:loot 39t
execute at @s[scores={search_level=3}] if entity @e[tag=search_hay_stack,distance=..2] run schedule function custom:loot 38t
execute at @s[scores={search_level=4}] if entity @e[tag=search_hay_stack,distance=..2] run schedule function custom:loot 38t
execute at @s[scores={search_level=5}] if entity @e[tag=search_hay_stack,distance=..2] run schedule function custom:loot 38t
execute at @s[scores={search_level=6}] if entity @e[tag=search_hay_stack,distance=..2] run schedule function custom:loot 37t
execute at @s[scores={search_level=7}] if entity @e[tag=search_hay_stack,distance=..2] run schedule function custom:loot 37t
execute at @s[scores={search_level=8}] if entity @e[tag=search_hay_stack,distance=..2] run schedule function custom:loot 36t
execute at @s[scores={search_level=9}] if entity @e[tag=search_hay_stack,distance=..2] run schedule function custom:loot 36t
execute at @s[scores={search_level=10..}] if entity @e[tag=search_hay_stack,distance=..2] run schedule function custom:loot 36t
execute at @s[scores={search_level=50}] if entity @e[tag=search_hay_stack,distance=..2] run schedule function custom:loot 20t
execute at @s[scores={search_level=99}] if entity @e[tag=search_hay_stack,distance=..2] run schedule function custom:loot 1t

execute at @s if entity @e[tag=search_hay_stack,distance=..2] run scoreboard players reset @s search_timer

execute at @s if entity @e[tag=search_hay_stack,distance=..2] run tag @s add searching_haystack

execute at @s if entity @e[tag=search_hay_stack,distance=..2] run effect give @s minecraft:slowness 2 255 true

execute at @s if entity @e[tag=search_hay_stack,distance=..2] run effect give @s minecraft:resistance 1 255 true


execute at @s if entity @e[tag=search_hay_stack,distance=..2] run tellraw @s {"text":"You begin to search through the haystack...","color":"yellow"}

execute at @s if entity @e[tag=search_hay_stack,distance=..2] run fill ~ ~1 ~ ~ ~1 ~ barrier replace air

execute at @s if entity @e[tag=search_hay_stack,distance=..2] run playsound minecraft:block.grass.hit player @s ~ ~ ~ 1 1

execute at @s if entity @e[tag=search_hay_stack,distance=..2] run tellraw @s {"text":"Ouch! This Hurts!","color":"yellow"}

execute at @s unless entity @e[tag=search_hay_stack,distance=..2] if entity @e[tag=search_hay_stack,distance=3..] run tellraw @s {"text":"You are to far away!","color":"yellow"}

execute at @s unless entity @e[tag=search_hay_stack,distance=..2] if entity @e[tag=search_hay_stack,distance=3..] run advancement revoke @s only custom:search_haystack


