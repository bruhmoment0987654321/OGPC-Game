if global.game_state == GAME_STATE.PAUSED {
	return;
}
image_alpha -= 0.1;
if (image_alpha <= 0) instance_destroy();