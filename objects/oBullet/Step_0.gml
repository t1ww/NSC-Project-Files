/// @description Insert description here
// You can write your code in this editor
if (tilemap_get_at_pixel(BulletCollision, x, y) or tilemap_get_at_pixel(PBulletCollision, x, y))
{
	instance_destroy();
}