// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStatewithGun2(){
	//Movement
hSpeed = lengthdir_x(InputMagnitude * WalkGun2, InputDirection);
vSpeed = lengthdir_y(InputMagnitude * WalkGun2, InputDirection);
//Collision
PlayerCollision();

//Update Sprite Index
var v_oldSprite = sprite_index;
if(InputMagnitude != 0)
{
	direction = InputDirection;
	sprite_index = spriteGunRun;
} else sprite_index = spriteGunIdle;
if (v_oldSprite != sprite_index) localFrame = 0;

var _value = ds_map_find_value(Inventory, AmmoKey)
var _weapon = oWeapon;
if (keyReload and _value > 0 and reloadcd_current <= 0)
{
	if (_weapon.ammo[2] < _weapon.max_ammo2) 
	{
		var _replace = ds_map_find_value(Inventory, AmmoKey) - 1;
		ds_map_replace(Inventory, AmmoKey, _replace);
		_weapon.ammo[2] = _weapon.max_ammo2;
		reloadcd_current = reloadcd;
	}
}

//Weapon State
with (oWeapon)
{
	ChangeWeapon(2);
}

//Update Image Index
PlayerAnimation();

//Change State(Barehanded)
if (keyMode)
{
	state = PlayerStateFree;
}
}