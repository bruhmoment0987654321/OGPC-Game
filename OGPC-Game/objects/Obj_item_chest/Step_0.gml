event_inherited();
if(place_meeting(x,y,Obj_player))&&(open){
	if(!triggered){
		if(item_count <= item_amount){
			Chest_chance(0.5,Obj_shield);
			Chest_chance(0.6,Obj_metal_currency);
			Chest_chance(0.4,Obj_bomb_pickup);
			Gummy(1.3,0.8);
			audio_play_sound(Snd_chest,6,false);
		}
	}
	triggered = true;
	image_index = 1;
	image_blend = c_gray;
}