left_button = mouse_check_button_pressed(mb_left);
if In_between(mouse_x,bbox_left,bbox_right) && In_between(mouse_y,bbox_top,bbox_bottom){
	hovered = true;
	if menu_level == 0 {
		if left_button {
			var _function_name = asset_get_index(_function);
			if script_exists(_function_name){
				script_execute(_function_name);
			}
		}
	}
}else{
	hovered = false;
}