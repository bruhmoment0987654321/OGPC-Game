// Inherit the parent event
event_inherited();

//create dust
repeat(irandom_range(5,7)){
	with(instance_create_layer(x,y,"FX",Obj_gun_fx)){
		motion_add(other.image_angle+random_range(-70,70),random_range(-4,-9));	
	}
}
//create spark
repeat(3){
	with(instance_create_layer(x,y,"FX",Obj_gun_fx)){
		sprite_index = Spr_gunspark;
		motion_add(other.image_angle+random_range(-90,90),random_range(-4,-6));
		image_angle = direction;
	}
}
