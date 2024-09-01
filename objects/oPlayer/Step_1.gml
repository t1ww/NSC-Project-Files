/// @description Insert description here
// You can write your code in this editor] ]k]'>]

//Updated Room Check
//current_room = room_get_name(room);

//Player Died
if (hp <= 0 and global.Death == false)
{
	oGame.DeathControl = true;
	Phascontrol = false;
	global.Death = true;
	with (oPauseable)
	{
		image_speed = 0;
	}
	instance_create_layer(x, y, layer, oPlayerDeathmenu);
}

if(!instance_exists(oWeapon))
{
	instance_create_layer(x, y, layer, oWeapon);
}