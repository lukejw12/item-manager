execute if score #slot_index item_manager.counter >= #41 item_manager.counter run return 0
execute store result storage item-manager:temp current_slot int 1 run scoreboard players get #slot_index item_manager.counter
function item-manager:player/check_slot_for_sync with storage item-manager:temp
scoreboard players add #slot_index item_manager.counter 1
function item-manager:player/inventory_sync_loop