setblock ~ 0 ~ minecraft:chest{Items:[]}
data modify block ~ 0 ~ Items append from storage item-manager:temp sync_item

data modify block ~ 0 ~ Items[0].count set from storage item-manager:temp slot_item.count
data modify block ~ 0 ~ Items[0].Slot set value 0b


# Handle cursor first (slot index 999)
execute if score #slot_index item_manager.counter matches 999 run item replace entity @s player.cursor from block ~ 0 ~ container.0

# Handle other slots only if NOT cursor
$execute if score #slot_index item_manager.counter matches 0..8 run item replace entity @s hotbar.$(current_slot) from block ~ 0 ~ container.0
$execute if score #slot_index item_manager.counter matches 9..35 run item replace entity @s inventory.$(inventory_slot) from block ~ 0 ~ container.0
execute if score #slot_index item_manager.counter matches 36 run item replace entity @s armor.feet from block ~ 0 ~ container.0
execute if score #slot_index item_manager.counter matches 37 run item replace entity @s armor.legs from block ~ 0 ~ container.0
execute if score #slot_index item_manager.counter matches 38 run item replace entity @s armor.chest from block ~ 0 ~ container.0
execute if score #slot_index item_manager.counter matches 39 run item replace entity @s armor.head from block ~ 0 ~ container.0
execute if score #slot_index item_manager.counter matches 40 run item replace entity @s weapon.offhand from block ~ 0 ~ container.0

setblock ~ 0 ~ minecraft:air

#execute if score #slot_index item_manager.counter matches 999 run tellraw @s [{"text":"🔄 Updated item: ","color":"green"},{"text":"$(target_id)","color":"aqua"},{"text":" in cursor","color":"gray"}]
#$execute unless score #slot_index item_manager.counter matches 999 run tellraw @s [{"text":"🔄 Updated item: ","color":"green"},{"text":"$(target_id)","color":"aqua"},{"text":" in slot $(current_slot)","color":"gray"}]