// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyWander(){
	sprite_index = spriteMove;
	
	//At des or given up
	if ((x == xTo) and (y == yTo)) or (TimePassed > enemyWanderDistance/enemySpeed)
	{
		hSpeed = 0;
		vSpeed = 0;
		//End move animation
		if (image_index < 1)
		{
			image_speed = 0;
			image_index = 0;
		}
		
		//Set new target des
		if (++Wait >= WaitDuration)
		{
			Wait = 0;
			TimePassed = 0;
			dir = point_direction(x, y, xstart, ystart) + irandom_range(-45, 45);
			xTo = x + lengthdir_x(enemyWanderDistance, dir);
			yTo = y + lengthdir_y(enemyWanderDistance, dir);
		}
	}
	
	//Move to new des
	else
	{
		TimePassed += 1;
		image_speed = 1;
		var _distanceTogo = point_distance(x, y, xTo, yTo);
		var _speedthisFrame = enemySpeed;
		if (_distanceTogo < enemySpeed) _speedthisFrame = _distanceTogo;
		dir = point_direction(x, y, xTo, yTo);
		hSpeed = lengthdir_x(_speedthisFrame, dir);
		vSpeed = lengthdir_y(_speedthisFrame, dir);
		if (hSpeed != 0) image_xscale = sign(hSpeed) * scale;
		
		//Collide and Move
		EnemyCollision();
	}
	
	//Aggro Check
	if (++AggroCheck >= AggroCheckDuration)
	{
		AggroCheck = 0;
		if (instance_exists(oPlayer)) and (point_direction(x, y, oPlayer.x, oPlayer.y) <= enemyAggroRadius)
		{
			state = EnemyState.CHASE;
			target = oPlayer;
		}
	}
}