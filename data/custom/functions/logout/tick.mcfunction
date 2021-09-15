#Update PlayerDB
execute if entity @s[tag=logout] run function rx.playerdb:api/get_self
execute if entity @s[tag=logout] store result score @s search_exp run data get rx:io playerdb.player.data.custom.search_exp int 1
execute if entity @s[tag=logout] store result score @s search_level run data get rx:io playerdb.player.data.custom.search_level int 1
execute if entity @s[tag=logout] run function rx.playerdb:api/save_self
