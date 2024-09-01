/// @description Insert description here
// You can write your code in this editor
if (instance_exists(oPlayer)) depth = oPlayer.depth + 1;
//State Machine Executed
if (!global.gamePaused and !TextLeft and !Death)
{
	image_speed = 1;
	if (enemyScript[state] != -1) script_execute(enemyScript[state]);
	depth = -bbox_bottom;
}
if (TextLeft)
{
	image_speed = 0;
}