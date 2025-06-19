$data modify storage item-manager:temp display_category set from storage item-manager:display categories[$(display_index)]
data modify storage item-manager:temp category_name set from storage item-manager:temp display_category.name
function item-manager:admin/show_category_entry with storage item-manager:temp