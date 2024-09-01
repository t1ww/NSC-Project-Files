// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function TextSkip(){
if (keyboard_check_pressed(vk_enter) and !global.gamePaused and !global.Death)
{
	if (instance_exists(oTextQueue)) instance_destroy(oTextQueue);
	if (instance_exists(oText))
	{
		with (oText)
		{
				instance_destroy();
				if (instance_exists(oTextQueue))
				{
					with (oTextQueue) ticket -= 1;
				}
		
				//No Text Left
				else
				{
					with (oBossOne)
					{
						TextLeft = false;
					}
					with (oBossTwo)
						{
					TextLeft = false;
					}
					with (oBossThree)
					{
						TextLeft = false;
					}
					with (oPlayer)
					{
						TextLeft = false;
						state = lastState;
					}
			
					with (oWeapon)
					{
						TextCheck = false;
					}
					with (pMinion)
					{
						TextLeft = false;
					}
				}
			}
		}
	}
}