// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function no_die(_bool){
	var Bool = bool(_bool);
	if(Bool){
		with(Obj_player) dont_die = true;
	}
}