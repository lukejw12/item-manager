$execute store result score #current_interval item_manager.counter run data get storage item-manager:metadata items.$(id).sync_interval
$tellraw @s [{"text":"DEBUG: Starting interval: ","color":"red"},{"score":{"name":"#current_interval","objective":"item_manager.counter"},"color":"white"},{"text":", change: $(change)","color":"red"}]

# Handle positive changes
$execute if score $(change) item_manager.counter matches 1.. run scoreboard players operation #current_interval item_manager.counter += $(change) item_manager.counter

# Handle negative changes
$execute if score $(change) item_manager.counter matches ..-1 run scoreboard players set #temp_change item_manager.counter $(change)
execute if score #temp_change item_manager.counter matches ..-1 run scoreboard players operation #temp_change item_manager.counter *= #-1 item_manager.counter
execute if score #temp_change item_manager.counter matches 1.. run scoreboard players operation #current_interval item_manager.counter -= #temp_change item_manager.counter

execute if score #current_interval item_manager.counter matches ..0 run scoreboard players set #current_interval item_manager.counter 1
execute if score #current_interval item_manager.counter matches 101.. run scoreboard players set #current_interval item_manager.counter 100
$execute store result storage item-manager:metadata items.$(id).sync_interval int 1 run scoreboard players get #current_interval item_manager.counter
tellraw @s [{"text":"Interval changed to ","color":"green"},{"score":{"name":"#current_interval","objective":"item_manager.counter"},"color":"yellow"},{"text":"t","color":"green"}]
$function item-manager:admin/sync_settings {id:"$(id)"}