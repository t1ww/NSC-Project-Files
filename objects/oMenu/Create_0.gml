/// @description Menu
// You can write your code in this editor

//UnPaused
global.gamePaused = false;

gui_w = Resolution_W/2
gui_h = Resolution_H/2

//menu
menu_x = gui_w;
menu_y = gui_h + 100;
menu_opac = 0
menu_opac_target = 1;
menu_speed = 45;//lower = faster
menu_itemheight = font_get_size(fMenu);
menu_commit = -1;
menu_control = true;

//options
menu[2] = "New Game";
menu[1] = "Load Game";
menu[0] = "Quit";

//
menu_items = array_length_1d(menu);
menu_top = menu_y - ((menu_itemheight * 2) * menu_items);
menu_cursor = 2;

