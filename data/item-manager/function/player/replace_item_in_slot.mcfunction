setblock ~ 0 ~ minecraft:chest{Items:[]}
data modify block ~ 0 ~ Items append from storage item-manager:temp sync_item

data modify block ~ 0 ~ Items[0].count set from storage item-manager:temp slot_item.count
data modify block ~ 0 ~ Items[0].Slot set value 0b

execute if score #slot_index item_manager.counter matches 999 run item replace entity @s player.cursor from block ~ 0 ~ container.0
execute if score #slot_index item_manager.counter matches 0 run item replace entity @s hotbar.0 from block ~ 0 ~ container.0
execute if score #slot_index item_manager.counter matches 1 run item replace entity @s hotbar.1 from block ~ 0 ~ container.0
execute if score #slot_index item_manager.counter matches 2 run item replace entity @s hotbar.2 from block ~ 0 ~ container.0
execute if score #slot_index item_manager.counter matches 3 run item replace entity @s hotbar.3 from block ~ 0 ~ container.0
execute if score #slot_index item_manager.counter matches 4 run item replace entity @s hotbar.4 from block ~ 0 ~ container.0
execute if score #slot_index item_manager.counter matches 5 run item replace entity @s hotbar.5 from block ~ 0 ~ container.0
execute if score #slot_index item_manager.counter matches 6 run item replace entity @s hotbar.6 from block ~ 0 ~ container.0
execute if score #slot_index item_manager.counter matches 7 run item replace entity @s hotbar.7 from block ~ 0 ~ container.0
execute if score #slot_index item_manager.counter matches 8 run item replace entity @s hotbar.8 from block ~ 0 ~ container.0

$execute if score #slot_index item_manager.counter matches 9..35 run item replace entity @s inventory.$(inventory_slot) from block ~ 0 ~ container.0

execute if score #slot_index item_manager.counter matches 36 run item replace entity @s armor.feet from block ~ 0 ~ container.0
execute if score #slot_index item_manager.counter matches 37 run item replace entity @s armor.legs from block ~ 0 ~ container.0
execute if score #slot_index item_manager.counter matches 38 run item replace entity @s armor.chest from block ~ 0 ~ container.0
execute if score #slot_index item_manager.counter matches 39 run item replace entity @s armor.head from block ~ 0 ~ container.0

execute if score #slot_index item_manager.counter matches 40 run item replace entity @s weapon.offhand from block ~ 0 ~ container.0

setblock ~ 0 ~ minecraft:air