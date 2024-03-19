if keyboard_check_pressed(global.pause_button) && global.pauseable {
	if global.game_state == GAME_STATE.RUNNING {
		global.game_state = GAME_STATE.PAUSED;	
	}else if global.game_state == GAME_STATE.PAUSED {
		global.game_state = GAME_STATE.RUNNING;
	}
}