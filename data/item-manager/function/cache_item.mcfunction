execute unless data entity @s SelectedItem run tellraw @s [{"text":"❌ No item in hand!","color":"red"}]
execute unless data entity @s SelectedItem run return 0

$execute unless data entity @s SelectedItem.components.minecraft:custom_data.$(data_key) run tellraw @s [{"text":"❌ Item missing custom data key: $(data_key)","color":"red"}]
$execute unless data entity @s SelectedItem.components.minecraft:custom_data.$(data_key) run return 0

$execute unless data entity @s SelectedItem.components.minecraft:custom_data{$(data_key):1b} run tellraw @s [{"text":"❌ Custom data $(data_key) must be set to 1b","color":"red"}]
$execute unless data entity @s SelectedItem.components.minecraft:custom_data{$(data_key):1b} run return 0

$execute if data storage item-manager:cache items.$(id) run tellraw @s [{"text":"⚠ Item ID already exists: $(id). Use update_item to modify it.","color":"yellow"}]
$execute if data storage item-manager:cache items.$(id) run return 0

scoreboard players add #version_counter item_manager.counter 1
execute store result storage item-manager:temp current_version int 1 run scoreboard players get #version_counter item_manager.counter

$data modify storage item-manager:cache items.$(id) set from entity @s SelectedItem
$data modify storage item-manager:metadata items.$(id).name set value "$(name)"
$data modify storage item-manager:metadata items.$(id).category set value "$(sort)"
$data modify storage item-manager:metadata items.$(id).data_key set value "$(data_key)"
data modify storage item-manager:metadata items.$(id).version set from storage item-manager:temp current_version
execute store result storage item-manager:metadata items.$(id).cached_time long 1 run time query gametime
data modify storage item-manager:metadata items.$(id).cached_by set from entity @s UUID

$execute unless data storage item-manager:categories list.$(sort) run data modify storage item-manager:categories list.$(sort) set value []
$data modify storage item-manager:categories list.$(sort) append value "$(id)"

data modify storage item-manager:cache items.$(id).components.minecraft:custom_data.item_version set from storage item-manager:temp current_version

execute unless data storage item-manager:sync cached_item_list run data modify storage item-manager:sync cached_item_list set value []
$data modify storage item-manager:sync cached_item_list append value {id:"$(id)"}

$tellraw @s [{"text":"✅ Cached item: ","color":"green"},{"text":"$(name)","color":"aqua"},{"text":" (ID: $(id), Category: $(sort))","color":"gray"}]