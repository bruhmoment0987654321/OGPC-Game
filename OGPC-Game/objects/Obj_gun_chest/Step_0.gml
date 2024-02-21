event_inherited();
if(place_meeting(x,y,Obj_player))&&(open){
	if(!triggered){
		if(item_count <= item_amount){
			Chest_chance(0.2,Obj_cannon_pickup);
			Chest_chance(0.1,Obj_threegun_pickup);
			Chest_chance(0.05,Obj_grenade_pickup);
			Gummy(1.1,0.9);
		}
	}
	triggered = true;
	image_index = 1;
	image_blend = c_gray;
}