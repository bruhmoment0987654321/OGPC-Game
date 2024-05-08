///@desc checking if mouse moves
if mx == mouse_x && my == mouse_y {
	window_set_cursor(cr_none);
	global.mouse_move = false;
}else{
	window_set_cursor(cr_default);	
	global.mouse_move = true;
}

alarm[1] = mouse_timer;