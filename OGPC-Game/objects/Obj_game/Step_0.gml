if(room == Rm_level1){
	if(!instance_exists(Obj_enemy_par)){
		level_completed = true;
		if(create_end_level){
			instance_create_depth(735,139,-999999,Obj_level_end);
			create_end_level = false;
		}
	}
}

if(room == Rm_level2){
		if(!instance_exists(Obj_enemy_par)){
		level_completed = true;
		if(create_end_level){
			instance_create_depth(1216,705,-999999,Obj_level_end);
			create_end_level = false;
		}
	}
}
if(level_completed){
	with(Obj_shop_sign){
		image_alpha = 1;	
	}
}

#region health and bombs
if(instance_exists(Obj_player)){
	if(global.hp <= 0){
		Obj_player.state = "dead";	
	}
}
#endregion