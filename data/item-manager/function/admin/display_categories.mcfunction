execute if score #total_items item_manager.counter matches 0 run tellraw @s [{"text":"No cached items found!","color":"red"}]
execute if score #total_items item_manager.counter matches 0 run return 0

tellraw @s [{"text":"Found ","color":"green"},{"score":{"name":"#total_items","objective":"item_manager.counter"},"color":"yellow"},{"text":" total items:","color":"green"}]

execute store result score #category_display_count item_manager.counter run data get storage item-manager:display categories
scoreboard players set #display_index item_manager.counter 0
function item-manager:admin/display_category_loop

tellraw @s [{"text":"","color":"gray"}]
tellraw @s [{"text":"🗑 Clear All Items","color":"red","bold":true,"click_event":{"action":"run_command","command":"/function item-manager:admin/confirm_clear_all"},"hover_event":{"action":"show_text","value":"⚠ WARNING: This will delete ALL cached items!"}}]