tellraw @s [{"text":"===== CATEGORY DEBUG =====","color":"red","bold":true}]
tellraw @s [{"text":"Categories storage: ","color":"gray"},{"nbt":"list","storage":"item-manager:categories","color":"yellow"}]
tellraw @s [{"text":"Display categories: ","color":"gray"},{"nbt":"categories","storage":"item-manager:display","color":"yellow"}]
execute store result score #debug_total item_manager.counter run data get storage item-manager:display categories
tellraw @s [{"text":"Display count: ","color":"gray"},{"score":{"name":"#debug_total","objective":"item_manager.counter"},"color":"yellow"}]
tellraw @s [{"text":"===========================","color":"red","bold":true}]