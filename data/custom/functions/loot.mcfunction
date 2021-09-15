
execute as @p[advancements={custom:search_haystack=true}] at @s if entity @e[tag=search_hay_stack,distance=..2] run playsound minecraft:block.grass.step player @s ~ ~ ~ 1 1

execute as @p[advancements={custom:search_haystack=true}] at @s if entity @e[tag=search_hay_stack,distance=..2] run loot spawn ~ ~ ~ loot custom:search/haystack

execute as @p[advancements={custom:search_haystack=true}] at @s if entity @e[tag=search_hay_stack,distance=..2] run data modify entity @e[type=item,distance=..2,limit=1] PickupDelay set value 0

execute as @p[advancements={custom:search_haystack=true}] at @s if entity @e[tag=search_hay_stack,distance=..2] store result score @s results run data get entity @e[type=item,limit=1,distance=..1]

#execute as @p[advancements={custom:search_haystack=true}] at @s if entity @e[tag=search_hay_stack,distance=..2] if entity @e[type=item,limit=1,nbt={Item:{id:"minecraft:air",Count:1b}}] run tellraw @s [{"text":"You have finished searching the haystack to find nothing.","color":"yellow"}]
	
#execute as @p[advancements={custom:search_haystack=true}] at @s if entity @e[tag=search_hay_stack,distance=..2] if entity @e[type=item,limit=1,nbt={Item:{id:"minecraft:air"}},distance=..1] run tellraw @s [{"text":"You have finished searching the haystack to find nothing.","color":"yellow"}]

execute as @p[advancements={custom:search_haystack=true},scores={results=1}] at @s if entity @e[tag=search_hay_stack,distance=..2] run tellraw @s [{"text":"You have finished searching the haystack to find ","color":"yellow"},{"selector":"@e[type=item,distance=..1,limit=1]","color":"light_purple"}]
execute as @p[advancements={custom:search_haystack=true},scores={results=1}] at @s if entity @e[tag=search_hay_stack,distance=..2] run tag @s add add_one_search_exp

execute if entity @p[tag=add_one_search_exp] as @a[tag=add_one_search_exp] run scoreboard players add @s search_exp 1

#Search Level 1
execute if entity @p[tag=add_one_search_exp,scores={search_level=1,search_exp=0..9}] as @a[tag=add_one_search_exp,scores={search_level=1,search_exp=0..9}] run title @s actionbar ["                                                            ","☄",{"score":{"name":"@s","objective":"search_level"}},{"text":"||||||||||","color":"red"},{"text":"+","color":"green"},{"text":"1exp"}]
execute if entity @p[tag=add_one_search_exp,scores={search_level=1,search_exp=10..17}] as @a[tag=add_one_search_exp,scores={search_level=1,search_exp=10..17}] run title @s actionbar ["                                                            ","☄",{"score":{"name":"@s","objective":"search_level"}},{"text":"|","color":"green"},{"text":"|||||||||","color":"red"},{"text":"+","color":"green"},{"text":"1exp"}]
execute if entity @p[tag=add_one_search_exp,scores={search_level=1,search_exp=18..25}] as @a[tag=add_one_search_exp,scores={search_level=1,search_exp=18..25}] run title @s actionbar ["                                                            ","☄",{"score":{"name":"@s","objective":"search_level"}},{"text":"||","color":"green"},{"text":"||||||||","color":"red"},{"text":"+","color":"green"},{"text":"1exp"}]
execute if entity @p[tag=add_one_search_exp,scores={search_level=1,search_exp=26..33}] as @a[tag=add_one_search_exp,scores={search_level=1,search_exp=26..33}] run title @s actionbar ["                                                            ","☄",{"score":{"name":"@s","objective":"search_level"}},{"text":"|||","color":"green"},{"text":"|||||||","color":"red"},{"text":"+","color":"green"},{"text":"1exp"}]
execute if entity @p[tag=add_one_search_exp,scores={search_level=1,search_exp=34..41}] as @a[tag=add_one_search_exp,scores={search_level=1,search_exp=34..41}] run title @s actionbar ["                                                            ","☄",{"score":{"name":"@s","objective":"search_level"}},{"text":"||||","color":"green"},{"text":"||||||","color":"red"},{"text":"+","color":"green"},{"text":"1exp"}]
execute if entity @p[tag=add_one_search_exp,scores={search_level=1,search_exp=42..49}] as @a[tag=add_one_search_exp,scores={search_level=1,search_exp=42..49}] run title @s actionbar ["                                                            ","☄",{"score":{"name":"@s","objective":"search_level"}},{"text":"|||||","color":"green"},{"text":"|||||","color":"red"},{"text":"+","color":"green"},{"text":"1exp"}]
execute if entity @p[tag=add_one_search_exp,scores={search_level=1,search_exp=50..57}] as @a[tag=add_one_search_exp,scores={search_level=1,search_exp=50..57}] run title @s actionbar ["                                                            ","☄",{"score":{"name":"@s","objective":"search_level"}},{"text":"||||||","color":"green"},{"text":"||||","color":"red"},{"text":"+","color":"green"},{"text":"1exp"}]
execute if entity @p[tag=add_one_search_exp,scores={search_level=1,search_exp=58..65}] as @a[tag=add_one_search_exp,scores={search_level=1,search_exp=58..65}] run title @s actionbar ["                                                            ","☄",{"score":{"name":"@s","objective":"search_level"}},{"text":"|||||||","color":"green"},{"text":"|||","color":"red"},{"text":"+","color":"green"},{"text":"1exp"}]
execute if entity @p[tag=add_one_search_exp,scores={search_level=1,search_exp=66..73}] as @a[tag=add_one_search_exp,scores={search_level=1,search_exp=66..73}] run title @s actionbar ["                                                            ","☄",{"score":{"name":"@s","objective":"search_level"}},{"text":"||||||||","color":"green"},{"text":"||","color":"red"},{"text":"+","color":"green"},{"text":"1exp"}]
execute if entity @p[tag=add_one_search_exp,scores={search_level=1,search_exp=74..80}] as @a[tag=add_one_search_exp,scores={search_level=1,search_exp=74..80}] run title @s actionbar ["                                                            ","☄",{"score":{"name":"@s","objective":"search_level"}},{"text":"|||||||||","color":"green"},{"text":"|","color":"red"},{"text":"+","color":"green"},{"text":"1exp"}]
execute if entity @p[tag=add_one_search_exp,scores={search_level=1,search_exp=81}] as @a[tag=add_one_search_exp,scores={search_level=1,search_exp=81}] run title @s actionbar ["                                                            ","☄",{"score":{"name":"@s","objective":"search_level"}},{"text":"||||||||||","color":"green"},{"text":"","color":"red"},{"text":"+","color":"green"},{"text":"1exp"}]

