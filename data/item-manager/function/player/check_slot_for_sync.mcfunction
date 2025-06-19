data remove storage item-manager:temp slot_item

# Hotbar slots (0-8)
$execute if score #slot_index item_manager.counter matches 0..8 run data modify storage item-manager:temp slot_item set from entity @s Inventory[{Slot:$(current_slot)b}]

# Main inventory slots (9-35)
$execute if score #slot_index item_manager.counter matches 9..35 run data modify storage item-manager:temp slot_item set from entity @s Inventory[{Slot:$(current_slot)b}]

# Armor slots
execute if score #slot_index item_manager.counter matches 36 run data modify storage item-manager:temp slot_item set from entity @s Inventory[{Slot:100b}]
execute if score #slot_index item_manager.counter matches 37 run data modify storage item-manager:temp slot_item set from entity @s Inventory[{Slot:101b}]
execute if score #slot_index item_manager.counter matches 38 run data modify storage item-manager:temp slot_item set from entity @s Inventory[{Slot:102b}]
execute if score #slot_index item_manager.counter matches 39 run data modify storage item-manager:temp slot_item set from entity @s Inventory[{Slot:103b}]

# Offhand slot
execute if score #slot_index item_manager.counter matches 40 run data modify storage item-manager:temp slot_item set from entity @s Inventory[{Slot:-106b}]

execute unless data storage item-manager:temp slot_item run return 0

function item-manager:player/match_item_for_update with storage item-manager:temp