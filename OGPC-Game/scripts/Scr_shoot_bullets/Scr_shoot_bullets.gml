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
	if(object_index == Obj_three_gun){
		alarm[0] = burst_delay;	
	}
	if(object_index == Obj_grenade_launcher){
		if(global.bomb_amount > 0){
			with(instance_create_layer(x,y,"Bullets",Obj_bomb)){
				hsp = lengthdir_x(Obj_gun_par.spd,Obj_gun_par.dir);
				vsp = lengthdir_y(Obj_gun_par.spd,Obj_gun_par.dir);
				bounce = true;
			}
			global.bomb_amount--;
		}
	}
}