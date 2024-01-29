enum ENEMY {
	CAVEMAN,
	ROCKMAN, 
	RAPTOR,
}

spawn_enemy = choose(ENEMY.CAVEMAN,ENEMY.CAVEMAN,ENEMY.CAVEMAN,ENEMY.ROCKMAN,ENEMY.ROCKMAN,ENEMY.ROCKMAN,ENEMY.RAPTOR);
switch(spawn_enemy){
	case ENEMY.CAVEMAN:
		instance_create_layer(x,y,"Enemy",Obj_caveman);
		instance_destroy();
	break;
	
	case ENEMY.ROCKMAN:
		instance_create_layer(x,y,"Enemy",Obj_rockman);
		instance_destroy();
	break;
	
	case ENEMY.RAPTOR:
		instance_create_layer(x,y,"Enemy",Obj_velociraptor);
		instance_destroy();
	break;
	
}