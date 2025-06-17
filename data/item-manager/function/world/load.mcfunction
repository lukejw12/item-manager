scoreboard objectives add item_manager.counter dummy
scoreboard objectives add item_manager.temp dummy
scoreboard objectives add item_manager.version dummy
scoreboard objectives add item_manager.needs_sync dummy
scoreboard objectives add item_manager.menu_page dummy

data modify storage item-manager:cache items set value {}
data modify storage item-manager:metadata items set value {}
data modify storage item-manager:categories list set value {}
data modify storage item-manager:sync_queue entries set value []
data modify storage item-manager:temp data set value {}
data modify storage item-manager:display categories set value []

scoreboard players set #1 item_manager.counter 1
scoreboard players set #9 item_manager.counter 9
scoreboard players set #27 item_manager.counter 27
scoreboard players set #36 item_manager.counter 36
scoreboard players set #41 item_manager.counter 41
scoreboard players set #items_per_page item_manager.counter 8
scoreboard players set #version_counter item_manager.counter 0
scoreboard players set #sync_timer item_manager.counter 0

tellraw @a [{"text":"[Item Manager] ","color":"gold"},{"text":"System loaded! Use ","color":"green"},{"text":"/function item-manager:admin/admin_menu","color":"aqua","click_event":{"action":"suggest_command","command":"/function item-manager:admin/admin_menu"}},{"text":" to get started.","color":"green"}]