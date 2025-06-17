$tellraw @s [{"text":"\n===== $(category) ITEMS =====","color":"gold","bold":true}]
$execute unless data storage item-manager:categories list.$(category) run tellraw @s [{"text":"No items in this category!","color":"red"}]
$execute unless data storage item-manager:categories list.$(category) run return 0

$execute store result score #category_item_count item_manager.counter run data get storage item-manager:categories list.$(category)
scoreboard players set #item_display_index item_manager.counter 0
$data modify storage item-manager:temp current_category set value "$(category)"
function item-manager:admin/display_category_items_loop

tellraw @s [{"text":"","color":"gray"}]
tellraw @s [{"text":"⬅ Back to Main Menu","color":"gray","click_event":{"action":"run_command","command":"/function item-manager:admin/admin_menu"},"hover_event":{"action":"show_text","value":"Return to the main menu"}}]