summon chest_minecart ~ ~0.1 ~ {Tags:["try_end_id","try_end_box"],CustomName:"\"Ender Chest\"",DisplayState:{Name:"ender_chest"},DisplayOffset:10,CustomDisplayTile:1b,NoGravity:1b,Invulnerable:1b}
execute positioned ~ ~0.1 ~ run team join try_end_nclp @e[type=chest_minecart,tag=try_end_box,distance=..0.0001,limit=1]
execute at 0-0-6019-0-845fed run summon area_effect_cloud ~ ~ ~ {Tags:["try_end_id","try_end_mark"],CustomName:"\"Ender Chest Marker\"",Duration:-1,Age:-2147483648,WaitTime:-2147483648}
function tryashtar.ender_chests:ender_chest/welcome