#Search Level 2
execute if entity @p[tag=add_one_search_exp,scores={search_level=2,search_exp=81..94}] as @a[tag=add_one_search_exp,scores={search_level=2,search_exp=81..94}] run title @s actionbar ["                                                            ","☄",{"score":{"name":"@s","objective":"search_level"}},{"text":"||||||||||","color":"red"},{"text":"+","color":"green"},{"text":"1exp"}]
execute if entity @p[tag=add_one_search_exp,scores={search_level=2,search_exp=95..110}] as @a[tag=add_one_search_exp,scores={search_level=2,search_exp=95..110}] run title @s actionbar ["                                                            ","☄",{"score":{"name":"@s","objective":"search_level"}},{"text":"|","color":"green"},{"text":"|||||||||","color":"red"},{"text":"+","color":"green"},{"text":"1exp"}]
execute if entity @p[tag=add_one_search_exp,scores={search_level=2,search_exp=111..124}] as @a[tag=add_one_search_exp,scores={search_level=2,search_exp=111..124}] run title @s actionbar ["                                                            ","☄",{"score":{"name":"@s","objective":"search_level"}},{"text":"||","color":"green"},{"text":"||||||||","color":"red"},{"text":"+","color":"green"},{"text":"1exp"}]
execute if entity @p[tag=add_one_search_exp,scores={search_level=2,search_exp=125..139}] as @a[tag=add_one_search_exp,scores={search_level=2,search_exp=125..139}] run title @s actionbar ["                                                            ","☄",{"score":{"name":"@s","objective":"search_level"}},{"text":"|||","color":"green"},{"text":"|||||||","color":"red"},{"text":"+","color":"green"},{"text":"1exp"}]
execute if entity @p[tag=add_one_search_exp,scores={search_level=2,search_exp=140..153}] as @a[tag=add_one_search_exp,scores={search_level=2,search_exp=140..153}] run title @s actionbar ["                                                            ","☄",{"score":{"name":"@s","objective":"search_level"}},{"text":"||||","color":"green"},{"text":"||||||","color":"red"},{"text":"+","color":"green"},{"text":"1exp"}]
execute if entity @p[tag=add_one_search_exp,scores={search_level=2,search_exp=154..167}] as @a[tag=add_one_search_exp,scores={search_level=2,search_exp=154..167}] run title @s actionbar ["                                                            ","☄",{"score":{"name":"@s","objective":"search_level"}},{"text":"|||||","color":"green"},{"text":"|||||","color":"red"},{"text":"+","color":"green"},{"text":"1exp"}]
execute if entity @p[tag=add_one_search_exp,scores={search_level=2,search_exp=168..182}] as @a[tag=add_one_search_exp,scores={search_level=2,search_exp=168..182}] run title @s actionbar ["                                                            ","☄",{"score":{"name":"@s","objective":"search_level"}},{"text":"||||||","color":"green"},{"text":"||||","color":"red"},{"text":"+","color":"green"},{"text":"1exp"}]
execute if entity @p[tag=add_one_search_exp,scores={search_level=2,search_exp=183..196}] as @a[tag=add_one_search_exp,scores={search_level=2,search_exp=183..196}] run title @s actionbar ["                                                            ","☄",{"score":{"name":"@s","objective":"search_level"}},{"text":"|||||||","color":"green"},{"text":"|||","color":"red"},{"text":"+","color":"green"},{"text":"1exp"}]
execute if entity @p[tag=add_one_search_exp,scores={search_level=2,search_exp=197..210}] as @a[tag=add_one_search_exp,scores={search_level=2,search_exp=197..210}] run title @s actionbar ["                                                            ","☄",{"score":{"name":"@s","objective":"search_level"}},{"text":"||||||||","color":"green"},{"text":"||","color":"red"},{"text":"+","color":"green"},{"text":"1exp"}]
execute if entity @p[tag=add_one_search_exp,scores={search_level=2,search_exp=211..223}] as @a[tag=add_one_search_exp,scores={search_level=2,search_exp=211..223}] run title @s actionbar ["                                                            ","☄",{"score":{"name":"@s","objective":"search_level"}},{"text":"|||||||||","color":"green"},{"text":"|","color":"red"},{"text":"+","color":"green"},{"text":"1exp"}]
execute if entity @p[tag=add_one_search_exp,scores={search_level=2,search_exp=224}] as @a[tag=add_one_search_exp,scores={search_level=2,search_exp=224}] run title @s actionbar ["                                                            ","☄",{"score":{"name":"@s","objective":"search_level"}},{"text":"||||||||||","color":"green"},{"text":"","color":"red"},{"text":"+","color":"green"},{"text":"1exp"}]

