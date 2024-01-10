// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Console_enable(){
	if(!instance_exists(Obj_devconsole)) exit;
	
	with(Obj_devconsole){
		enable = !enable;	
	}
}