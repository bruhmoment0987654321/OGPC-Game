// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_object(_x,_y,_obj){
	var X = real(_x);
	var Y = real(_y);
	var OBJ = asset_get_index(_obj);
	if(OBJ != -1){
		instance_create_depth(X,Y,-99999999,OBJ);
	}else{
		Log("instance does not exist");
	}
}