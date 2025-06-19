$data modify storage item-manager:metadata items.$(id).sync_mode set value "$(mode)"
$tellraw @s [{"text":"✅ Set sync mode for $(id) to: $(mode)","color":"green"}]
$function item-manager:admin/sync_settings {id:"$(id)"}