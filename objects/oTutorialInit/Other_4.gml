/// @description Insert description here
// You can write your code in this editor
var Player = oPlayer;
if(!instance_exists(Player) and room_get_name(room)!=rMenu and count == 0)
{
	instance_create_layer(64, 64, layer, Player);
	count += 1;
}

//TextBox
TutorialText();

//Checkpoint
CheckpointSave();