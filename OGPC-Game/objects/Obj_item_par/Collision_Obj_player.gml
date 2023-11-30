if(object_index == Obj_health){
	other.hp += 10;	
}
if(object_index == Obj_bomb_pickup){
	if(image_index = 0){
		other.bomb_amount += 1;	
	}
	if(image_index = 1){
		other.bomb_amount += 2;
	}
}
if(object_index == Obj_shield){
	other.shield += 10;
}
if(object_index == Obj_metal_currency){
	if(image_index = 0){
		Obj_game.money += 1;	
	}
	if(image_index = 1){
		Obj_game.money += 10;
	}
	if(image_index = 2){
		Obj_game.money += 25;
	}
}
instance_destroy();