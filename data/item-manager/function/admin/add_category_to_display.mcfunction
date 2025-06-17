$data modify storage item-manager:display categories append value {name:"$(current_category)",count:0}
execute store result storage item-manager:display categories[-1].count int 1 run scoreboard players get #category_count item_manager.counter
scoreboard players operation #total_items item_manager.counter += #category_count item_manager.counter