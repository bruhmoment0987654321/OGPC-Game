exit_room = keyboard_check_pressed(vk_escape);
if exit_room {
	Transition_Start(Rm_title,Sq_spike_out,Sq_spike_in);
	global.first_time_playing = false;
}