# copy/pasting these mutually exclusive conditions is more efficient than invoking a function 
execute if entity @s[y_rotation=270] positioned ~-0.2 ~0.1 ~ run tp @e[type=chest_minecart,tag=try_end_box,distance=..0.5,limit=1] ~ ~ ~ ~-90 ~
execute if entity @s[y_rotation=0] positioned ~ ~0.1 ~-0.2 run tp @e[type=chest_minecart,tag=try_end_box,distance=..0.5,limit=1] ~ ~ ~ ~-90 ~
execute if entity @s[y_rotation=90] positioned ~0.2 ~0.1 ~ run tp @e[type=chest_minecart,tag=try_end_box,distance=..0.5,limit=1] ~ ~ ~ ~-90 ~
execute if entity @s[y_rotation=180] positioned ~ ~0.1 ~0.2 run tp @e[type=chest_minecart,tag=try_end_box,distance=..0.5,limit=1] ~ ~ ~ ~-90 ~

execute if entity @s[tag=!try_end_req] run tag @s remove try_end_chest
execute if entity @s[tag=try_end_chest] positioned ~ ~0.1 ~ if entity @e[type=chest_minecart,tag=try_end_box,distance=..0.5,limit=1] unless entity @e[type=chest_minecart,tag=try_end_box,scores={try_end_col=0},distance=..0.5,limit=1] run tag @s remove try_end_chest
execute if entity @s[tag=!try_end_chest] positioned ~ ~0.1 ~ as @e[type=chest_minecart,tag=try_end_box,distance=..0.5,limit=1] run function tryashtar.ender_chests:ender_chest/remove

particle portal ~ ~0.3 ~ 0.2 0.2 0.2 0.3 2
execute if entity @s[tag=try_end_chest] positioned ~ ~-1.2 ~ as @e[type=armor_stand,tag=try_end_ind,distance=..0.36,limit=2] run function tryashtar.ender_chests:dye_station/indicators/animate
