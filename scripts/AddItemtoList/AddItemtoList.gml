// Script assets have changed for v2.3.0 see
function AddItemtoList(attributes){
	
	//Does the Global var exists?
	if (variable_global_exists("AllItems") == false)
	{
		//global.AllItems = ds_grid_create(0, Item.Height);
		show_message("No variable for AllItems found...")
		return;
	}
	//Is the Global var a ds grid?
	if (ds_exists(global.AllItems, ds_type_grid) == false)
	{
		//global.AllItems = ds_grid_create(0, Item.Height);
		show_message("No ds grid found...")
		return;
	}
	//Are the attributes proper?
	if (is_array(attributes) == false) or (array_length(attributes) != Item.Height)
	{
		show_message("Input for adding items failed...");
		return;
	}
	
	//AddItems
	ds_grid_resize(global.AllItems, ds_grid_width(global.AllItems) + 1, ds_grid_height(global.AllItems));
	for (var i = 0; i < array_length(attributes); ++i)
	{
		global.AllItems[# ds_grid_width(global.AllItems) - 1, i];
	}
}