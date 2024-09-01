/// @description Animate & Control
// You can write your code in this editor
menu_opac += (menu_opac_target-menu_opac)/menu_speed;


if(menu_control){
//menu control(mouse)
	var mX_gui = device_mouse_x_to_gui(0);
	var mY_gui = device_mouse_y_to_gui(0);
	if (mX_gui < menu_x + 135) && (mY_gui < menu_y) && (mY_gui > menu_top) && (mX_gui > menu_x - 120)
	{
		menu_cursor = (menu_y - mY_gui) div (menu_itemheight * 2);
		if(mouse_check_button_pressed(mb_left))
		{
			menu_opac_target = 0;
			menu_commit = menu_cursor;
			menu_control = false;
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
		case 2:
		{
			if(file_exists("Checkpoint.save")) file_delete("Checkpoint.save");
			Transition(Trans_Mode.Goto, RoomPlayStart);
			break;
		}
		case 1: 
		{
			if(file_exists("Saved.save"))
			{
				Transition(Trans_Mode.Show);
				Load(); 
				break;
			}
			else	
			{
				Transition(Trans_Mode.Goto, RoomPlayStart);
				break;
			}
		}
		case 0: game_end(); break;
	}
}