/// @description Insert description here
// You can write your code in this editor
if (room_get_name(room) == Tutorialzone) 
{
	Transition(Trans_Mode.Goto, r1Planet);
	oPlayer.Phascontrol = false;
}
/*else if (room_get_name(room) == Planet1) Transition(Trans_Mode.Goto, r2Planet);
else if (room_get_name(room) == Planet2) Transition(Trans_Mode.Goto, r3Planet);*/