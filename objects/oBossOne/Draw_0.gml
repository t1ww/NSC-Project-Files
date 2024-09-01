/// @description Insert description here
// You can write your code in this editor
image_alpha = 1;
draw_self();

if (flash > 0)
{
	image_alpha = 0.8;
	flash -= 1;
	shader_set(shBossFlash);
	draw_self();
	shader_reset();
}

draw_sprite_stretched(sHealth, 0, healthbar_x, healthbar_y,((hp/hp_max) * healthbar_width) * scale, healthbar_height * scale);
draw_sprite_ext(sHealthBar,
	0,
	healthbar_x,
	healthbar_y,
	scale,
	scale,
	image_angle,
	image_blend,
	image_alpha);


