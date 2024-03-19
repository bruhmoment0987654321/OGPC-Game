

event_inherited();

#region selecting options
if(select){
	var sml = menu_level;
	switch(menu_level){
		//main menu
		case 0:
			switch(pos){
				//start game
				case 0: 
				if(global.first_time_playing){
					global.playercant = false
					room_goto(Rm_ctrl_rm);
				}else{
					room_goto_next();
					global.playercant = false;
				}
				break;
				//pick options
				case 1:  menu_level = 1 break;
				//get out of the game
				case 2: game_end();  break;
			}
		break;
		
		case 1:
		switch(pos){
			//go fullscreen
			case 0: window_set_fullscreen(!window_get_fullscreen()); break;
			//controls
			case 1:
				global.first_time_playing = false;
				global.playercant = false;
				global.show_GUI = true;
				room_goto(Rm_ctrl_rm);
			break;
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