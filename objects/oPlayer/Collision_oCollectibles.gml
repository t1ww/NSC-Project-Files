/// @description Insert description here
// You can write your code in this editor

Itemkey = other.object_index;
value = 1;

if (state = PlayerStateFree or state = PlayerStateRoll)
{
	if (ds_map_exists(Inventory, Itemkey))
	{
		value += ds_map_find_value(Inventory, Itemkey);
		ds_map_replace(Inventory, Itemkey, value);
	}
	else
	{
		ds_map_add(Inventory, Itemkey, value);
		ds_list_add(InventoryItems, Itemkey);
	}
	
	instance_destroy(other);

	show_debug_message("Key: " + string(Itemkey) + " Value: " + string(value));
}