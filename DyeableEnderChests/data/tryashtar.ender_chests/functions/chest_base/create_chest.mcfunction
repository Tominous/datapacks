tag @s add try_end_chest
summon chest_minecart ~ ~0.5 ~ {Tags:["try_end_id","try_end_box"],CustomName:"\"Ender Chest\"",DisplayState:{Name:"ender_chest"},DisplayOffset:10,CustomDisplayTile:1b,NoGravity:1b,Invulnerable:1b}
execute at 0-0-6019-0-845fed run summon area_effect_cloud ~ ~ ~ {Tags:["try_end_id","try_end_mark"],CustomName:"\"Ender Chest Marker\"",Duration:-1,Age:-2147483648,WaitTime:-2147483648}
