///@param starting_area_x
///@param ending_area_x
///@param text
///@param text_x_position
///@param [text_y]
function Tutorial_area_text(_area_start,_area_end,_text_x = 640/2,_text_y = 300,_text){
	if instance_exists(Obj_player){
		if In_between(Obj_player.x,_area_start,_area_end){
			draw_set_halign(fa_center);
			draw_set_color(c_black);
			draw_text_transformed(_text_x,_text_y,_text,scale,scale,0);
		}
	}
}