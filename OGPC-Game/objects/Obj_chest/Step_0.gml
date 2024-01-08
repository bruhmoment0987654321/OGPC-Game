if(open){
	if(!triggered){
		repeat(3){
			if(loot == 1) instance_create_layer(x,y-16,"Items",Obj_bomb_pickup);
			if(loot == 2) instance_create_layer(x,y-16,"Items",Obj_shield);
			if(loot == 3) instance_create_layer(x,y-16,"Items",Obj_metal_currency);	
			loot = choose(1,1,1,2,2,3,3,3);
		}
	}
	triggered = true;
	image_index = 1;
	image_blend = c_gray;
}