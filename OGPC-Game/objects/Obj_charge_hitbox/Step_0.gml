if global.game_state == GAME_STATE.PAUSED {
	return;	
}
if attack_mode {
	image_speed = 1;
	visible = true;
}else{
	image_index = 0;
	visible = global.show_hitboxes ? true : false;
}