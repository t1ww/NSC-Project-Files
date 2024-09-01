/// @description Insert description here
// You can write your code in this editor
var _Boss = oBossThree;
if (!global.gamePaused and !global.Death and !B3Death)
{
if (other.x < x) and (other.y < y)
{
	with (other)
	{
		if (flash <= 0) hp -= random_range(2,3);
		if (!collision)
		{
			x -= _Boss.knockback;
			y -= _Boss.knockback
		}
		flash = 3;
	}
}

else if (other.x < x) and (other.y > y)
{
	with (other)
	{
		if (flash <= 0) hp -= random_range(2,3);
		if (!collision)
		{
			x -= _Boss.knockback;
			y += _Boss.knockback
		}
		flash = 3;
	}
}

else if (other.x > x) and (other.y < y)
{
	with (other)
	{
		if (flash <= 0) hp -= random_range(2,3);
		if (!collision)
		{
			x += _Boss.knockback;
			y -= _Boss.knockback
		}
		flash = 3;
	}
}

else if (other.x > x) and (other.y > y)
{
	with (other)
	{
		if (flash <= 0) hp -= random_range(2,3);
		if (!collision)
		{
			x += _Boss.knockback;
			y += _Boss.knockback
		}
		flash = 3;
	}
}
}