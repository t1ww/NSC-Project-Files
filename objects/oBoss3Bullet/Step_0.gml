/// @description Insert description here
// You can write your code in this editor
var _Boss = oBossThree;
if (_Boss.hp > 0.5) track_range = 30;
else if (_Boss.hp > 0 and _Boss.hp <= 0.5) track_range = 24;

var _Player = oPlayer;
if (point_distance(x, y, _Player.x, _Player.y) > track_range and !track_stop)
{
	direction = point_direction(x, y, _Player.x, _Player.y);
}
else track_stop = true;
//Bullet Animation
image_xscale -= 0.02;
image_yscale -= 0.02;
if (image_xscale <= 0.5) and (image_yscale <= 0.5) 
{
	image_xscale = 1;
	image_yscale = 1;
}

if (tilemap_get_at_pixel(BulletCollision, x, y))
{
	instance_destroy();
}