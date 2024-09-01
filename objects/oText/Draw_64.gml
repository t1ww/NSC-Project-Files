/// @description Draw TextBox
NineSliced(sBGTextBox, x1, y1, x2, y2, bg);
draw_set_alpha(1);
draw_set_font(fText);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_black);

var _draw = string_copy(message_show, 1, textProg);
var _messagelen = string_length(message_show);

draw_text((x1 + x2)/2, (y1 + y2)/2 - 4, _draw);
draw_set_color(c_white);
draw_text((x1 + x2)/2, (y1 + y2)/2 - 6, _draw);

if (textProg >= _messagelen + 40)
{
	draw_set_alpha(alphaProg);
	draw_set_font(fInv);
	draw_text((x1 + x2)/2, (y1 + y2)/2 + 50, skipper);
	draw_set_alpha(1);
}
