if global.game_state == GAME_STATE.PAUSED {
	return;
}

if(image_index > image_number-1){
	instance_destroy();	
}