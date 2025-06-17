$execute unless data storage item-manager:cache items.$(id) run tellraw @s [{"text":"❌ Item not found: $(id)","color":"red"}]
$execute unless data storage item-manager:cache items.$(id) run return 0

$data modify storage item-manager:temp deleted_item_name set from storage item-manager:metadata items.$(id).name
$data modify storage item-manager:temp deleted_item_category set from storage item-manager:metadata items.$(id).category

$data remove storage item-manager:cache items.$(id)
$data remove storage item-manager:metadata items.$(id)

function item-manager:admin/remove_from_category with storage item-manager:temp

tellraw @s [{"text":"🗑 Deleted item: ","color":"red"},{"nbt":"deleted_item_name","storage":"item-manager:temp","color":"yellow"}]
function item-manager:admin/admin_menu