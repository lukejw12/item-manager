scoreboard objectives add item_manager.counter dummy
scoreboard objectives add item_manager.temp dummy
scoreboard objectives add item_manager.version dummy
scoreboard objectives add item_manager.needs_sync dummy
scoreboard objectives add item_manager.menu_page dummy

execute unless data storage item-manager:cache items run data modify storage item-manager:cache items set value {}
execute unless data storage item-manager:metadata items run data modify storage item-manager:metadata items set value {}
execute unless data storage item-manager:categories list run data modify storage item-manager:categories list set value {}
execute unless data storage item-manager:sync_queue entries run data modify storage item-manager:sync_queue entries set value []
execute unless data storage item-manager:temp data run data modify storage item-manager:temp data set value {}
execute unless data storage item-manager:display categories run data modify storage item-manager:display categories set value []
execute unless data storage item-manager:sync cached_item_list run data modify storage item-manager:sync cached_item_list set value []

scoreboard players set #1 item_manager.counter 1
scoreboard players set #9 item_manager.counter 9
scoreboard players set #27 item_manager.counter 27
scoreboard players set #36 item_manager.counter 36
scoreboard players set #41 item_manager.counter 41
scoreboard players set #items_per_page item_manager.counter 8
execute unless score #version_counter item_manager.counter = #version_counter item_manager.counter run scoreboard players set #version_counter item_manager.counter 0
scoreboard players set #sync_timer item_manager.counter 0
scoreboard players set #continuous_sync_timer item_manager.counter 0

tellraw @a [{"text":"[Item Manager] ","color":"gold"},{"text":"System loaded! Use ","color":"green"},{"text":"/function item-manager:admin/admin_menu","color":"aqua","click_event":{"action":"suggest_command","command":"/function item-manager:admin/admin_menu"}},{"text":" to get started.","color":"green"}]