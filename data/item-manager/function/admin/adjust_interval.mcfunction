$execute store result score #current_interval item_manager.counter run data get storage item-manager:metadata items.$(id).sync_interval
$scoreboard players add #current_interval item_manager.counter $(change)
execute if score #current_interval item_manager.counter matches ..0 run scoreboard players set #current_interval item_manager.counter 1
execute if score #current_interval item_manager.counter matches 101.. run scoreboard players set #current_interval item_manager.counter 100
$execute store result storage item-manager:metadata items.$(id).sync_interval int 1 run scoreboard players get #current_interval item_manager.counter
$function item-manager:admin/sync_settings {id:"$(id)"}