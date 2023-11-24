if(instance_exists(Obj_player)){
	with(Obj_player){
		if(!invincible){
			hp -= 50;
			invincible = true;
			alarm[0] = 60;
		}
	}
}