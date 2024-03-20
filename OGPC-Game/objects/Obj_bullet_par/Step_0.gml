if global.game_state == GAME_STATE.PAUSED {
	if speed > 0 {
		stored_speed = speed; 
		speed = 0;	
	}
	return;	
}else if global.game_state == GAME_STATE.RUNNING {
	if stored_speed != 0 {
		speed = stored_speed;
		stored_speed = 0;
	}
}
image_index = 1;