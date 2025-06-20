$execute unless data storage item-manager:temp slot_item.components.minecraft:custom_data.$(check_data_key) run return 0
$execute unless data storage item-manager:temp slot_item.components.minecraft:custom_data{$(check_data_key):1b} run return 0

data modify storage item-manager:temp slot_version set from storage item-manager:temp slot_item.components.minecraft:custom_data.item_version
$data modify storage item-manager:temp target_version set from storage item-manager:metadata items.$(target_id).version


execute store success score #version_differs item_manager.counter run data modify storage item-manager:temp slot_version set from storage item-manager:temp target_version
execute unless score #version_differs item_manager.counter matches 1 run return 0

data modify storage item-manager:temp target_id set value "$(target_id)"
function item-manager:player/prepare_replace_data
function item-manager:player/replace_item_in_slot with storage item-manager:temp