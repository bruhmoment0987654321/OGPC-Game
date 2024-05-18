function start_game(){
	if(global.first_time_playing) || global.presentation_mode {
		Transition_Start(Rm_ctrl_rm,Sq_spike_out,Sq_spike_in);
	}else{
		Transition_Start(Rm_prehistoric,Sq_spike_out,Sq_spike_in);
		global.playercant = false;
	}
	global.starting_over = true;
}