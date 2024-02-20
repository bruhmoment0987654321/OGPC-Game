open = keyboard_check_pressed(global.action);
if(place_meeting(x,y,Obj_player))&&(open){
	if(!triggered){
		if(item_count <= item_amount){
			Chest_chance(0.8,Obj_shield);
			Chest_chance(0.6,Obj_metal_currency);
			Chest_chance(0.6,Obj_bomb_pickup);
			Chest_chance(0.2,Obj_cannon_pickup);
			Chest_chance(0.1,Obj_threegun_pickup);
			Chest_chance(0.05,Obj_grenade_pickup);
			Gummy(1.3,0.8);
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