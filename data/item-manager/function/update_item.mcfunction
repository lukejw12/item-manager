$execute unless data storage item-manager:cache items.$(id) run tellraw @s [{"text":"❌ Item ID not found: $(id)","color":"red"}]
$execute unless data storage item-manager:cache items.$(id) run return 0
execute unless data entity @s SelectedItem run tellraw @s [{"text":"❌ No item in hand!","color":"red"}]
execute unless data entity @s SelectedItem run return 0
data modify storage item-manager:temp target_data_key set from storage item-manager:metadata items.$(id).data_key
function item-manager:utils/check_item_data_key with storage item-manager:temp
scoreboard players add #version_counter item_manager.counter 1
execute store result storage item-manager:temp current_version int 1 run scoreboard players get #version_counter item_manager.counter
$data modify storage item-manager:cache items.$(id) set from entity @s SelectedItem
$data modify storage item-manager:metadata items.$(id).version set from storage item-manager:temp current_version
execute store result storage item-manager:metadata items.$(id).updated_time long 1 run time query gametime
data modify storage item-manager:metadata items.$(id).updated_by set from entity @s UUID
$data modify storage item-manager:cache items.$(id).components.minecraft:custom_data.item_version set from storage item-manager:temp current_version
$data modify storage item-manager:temp target_id set value "$(id)"
data modify storage item-manager:temp sync_item set from entity @s SelectedItem
execute as @a run function item-manager:player/check_inventory_sync with storage item-manager:temp
execute as @a run scoreboard players set @s item_manager.needs_sync 1
$tellraw @s [{"text":"✅ Updated item: ","color":"green"},{"text":"$(id)","color":"aqua"},{"text":" and synced to all online players","color":"gray"}]
