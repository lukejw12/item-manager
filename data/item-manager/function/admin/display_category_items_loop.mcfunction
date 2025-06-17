execute if score #item_display_index item_manager.counter >= #category_item_count item_manager.counter run return 0

execute store result storage item-manager:temp item_index int 1 run scoreboard players get #item_display_index item_manager.counter
function item-manager:admin/display_single_item with storage item-manager:temp

scoreboard players add #item_display_index item_manager.counter 1
function item-manager:admin/display_category_items_loop