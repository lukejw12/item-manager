setblock ~ 0 ~ minecraft:chest{Items:[]}
data modify block ~ 0 ~ Items append from storage item-manager:temp sync_item
data modify block ~ 0 ~ Items[0].Slot set value 0b

execute if score #slot_index item_manager.counter matches 9..35 run scoreboard players operation #inventory_slot item_manager.counter = #slot_index item_manager.counter
execute if score #slot_index item_manager.counter matches 9..35 run scoreboard players remove #inventory_slot item_manager.counter 9
execute if score #slot_index item_manager.counter matches 9..35 store result storage item-manager:temp inventory_slot int 1 run scoreboard players get #inventory_slot item_manager.counter

$execute if score #slot_index item_manager.counter matches 0..8 run item replace entity @s hotbar.$(current_slot) from block ~ 0 ~ container.0
$execute if score #slot_index item_manager.counter matches 9..35 run item replace entity @s inventory.$(inventory_slot) from block ~ 0 ~ container.0
execute if score #slot_index item_manager.counter matches 36 run item replace entity @s armor.feet from block ~ 0 ~ container.0
execute if score #slot_index item_manager.counter matches 37 run item replace entity @s armor.legs from block ~ 0 ~ container.0
execute if score #slot_index item_manager.counter matches 38 run item replace entity @s armor.chest from block ~ 0 ~ container.0
execute if score #slot_index item_manager.counter matches 39 run item replace entity @s armor.head from block ~ 0 ~ container.0
execute if score #slot_index item_manager.counter matches 40 run item replace entity @s weapon.offhand from block ~ 0 ~ container.0

setblock ~ 0 ~ minecraft:air

$tellraw @s [{"text":"🔄 Updated item: ","color":"green"},{"text":"$(target_id)","color":"aqua"},{"text":" in slot $(current_slot)","color":"gray"}]