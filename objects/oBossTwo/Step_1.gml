/// @description Insert description here
// You can write your code in this editor
/*x = owner.x;
y = owner.y + 10;

image_xscale = abs(owner.image_xscale);
image_yscale = abs(owner.image_yscale);*/

if (instance_exists(oPlayer))
{
	//In attacking range
	if(!global.gamePaused and !global.Death and !B2Death and !TextLeft)
	{
	if (point_distance(oPlayer.x, oPlayer.y,x,y) < range)
	{
		direction = point_direction(x, y, oPlayer.x, oPlayer.y);
		//Phase 1
		if (hp > (hp_max * 0.5))
		{
			countdown--;
			//Bullet Phase
			if (countdown <= 0 and phase1)
			{
				countdown = countdownrate;
				if (bulletcount < 5)
				{
				image_index = 0;
				image_speed = 0;
					//create bullet
					for (var i = 0; i < 10; i++)
					{
						with (instance_create_layer(x, y, "Projectile", BossBullet))
						{
							spd = 2.75;
							direction = other.direction + (i * 36);
							speed = spd;
						}
					}
					bulletcount++;
				}
				else
				{
					image_speed = 1;
					bulletcount = 0;
					countdown = countdownratelong;
					if (phasecd_current < phase1cd)
					{
						phasecd_current += 1;
					}
					else
					{
						phase1 = false;
						phase2 = true;
						phasecd_current = phasecd_init;
					}
				}
			}
			//Spawn Phase
			else if (countdown <= 0 and phase2)
			{
				countdown = countdownrate_spawnp1;
				if (spawncount < 4)
				{
				image_index = 0;
				image_speed = 0;
				//create minions
				with (instance_create_layer(x, y, "Enemy", Minion))
				{
					target = oPlayer;
					state = EnemyState.CHASE;
				}
				spawncount++;
				}
				else
				{
					image_speed = 1;
					spawncount = 0;
					countdown = countdownratelong;
					if (phasecd_current < phase2cd)
					{
						phasecd_current += 1;
					}
					else
					{
						phase1 = true;
						phase2 = false;
						phasecd_current = phasecd_init;
					}
				}
			}
		}
		
		//Phase 2
		else if (hp <= (hp_max * 0.5) and hp > 0)
		{
			countdown--;
			//Bullet Phase
			if (countdown <= 0 and phase1)
			{
				countdown = countdownratep2;
				if (bulletcount < 7)
				{
				image_index = 0;
				image_speed = 0
					for (var i = 0; i < 10; i++)
					{
						with (instance_create_layer(x, y, "Projectile", BossBullet))
						{
							spd = 3.35;
							direction = other.direction + (i * 36);
							speed = spd;
						}
					}
					bulletcount++;
				}
				else
				{
					image_speed = 1;
					bulletcount = 0;
					countdown = countdownratelong;
					if (phasecd_current < phase2cd)
					{
						phasecd_current += 1;
					}
					else
					{
						phase1 = false;
						phase2 = true;
						phasecd_current = phasecd_init;
					}
				}
			}
			//Spawn Phase
			else if (countdown <= 0 and phase2)
			{
				countdown = countdownrate_spawnp2;
				//Create bullet Phase
				if (spawncount < 7)
				{
				image_index = 0;
				image_speed = 0;
				//create minions
				with (instance_create_layer(x, y, "Enemy", Minion))
				{
					target = oPlayer;
					state = EnemyState.CHASE;
				}
				spawncount++;
				}
				else
				{
					image_speed = 1;
					spawncount = 0;
					countdown = countdownratelong;
					if (phasecd_current < phase2cd)
					{
						phasecd_current += 1;
					}
					else
					{
						phase1 = true;
						phase2 = false;
						phasecd_current = phasecd_init;
					}
				}
			}
		}
	}
}
}
