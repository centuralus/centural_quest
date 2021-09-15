tag @e remove nbs_balcony
scoreboard objectives remove nbs_balcony
scoreboard objectives remove nbs_balcony_t
datapack disable "balcony"
tellraw @s ["",{"text":"[NBS] ","color":"gold","bold":"true"},{"text":"Data pack ","color":"yellow"},{"text":"balcony","color":"gold","underlined":"true"},{"text":" uninstalled successfully. You may now remove it from your data pack folder.","color":"yellow"}]