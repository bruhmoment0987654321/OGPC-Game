if global.game_state == GAME_STATE.PAUSED {
	return	
}
up = keyboard_check_pressed(global.up);
if place_meeting(x,y,Obj_player) && global.holding_battery && up {
	Transition_Start(room,Sq_spike_out,Sq_spike_in);
	audio_play_sound(Snd_time_machine_enter,8,false);
	score += 300;
	global.battery_amount += 1;
}

