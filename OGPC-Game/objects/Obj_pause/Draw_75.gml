if global.game_state == GAME_STATE.PAUSED {
	draw_set_color(c_white);
	draw_text_transformed(260,100,"PAUSED",3,3,0);
}