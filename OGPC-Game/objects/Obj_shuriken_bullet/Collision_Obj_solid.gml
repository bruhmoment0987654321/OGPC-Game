// Inherit the parent event
event_inherited();
//create spark
repeat(3){
	with(instance_create_layer(x,y,"FX",Obj_gun_fx)){
		image_xscale = 2;
		image_yscale = 2;
		fric = 1;
		sprite_index = Spr_gunspark;
		motion_add(other.image_angle+random_range(-90,90),random_range(-4,-6));
		image_angle = direction;
	}
}

with(instance_create_layer(x,y,"FX",Obj_gun_fx)){
	image_speed = 0;
	sprite_index = Spr_shuriken;
	fric = 0.9;
	grv = 0.9;
	debris = true;
	motion_add(other.image_angle+random_range(-20,20),random_range(-5,-8));
}