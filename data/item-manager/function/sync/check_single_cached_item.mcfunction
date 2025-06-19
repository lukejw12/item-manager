$data modify storage item-manager:temp current_item_data set from storage item-manager:sync cached_item_list[$(item_index)]
data modify storage item-manager:temp target_id set from storage item-manager:temp current_item_data.id

$data modify storage item-manager:temp sync_mode set from storage item-manager:metadata items.$(target_id).sync_mode

execute store success score #is_disabled item_manager.counter run data modify storage item-manager:temp sync_mode set value "disabled"
execute if score #is_disabled item_manager.counter matches 0 run return 0

# Check for cursor mode
$execute if data storage item-manager:metadata items.$(target_id){sync_mode:"cursor"} run function item-manager:sync/check_cursor_only with storage item-manager:temp
$execute if data storage item-manager:metadata items.$(target_id){sync_mode:"cursor"} run return 0

# Check for hotbar mode  
$execute if data storage item-manager:metadata items.$(target_id){sync_mode:"hotbar"} run function item-manager:sync/check_hotbar_only with storage item-manager:temp
$execute if data storage item-manager:metadata items.$(target_id){sync_mode:"hotbar"} run return 0

# Default to full sync for "full" mode or anything else
function item-manager:sync/prepare_sync_for_item with storage item-manager:temp