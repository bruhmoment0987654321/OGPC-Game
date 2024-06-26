up = keyboard_check_pressed(global.scroll_up);
down = keyboard_check_pressed(global.scroll_down);
select = keyboard_check_pressed(global.select);
s = id; //attaching the variables to specific menus
if(global.cantpress)||(global.cantpress_commands){
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
		//main pause menu
		case 0:
			switch(pos){
				//continue
				case 0:
					instance_destroy();
					global.game_state = GAME_STATE.RUNNING;
					audio_play_sound(Snd_menu_select,6,false);
				break;
				//restart
				case 1:
					Transition_Start(room, Sq_spike_out,Sq_spike_in);
					restart = true;
						if !audio_is_playing(Snd_level_transition) audio_play_sound(Snd_level_transition,7,false);
					global.starting_over = true;
				break;
				//options
				case 2:
					menu_level = 1;
					audio_play_sound(Snd_menu_select,6,false);
				break;
				//back to title
				case 3:
					Transition_Start(Rm_title,Sq_spike_out,Sq_spike_in);
					Start_over();
					getting_out = true;
						if !audio_is_playing(Snd_level_transition) audio_play_sound(Snd_level_transition,7,false);
					global.starting_over = true;
				break;
				//Exit game
				case 4: game_end(); break;
			}
		break;
		//options sub menu
		case 1:
			switch(pos){
				//fullscreen
				case 0:
					window_set_fullscreen(!window_get_fullscreen());
					audio_play_sound(Snd_menu_select,6,false);
				break;
				//settings
				case 1: break;
				//back to main menu
				case 2: 
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