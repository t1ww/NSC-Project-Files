/// @description Animate & Control
// You can write your code in this editor
if (title_opac >= 0.9) menu_opac += (menu_opac_target - menu_opac)/menu_Pspeed;
bg_alpha += (bg_alpha_target - bg_alpha)/menu_Tspeed;
color_amount += (color_amount_target - color_amount)/menu_Tspeed;
title_opac += (title_opac_target - title_opac)/menu_Tspeed;

if(menu_control){
//menu control(mouse)
	var mX_gui = device_mouse_x_to_gui(0);
	var mY_gui = device_mouse_y_to_gui(0);
	if (mX_gui < menu_x + 250) && (mY_gui < menu_y) && (mY_gui > menu_top) && (mX_gui > menu_x - 200)
	{
		menu_cursor = (menu_y - mY_gui) div (menu_itemheight * 2);
		if(mouse_check_button_pressed(mb_left))
		{
			menu_commit = menu_cursor;
			if(menu_commit == 0)
			{
				menu_Pspeed = 25;
				menu_opac_target = 0;
				menu_control = false;
			}
			else
			{
				menu_Pspeed = 5;
				menu_opac_target = 0;
			}
			
		}
	}


//menu control(kb)
/*	if(keyboard_check_pressed(vk_up)) or (keyboard_check_pressed(ord("W")))
	{
		menu_cursor++;
		if(menu_cursor > menu_items) menu_cursor = 0;
	}
	if(keyboard_check_pressed(vk_down)) or (keyboard_check_pressed(ord("S")))
	{
		menu_cursor--;
		if(menu_cursor < 0) menu_cursor = menu_items-1;
	}
	if(keyboard_check_pressed(vk_enter))
	{
		menu_opac_target = 0;
		menu_commit = menu_cursor;
		menu_control = false;
	}*/
}

if (menu_opac <= 0.05) and (menu_commit != -1)
{
	switch (menu_commit)
	{
		case 1: 
			{
				Transition(Trans_Mode.Show);
				CheckpointLoad();
				break;
			}
		case 0: 
			{
				Transition(Trans_Mode.Goto, RoomStart);
				instance_destroy(oCamera);
				oGame.DeathControl = false;
				break;
			}
	}
}
