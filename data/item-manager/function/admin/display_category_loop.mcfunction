execute if score #display_index item_manager.counter >= #category_display_count item_manager.counter run return 0

execute store result storage item-manager:temp display_index int 1 run scoreboard players get #display_index item_manager.counter
function item-manager:admin/display_single_category with storage item-manager:temp

scoreboard players add #display_index item_manager.counter 1
function item-manager:admin/display_category_loop