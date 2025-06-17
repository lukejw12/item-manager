$execute unless data storage item-manager:temp slot_item.components.minecraft:custom_data.$(check_data_key) run return 0
$execute store success score #has_matching_data item_manager.counter run data modify storage item-manager:temp slot_item.components.minecraft:custom_data.$(check_data_key) set value 1b
execute if score #has_matching_data item_manager.counter matches 1 run return 0

data modify storage item-manager:temp slot_version set from storage item-manager:temp slot_item.components.minecraft:custom_data.item_version
$data modify storage item-manager:temp target_version set from storage item-manager:metadata items.$(target_id).version

execute store success score #version_differs item_manager.counter run data modify storage item-manager:temp slot_version set from storage item-manager:temp target_version
execute if score #version_differs item_manager.counter matches 1 run function item-manager:player/replace_item_in_slot with storage item-manager:temp