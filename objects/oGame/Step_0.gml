/// @description Trophy Check
// You can write your code in this editor
if (room_get_name(room)==MenuRoom)
{
	if (!instance_exists(oFullscreen)) instance_create_layer(Resolution_W/2, Resolution_H - 60, layer, oFullscreen);
}
else
{
	if (!global.gamePaused and instance_exists(oFullscreen)) instance_destroy(oFullscreen);
}

