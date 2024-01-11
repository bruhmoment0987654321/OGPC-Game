// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function tele(_x,_y){
	var X = real(_x);
	var Y = real(_y);
	if(instance_exists(Obj_player)){
		with(Obj_player){
			x = X;
			y = Y;
		}
	}else Log("Oops! Player doesn't exist!");
}