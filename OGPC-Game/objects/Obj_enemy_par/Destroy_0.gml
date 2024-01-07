if(which_item == 0){
	instance_create_layer(x,y-32,"Items",Obj_bomb_pickup);	
}else if(which_item == 1){
	instance_create_layer(x,y-16,"Items",Obj_shield);
}else if(which_item == 2){
	instance_create_layer(x,y-16,"Items",Obj_metal_currency);
}