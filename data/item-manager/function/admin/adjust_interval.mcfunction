$execute store result score #current_interval item_manager.counter run data get storage item-manager:metadata items.$(id).sync_interval
$execute if score $(change) item_manager.counter matches 1.. run scoreboard players operation #current_interval item_manager.counter += $(change) item_manager.counter
$execute if score $(change) item_manager.counter matches ..-1 run scoreboard players operation #temp_change item_manager.counter = $(change) item_manager.counter
execute if score #temp_change item_manager.counter matches ..-1 run scoreboard players operation #temp_change item_manager.counter *= #-1 item_manager.counter
execute if score #temp_change item_manager.counter matches 1.. run scoreboard players operation #current_interval item_manager.counter -= #temp_change item_manager.counter
execute if score #current_interval item_manager.counter matches ..0 run scoreboard players set #current_interval item_manager.counter 1
execute if score #current_interval item_manager.counter matches 101.. run scoreboard players set #current_interval item_manager.counter 100
$execute store result storage item-manager:metadata items.$(id).sync_interval int 1 run scoreboard players get #current_interval item_manager.counter
# Clear temp storage to force reload
data remove storage item-manager:temp current_sync_interval
$function item-manager:admin/sync_settings {id:"$(id)"}