$execute unless data storage item-manager:cache items.$(id) run tellraw @s [{"text":"❌ Item not found: $(id)","color":"red"}]
$execute unless data storage item-manager:cache items.$(id) run return 0

setblock ~ 0 ~ minecraft:chest{Items:[]}
$data modify block ~ 0 ~ Items append from storage item-manager:cache items.$(id)
data modify block ~ 0 ~ Items[0].Slot set value 0b

data modify storage item-manager:temp spawn_item set from block ~ 0 ~ Items[0]
setblock ~ 0 ~ minecraft:air

function item-manager:admin/summon_item with storage item-manager:temp

$data modify storage item-manager:temp given_item_name set from storage item-manager:metadata items.$(id).name
tellraw @s [{"text":"✅ Gave item: ","color":"green"},{"nbt":"given_item_name","storage":"item-manager:temp","color":"aqua"}]