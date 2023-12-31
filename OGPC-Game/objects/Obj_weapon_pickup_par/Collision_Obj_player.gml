if(object_index == Obj_armgun_pickup){
	if(other.which_gun != noone){
		with(other.which_gun){
			instance_destroy();	
		}
	}else{
		
	}
	other.which_gun = Obj_arm_gun;
	instance_create_layer(x,y,"Guns",Obj_arm_gun);
}
if(object_index == Obj_cannon_pickup){
	if(other.which_gun != noone){
		with(other.which_gun){
			instance_destroy();	
		}
	}else{
		
	}
	other.which_gun = Obj_cannon;
	instance_create_layer(x,y,"Guns",Obj_cannon);
}
instance_destroy();