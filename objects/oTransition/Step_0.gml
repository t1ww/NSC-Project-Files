/// @desc Transition Prog.
// You can write your code in this editor
if(mode != Trans_Mode.Off){
	if(mode == Trans_Mode.Intro){
		percent = max(0, percent - max((percent/10),0.005));
	}
	else{
		percent = min(1, percent + max(((1-percent)/10),0.005));
	}
	
	if((percent == 1) or (percent == 0)){
		switch(mode){
			case Trans_Mode.Intro:
			{
				mode = Trans_Mode.Off;
				break;
			}
			case Trans_Mode.Next:
			{
				mode = Trans_Mode.Intro;
				room_goto_next();
				break;
			}
			case Trans_Mode.Goto:
			{
				mode = Trans_Mode.Intro;
				room_goto(target);
				break;
			}
			case Trans_Mode.Restart:
			{
				game_restart();
				break;
			}
			case Trans_Mode.Show:
			{
				mode = Trans_Mode.Intro;
				break;
			}
			
		}

	}
}