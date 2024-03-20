if global.game_state == GAME_STATE.PAUSED {
	draw_sprite_ext(Spr_screencover,0,0,0,1,1,0,image_blend,0.3);
	draw_set_color(c_white);
	draw_text_transformed(260,100,"PAUSED",3,3,0);
}