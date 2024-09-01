//Update Sprite
function PlayerAnimation(){
var v_totalFrames = sprite_get_number(sprite_index)/4;
image_index = localFrame + (Cardinal_Dir * v_totalFrames);
localFrame += sprite_get_speed(sprite_index)/FPS;

//Animation Loop when ended
if(localFrame >= v_totalFrames){
	animationEnd = true;
	localFrame -= v_totalFrames;
} else animationEnd = false;
}