if(object_index == Obj_health){
	if((global.hp+added_hp) >= global.max_hp) global.hp += added_hp;	
	else global.hp = global.max_hp;
}
if(object_index == Obj_bomb_pickup){
	if(image_index = 0){
		if((global.bomb_amount+added_bomb) <= global.bomb_max) global.bomb_amount += added_bomb;
		else global.bomb_amount = global.bomb_max
	}
	if(image_index = 1){
		if((global.bomb_amount+added_bomb2) <= global.bomb_max) global.bomb_amount += added_bomb2;
		else global.bomb_amount = global.bomb_max;
	}
}
if(object_index == Obj_shield){
	if((global.shield+added_shield) <= global.shield_max) global.shield += added_shield;
	else global.shield = global.shield_max;
}
if(object_index == Obj_metal_currency){
	if(image_index = 0){
		global.money += 5;	
	}
	if(image_index = 1){
		global.money += 10;
	}
	if(image_index = 2){
		global.money += 25;
	}
}
instance_destroy();