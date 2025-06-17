data remove storage item-manager:display categories
data modify storage item-manager:display categories set value []
scoreboard players set #total_items item_manager.counter 0

data modify storage item-manager:temp category_list set value ["Weapons","Tools","Armor","Food","Blocks","Materials","Misc"]
scoreboard players set #category_index item_manager.counter 0
function item-manager:admin/process_category_loop