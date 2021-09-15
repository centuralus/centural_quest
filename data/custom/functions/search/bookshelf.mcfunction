execute if entity @s[tag=search_bookshelf] run tellraw @s "You begin to shuffle through the bookshelf looking for anything interesting..."
execute if entity @s[tag=search_bookshelf] run loot give @s loot custom:search/bookshelf
execute if entity @s[tag=search_bookshelf] run tag @s remove search_bookshelf
