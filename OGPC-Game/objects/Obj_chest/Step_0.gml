if(open){
	if(!triggered){
		if(item_count <= item_amount){
			Chest_chance(0.8,Obj_shield);
			Chest_chance(0.6,Obj_metal_currency);
			Chest_chance(0.6,Obj_bomb_pickup);
			Chest_chance(0.2,Obj_bonkstick_pickup);
			Chest_chance(0.4,Obj_cannon_pickup);
			Chest_chance(0.3,Obj_threegun_pickup);
			Chest_chance(0.1,Obj_grenade_pickup);
		}
	}
	triggered = true;
	image_index = 1;
	image_blend = c_gray;
}