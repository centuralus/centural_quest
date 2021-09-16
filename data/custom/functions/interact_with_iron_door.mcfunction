


execute at @s[scores={search_level=1..}] if entity @e[tag=picklock_iron_door,distance=..2] run schedule function custom:loot/picklock_iron_door 40t


execute at @s if entity @e[tag=picklock_iron_door,distance=..2] run scoreboard players reset @s search_timer

execute at @s if entity @e[tag=picklock_iron_door,distance=..2] run tag @s add picklocking_iron_door

execute at @s if entity @e[tag=picklock_iron_door,distance=..2] run effect give @s minecraft:slowness 2 255 true

execute at @s if entity @e[tag=picklock_iron_door,distance=..2] run tellraw @s {"text":"You begin to picklock the door...","color":"yellow"}

execute at @s if entity @e[tag=picklock_iron_door,distance=..2] run playsound minecraft:block.iron_trapdoor.close player @s ~ ~ ~ 1 0.5

execute at @s unless entity @e[tag=picklock_iron_door,distance=..2] if entity @e[tag=picklock_iron_door,distance=3..] run tellraw @s {"text":"You are to far away!","color":"yellow"}

execute at @s unless entity @e[tag=picklock_iron_door,distance=..2] if entity @e[tag=picklock_iron_door,distance=3..] run advancement revoke @s only custom:picklock_iron_door


