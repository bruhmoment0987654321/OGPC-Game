if global.game_state == GAME_STATE.PAUSED {
	return;
}

y += random_range(1,0.5);
image_alpha -= random_range(0.01,0.05);

if(image_alpha <= 0){
		instance_destroy();	
}