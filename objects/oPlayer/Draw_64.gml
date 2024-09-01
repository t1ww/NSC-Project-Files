/// @description Insert description here
// You can write your code in this editor

///Health Bar
draw_sprite_stretched(sHealth, 0, healthbar_x, healthbar_y,(hp/hp_max) * healthbar_width, healthbar_height);
draw_sprite(sHealthBar, 0, healthbar_x, healthbar_y);

//Inventory Gui
var _InvLen = ds_list_size(InventoryItems);
for (var i = 0; i < _InvLen; i++)
{
	var _key = ds_list_find_value(InventoryItems, i);
	var _value = ds_map_find_value(Inventory, _key);
	
	var _offsetx = 32;
	var _offsety = 64;
	var _textoffset = 15;
	//Draw Sprite
	draw_sprite(object_get_sprite(_key), ammosprite, InvX, InvY + (i * _offsety));
	
	//Draw Value
	draw_set_font(fInv);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_set_color(c_white);
	draw_text(InvX + _offsetx, InvY + (i * _offsety) + _textoffset, ": " + string(_value));
}