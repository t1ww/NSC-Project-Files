// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function TrophyLoad(){
	with(oTrophyManager) instance_destroy();
	
	if(file_exists("TrophySaved.save"))
	{
		var _buffer = buffer_load("TrophySaved.save");
		var _str = buffer_read(_buffer, buffer_string);
		buffer_delete(_buffer);
		
		var _loadData = json_parse(_str);
		
		while(array_length(_loadData) > 0)
		{
			var _loadEntity = array_pop(_loadData);
			with (instance_create_layer(0, 0, layer, asset_get_index(_loadEntity.obj)))
			{
				x = _loadEntity.x;
				y = _loadEntity.y;
				image_blend = _loadEntity.image_blend;
				image_alpha = _loadEntity.image_alpha;
				image_angle = _loadEntity.image_angle;
				image_speed = _loadEntity.image_speed;
				image_index = _loadEntity.image_index;
				room = _loadEntity.cRoom;
			}
		}
		show_debug_message("Trophy loaded!" + _str);
	}

}