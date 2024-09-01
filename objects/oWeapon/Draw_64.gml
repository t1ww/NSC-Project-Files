/// @description Ammo Value
// You can write your code in this editor
//Gui
var _gX = 80;
var _gY = Resolution_H - 80;

draw_set_color(c_white);
draw_set_font(fMenu);
draw_set_alpha(1);

if (oWeapon.weapon!=0 and !TextCheck) 
{
	if (ammo[weapon] > 0) draw_set_color(c_white);
	else if (ammo[weapon] == 0) draw_set_color(merge_color(c_red, c_white, 0.1));
	
	draw_text(_gX, _gY, string(ammo[weapon]));
}