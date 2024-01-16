/// @description for burst weapons
if(shoot_amount > 0)&&(object_index == Obj_three_gun){
	with(instance_create_layer(x,y,"Bullets",Obj_three_bullet)){
		speed = Obj_gun_par.spd;
		direction = Obj_gun_par.burst_dir;	
	}
	shoot_amount--;
	alarm[0] = burst_delay;
}else{
	shoot_amount = shoot_amount_max;
	exit;	
}

