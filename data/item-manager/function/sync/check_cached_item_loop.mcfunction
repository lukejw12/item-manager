execute if score #check_item_index item_manager.counter >= #cached_item_count item_manager.counter run return 0

execute store result storage item-manager:temp item_index int 1 run scoreboard players get #check_item_index item_manager.counter
function item-manager:sync/check_single_cached_item with storage item-manager:temp

scoreboard players add #check_item_index item_manager.counter 1
function item-manager:sync/check_cached_item_loop