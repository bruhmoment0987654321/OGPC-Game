enum ENEMY {
	CAVEMAN,
	ROCKMAN, 
	RAPTOR,
	CHIEFTAN,
}
spawn_point_offset_x = 16;
spawn_point_offset_y = 32;

spawn_enemy = choose(ENEMY.CHIEFTAN,ENEMY.CAVEMAN,ENEMY.ROCKMAN,ENEMY.RAPTOR);
switch(spawn_enemy){
	case ENEMY.CAVEMAN:
		if(Chance(0.5))instance_create_layer(x+spawn_point_offset_x,y+spawn_point_offset_y,"Enemy",Obj_caveman);
		instance_destroy();
	break;
	
	case ENEMY.ROCKMAN:
		if(Chance(0.5))instance_create_layer(x+spawn_point_offset_x,y+spawn_point_offset_y,"Enemy",Obj_rockman);
		instance_destroy();
	break;
	
	case ENEMY.RAPTOR:
		if(Chance(0.2))instance_create_layer(x+spawn_point_offset_x,y+spawn_point_offset_y,"Enemy",Obj_velociraptor);
		instance_destroy();
	break;
	case ENEMY.CHIEFTAN:
		if(Chance(0.1))instance_create_layer(x+spawn_point_offset_x,y+spawn_point_offset_y,"Enemy",Obj_chieftan);
		instance_destroy();
	break;
	
}