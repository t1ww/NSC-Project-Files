/// @description Insert description here
// You can write your code in this editor
if (instance_position(mouse_x, mouse_y, all) = id)
{
	image_xscale = scale;
	image_yscale = scale;
	image_alpha = 0.5;
	if (mouse_check_button_pressed(mb_left)) window_set_fullscreen(!window_get_fullscreen());
}
else
{
	image_xscale = 1;
	image_yscale = 1;
	image_alpha = 1;
}