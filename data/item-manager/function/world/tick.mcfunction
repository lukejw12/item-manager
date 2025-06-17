execute store result score #queue_size item_manager.counter run data get storage item-manager:sync_queue entries
execute if score #queue_size item_manager.counter matches 1.. run function item-manager:sync/process_queue

scoreboard players add #sync_timer item_manager.counter 1
execute if score #sync_timer item_manager.counter matches 100.. run function item-manager:sync/check_all_players
execute if score #sync_timer item_manager.counter matches 100.. run scoreboard players set #sync_timer item_manager.counter 0