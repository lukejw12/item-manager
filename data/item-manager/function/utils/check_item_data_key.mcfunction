$execute unless data entity @s SelectedItem.components.minecraft:custom_data.$(target_data_key) run tellraw @s [{"text":"❌ Item in hand doesn't match required custom data key","color":"red"}]
$execute unless data entity @s SelectedItem.components.minecraft:custom_data.$(target_data_key) run return 0
$execute store success score #has_correct_value item_manager.counter run data modify entity @s SelectedItem.components.minecraft:custom_data.$(target_data_key) set value 1b
execute if score #has_correct_value item_manager.counter matches 1 run tellraw @s [{"text":"❌ Custom data key value must be 1b","color":"red"}]
execute if score #has_correct_value item_manager.counter matches 1 run return 0