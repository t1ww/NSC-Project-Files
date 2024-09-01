//In Room
var _Boss1 = oBossOne;
var _Boss2 = oBossTwo;
var _Boss3 = oBossThree;
var _Player = oPlayer;
if (instance_exists(_Boss1) and _Boss1.B1Death) follow = _Boss1;
else if (instance_exists(_Boss2) and _Boss2.B2Death) follow = _Boss2;
else if (instance_exists(_Boss3) and _Boss3.B3Death) follow = _Boss3;
else follow = _Player;

//Update Destination
if(instance_exists(follow)){
	xTo = follow.x;
	yTo = follow.y;
}

//Update Obj. Pos.
x += (xTo - x) / 15;
y += (yTo - y) / 15;

//Keep Cam in RoomBound
x = clamp(x, viewWHalf, room_width - viewWHalf);
y = clamp(y, viewHHalf, room_height - viewHHalf);

//ScreenShake
x += random_range(-shakeRemain, shakeRemain);
y += random_range(-shakeRemain, shakeRemain);

shakeRemain = max(0, shakeRemain - ((shakePercent/shakeTime) * shakeMagnitude));

camera_set_view_pos(cam,x - viewWHalf,y - viewHHalf);