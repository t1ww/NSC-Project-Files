//pause check
if(room_get_name(room)!=MenuRoom and keyboard_check_pressed(vk_escape) and oPlayer.Phascontrol == true)
{
	instance_create_layer(x, y, layer, oPausemenu);
	global.gamePaused = !global.gamePaused;
	
	if (global.gamePaused){
	with(oPauseable){
		gamePausedSpeed = image_speed;
		image_speed = 0;
	}
}
	else{
	with(oPauseable){
		image_speed = gamePausedSpeed;
		}
	}
}

if (DeathControl == true and global.Death)
{
	with (oPauseable)
	{
		image_speed = 0;
	}
	DeathControl = false;
}

//Menu Cam
if (room_get_name(room)==MenuRoom) instance_destroy(oCamera);

///Boss Check
var _Player = oPlayer;
var _Boss1 = oBossOne;
var _Boss2 = oBossTwo;
var _Boss3 = oBossThree;

//First Boss Died
if (global.Boss1Died == true and room_get_name(room) == _Player.Planet1)
{
	instance_destroy(_Boss1)
	_Boss1.B1Death = false;
	global.Boss1Died = false;
	//Room Change
	Transition(Trans_Mode.Goto, RoomP2);
	instance_destroy(oCamera);
}
//Second Boss Died
if (global.Boss2Died == true and room_get_name(room) == _Player.Planet2)
{
	instance_destroy(_Boss2)
	_Boss2.B2Death = false;
	global.Boss2Died = false;
	//Room Change
	Transition(Trans_Mode.Goto, RoomP3);
	instance_destroy(oCamera);
}

if (global.Boss3Died == true and room_get_name(room) == _Player.Planet3)
{
	instance_destroy(_Boss3)
	_Boss3.B3Death = false;
	global.Boss3Died = false;
	if (file_exists("Saved.save")) file_delete("Saved.save");
	//Room Change
	Transition(Trans_Mode.Goto, RoomStart);
	instance_destroy(oCamera);
}