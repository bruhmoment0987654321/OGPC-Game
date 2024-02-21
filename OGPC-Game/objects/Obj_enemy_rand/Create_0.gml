enum ENEMY {
	CAVEMAN,
	ROCKMAN, 
	RAPTOR,
	CHIEFTAN,
}

caveman_chance = 0.5;
raptor_chance = 0.1;
chief_chance = 0.2;

if global.battery_amount == global.round_difficulty_increase {
	caveman_chance = 0.25*global.round_counter;
	raptor_chance = 0.15*global.round_counter;
	chief_chance = 0.2*global.round_counter;
}

spawn_point_offset_x = 16;
spawn_point_offset_y = 32;

spawn_enemy = choose(ENEMY.CHIEFTAN,ENEMY.CAVEMAN,ENEMY.ROCKMAN,ENEMY.RAPTOR);
switch(spawn_enemy){
	case ENEMY.CAVEMAN:
		if(Chance(caveman_chance))instance_create_layer(x+spawn_point_offset_x,y+spawn_point_offset_y,"Enemy",Obj_caveman);
		instance_destroy();
	break;
	
	case ENEMY.ROCKMAN:
		if(Chance(caveman_chance))instance_create_layer(x+spawn_point_offset_x,y+spawn_point_offset_y,"Enemy",Obj_rockman);
		instance_destroy();
	break;
	
	case ENEMY.RAPTOR:
		if(Chance(raptor_chance))instance_create_layer(x+spawn_point_offset_x,y+spawn_point_offset_y,"Enemy",Obj_velociraptor);
		instance_destroy();
	break;
	case ENEMY.CHIEFTAN:
		if(Chance(chief_chance))instance_create_layer(x+spawn_point_offset_x,y+spawn_point_offset_y,"Enemy",Obj_chieftan);
		instance_destroy();
	break;
	
}