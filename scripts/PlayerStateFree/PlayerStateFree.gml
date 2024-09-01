function PlayerStateFree(){
	//Movement
hSpeed = lengthdir_x(InputMagnitude * Walk, InputDirection);
vSpeed = lengthdir_y(InputMagnitude * Walk, InputDirection);
//Collision
PlayerCollision();

//Update Sprite Index
var v_oldSprite = sprite_index;
if(InputMagnitude != 0)
{
	direction = InputDirection;
	sprite_index = spriteRun;
} else sprite_index = spriteIdle;
if (v_oldSprite != sprite_index) localFrame = 0;

//Weapon state
with(oWeapon)
{
	ChangeWeapon(0);
}

//Used Health Potions
var _value = ds_map_find_value(Inventory, HealthPotKey)
if (keyHealPotion and _value > 0 and healcd_current <= 0)
{
	if (hp < hp_max) 
	{
		var _replace = ds_map_find_value(Inventory, HealthPotKey) - 1;
		ds_map_replace(Inventory, HealthPotKey, _replace);
		hp += 0.15 * hp_max;
		HP_Used = true;
		healcd_current = healcd;
	}
}

//Update Image Index
PlayerAnimation();

///Change State

	//Roll State
	if (keyRoll and rollcd_current <= 0)
	{
		rollcd_current = rollcd
		state = PlayerStateRoll;	
		moveDistanceRemains = RollDistance;
	}
	else if (rollcd_current > 0) rollcd_current -= 1;
	//Gun State
	if (keyMode)
	{	
		if ((room_get_name(room) == Planet1) or (room_get_name(room) == Tutorialzone)) state = PlayerStatewithGun1;
		if (room_get_name(room) == Planet2) state = PlayerStatewithGun2;
		if (room_get_name(room) == Planet3) state = PlayerStatewithGun3;
	}
}