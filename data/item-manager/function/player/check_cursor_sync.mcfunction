#tellraw @s [{"text":"=== CURSOR SYNC CHECK ===","color":"yellow"}]
data modify storage item-manager:temp slot_item set from entity @s SelectedItem
execute unless data storage item-manager:temp slot_item run tellraw @s [{"text":"No item in cursor","color":"red"}]
execute unless data storage item-manager:temp slot_item run return 0

tellraw @s [{"text":"Found cursor item, target_id: ","color":"green"},{"nbt":"target_id","storage":"item-manager:temp","color":"white"}]
#tellraw @s [{"text":"Cursor item: ","color":"green"},{"nbt":"slot_item.id","storage":"item-manager:temp","color":"white"}]

scoreboard players set #slot_index item_manager.counter 999
function item-manager:player/match_item_for_update with storage item-manager:temp