///@arg message
///@arg BGIndex
function NewTextBox(){
	var _obj;
	if (instance_exists(oText)) _obj = oTextQueue;
	else _obj = oText;
	
	with (instance_create_layer(0, 0, layer, _obj))
	{
		message_show = argument[0];
		if (instance_exists(other)) originInstance = other.id;
		else originInstance = noone;
		
		if (argument_count > 1) bg = argument[1];
		else bg = 1;
	}
	
	///Have Text
	with (oPlayer)
	{
		if (state != PlayerStateLocked)
		{
			lastState = state;
			state = PlayerStateLocked;
		}
	}
	
	with (oWeapon)
	{
		if (!TextCheck)
		{
			TextCheck = true;
		}
	}
	with (oBossOne)
		{
			if (!TextLeft) TextLeft = true;
		}
	with (oBossTwo)
		{
			if (!TextLeft) TextLeft = true;
		}
	with (oBossThree)
		{
			if (!TextLeft) TextLeft = true;
		}
	with (pMinion)
	{
		if  (!TextLeft) TextLeft = true;
	}
}