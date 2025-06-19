$data modify storage item-manager:temp current_item_data set from storage item-manager:sync cached_item_list[$(item_index)]
data modify storage item-manager:temp target_id set from storage item-manager:temp current_item_data.id

$data modify storage item-manager:temp sync_mode set from storage item-manager:metadata items.$(target_id).sync_mode
$execute store result score #sync_interval item_manager.counter run data get storage item-manager:metadata items.$(target_id).sync_interval

execute store success score #is_disabled item_manager.counter run data modify storage item-manager:temp sync_mode set value "disabled"
execute if score #is_disabled item_manager.counter matches 0 run return 0

execute store result score #timer_mod item_manager.counter run scoreboard players operation #continuous_sync_timer item_manager.counter % #sync_interval item_manager.counter
execute unless score #timer_mod item_manager.counter matches 0 run return 0

execute store success score #is_cursor item_manager.counter run data modify storage item-manager:temp sync_mode set value "cursor"
execute if score #is_cursor item_manager.counter matches 0 run function item-manager:sync/check_cursor_only with storage item-manager:temp
execute if score #is_cursor item_manager.counter matches 0 run return 0

$data modify storage item-manager:temp sync_mode set from storage item-manager:metadata items.$(target_id).sync_mode
execute store success score #is_hotbar item_manager.counter run data modify storage item-manager:temp sync_mode set value "hotbar"
execute if score #is_hotbar item_manager.counter matches 0 run function item-manager:sync/check_hotbar_only with storage item-manager:temp
execute if score #is_hotbar item_manager.counter matches 0 run return 0

function item-manager:sync/prepare_sync_for_item with storage item-manager:temp