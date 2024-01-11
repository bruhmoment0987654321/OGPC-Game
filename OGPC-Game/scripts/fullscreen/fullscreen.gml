///@param true_or_false
function fullscreen(_true){
	var BOOL = bool(_true);
	if(BOOL != -1) window_set_fullscreen(BOOL);
	else Log("Boolean not recongnized. Did you use 0 and 1?");	
}