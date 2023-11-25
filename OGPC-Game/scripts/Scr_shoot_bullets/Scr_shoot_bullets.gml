with(Obj_gun_par){
	if(object_index == Obj_arm_gun){
		with(instance_create_layer(x,y,"Bullets",Obj_bullet)){
			speed = Obj_gun_par.spd;
			direction = Obj_gun_par.dir;
		}
	}
	if(object_index == Obj_cannon){
		with(instance_create_layer(x,y,"Bullets",Obj_cannonball)){
			speed = Obj_gun_par.spd;
			direction = Obj_gun_par.dir;
		}
	}
}