execute if entity @p[tag=add_one_search_exp] as @a[tag=add_one_search_exp] run tag @s remove add_one_search_exp

execute as @p[advancements={custom:search_haystack=true},scores={results=1,search_level=1,search_exp=81..}] run tag @s add level_up_search_level
execute as @p[advancements={custom:search_haystack=true},scores={results=1,search_level=2,search_exp=224..}] run tag @s add level_up_search_level
execute as @p[advancements={custom:search_haystack=true},scores={results=1,search_level=3,search_exp=692..}] run tag @s add level_up_search_level
execute as @p[tag=level_up_search_level] run scoreboard players add @s search_level 1
#execute as @p[tag=level_up_search_level] run scoreboard players reset @s search_exp
execute as @p[tag=level_up_search_level] run tellraw @s [{"text":"Fantastic! You have reach search level "},{"score":{"name":"@s","objective":"search_level"}}]
execute as @p[tag=level_up_search_level] run tag @s remove level_up_search_level
execute as @p[advancements={custom:search_haystack=true},scores={results=0}] at @s if entity @e[tag=search_hay_stack,distance=..2] run tellraw @s [{"text":"You have finished searching the haystack to find nothing.","color":"yellow"}]

execute as @p[advancements={custom:search_haystack=true}] at @s if entity @e[tag=search_hay_stack,distance=..2] run fill ~-1 ~ ~-1 ~1 ~1 ~1 air replace barrier


execute as @p[advancements={custom:search_haystack=true}] run effect clear @s minecraft:slowness

execute as @p[advancements={custom:search_haystack=true}] store result score @s rotation run loot spawn ~ ~ ~ loot custom:random/west_north_south

execute as @p[advancements={custom:search_haystack=true}] at @s run tp @e[type=villager,tag=search_hay_stack,distance=..2] ~ -1 ~

execute as @p[advancements={custom:search_haystack=true}] at @s positioned ~ -1 ~ run kill @e[type=villager,tag=search_hay_stack,distance=..2]

execute as @p[advancements={custom:search_haystack=true}] run tag @s remove searching_haystack

execute as @p[advancements={custom:search_haystack=true}] run advancement revoke @s only custom:search_haystack

