///@param true_or_false
function fullscreen(_true){
	var BOOL = bool(_true);
	if(BOOL != -1) window_set_fullscreen(BOOL);
	else Log("A tip for you if you need it: Don't use true or false. Only 0 and 1.")
}