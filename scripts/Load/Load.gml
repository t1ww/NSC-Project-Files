// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Load(){
	with(oPlayer) instance_destroy();
	with(oCamera) instance_destroy();
	
	if(file_exists("Saved.save"))
	{
		var _buffer = buffer_load("Saved.save");
		var _str = buffer_read(_buffer, buffer_string);
		buffer_delete(_buffer);
		
		var _loadData = json_parse(_str);
		
		while(array_length(_loadData) > 0)
		{
			var _loadEntity = array_pop(_loadData);
			room_goto(_loadEntity.currentroom);
			with (instance_create_layer(0, 0, layer, asset_get_index(_loadEntity.obj)))
			{
				x = _loadEntity.x;
				y = _loadEntity.y;
				state = _loadEntity.state;
				hp = _loadEntity.hp;
				hp_max = _loadEntity.hp_max;
			}
		}
		show_debug_message("game loaded!" + _str);
	}

}