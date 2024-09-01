/// @description Insert description here
// You can write your code in this{

var Player = oPlayer;
if(!instance_exists(Player) and room_get_name(room)!=rMenu and count == 0)
{
	count += 1;
	instance_create_layer(360,654, layer, Player);
}

Player.Phascontrol = true;

//Cam
Player.CamUpdate = true;

//Text
Planet2InitText();

//Lvl Checkpoint
CheckpointSave();