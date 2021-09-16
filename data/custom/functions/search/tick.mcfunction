execute if entity @p[tag=search_haystack] as @a[tag=search_haystack] run function custom:search/haystack

#Load
execute positioned 13 6 13 unless block ~ ~ ~ minecraft:hay_block run setblock ~ ~ ~ minecraft:hay_block
execute positioned 13 5 3 unless block ~ ~ ~ minecraft:hay_block run setblock ~ ~ ~ minecraft:hay_block
execute as @a unless entity @s[scores={search_level=1..99}] run scoreboard players set @s search_level 1
execute as @a unless entity @s[scores={search_exp=0..}] run scoreboard players set @s search_exp 0

#Hardcoded haystacks
execute positioned 13 6 13 if entity @p[distance=..2] as @p[distance=..2] unless entity @e[type=minecraft:villager,tag=search_hay_stack,distance=..2] store result score @s rotation run loot spawn ~ ~ ~ loot custom:random/west_north_south
execute positioned 13 6 13 if entity @p[distance=..2] unless entity @e[type=minecraft:villager,tag=search_hay_stack,distance=..2] run summon villager ~ ~255 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Health:1f,Tags:["search_hay_stack"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1999980,ShowParticles:0b}]}
execute positioned 13 6 13 if entity @p[distance=..2,scores={rotation=1}] unless entity @e[type=minecraft:villager,tag=search_hay_stack,distance=..2] run tp @e[dx=1,dy=256,dz=1,tag=search_hay_stack] ~ ~ ~
execute positioned 13 6 13 if entity @p[distance=..2,scores={rotation=2}] unless entity @e[type=minecraft:villager,tag=search_hay_stack,distance=..2] run tp @e[dx=1,dy=256,dz=1,tag=search_hay_stack] ~ ~-0.5 ~-0.5
execute positioned 13 6 13 if entity @p[distance=..2,scores={rotation=3}] unless entity @e[type=minecraft:villager,tag=search_hay_stack,distance=..2] run tp @e[dx=1,dy=256,dz=1,tag=search_hay_stack] ~-0.5 ~-0.5 ~
execute positioned 13 6 13 unless entity @p[distance=..2] if entity @e[type=villager,tag=search_hay_stack,distance=..2] run tp @e[type=villager,tag=search_hay_stack,distance=..2] 0 -1000 0

execute positioned 13 5 3 if entity @p[distance=..2] unless entity @e[type=minecraft:villager,tag=search_hay_stack,distance=..2] run summon villager ~ ~255 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Health:1f,Tags:["search_hay_stack"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1999980,ShowParticles:0b}]}
execute positioned 13 5 3 if entity @p[distance=..2] unless entity @e[type=minecraft:villager,tag=search_hay_stack,distance=..2] run tp @e[dx=1,dy=256,dz=1,tag=search_hay_stack] ~ ~ ~
execute positioned 13 5 3 unless entity @p[distance=..2] if entity @e[type=villager,tag=search_hay_stack,distance=..2] run tp @e[type=villager,tag=search_hay_stack,distance=..2] 0 -1000 0

execute positioned 17 8 9 if entity @p[distance=..2] unless entity @e[type=minecraft:villager,tag=search_hay_stack,distance=..2] store result score @s rotation run loot spawn ~ ~ ~ loot custom:random/west_north_south
execute positioned 17 8 9 if entity @p[distance=..2] unless entity @e[type=minecraft:villager,tag=search_hay_stack,distance=..2] run summon villager ~ ~255 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Health:1f,Tags:["search_hay_stack"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1999980,ShowParticles:0b}]}
execute positioned 17 8 9 if entity @p[distance=..2,scores={rotation=1}] unless entity @e[type=minecraft:villager,tag=search_hay_stack,distance=..2] run tp @e[dx=1,dy=256,dz=1,tag=search_hay_stack] ~ ~ ~
execute positioned 17 8 9 if entity @p[distance=..2,scores={rotation=2}] unless entity @e[type=minecraft:villager,tag=search_hay_stack,distance=..2] run tp @e[dx=1,dy=256,dz=1,tag=search_hay_stack] ~ ~-0.5 ~0.5
execute positioned 17 8 9 if entity @p[distance=..2,scores={rotation=3}] unless entity @e[type=minecraft:villager,tag=search_hay_stack,distance=..2] run tp @e[dx=1,dy=256,dz=1,tag=search_hay_stack] ~-0.5 ~-0.5 ~
execute positioned 17 8 9 unless entity @p[distance=..2] if entity @e[type=villager,tag=search_hay_stack,distance=..2] run tp @e[type=villager,tag=search_hay_stack,distance=..2] 0 -1000 0

