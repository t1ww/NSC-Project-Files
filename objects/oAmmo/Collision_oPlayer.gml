/// @description Insert description here
// You can write your code in this editor
if (room_get_name(room)==Tutorial and global.AmmoItemCount==0)
{
	NewTextBox("This is the antidote...");
	NewTextBox("It can be use to load into your weapon...");
	NewTextBox("by pressing 'R'...");
	NewTextBox("The type of antidotes vary from planet to planet.");
	global.AmmoItemCount++;
}