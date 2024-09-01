/// @description Draw Pause Menu
// You can write your code in this editor
//BG
var _Colormerge = merge_color(bg_color, bg_color_target, color_amount);
draw_set_color(_Colormerge);
draw_set_alpha(bg_alpha);
draw_rectangle(view_xport[0] ,view_yport[0], view_wport[0], view_hport[0], 0);	

//Text
draw_set_color(merge_color(c_white,c_ltgray, 0.6));
draw_set_font(fMenu);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_alpha(title_opac);

//Title
var tX = menu_x + 10;
var tY = menu_y - 200;
draw_text(tX, tY, "You Died!");

//Text Options
if (title_opac >= 0.9)
{
draw_set_alpha(menu_opac);	

for(var	i = 0; i < menu_items; i++ )
{
	var offset = 2;
	var text = menu[i];
	if(menu_cursor == i){
		text = string_insert("> ", text, 0);
		var col = c_white;
	}
	else{
		var col = c_gray;
	}
	
	var mX = menu_x;
	var mY = menu_y - (menu_itemheight * (i * 2));
	draw_set_color(c_black);
	draw_text(mX+offset, mY, text);
	draw_text(mX-offset, mY, text);
	draw_text(mX, mY+offset, text);
	draw_text(mX, mY-offset, text);
	draw_set_color(col);
	draw_text(mX, mY, text);
}
}
