if(instance_exists(follow)){
	if(Obj_melee_par.charge >= Obj_melee_par.charge_max){
		image_blend = color_2
		sprite_index = Spr_charge_max;
	}
	x = follow.x + offset_x;
	y = follow.y + offset_y;
	image_xscale = follow.image_xscale;
}
