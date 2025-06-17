$execute unless data storage item-manager:cache items.$(id) run tellraw @s [{"text":"❌ Item not found: $(id)","color":"red"}]
$execute unless data storage item-manager:cache items.$(id) run return 0

$item replace entity @s weapon.mainhand from storage item-manager:cache items.$(id)
$data modify storage item-manager:temp given_item_name set from storage item-manager:metadata items.$(id).name
tellraw @s [{"text":"✅ Gave item: ","color":"green"},{"nbt":"given_item_name","storage":"item-manager:temp","color":"aqua"}]