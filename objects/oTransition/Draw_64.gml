/// @desc Draw Bars
// You can write your code in this editor

if(mode != Trans_Mode.Off){
	draw_set_alpha(1);
	draw_set_color(c_black);
	draw_rectangle(0, 0, gWidth, percent * Hhalf, false);
	draw_rectangle(0, gHeight, gWidth, gHeight - (percent * Hhalf), false);
}

/*draw_set_color(c_white);
draw_text(gWidth/2, Hhalf,string(percent));*/