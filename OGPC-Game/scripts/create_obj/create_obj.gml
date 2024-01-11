// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_obj(_obj){
	var OBJ = asset_get_index(_obj);
	if(OBJ != -1){
		instance_create_depth(Obj_player.x+20,Obj_player.y-10,-99999999,OBJ);
	}else{
		Log("instance does not exist");
	}
}
