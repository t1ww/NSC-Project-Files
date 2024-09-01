///@arg Magnitude
///@arg Frames(60 = 1sec)
function Screenshake(){
	with (oCamera)
	if (argument[0] > shakeRemain)
	{
		shakeMagnitude = argument[0];
		shakeRemain = shakeMagnitude;
		shakeTime = argument[1];
	}
}