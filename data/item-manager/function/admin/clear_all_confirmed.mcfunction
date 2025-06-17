execute store result score #total_deleted item_manager.counter run data get storage item-manager:cache items

data modify storage item-manager:cache items set value {}
data modify storage item-manager:metadata items set value {}
data modify storage item-manager:categories list set value {}
scoreboard players set #version_counter item_manager.counter 0

tellraw @s [{"text":"💥 CLEARED! ","color":"red","bold":true},{"text":"Deleted ","color":"yellow"},{"score":{"name":"#total_deleted","objective":"item_manager.counter"},"color":"white"},{"text":" cached items.","color":"yellow"}]

function item-manager:admin/admin_menu