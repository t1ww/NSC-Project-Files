/// @description Insert description here
// You can write your code in this editor
if (other.hp > 0)
{
	with (other)
	{
		hp -= oWeapon.damage;
		flash = 3;
	}
	instance_destroy();
}
