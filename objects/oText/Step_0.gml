/// @description TextBox Animate
//var _Player = oPlayer;
var _messagelen = string_length(message_show);

lerpProg += (lerpProgTarget - lerpProg)/lerpSpd;
textProg += global.TextSpeed;
if (textProg >= _messagelen + 40) alphaProg += (alphaProgTarget - alphaProg)/alphaSpd;
if (alphaProg == 1) alphaProgTarget = 0;
else if (alphaProg == 0) alphaProgTarget = 1;

x1 = lerp(x1, x1Target, lerpProg);
x2 = lerp(x2, x2Target, lerpProg);

if (keyboard_check_pressed(vk_space) and !global.gamePaused)
{
	var _messagelen = string_length(message_show);
	if (textProg >= _messagelen)
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
	
	else
	{
		if (textProg > 6)
		{
			textProg = _messagelen;
		}
	}
}