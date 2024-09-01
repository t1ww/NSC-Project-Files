/// @description Insert description here
// You can write your code in this editor
if (global.Boss1Defeat == true)
{
	draw_sprite_ext(sTrophy, 0, x, y, scale, scale, image_angle, image_blend, image_alpha);
}
if (global.Boss2Defeat == true)
{
	draw_sprite_ext(sTrophy, 1, x + 75, y, scale, scale, image_angle, image_blend, image_alpha);
}
if (global.Boss3Defeat == true)
{
	draw_sprite_ext(sTrophy, 2, x + 150, y, scale, scale, image_angle, image_blend, image_alpha);
}