if global.game_state == GAME_STATE.PAUSED {
	return;
}
y += sin(timer*0.05)*0.4
timer++;
image_angle += 0.5;
mask_index = Spr_battery_mask;
