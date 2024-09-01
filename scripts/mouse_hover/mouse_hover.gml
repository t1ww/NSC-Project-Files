// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function mouser_hover(){
	var v_mouseX = device_mouse_x_to_gui(0);
	var v_mouseY = device_mouse_y_to_gui(0);
	
	return point_in_rectangle(v_mouseX, v_mouseY, x - sprite_width/2, y - sprite_height/2, x + sprite_width/2, y + sprite_height/2);

}