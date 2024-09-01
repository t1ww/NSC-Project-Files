/// @description Insert description here
// You can write your code in this editor
if (!Warned)
{
	if (keyboard_check_pressed(vk_enter)) oTextQueue.ticket = 0;
	NewTextBox("There's a very high concentration of germs down below...");
	NewTextBox("Are you sure that you are prepared enough?");
	Warned = true;
}