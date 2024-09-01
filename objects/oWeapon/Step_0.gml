/// @description Insert description here
// You can write your code in this editor
x = oPlayer.x;
y = oPlayer.y - 22;
if (!global.Death and !global.gamePaused and !TextCheck and (!global.Boss1Died)) direction = point_direction(x, y, mouse_x, mouse_y);
if (direction > 90) and (direction < 270) image_yscale = -1; 
else image_yscale = 1;

image_angle = direction;
var _Player = oPlayer;	
//Shooting
var _mouse;
if (auto) _mouse = _Player.keyAttackAuto;
else _mouse = _Player.keyAttack;

//Cooldown check
if (_mouse)
{
	if (current_cd == 0)
	{
	current_cd = cooldown;
	current_delay = startup;
	}
}

//Shoot Projectile & -Ammo
if (current_delay == 0) and (projectile != -1) and (!global.Death) and (!global.gamePaused) and (!TextCheck)
{
	if (ammo[weapon] != 0)
	{
		with (instance_create_layer(x+lengthdir_x(length,direction), y+lengthdir_y(length,direction), "Projectile", projectile))
		{
			image_angle = other.image_angle;
			direction = other.direction;
			speed = other.bulletspd;
		}
		ammo[weapon] -= 1;
	}
	current_recoil = recoil;
}

//Cooldown & Delay
current_delay = max(-1, current_delay-1);
if (current_delay == -1) current_cd = max(0, current_cd-1);
current_recoil = max(0, floor(current_recoil*0.6));

if (oPlayer.Face == 1) depth = oPlayer.depth + 1;
else depth = oPlayer.depth - 1;