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
					if !audio_is_playing(Snd_level_transition) audio_play_sound(Snd_level_transition,7,false);
				break;
				//pick options
				case 1:
					menu_level = 1;
					audio_play_sound(Snd_menu_select,6,false);
				break;
				//get out of the game
				case 2: game_end();  break;
			}
		break;
		
		case 1:
			switch(pos){
				//go fullscreen
				case 0: 
					window_set_fullscreen(!window_get_fullscreen());
					audio_play_sound(Snd_menu_select,6,false);
				break;
				//tutorial
				case 1:
					global.first_time_playing = false;
					global.playercant = false;
					Transition_Start(Rm_ctrl_rm,Sq_spike_out,Sq_spike_in);
						if !audio_is_playing(Snd_level_transition) audio_play_sound(Snd_level_transition,7,false);
				break;
				case 2:
					audio_play_sound(Snd_menu_select,6,false);
					 if show_question("Do you want to erase all save data? It won't come back."){
						if show_question("Are you sure? ;_;") Default_Data();	 
					 }
				break;
				//go back
				case 3:
					menu_level = 0; 
					audio_play_sound(Snd_menu_exit,6,false);
				break;
			}
		break;
		
	}
	//setting position back to the top
	if(sml != menu_level) pos = 0;
	//store number of options again
	op_length = array_length(options[menu_level]);
}
#endregion