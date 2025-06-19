execute store result score #cached_item_count item_manager.counter run data get storage item-manager:sync cached_item_list
scoreboard players set #check_item_index item_manager.counter 0
function item-manager:sync/check_cached_item_loop