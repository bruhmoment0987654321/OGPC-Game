if(place_meeting(x,y-1,Obj_player)){
	if(destroy_limit > 0){
		destroy_timer--;
		if(destroy_timer <= 0){
			destroy_limit--;
			destroy_timer = destroy_timer_amount;
		}
	}else{
		death_timer--;
		if(death_timer <= 0){
			instance_destroy();	
		}
	}	
	spawn_sand = true;	
}else{
	spawn_sand = false;	
}
if(spawn_sand){
	spawn_timer--;
	if(spawn_timer <= 0){
		instance_create_layer(x+random_range(0,32),y,"FX",Obj_sandblock_fx);
		spawn_timer = spawn_timer_amount;
	}
}