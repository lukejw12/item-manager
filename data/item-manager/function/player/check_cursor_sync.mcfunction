tellraw @s [{"text":"DEBUG: Starting cursor sync check","color":"yellow"}]
data modify storage item-manager:temp slot_item set from entity @s SelectedItem
execute unless data storage item-manager:temp slot_item run tellraw @s [{"text":"DEBUG: No item in cursor","color":"red"}]
execute unless data storage item-manager:temp slot_item run return 0

tellraw @s [{"text":"DEBUG: Found item in cursor, checking for match","color":"yellow"}]
scoreboard players set #slot_index item_manager.counter 999
function item-manager:player/match_item_for_update with storage item-manager:temp