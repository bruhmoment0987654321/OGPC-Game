// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function kill_all(_obj){
	var OBJ = asset_get_index(_obj);
	with(OBJ){
		if(variable_instance_exists(OBJ,"state")){
			if(OBJ != undefined){
				state = "dead";
				Log("All of them dead!");
			}
			else Log("Wrong instance used");
		}else{
			instance_destroy(OBJ);
			Log("All instances of object gone!");
		}
		
	}
}