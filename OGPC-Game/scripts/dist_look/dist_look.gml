// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function dist_look(_bool){
	var Bool = bool(_bool);
	
	if(Bool != -1) global.show_lines = true;
	else Log("Boolean not recongnized. Did you use 0 and 1?")
}