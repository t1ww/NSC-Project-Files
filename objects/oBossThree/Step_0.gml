/// @description Insert description here
// You can write your code in this editor
var _Player = oPlayer;

if (hp <= 0 and global.Boss3Died == false)
	{
		_Player.Phascontrol = false
		//Text Show
		if (Text_count == 0) 
		{
			Boss3DiedText();
			Text_count += 1;
		}
		if (TextLeft == true)
		{
			Screenshake(5, ShakeLeft);
			global.Boss3Defeat = true;
			B3Death = true;
			_Player.CamUpdate = false;
			image_speed = 0;
			if (alphacount mod 2 == 0)
			{
				if (image_alpha == 0) image_alpha = 1;
				else if (image_alpha == 1) image_alpha = 0;
			}
			ShakeLeft = 1;
			alphacount += 1;
		}
	
		else
		{
			global.Boss3Died = true;
		}
	}

