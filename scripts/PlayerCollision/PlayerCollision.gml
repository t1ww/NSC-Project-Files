

function PlayerCollision(){
	collision = false;
	
	//Horizontal Tiles
	if(tilemap_get_at_pixel(collisionMap, x + hSpeed , y)){
		x -= x mod Tile_Size;
		if(sign(hSpeed) == 1) x += Tile_Size - 1;
		hSpeed = 0;
		collision = true
	}
	
	//Horizontal Move Commit
	x += hSpeed;
	//Vertical Tiles
	if(tilemap_get_at_pixel(collisionMap, x, y + vSpeed )){
		y -= y mod Tile_Size;
		if(sign(vSpeed) == 1) y += Tile_Size - 1;
		vSpeed = 0;
		collision = true
	}
	
	//Vertical Move Commit
	y += vSpeed;

	return collision;	
}