execute if entity @s[tag=search_haystack] run tellraw @s "You begin to shuffle through the hay looking for something..."
execute if entity @s[tag=search_haystack] run loot give @s loot custom:search/haystack
execute if entity @s[tag=search_haystack] run tag @s remove search_haystack
