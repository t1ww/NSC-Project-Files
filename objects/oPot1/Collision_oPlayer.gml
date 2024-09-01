/// @description Insert description here
// You can write your code in this editor
if (room_get_name(room)==Tutorial and global.HealthPotCount==0)
{
	NewTextBox("This is the Recovery potion or the Health potion...");
	NewTextBox("This can be used to heal your own health...");
	NewTextBox("by pressing 'TAB' without holding your weapon.");
	global.HealthPotCount++;
}