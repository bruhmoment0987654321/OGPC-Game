if global.game_state == GAME_STATE.PAUSED {
	return;	
}
if alpha >= 1 {
	display_timer--;	
}
display_timer--;

if display_timer <= 0 {
	show = false;	
}


if show {
	alpha += fade_amount;	
}else{
	alpha -= fade_amount;	
}

if !show && alpha <= 0 {
	instance_destroy();	
}