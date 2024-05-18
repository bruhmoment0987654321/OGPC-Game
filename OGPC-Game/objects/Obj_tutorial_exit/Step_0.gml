go_through = keyboard_check_pressed(global.up);

if instance_exists(Obj_player){
	if place_meeting(x,y,Obj_player) && go_through {
		Transition_Start(Rm_prehistoric,Sq_spike_out,Sq_spike_in);
		global.first_time_playing = false;
			if !audio_is_playing(Snd_level_transition) audio_play_sound(Snd_level_transition,7,false);
		Start_over();
	}
}


