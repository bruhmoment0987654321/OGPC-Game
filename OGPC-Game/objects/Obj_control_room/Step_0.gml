global.bomb_amount = 10;
exit_room = keyboard_check_pressed(vk_escape);
if exit_room {
	Transition_Start(Rm_title,Sq_spike_out,Sq_spike_in);
	global.first_time_playing = false;
	global.starting_over = true;
	if !audio_is_playing(Snd_level_transition) audio_play_sound(Snd_level_transition,7,false);
	audio_sound_gain(Snd_tutorial,0,3*60);
}