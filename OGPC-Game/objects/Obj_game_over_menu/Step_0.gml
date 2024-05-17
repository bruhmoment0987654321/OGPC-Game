event_inherited();
#region selecting options
if(select){
	switch(pos){
		//start game over
		case 0: 
			start_game();
			audio_play_sound(Snd_level_transition,7,false);
			global.starting_over = true;
		break;
		//back to title
		case 1: 
			Transition_Start(Rm_title,Sq_spike_out,Sq_spike_in);
			audio_play_sound(Snd_level_transition,7,false);
			global.starting_over = true;
		break;
	}
}
#endregion