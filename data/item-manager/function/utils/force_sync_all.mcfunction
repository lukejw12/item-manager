execute as @a run scoreboard players set @s item_manager.needs_sync 1
function item-manager:sync/check_all_players
tellraw @a [{"text":"🔄 Forced sync for all players","color":"green"}]