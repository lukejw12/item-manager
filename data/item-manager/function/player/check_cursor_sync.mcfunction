data modify storage item-manager:temp slot_item set from entity @s SelectedItem
execute unless data storage item-manager:temp slot_item run return 0

data modify storage item-manager:temp current_slot set value 999
scoreboard players set #slot_index item_manager.counter 999
function item-manager:player/match_item_for_update with storage item-manager:temp