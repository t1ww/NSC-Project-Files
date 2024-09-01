
function PlayerStateRoll(){
	//Movement
	hSpeed = lengthdir_x(RollSpeed, direction);
	vSpeed = lengthdir_y(RollSpeed, direction);
	
	moveDistanceRemains = max(0, moveDistanceRemains - RollSpeed);
	var _collided = PlayerCollision();
	
	//Update Sprite Index
	sprite_index = spriteRoll;
	var _totalFrames = sprite_get_number(sprite_index)/4;
	image_index = (Cardinal_Dir * _totalFrames) + min(((1 - (moveDistanceRemains/RollDistance)) * (_totalFrames)), _totalFrames - 1);
	
	//Change State
	if (moveDistanceRemains <= 0)
	{
		state = PlayerStateFree;
	}
	
	if (_collided)
	{
		state = PlayerStateFree;
	}
}