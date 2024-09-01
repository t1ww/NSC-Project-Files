// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckpointSave(){
	//make save array
	var _saveData = array_create(0);
	
	//every instance, add to struct
	with(oSaveable)
	{
		var _saveEntity = 
		{
			obj : object_get_name(object_index),
			x : x,
			y : y,
			image_speed : image_speed,
			image_index : image_index,
			currentroom : room,
		}
		array_push(_saveData, _saveEntity);
	}
	
	//turn this datas into JSON string via buffer
	var _str = json_stringify(_saveData);
	var _buffer = buffer_create(string_byte_length(_str) + 1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _str);
	buffer_save(_buffer, "Checkpoint.save");
	buffer_delete(_buffer);
	
	show_debug_message("Checkpoint saved!" + _str);

}