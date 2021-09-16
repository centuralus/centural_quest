say there
tellraw @s {"text":"You have success in your attempt to picklock the door and find yourself on the other side","color":"yellow"}
execute positioned 2 9 2 if entity @s[distance=..2] run tp @s ~ ~ ~