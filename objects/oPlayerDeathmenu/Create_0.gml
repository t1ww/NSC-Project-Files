/// @description Pause
// You can write your code in this editor

gui_w = Resolution_W/2
gui_h = Resolution_H/2

//menu
menu_x = gui_w;
menu_y = gui_h + 100;
bg_alpha = 0.1;
bg_alpha_target = 0.6;
bg_color = c_black;
bg_color_target = c_red;
color_amount = 0;
color_amount_target = 0.5;
title_opac = 0;
title_opac_target = 1;
menu_opac = 0
menu_opac_target = 1;
menu_Pspeed = 25;//lower = faster
menu_Tspeed = 60;
menu_itemheight = font_get_size(fMenu);
menu_commit = -1;
menu_control = true;

//options
menu[1] = "Restart this LVL";
menu[0] = "Exit";

//
menu_items = array_length_1d(menu);
menu_top = menu_y - ((menu_itemheight * 2) * menu_items);
menu_cursor = 2;

