//Item setup
if (instance_exists(oAmmo)) AmmoKey = oAmmo.FirstAmmoKey;
if (instance_exists(oPot1)) HealthPotKey = oPot1.HealthPotionKey;

//Input Key
if(Phascontrol){
keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("D"));
keyUp = keyboard_check(ord("W"));
keyDown = keyboard_check(ord("S"));
keyRoll = keyboard_check_pressed(vk_space);
keyReload = keyboard_check_pressed(ord("R"));
keyAttack = mouse_check_button_pressed(mb_left);
keyAttackAuto = mouse_check_button(mb_left);
keyMode = keyboard_check_pressed(ord("E"));
keyHealPotion= keyboard_check_pressed(vk_tab);
}
InputDirection = point_direction(0,0,keyRight-keyLeft,keyDown-keyUp);
InputMagnitude = (keyRight-keyLeft != 0) || (keyDown-keyUp != 0);

Face = Cardinal_Dir;
if(!global.gamePaused and !global.Death and (!global.Boss1Died or !global.Boss2Died or !global.Boss3Died)) script_execute(state);

//HP capped
if (hp > hp_max) hp = hp_max;

//CamCheck
if (CamUpdate)
{
	var CamCheck = instance_exists(oCamera);
	if (!CamCheck) instance_create_layer(PStartX, PStartY, layer, oCamera);
}

if (healcd_current > 0) healcd_current -= 1;
if (reloadcd_current > 0) reloadcd_current -= 1;

//Ammo Sprite Check
if (room_get_name(room)==Planet1) ammosprite = 0;
if (room_get_name(room)==Planet2) ammosprite = 1;
if (room_get_name(room)==Planet3) ammosprite = 2;

//Text Skip
TextSkip();
