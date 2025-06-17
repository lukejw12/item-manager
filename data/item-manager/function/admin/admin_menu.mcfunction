tellraw @s [{"text":"\n======== ITEM MANAGER ========","color":"gold","bold":true}]
tellraw @s [{"text":"➕ Cache New Item","color":"green","bold":true,"click_event":{"action":"suggest_command","command":"/function item-manager:cache_item {name:\"My Item\",id:\"my_item\",sort:\"Weapons\",data_key:\"custom_id\"}"},"hover_event":{"action":"show_text","value":"Cache the item in your hand. Edit the parameters as needed."}}]
tellraw @s [{"text":"🔄 Update Existing Item","color":"blue","bold":true,"click_event":{"action":"suggest_command","command":"/function item-manager:update_item {id:\"my_item\"}"},"hover_event":{"action":"show_text","value":"Update an existing cached item with the item in your hand"}}]
tellraw @s [{"text":"❓ Help & Commands","color":"aqua","bold":true,"click_event":{"action":"run_command","command":"/function item-manager:admin/help"},"hover_event":{"action":"show_text","value":"View help and command syntax"}}]
tellraw @s [{"text":"","color":"gray"}]

tellraw @s [{"text":"Scanning cached items...","color":"yellow"}]
function item-manager:admin/scan_categories
function item-manager:admin/display_categories
tellraw @s [{"text":"==============================","color":"gold","bold":true}]