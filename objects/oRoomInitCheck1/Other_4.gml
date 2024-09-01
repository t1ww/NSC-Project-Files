
//Player
var Player = oPlayer;
if(!instance_exists(Player) and room_get_name(room)!=rMenu and count == 0)
{
	instance_create_layer(420,160, layer, Player);
	count += 1;
}
Player.Phascontrol = true;
//Cam
Player.CamUpdate = true;

//TextBox
Planet1InitText();

//Save
Save();

//Lvl Checkpoint
CheckpointSave();