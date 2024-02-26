event_inherited();
if(instance_exists(Obj_player)){
	if(place_meeting(x,y,Obj_player))&&(open){
		if(!triggered){
			if(item_count <= item_amount){
				var gun_choice = Gun_options(Obj_player.which_weapon_pickup);
				Chest_chance(1,gun_choice);
				Gummy(1.1,0.9);
			}
		}
		triggered = true;
		image_index = 1;
		image_blend = c_gray;
	}
}