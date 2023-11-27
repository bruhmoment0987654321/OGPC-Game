if(instance_exists(Obj_player)){
	with(Obj_player){
		if(!invincible){
			if(shield > 0){
				shield -= 50;
			}else{
				hp -= 50;	
			}
			invincible = true;
			alarm[0] = 60;
		}
	}
}