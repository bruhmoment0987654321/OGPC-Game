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
			Gummy(1.3,0.8)
		}
	}
	triggered = true;
	image_index = 1;
	image_blend = c_gray;
}

#region animation
	xscale = Approach(xscale,1,0.05);
	yscale = Approach(yscale,1,0.05);
#endregion