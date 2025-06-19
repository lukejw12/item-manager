tellraw @s [{"text":"=== FULL INVENTORY SYNC START ===","color":"blue"}]
$execute if data storage item-manager:cache items.$(target_id) run data modify storage item-manager:temp sync_item set from storage item-manager:cache items.$(target_id)
$execute if data storage item-manager:cache items.$(target_id) run scoreboard players set #replacements_made item_manager.counter 0
$execute if data storage item-manager:cache items.$(target_id) run function item-manager:player/full_inventory_sync_loop
tellraw @s [{"text":"=== FULL INVENTORY SYNC END ===","color":"blue"}]