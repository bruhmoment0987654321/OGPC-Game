with(instance_create_layer(x,y,"FX",Obj_gun_fx)){
	image_speed = 0;
	sprite_index = Spr_shuriken;
	fric = 0;
	grv = 0;
	debris = true;
	target = other.id;
	hooked_on = true;
}