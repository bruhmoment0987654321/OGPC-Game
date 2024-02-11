enum ENEMY {
	CAVEMAN,
	ROCKMAN, 
	RAPTOR,
}

spawn_enemy = choose(ENEMY.CAVEMAN,ENEMY.CAVEMAN,ENEMY.CAVEMAN,ENEMY.ROCKMAN,ENEMY.ROCKMAN,ENEMY.ROCKMAN,ENEMY.RAPTOR);
switch(spawn_enemy){
	case ENEMY.CAVEMAN:
		if(Chance(0.5))instance_create_layer(x-16,y-16,"Enemy",Obj_caveman);
		instance_destroy();
	break;
	
	case ENEMY.ROCKMAN:
		if(Chance(0.5))instance_create_layer(x-16,y-16,"Enemy",Obj_rockman);
		instance_destroy();
	break;
	
	case ENEMY.RAPTOR:
		if(Chance(0.2))instance_create_layer(x-16,y-16,"Enemy",Obj_velociraptor);
		instance_destroy();
	break;
	
}