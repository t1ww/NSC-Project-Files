
if (!Death) image_alpha = 1;
draw_self();

var _hbX = x - 7;
var _hbY = y - 16;

if (flash > 0)
{
	image_alpha = 0.8;
	flash -= 1;
	shader_set(shBossFlash);
	draw_self();
	shader_reset();
}
if (!Death)
{
	draw_sprite_stretched(sHealth, 0, _hbX, _hbY,((hp/hp_max) * healthbar_width) * hpscale, healthbar_height * hpscale);
	draw_sprite_ext(sHealthBar,
		0,
		_hbX,
		_hbY,
		hpscale,
		hpscale,
		image_angle,
		image_blend,
		image_alpha);
}