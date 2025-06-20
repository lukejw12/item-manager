execute store result storage item-manager:temp current_slot int 1 run scoreboard players get #slot_index item_manager.counter
execute if score #slot_index item_manager.counter matches 9..35 run scoreboard players operation #inventory_slot item_manager.counter = #slot_index item_manager.counter
execute if score #slot_index item_manager.counter matches 9..35 run scoreboard players remove #inventory_slot item_manager.counter 9
execute if score #slot_index item_manager.counter matches 9..35 store result storage item-manager:temp inventory_slot int 1 run scoreboard players get #inventory_slot item_manager.counter
execute unless score #slot_index item_manager.counter matches 9..35 run data modify storage item-manager:temp inventory_slot set value 0
