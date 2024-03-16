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
	fric = 0;
	image_speed = 0;
	sprite_index = Spr_shuriken;
}
//create debris
repeat(irandom_range(2,4)){
	with(instance_create_layer(x,y,"FX",Obj_gun_fx)){
		sprite_index = Spr_sam_debris;
		image_index = irandom_range(0,image_number-1);
		fric = 0.9;
		grv = 0.9;
		image_speed = 0;
		debris = true;
		motion_add(other.image_angle+random_range(-40,40),random_range(-1,-3));
	}
}