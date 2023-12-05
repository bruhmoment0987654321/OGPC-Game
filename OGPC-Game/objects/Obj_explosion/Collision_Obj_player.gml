if(instance_exists(Obj_player)){
	with(Obj_player){
		if(!invincible){
			if(shield > 0){
				global.shield -= 50;
			}else{
				global.hp -= 50;	
			}
			invincible = true;
			alarm[0] = 60;
		}
	}
}