#execute positioned 17 8 9 if entity @p[distance=..2] unless entity @e[type=minecraft:villager,tag=search_hay_stack,distance=..2] run summon villager ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Health:1f,Tags:["search_hay_stack"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1999980,ShowParticles:0b}]}
#execute positioned 17 8 9 unless entity @p[distance=..2] if entity @e[type=villager,tag=search_hay_stack,distance=..2] run tp @e[type=villager,tag=search_hay_stack,distance=..2] 0 -1000 0
#End Hardcoded haystacks
#Particle for nearby players of haystacks
execute if entity @e[tag=search_hay_stack] at @e[tag=search_hay_stack] if entity @p[distance=..2] run particle minecraft:wax_on ~ ~1 ~ 0 0 0 1 1 normal @a[distance=..2]

#sounds for haystacks
execute if entity @p[tag=searching_haystack,scores={search_timer=5}] as @a[tag=searching_haystack,scores={search_timer=5}] at @s run playsound minecraft:block.grass.fall player @s ~ ~ ~ 1 1
execute if entity @p[tag=searching_haystack,scores={search_timer=15}] as @a[tag=searching_haystack,scores={search_timer=15}] at @s run playsound minecraft:block.grass.fall player @s ~ ~ ~ 1 1
execute if entity @p[tag=searching_haystack,scores={search_timer=25}] as @a[tag=searching_haystack,scores={search_timer=25}] at @s run playsound minecraft:block.grass.fall player @s ~ ~ ~ 1 1
execute if entity @p[tag=searching_haystack,scores={search_timer=35}] as @a[tag=searching_haystack,scores={search_timer=35}] at @s run playsound minecraft:block.grass.fall player @s ~ ~ ~ 1 1


#Start Bookshelfs
execute if entity @p[tag=search_bookshelf] as @a[tag=search_bookshelf] run function custom:search/bookshelf

#Hardcoded tutorial bookshelf
execute positioned -9 10 2 if entity @p[distance=..4] as @p[distance=..4] unless entity @e[type=minecraft:villager,tag=search_bookshelf,distance=..4] store result score @s results run loot spawn ~ ~ ~ loot custom:random/tutorial_bookshelfs
execute positioned -9 10 2 if entity @p[distance=..4] as @p[distance=..4] unless entity @e[type=minecraft:villager,tag=search_bookshelf,distance=..4] store result score @s rotation run loot spawn ~ ~ ~ loot custom:random/rotation
execute positioned -9 10 2 if entity @p[distance=..4] unless entity @e[type=minecraft:villager,tag=search_bookshelf,distance=..4] run summon villager ~ 255 ~ {team:"player",NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Health:1f,Tags:["search_bookshelf"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1999980,ShowParticles:0b}]}

#execute positioned -9 10 2 if entity @p[distance=..4,scores={results=1..3}] unless entity @e[type=minecraft:villager,tag=search_bookshelf,distance=..4] run tp @e[dx=1,dy=256,dz=1,tag=search_bookshelf] -8 9 4
execute positioned -9 10 2 if entity @p[distance=..4,scores={results=1..3,rotation=1}] unless entity @e[type=minecraft:villager,tag=search_bookshelf,distance=..4] run tp @e[dx=1,dy=256,dz=1,tag=search_bookshelf] ~ ~-1.5 ~2.5
execute positioned -9 10 2 if entity @p[distance=..4,scores={results=1..3,rotation=2}] unless entity @e[type=minecraft:villager,tag=search_bookshelf,distance=..4] run tp @e[dx=1,dy=256,dz=1,tag=search_bookshelf] ~ ~-1.5 ~1.5
execute positioned -9 10 2 if entity @p[distance=..4,scores={results=1..3,rotation=3}] unless entity @e[type=minecraft:villager,tag=search_bookshelf,distance=..4] run tp @e[dx=1,dy=256,dz=1,tag=search_bookshelf] ~.5 ~-1.5 ~2

execute positioned -9 10 2 if entity @p[distance=..4,scores={results=4,rotation=1..2}] unless entity @e[type=minecraft:villager,tag=search_bookshelf,distance=..4] run tp @e[dx=1,dy=256,dz=1,tag=search_bookshelf] ~-1 ~-1.5 ~2.5
execute positioned -9 10 2 if entity @p[distance=..4,scores={results=4,rotation=3}] unless entity @e[type=minecraft:villager,tag=search_bookshelf,distance=..4] run tp @e[dx=1,dy=256,dz=1,tag=search_bookshelf] ~-1 ~-1.5 ~1.5

