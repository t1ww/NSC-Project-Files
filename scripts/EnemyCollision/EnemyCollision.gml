// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyCollision(){
	var _collision = false;
	//Horizontal Tiles
	if(tilemap_get_at_pixel(collisionMap, x + hSpeed , y)) or (tilemap_get_at_pixel(collisionEnemyMap, x + hSpeed , y)){
		x -= x mod Tile_Size;
		if(sign(hSpeed) == 1) x += Tile_Size - 1;
		hSpeed = 0;
		v_collision = true
	}
	x += hSpeed;
	
	//Vertical Tiles
	if(tilemap_get_at_pixel(collisionMap, x, y + vSpeed )) or (tilemap_get_at_pixel(collisionEnemyMap, x, y + vSpeed)){
		y -= y mod Tile_Size;
		if(sign(vSpeed) == 1) y += Tile_Size - 1;
		vSpeed = 0;
		v_collision = true
	}
	y += vSpeed;
	
	return _collision;
}