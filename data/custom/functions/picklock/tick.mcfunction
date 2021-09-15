execute positioned 16 9 -2 if entity @p[distance=..2] as @p[distance=..2] unless entity @e[type=minecraft:donkey,tag=search_hay_stack,distance=..2] store result score @s rotation run loot spawn ~ ~ ~ loot custom:random/west_north_south
execute positioned 13 6 13 if entity @p[distance=..2] unless entity @e[type=minecraft:villager,tag=search_hay_stack,distance=..2] run summon villager ~ ~255 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Health:1f,Tags:["search_hay_stack"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1999980,ShowParticles:0b}]}
execute positioned 13 6 13 if entity @p[distance=..2,scores={rotation=1}] unless entity @e[type=minecraft:villager,tag=search_hay_stack,distance=..2] run tp @e[dx=1,dy=256,dz=1,tag=search_hay_stack] ~ ~ ~
execute positioned 13 6 13 if entity @p[distance=..2,scores={rotation=2}] unless entity @e[type=minecraft:villager,tag=search_hay_stack,distance=..2] run tp @e[dx=1,dy=256,dz=1,tag=search_hay_stack] ~ ~-0.5 ~-0.5
execute positioned 13 6 13 if entity @p[distance=..2,scores={rotation=3}] unless entity @e[type=minecraft:villager,tag=search_hay_stack,distance=..2] run tp @e[dx=1,dy=256,dz=1,tag=search_hay_stack] ~-0.5 ~-0.5 ~