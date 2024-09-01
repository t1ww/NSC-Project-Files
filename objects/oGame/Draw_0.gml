/// @description Insert description here
// You can write your code in this editor
if (room_get_name(room) == MenuRoom)
{
	//Boss1 trophy
	if(global.Boss1Defeat)
	{
		draw_sprite_ext(sBossOne,
		0,
		trophyX,
		trophyY,
		scale,
		scale, 
		image_angle,
		image_blend,
		image_alpha);
	}
	
	//Boss2 trophy
	if(global.Boss2Defeat)
	{
		draw_sprite_ext(sBossTwo,
		0,
		trophyX + 40,
		trophyY,
		scale,
		scale, 
		image_angle,
		image_blend,
		image_alpha);
	}
	
	//Boss3 trophy
	if(global.Boss3Defeat)
	{
		draw_sprite_ext(sBossThree,
		0,
		trophyX + 80,
		trophyY,
		scale,
		scale, 
		image_angle,
		image_blend,
		image_alpha);
	}
}