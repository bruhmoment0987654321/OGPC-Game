if global.game_state == GAME_STATE.PAUSED {
	return	
}
up = keyboard_check_pressed(global.up);
if place_meeting(x,y,Obj_player) && global.holding_battery && up {
	if global.rounds == boss_round {
		Transition_Start(Rm_shop_prehis,Sq_spike_out,Sq_spike_in);
		audio_play_sound(Snd_time_machine_enter,8,false);
	}else{
		Transition_Start(room,Sq_spike_out,Sq_spike_in);
		audio_play_sound(Snd_time_machine_enter,8,false);
		global.rounds++;
		show_debug_message(global.rounds);
	}
	score += 300;
	global.battery_amount += 1;
}

