setblock ~ 0 ~ minecraft:chest{Items:[]}
item replace block ~ 0 ~ container.0 from entity @s player.cursor
execute store success score #has_cursor_item item_manager.counter run data get block ~ 0 ~ Items[0]
execute unless score #has_cursor_item item_manager.counter matches 1 run setblock ~ 0 ~ minecraft:air
execute unless score #has_cursor_item item_manager.counter matches 1 run return 0
data modify storage item-manager:temp slot_item set from block ~ 0 ~ Items[0]
setblock ~ 0 ~ minecraft:air
scoreboard players set #slot_index item_manager.counter 999
function item-manager:player/match_item_for_update with storage item-manager:temp