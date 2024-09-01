/// @description Insert description here
// You can write your code in this editor
var _Boss = oBossOne;
if (_Boss.hp > (_Boss.hp_max * 0.5))
{
	with (other)
	{
		if (flash <= 0) hp -= random_range(7,9);
		if (hp > 0) flash = 3;
	}
}
else if (_Boss.hp > 0 and _Boss.hp <= (_Boss.hp_max * 0.5))
{
	with (other)
	{
		if (flash <= 0) hp -= random_range(10, 13);
		if (hp > 0) flash = 3;
	}
}
instance_destroy()