execute positioned -9 10 2 if entity @p[distance=..4,scores={results=5,rotation=1..2}] unless entity @e[type=minecraft:villager,tag=search_bookshelf,distance=..4] run tp @e[dx=1,dy=256,dz=1,tag=search_bookshelf] ~-2 ~-1.5 ~2.5
execute positioned -9 10 2 if entity @p[distance=..4,scores={results=5,rotation=3}] unless entity @e[type=minecraft:villager,tag=search_bookshelf,distance=..4] run tp @e[dx=1,dy=256,dz=1,tag=search_bookshelf] ~-2 ~-1.5 ~1.5

execute positioned -9 10 2 if entity @p[distance=..4,scores={results=6,rotation=1..2}] unless entity @e[type=minecraft:villager,tag=search_bookshelf,distance=..4] run tp @e[dx=1,dy=256,dz=1,tag=search_bookshelf] ~-3 ~-1.5 ~2.5
execute positioned -9 10 2 if entity @p[distance=..4,scores={results=6,rotation=3}] unless entity @e[type=minecraft:villager,tag=search_bookshelf,distance=..4] run tp @e[dx=1,dy=256,dz=1,tag=search_bookshelf] ~-3 ~-1.5 ~1.5

execute positioned -9 10 2 if entity @p[distance=..4,scores={results=7..14,rotation=1}] unless entity @e[type=minecraft:villager,tag=search_bookshelf,distance=..4] run tp @e[dx=1,dy=256,dz=1,tag=search_bookshelf] ~1 ~-1.5 ~.5
execute positioned -9 10 2 if entity @p[distance=..4,scores={results=7..14,rotation=2}] unless entity @e[type=minecraft:villager,tag=search_bookshelf,distance=..4] run tp @e[dx=1,dy=256,dz=1,tag=search_bookshelf] ~1 ~-1.5 ~-.5
execute positioned -9 10 2 if entity @p[distance=..4,scores={results=7..14,rotation=3}] unless entity @e[type=minecraft:villager,tag=search_bookshelf,distance=..4] run tp @e[dx=1,dy=256,dz=1,tag=search_bookshelf] ~1.5 ~-1.5 ~

execute positioned -9 10 2 if entity @p[distance=..4,scores={results=15,rotation=1}] unless entity @e[type=minecraft:villager,tag=search_bookshelf,distance=..4] run tp @e[dx=1,dy=256,dz=1,tag=search_bookshelf] ~ ~-1.5 ~.5
execute positioned -9 10 2 if entity @p[distance=..4,scores={results=15,rotation=2}] unless entity @e[type=minecraft:villager,tag=search_bookshelf,distance=..4] run tp @e[dx=1,dy=256,dz=1,tag=search_bookshelf] ~ ~-1.5 ~-.5
execute positioned -9 10 2 if entity @p[distance=..4,scores={results=15,rotation=3}] unless entity @e[type=minecraft:villager,tag=search_bookshelf,distance=..4] run tp @e[dx=1,dy=256,dz=1,tag=search_bookshelf] ~-.5 ~-1.5 ~



#End hardcoded tutorial bookshelf
#Particle for nearby players of bookshelf
execute if entity @e[tag=search_bookshelf] at @e[tag=search_bookshelf] if entity @p[distance=..4] run particle minecraft:wax_on ~ ~1 ~ 0 0 0 1 1 normal @a[distance=..4]

#sounds for bookshelf
execute if entity @p[tag=searching_bookshelf,scores={search_timer=5}] as @a[tag=searching_bookshelf,scores={search_timer=5}] at @s run playsound minecraft:item.book.page_turn player @s ~ ~ ~ 1 1
execute if entity @p[tag=searching_bookshelf,scores={search_timer=15}] as @a[tag=searching_bookshelf,scores={search_timer=15}] at @s run playsound minecraft:item.book.put player @s ~ ~ ~ 1 1
execute if entity @p[tag=searching_bookshelf,scores={search_timer=25}] as @a[tag=searching_bookshelf,scores={search_timer=25}] at @s run playsound minecraft:item.book.page_turn player @s ~ ~ ~ 1 1
execute if entity @p[tag=searching_bookshelf,scores={search_timer=35}] as @a[tag=searching_bookshelf,scores={search_timer=35}] at @s run playsound minecraft:item.book.put player @s ~ ~ ~ 1 1




