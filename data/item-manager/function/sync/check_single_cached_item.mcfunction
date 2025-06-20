$data modify storage item-manager:temp current_item_data set from storage item-manager:sync cached_item_list[$(item_index)]
data modify storage item-manager:temp target_id set from storage item-manager:temp current_item_data.id
$data modify storage item-manager:temp sync_mode set from storage item-manager:metadata items.$(target_id).sync_mode
$execute store result score #sync_interval item_manager.counter run data get storage item-manager:metadata items.$(target_id).sync_interval
execute store success score #is_disabled item_manager.counter run data modify storage item-manager:temp sync_mode set value "disabled"
execute if score #is_disabled item_manager.counter matches 0 run return 0
scoreboard players operation #timer_mod item_manager.counter = #continuous_sync_timer item_manager.counter
scoreboard players operation #timer_mod item_manager.counter %= #sync_interval item_manager.counter
execute unless score #timer_mod item_manager.counter matches 0 run return 0
$execute if data storage item-manager:metadata items.$(target_id){sync_mode:"cursor"} run function item-manager:sync/check_cursor_only with storage item-manager:temp
$execute if data storage item-manager:metadata items.$(target_id){sync_mode:"cursor"} run return 0
$execute if data storage item-manager:metadata items.$(target_id){sync_mode:"hotbar"} run function item-manager:sync/check_hotbar_only with storage item-manager:temp
$execute if data storage item-manager:metadata items.$(target_id){sync_mode:"hotbar"} run return 0
function item-manager:sync/prepare_sync_for_item with storage item-manager:temp