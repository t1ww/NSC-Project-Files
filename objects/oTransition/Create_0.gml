/// @description setup
// You can write your code in this editor
gWidth = display_get_gui_width();
gHeight = display_get_gui_height();
Hhalf = gHeight/2;

enum Trans_Mode
{
	Off,
	Next,
	Goto,
	Restart,
	Intro,
	Show
}
mode = Trans_Mode.Intro;
percent = 1;
roomtarget = room;