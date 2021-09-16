
execute as @p[advancements={custom:picklock_iron_door=true}] at @s if entity @e[tag=picklock_iron_door,distance=..2] store result score @s results run loot give @s loot custom:random/picklock_iron_door

execute if score @s trust_level >= @s results run function custom:picklock/iron_door/success
execute if score @s trust_level < @s results run function custom:picklock/iron_door/failure

execute as @p[advancements={custom:picklock_iron_door=true}] run effect clear @s minecraft:slowness

execute as @p[advancements={custom:picklock_iron_door=true}] at @s run tp @e[type=villager,tag=picklock_iron_door,distance=..2] ~ -1 ~

execute as @p[advancements={custom:picklock_iron_door=true}] at @s positioned ~ -1 ~ run kill @e[type=villager,tag=picklock_iron_door,distance=..2]

execute as @p[advancements={custom:picklock_iron_door=true}] run tag @s remove picklocking_iron_door

execute as @p[advancements={custom:picklock_iron_door=true}] run advancement revoke @s only custom:picklock_iron_door

