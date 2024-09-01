/// @description Insert description here
// You can write your code in this editor
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