tellraw @s [{"text":"=== MANUAL SYNC DEBUG ===","color":"red","bold":true}]
execute store result score #cached_item_count item_manager.counter run data get storage item-manager:sync cached_item_list
tellraw @s [{"text":"Cached item count: ","color":"yellow"},{"score":{"name":"#cached_item_count","objective":"item_manager.counter"},"color":"white"}]
tellraw @s [{"text":"Cached item list: ","color":"yellow"},{"nbt":"cached_item_list","storage":"item-manager:sync","color":"white"}]
function item-manager:sync/check_all_cached_items_for_player
tellraw @s [{"text":"=== END DEBUG ===","color":"red","bold":true}]