execute positioned 2 9 2 if entity @p[distance=..2] as @p[distance=..2] unless entity @e[type=minecraft:donkey,tag=picklock_iron_door,distance=..2] store result score @s rotation run loot spawn ~ ~ ~ loot custom:random/west_north_south
execute positioned 2 9 2 if entity @p[distance=..2] unless entity @e[type=minecraft:villager,tag=picklock_iron_door,distance=..2] run summon villager ~ ~255 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Health:1f,Tags:["picklock_iron_door"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1999980,ShowParticles:0b}]}
execute positioned 2 9 2 if entity @p[distance=..2,scores={rotation=1}] unless entity @e[type=minecraft:villager,tag=picklock_iron_door,distance=..2] run tp @e[dx=1,dy=256,dz=1,tag=picklock_iron_door] ~ ~0.9 ~0.5
execute positioned 2 9 2 if entity @p[distance=..2,scores={rotation=2}] unless entity @e[type=minecraft:villager,tag=picklock_iron_door,distance=..2] run tp @e[dx=1,dy=256,dz=1,tag=picklock_iron_door] ~ ~0.3 ~0.5
execute positioned 2 9 2 if entity @p[distance=..2,scores={rotation=3}] unless entity @e[type=minecraft:villager,tag=picklock_iron_door,distance=..2] run tp @e[dx=1,dy=256,dz=1,tag=picklock_iron_door] ~ ~-0.3 ~0.5

execute if entity @e[tag=picklock_iron_door] at @e[tag=picklock_iron_door] if entity @p[distance=..2] run particle minecraft:wax_on ~ ~1 ~ 0 0 0 0.2 1 normal @a[distance=..2]
