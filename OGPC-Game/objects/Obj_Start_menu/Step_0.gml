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
				start_game();
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
				//tutorial
				case 1:
					global.first_time_playing = false;
					global.playercant = false;
					Transition_Start(Rm_ctrl_rm,Sq_spike_out,Sq_spike_in);
				break;
				case 2:
					 if show_question("Do you want to erase all save data? It won't come back."){
						if show_question("Are you sure? ;_;") Default_Data();	 
					 }
				break;
				//go back
				case 3: menu_level = 0; break;
			}
		break;
		
	}
	//setting position back to the top
	if(sml != menu_level) pos = 0;
	//store number of options again
	op_length = array_length(options[menu_level]);
}
#endregion