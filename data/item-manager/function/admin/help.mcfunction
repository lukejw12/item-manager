tellraw @s [{"text":"\n========= ITEM MANAGER HELP =========","color":"aqua","bold":true}]
tellraw @s [{"text":"Click any command to auto-fill it in chat!","color":"yellow","italic":true}]
tellraw @s [{"text":"","color":"gray"}]

tellraw @s [{"text":"📦 CACHING ITEMS","color":"gold","bold":true}]
tellraw @s [{"text":"• Cache Item","color":"white","click_event":{"action":"suggest_command","command":"/function item-manager:cache_item {name:\"Flame Sword\",id:\"flame_sword\",sort:\"Weapons\",data_key:\"weapon_id\"}"},"hover_event":{"action":"show_text","value":"Cache the item in your hand. The data_key must match a custom_data component on your item set to 1b."}}]

tellraw @s [{"text":"","color":"gray"}]
tellraw @s [{"text":"🔄 UPDATING ITEMS","color":"gold","bold":true}]
tellraw @s [{"text":"• Update Item","color":"white","click_event":{"action":"suggest_command","command":"/function item-manager:update_item {id:\"flame_sword\"}"},"hover_event":{"action":"show_text","value":"Update an existing cached item. Hold the new version and run this command."}}]

tellraw @s [{"text":"","color":"gray"}]
tellraw @s [{"text":"📋 REQUIREMENTS","color":"gold","bold":true}]
tellraw @s [{"text":"• Items must have custom_data","color":"gray","hover_event":{"action":"show_text","value":"Example: {custom_data:{weapon_id:1b}} - The data_key parameter must match this component name."}}]
tellraw @s [{"text":"• Data value must be 1b","color":"gray","hover_event":{"action":"show_text","value":"The custom data component must be set to exactly 1b (true boolean value)."}}]
tellraw @s [{"text":"• Unique IDs required","color":"gray","hover_event":{"action":"show_text","value":"Each cached item must have a unique ID. Use descriptive names like 'flame_sword' or 'healing_potion'."}}]

tellraw @s [{"text":"","color":"gray"}]
tellraw @s [{"text":"⬅ Back to Main Menu","color":"gray","click_event":{"action":"run_command","command":"/function item-manager:admin/admin_menu"},"hover_event":{"action":"show_text","value":"Return to the main menu"}}]