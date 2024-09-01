/// @description Insert description here
// You can write your code in this editor
var _Minion = oMinionTwo;
if (!global.gamePaused and !global.Death and !Death )
{
	if (++atk_cdcurrent >= atk_cd)
	{
		atk_cdcurrent = 0;
	if (other.x < x) and (other.y < y)
	{
			with (other)
	{
			if (flash <= 0) hp -= random_range(1,3);
			if (!collision)
			{
				x -= _Minion.knockback;
				y -= _Minion.knockback;
			}
			flash = 3;
		}
	}

	else if (other.x < x) and (other.y > y)
	{
		with (other)
		{
			if (flash <= 0) hp -= random_range(1,3);
			if (!collision)
			{
				x -= _Minion.knockback;
				y += _Minion.knockback;
			}
			flash = 3;
		}
	}

	else if (other.x > x) and (other.y < y)
	{
		with (other)
		{
			if (flash <= 0) hp -= random_range(1,3);
			if (!collision)
			{
				x += _Minion.knockback;
				y -= _Minion.knockback;
			}
			flash = 3;
		}
}

	else if (other.x > x) and (other.y > y)
	{
		with (other)
		{
			if (flash <= 0) hp -= random_range(1,3);
			if (!collision)
			{
				x += _Minion.knockback;
				y += _Minion.knockback;
			}
			flash = 3;
		}
	}
	}
}