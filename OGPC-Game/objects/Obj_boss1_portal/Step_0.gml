if place_meeting(x,y,Obj_player) {
	Transition_Start(Rm_trex,Sq_spike_out,Sq_spike_in);
	if !audio_is_playing(Snd_level_transition) audio_play_sound(Snd_level_transition,7,false);
	
}



