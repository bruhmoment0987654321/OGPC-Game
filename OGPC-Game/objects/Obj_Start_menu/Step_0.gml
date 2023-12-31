up = keyboard_check_pressed(ord("W"));
down = keyboard_check_pressed(ord("S"));
select = keyboard_check_pressed(vk_space);
if(global.cantpress){
	up = 0;
	down = 0;
	select = 0;
}
//store number of options into current menu
op_length = array_length(options[menu_level]);

//moving though menu
pos += down-up;
if(pos >= op_length) pos = 0;
if(pos < 0) pos = op_length-1;

#region selecting options
if(select){
	var sml = menu_level;
	switch(menu_level){
		//main shop menu
		case 0:
			switch(pos){
				//start game
				case 0: room_goto_next();  break;
				//pick options
				case 1:  menu_level = 1 break;
				//get out of the game
				case 2: game_end();  break;
			}
		break;
		
		case 1:
		switch(pos){
			//go fullscreen
			case 0:
				if(!active){
					window_set_fullscreen(true);
					active = true;
				}else{
					window_set_fullscreen(false);
					active = false;
				}
			break;
			//sound
			case 1: break;
			//go back
			case 2: menu_level = 0; break;
		}
		
	}
	//setting position back to the top
	if(sml != menu_level) pos = 0;
	//store number of options again
	op_length = array_length(options[menu_level]);
}
#endregion