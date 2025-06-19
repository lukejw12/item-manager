scoreboard players set #slot_index item_manager.counter 0
scoreboard players set #current_replacements item_manager.counter 0
function item-manager:player/inventory_sync_loop

execute if score #current_replacements item_manager.counter matches 1.. run scoreboard players operation #replacements_made item_manager.counter += #current_replacements item_manager.counter
execute if score #current_replacements item_manager.counter matches 1.. run function item-manager:player/full_inventory_sync_loop
