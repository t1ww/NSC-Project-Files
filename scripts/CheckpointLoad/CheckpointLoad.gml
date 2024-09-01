// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckpointLoad(){
	with(oSaveable) instance_destroy();
	//with(oCamera) instance_destroy();
	
	if(file_exists("Checkpoint.save"))
	{
		var _buffer = buffer_load("Checkpoint.save");
		var _str = buffer_read(_buffer, buffer_string);
		buffer_delete(_buffer);
		
		var _loadData = json_parse(_str);
		
		while(array_length(_loadData) > 0)
		{
			var _loadEntity = array_pop(_loadData);
			with (instance_create_layer(0, 0, layer, asset_get_index(_loadEntity.obj)))
			{
				room_goto(_loadEntity.currentroom);
				x = _loadEntity.x;
				y = _loadEntity.y;
				image_speed = _loadEntity.image_speed;
				image_index = _loadEntity.image_index;
			}
		}
		show_debug_message("Checkpoint loaded!" + _str);
	}

}