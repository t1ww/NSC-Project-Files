/// @description Pause
// You can write your code in this editor

gui_w = Resolution_W/2;
gui_h = Resolution_H/2

//menu
menu_x = gui_w;
menu_y = gui_h + 100;
menu_opac = 0
menu_opac_target = 1;
menu_Pspeed = 25;//lower = faster
menu_itemheight = font_get_size(fMenu);
menu_commit = -1;
menu_control = true;

//options
menu[2] = "Restart Game";
menu[1] = "Save Game"
menu[0] = "Exit";

//Just In Case
savecd = 1;
savecd_current = 0

//
menu_items = array_length_1d(menu);
menu_top = menu_y - ((menu_itemheight * 2) * menu_items);
menu_cursor = 2;

