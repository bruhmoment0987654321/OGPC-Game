if place_meeting(x,y,Obj_player) {
	Transition_Start(Rm_trex,Sq_spike_out,Sq_spike_in);
	if audio_is_playing(Snd_level1) audio_sound_gain(Snd_level1,0,5*60);
	if !audio_is_playing(Snd_time_machine_enter) audio_play_sound(Snd_time_machine_enter,7,false);
	
}



