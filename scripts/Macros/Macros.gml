// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Macros(){
	#macro FPS 30
	#macro Cardinal_Dir round(direction/90)
	#macro Tile_Size 16
	#macro RoomStart rMenu
	#macro Resolution_W 1280
	#macro Resolution_H 720
	#macro RoomPlayStart rTutorial
	#macro RoomP2 r2Planet
	#macro RoomP3 r3Planet
	
	enum EnemyState
	{
		IDLE,
		WANDER,
		CHASE,
		ATTACK,
		HURT,
		DIE,
		WAIT
	}

}