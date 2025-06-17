execute if score #category_index item_manager.counter matches 7.. run return 0

execute store result storage item-manager:temp current_category_index int 1 run scoreboard players get #category_index item_manager.counter
function item-manager:admin/check_category with storage item-manager:temp

scoreboard players add #category_index item_manager.counter 1
function item-manager:admin/process_category_loop