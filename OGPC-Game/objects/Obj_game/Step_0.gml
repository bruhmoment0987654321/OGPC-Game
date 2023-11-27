if(room == Room1){
	if(!instance_exists(Obj_enemy)){
		level_completed = true;
	}
}
if(level_completed == true){
	with(Obj_shop_sign){
		image_alpha = 1;	
	}
}