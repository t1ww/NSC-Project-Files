
function EnemyChase(){
	sprite_index = spriteMove;
	
	if (instance_exists(target))
	{
		xTo = target.x;
		yTo = target.y;
		
		var _distanceTogo = point_distance(x, y + 10, xTo, yTo);
		image_speed = 1;
		dir = point_direction(x, y + 10, xTo, yTo);
		if (_distanceTogo > enemySpeed)
		{
			hSpeed = lengthdir_x(enemySpeed, dir);
			vSpeed = lengthdir_y(enemySpeed, dir);
		}
		else
		{
			hSpeed = lengthdir_x(_distanceTogo, dir);
			vSpeed = lengthdir_y(_distanceTogo, dir);
		}
		
		if (hSpeed != 0) image_xscale = sign(hSpeed) * scale;
		
		//Collide and Move
		EnemyCollision();
	}
}