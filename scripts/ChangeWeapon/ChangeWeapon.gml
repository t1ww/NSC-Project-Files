// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ChangeWeapon(arg){
	weapon = arg;
	
	var wp_map = weapons[weapon];
	sprite = ds_map_find_value(wp_map, "sprite"); // or sprite = wp_map[? "sprite"];
	recoil = wp_map[? "recoil"];
	damage = wp_map[? "damage"];
	projectile = wp_map[? "projectile"];
	startup = wp_map[? "startup"];
	bulletspd = wp_map[? "bulletspd"];
	length = wp_map[? "length"];
	cooldown = wp_map[? "cooldown"];
	auto = wp_map[? "auto"];
}