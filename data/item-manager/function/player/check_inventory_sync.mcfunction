$tellraw @s [{"text":"DEBUG: Checking inventory for $(target_id)","color":"yellow"}]
scoreboard players set #slot_index item_manager.counter 0
function item-manager:player/inventory_sync_loop