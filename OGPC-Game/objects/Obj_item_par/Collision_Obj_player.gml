if(object_index == Obj_health) && global.hp < global.max_hp {
	if((global.hp+added_hp) > global.max_hp){
		global.hp += added_hp;	
		instance_destroy();
	}else{
		global.hp = global.max_hp;
		global.max_health = true;
		instance_destroy();
	}
	audio_play_sound(Snd_item_pickup,6,false);
}
if(object_index == Obj_bomb_pickup) && global.bomb_amount < global.bomb_max {
	if(image_index = 0){
		if((global.bomb_amount+added_bomb) < global.bomb_max){
			global.bomb_amount += added_bomb;
			instance_destroy();
		}else{
			global.bomb_amount = global.bomb_max;
			global.max_bombs = true;
			instance_destroy();
		}
	}
	audio_play_sound(Snd_item_pickup,6,false);
}
if(object_index == Obj_shield) && global.shield < global.shield_max {
	if((global.shield+added_shield) < global.shield_max){
		global.shield += added_shield;
		instance_destroy();
	}else{
		global.shield = global.shield_max;
		global.max_shield = true;
		instance_destroy();
	}
	audio_play_sound(Snd_item_pickup,6,false);
}
if(object_index == Obj_metal_currency){
	if(image_index = 0){
		global.money += 5;
		score += 100;
	}
	
	if(image_index = 1){
		global.money += 10;
		score += 200;
	}
	
	if(image_index = 2){
		global.money += 15;
		score += 500;
	}
	instance_destroy();
	audio_play_sound(Snd_item_pickup,6,false);
}
